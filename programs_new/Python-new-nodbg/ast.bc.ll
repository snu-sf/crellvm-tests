; ModuleID = './ast.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct.anon.0 = type { %struct.asdl_seq* }
%struct.anon.1 = type { %struct._expr* }
%struct._expr = type { i32, %union.anon.2, i32, i32 }
%union.anon.2 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr* }
%struct._stmt = type { i32, %union.anon.33, i32, i32 }
%union.anon.33 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct._object*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.22 = type { %struct._expr*, %struct._object*, i32 }
%struct.anon.23 = type { %struct._expr*, %struct._slice*, i32 }
%struct._slice = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct._expr*, %struct._expr*, %struct._expr* }
%struct.anon.28 = type { %struct._expr*, i32 }
%struct.anon.29 = type { %struct._object*, i32 }
%struct.anon.30 = type { %struct.asdl_seq*, i32 }
%struct.anon.31 = type { %struct.asdl_seq*, i32 }
%struct.anon.3 = type { i32, %struct.asdl_seq* }
%struct.anon.4 = type { %struct._expr*, i32, %struct._expr* }
%struct.anon.5 = type { i32, %struct._expr* }
%struct.anon.6 = type { %struct._arguments*, %struct._expr* }
%struct._arguments = type { %struct.asdl_seq*, %struct._arg*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._arg*, %struct.asdl_seq* }
%struct._arg = type { %struct._object*, %struct._expr*, i32, i32 }
%struct.anon.7 = type { %struct._expr*, %struct._expr*, %struct._expr* }
%struct.anon.8 = type { %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.9 = type { %struct.asdl_seq* }
%struct.anon.10 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.11 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.13 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.12 = type { %struct._expr*, %struct._expr*, %struct.asdl_seq* }
%struct.anon.14 = type { %struct._expr* }
%struct.anon.15 = type { %struct._expr* }
%struct.anon.16 = type { %struct._expr*, %struct.asdl_int_seq*, %struct.asdl_seq* }
%struct.asdl_int_seq = type { i64, [1 x i32] }
%struct.anon.18 = type { %struct._object* }
%struct.anon.19 = type { %struct._object* }
%struct.anon.20 = type { %struct._object* }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.PyCompilerFlags = type { i32 }
%struct._arena = type opaque
%struct.compiling = type { i8*, %struct._arena*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._withitem = type { %struct._expr*, %struct._expr* }
%struct._excepthandler = type { i32, %union.anon.52, i32, i32 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct._expr*, %struct._object*, %struct.asdl_seq* }
%struct.anon.34 = type { %struct._object*, %struct._arguments*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr* }
%struct.anon.36 = type { %struct._expr* }
%struct.anon.37 = type { %struct.asdl_seq* }
%struct.anon.38 = type { %struct.asdl_seq*, %struct._expr* }
%struct.anon.39 = type { %struct._expr*, i32, %struct._expr* }
%struct.anon.40 = type { %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.41 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.42 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.43 = type { %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.44 = type { %struct._expr*, %struct._expr* }
%struct.anon.45 = type { %struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.46 = type { %struct._expr*, %struct._expr* }
%struct.anon.47 = type { %struct.asdl_seq* }
%struct.anon.48 = type { %struct._object*, %struct.asdl_seq*, i32 }
%struct.anon.49 = type { %struct.asdl_seq* }
%struct.anon.50 = type { %struct.asdl_seq* }
%struct.anon.51 = type { %struct._expr* }
%struct._keyword = type { %struct._object*, %struct._expr* }
%struct._comprehension = type { %struct._expr*, %struct._expr*, %struct.asdl_seq* }
%struct.anon.26 = type { %struct.asdl_seq* }
%struct.anon.27 = type { %struct._expr* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.54, i32* }
%struct.anon.54 = type { i32 }
%struct.Py_complex = type { double, double }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon.55 }
%union.anon.55 = type { i8* }
%struct._alias = type { %struct._object*, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [43 x i8] c"Suite is not valid in the CPython compiler\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"impossible module node\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid node %d for PyAST_FromNode\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"None disallowed in statement list\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FunctionDef\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ClassDef\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"For\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"While\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"If\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"With\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Raise with cause but no exception\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Try\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Try has neither except handlers nor finalbody\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Try has orelse but no except handlers\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ExceptHandler\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"ImportFrom level less than -1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"ImportFrom\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Nonlocal\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"unexpected statement\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"more positional defaults than args on arguments\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"length of kwonlyargs is not the same as kw_defaults on arguments\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"None disallowed in expression list\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Assign\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"empty %s on %s\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"expression which can't be assigned to in %s context\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"expression must have %s context but has %s instead\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"BoolOp with less than 2 values\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"Dict doesn't have the same number of keys as values\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Compare with no comparators\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"Compare has a different number of comparators and operands\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyComplex_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.38 = private unnamed_addr constant [24 x i8] c"non-numeric type in Num\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.39 = private unnamed_addr constant [23 x i8] c"non-string type in Str\00", align 1
@PyBytes_Type = external global %struct._typeobject, align 8
@.str.40 = private unnamed_addr constant [24 x i8] c"non-bytes type in Bytes\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"unexpected expression\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Store\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"Del\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"AugLoad\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"AugStore\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Param\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"comprehension with no generators\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"dims\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"ExtSlice\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"unknown slice node\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Non-statement found: %d %d\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"unhandled expr: %d\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"more than 255 arguments\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"non-default argument follows default argument\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"named arguments must follow bare *\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"unexpected node in varargslist: %d @ %d\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"(OiiN)\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.61 = private unnamed_addr constant [12 x i8] c"unicodedata\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"(sN)\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"NFKC\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"__debug__\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"assignment to keyword\00", align 1
@FORBIDDEN = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* null], align 16
@.str.67 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"unexpected node\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"invalid comp_op: %s\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"invalid comp_op: %s %s\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"invalid comp_op: has %d children\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"unhandled factor: %d\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyExc_UnicodeError = external global %struct._object*, align 8
@.str.77 = private unnamed_addr constant [14 x i8] c"unicode error\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"value error\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"(%s) %s\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"(%s) unknown error\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"unhandled atom %d\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"cannot mix bytes and nonbytes literals\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.83 = private unnamed_addr constant [13 x i8] c"Python/ast.c\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.84 = private unnamed_addr constant [28 x i8] c"string to parse is too long\00", align 1
@.str.85 = private unnamed_addr constant [49 x i8] c"bytes can only contain ASCII literal characters.\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"u005c\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"\5CU%08x\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"logic error in count_comp_fors\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"function call\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"generator expression\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"yield expression\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"list comprehension\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"set comprehension\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"dict comprehension\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Ellipsis\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"comparison\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"conditional expression\00", align 1
@.str.103 = private unnamed_addr constant [49 x i8] c"unexpected expression in assignment %d (line %d)\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"can't %s %s\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"assign to\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.107 = private unnamed_addr constant [64 x i8] c"Generator expression must be parenthesized if not sole argument\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"non-keyword arg after keyword arg\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"only named arguments may follow *expression\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"lambda cannot contain assignment\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"keyword can't be an expression\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"keyword argument repeated\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"unhandled small_stmt: TYPE=%d NCH=%d\0A\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"illegal expression for augmented assignment\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"assignment to yield expression not possible\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"invalid augassign: %s\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"unexpected flow_stmt: %d\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"trailing comma not allowed without surrounding parentheses\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"Unexpected node-type in from-import\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"unknown import statement: starts with command '%s'\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"unexpected import name: %d\00", align 1
@.str.123 = private unnamed_addr constant [51 x i8] c"improper number of parts to 'assert' statement: %d\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"unexpected token in 'if' statement: %s\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"wrong number of tokens for 'while' statement: %d\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.127 = private unnamed_addr constant [26 x i8] c"malformed 'try' statement\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"wrong number of children for 'except' clause: %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PyAST_Validate(%struct._mod* %mod) #0 {
entry:
  %mod.addr = alloca %struct._mod*, align 8
  %res = alloca i32, align 4
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %kind = getelementptr inbounds %struct._mod, %struct._mod* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v = getelementptr inbounds %struct._mod, %struct._mod* %2, i32 0, i32 1
  %Module = bitcast %union.anon* %v to %struct.anon*
  %body = getelementptr inbounds %struct.anon, %struct.anon* %Module, i32 0, i32 0
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %call = call i32 @validate_stmts(%struct.asdl_seq* %3)
  store i32 %call, i32* %res, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v2 = getelementptr inbounds %struct._mod, %struct._mod* %4, i32 0, i32 1
  %Interactive = bitcast %union.anon* %v2 to %struct.anon.0*
  %body3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %Interactive, i32 0, i32 0
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %body3, align 8
  %call4 = call i32 @validate_stmts(%struct.asdl_seq* %5)
  store i32 %call4, i32* %res, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v6 = getelementptr inbounds %struct._mod, %struct._mod* %6, i32 0, i32 1
  %Expression = bitcast %union.anon* %v6 to %struct.anon.1*
  %body7 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %Expression, i32 0, i32 0
  %7 = load %struct._expr*, %struct._expr** %body7, align 8
  %call8 = call i32 @validate_expr(%struct._expr* %7, i32 1)
  store i32 %call8, i32* %res, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.5, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %res, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_stmts(%struct.asdl_seq* %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %stmt = alloca %struct._stmt*, align 8
  store %struct.asdl_seq* %seq, %struct.asdl_seq** %seq.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %seq.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %seq.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %2, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %seq.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct._stmt*
  store %struct._stmt* %7, %struct._stmt** %stmt, align 8
  %8 = load %struct._stmt*, %struct._stmt** %stmt, align 8
  %tobool = icmp ne %struct._stmt* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct._stmt*, %struct._stmt** %stmt, align 8
  %call = call i32 @validate_stmt(%struct._stmt* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then.5
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_expr(%struct._expr* %exp, i32 %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %struct._expr*, align 8
  %ctx.addr = alloca i32, align 4
  %check_ctx = alloca i32, align 4
  %actual_ctx = alloca i32, align 4
  %n = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  store %struct._expr* %exp, %struct._expr** %exp.addr, align 8
  store i32 %ctx, i32* %ctx.addr, align 4
  store i32 1, i32* %check_ctx, align 4
  %0 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 21, label %sw.bb
    i32 22, label %sw.bb.2
    i32 23, label %sw.bb.5
    i32 24, label %sw.bb.8
    i32 25, label %sw.bb.11
    i32 26, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %2, i32 0, i32 1
  %Attribute = bitcast %union.anon.2* %v to %struct.anon.22*
  %ctx1 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %Attribute, i32 0, i32 2
  %3 = load i32, i32* %ctx1, align 4
  store i32 %3, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v3 = getelementptr inbounds %struct._expr, %struct._expr* %4, i32 0, i32 1
  %Subscript = bitcast %union.anon.2* %v3 to %struct.anon.23*
  %ctx4 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript, i32 0, i32 2
  %5 = load i32, i32* %ctx4, align 4
  store i32 %5, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v6 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %Starred = bitcast %union.anon.2* %v6 to %struct.anon.28*
  %ctx7 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %Starred, i32 0, i32 1
  %7 = load i32, i32* %ctx7, align 4
  store i32 %7, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %8 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v9 = getelementptr inbounds %struct._expr, %struct._expr* %8, i32 0, i32 1
  %Name = bitcast %union.anon.2* %v9 to %struct.anon.29*
  %ctx10 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name, i32 0, i32 1
  %9 = load i32, i32* %ctx10, align 4
  store i32 %9, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %10 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v12 = getelementptr inbounds %struct._expr, %struct._expr* %10, i32 0, i32 1
  %List = bitcast %union.anon.2* %v12 to %struct.anon.30*
  %ctx13 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %List, i32 0, i32 1
  %11 = load i32, i32* %ctx13, align 4
  store i32 %11, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %12 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v15 = getelementptr inbounds %struct._expr, %struct._expr* %12, i32 0, i32 1
  %Tuple = bitcast %union.anon.2* %v15 to %struct.anon.31*
  %ctx16 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple, i32 0, i32 1
  %13 = load i32, i32* %ctx16, align 4
  store i32 %13, i32* %actual_ctx, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load i32, i32* %ctx.addr, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %16 = load i32, i32* %ctx.addr, align 4
  %call = call i8* @expr_context_name(i32 %16)
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0), i8* %call)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.default
  store i32 0, i32* %check_ctx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.14, %sw.bb.11, %sw.bb.8, %sw.bb.5, %sw.bb.2, %sw.bb
  %17 = load i32, i32* %check_ctx, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %sw.epilog
  %18 = load i32, i32* %actual_ctx, align 4
  %19 = load i32, i32* %ctx.addr, align 4
  %cmp18 = icmp ne i32 %18, %19
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %land.lhs.true
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %21 = load i32, i32* %ctx.addr, align 4
  %call20 = call i8* @expr_context_name(i32 %21)
  %22 = load i32, i32* %actual_ctx, align 4
  %call21 = call i8* @expr_context_name(i32 %22)
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0), i8* %call20, i8* %call21)
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %sw.epilog
  %23 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %kind24 = getelementptr inbounds %struct._expr, %struct._expr* %23, i32 0, i32 0
  %24 = load i32, i32* %kind24, align 4
  switch i32 %24, label %sw.default.335 [
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.49
    i32 5, label %sw.bb.60
    i32 6, label %sw.bb.77
    i32 7, label %sw.bb.116
    i32 8, label %sw.bb.119
    i32 9, label %sw.bb.130
    i32 11, label %sw.bb.143
    i32 10, label %sw.bb.156
    i32 12, label %sw.bb.173
    i32 13, label %sw.bb.182
    i32 14, label %sw.bb.186
    i32 15, label %sw.bb.237
    i32 16, label %sw.bb.275
    i32 17, label %sw.bb.287
    i32 18, label %sw.bb.294
    i32 21, label %sw.bb.301
    i32 22, label %sw.bb.306
    i32 23, label %sw.bb.319
    i32 25, label %sw.bb.324
    i32 26, label %sw.bb.329
    i32 24, label %sw.bb.334
    i32 19, label %sw.bb.334
    i32 20, label %sw.bb.334
  ]

sw.bb.25:                                         ; preds = %if.end.23
  %25 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v26 = getelementptr inbounds %struct._expr, %struct._expr* %25, i32 0, i32 1
  %BoolOp = bitcast %union.anon.2* %v26 to %struct.anon.3*
  %values = getelementptr inbounds %struct.anon.3, %struct.anon.3* %BoolOp, i32 0, i32 1
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %values, align 8
  %cmp27 = icmp eq %struct.asdl_seq* %26, null
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.25
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.25
  %27 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v28 = getelementptr inbounds %struct._expr, %struct._expr* %27, i32 0, i32 1
  %BoolOp29 = bitcast %union.anon.2* %v28 to %struct.anon.3*
  %values30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %BoolOp29, i32 0, i32 1
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %values30, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %28, i32 0, i32 0
  %29 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %29, %cond.false ]
  %cmp31 = icmp slt i64 %cond, 2
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %cond.end
  %31 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v34 = getelementptr inbounds %struct._expr, %struct._expr* %31, i32 0, i32 1
  %BoolOp35 = bitcast %union.anon.2* %v34 to %struct.anon.3*
  %values36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %BoolOp35, i32 0, i32 1
  %32 = load %struct.asdl_seq*, %struct.asdl_seq** %values36, align 8
  %call37 = call i32 @validate_exprs(%struct.asdl_seq* %32, i32 1, i32 0)
  store i32 %call37, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %if.end.23
  %33 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v39 = getelementptr inbounds %struct._expr, %struct._expr* %33, i32 0, i32 1
  %BinOp = bitcast %union.anon.2* %v39 to %struct.anon.4*
  %left = getelementptr inbounds %struct.anon.4, %struct.anon.4* %BinOp, i32 0, i32 0
  %34 = load %struct._expr*, %struct._expr** %left, align 8
  %call40 = call i32 @validate_expr(%struct._expr* %34, i32 1)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.38
  %35 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v42 = getelementptr inbounds %struct._expr, %struct._expr* %35, i32 0, i32 1
  %BinOp43 = bitcast %union.anon.2* %v42 to %struct.anon.4*
  %right = getelementptr inbounds %struct.anon.4, %struct.anon.4* %BinOp43, i32 0, i32 2
  %36 = load %struct._expr*, %struct._expr** %right, align 8
  %call44 = call i32 @validate_expr(%struct._expr* %36, i32 1)
  %tobool45 = icmp ne i32 %call44, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.38
  %37 = phi i1 [ false, %sw.bb.38 ], [ %tobool45, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.46:                                         ; preds = %if.end.23
  %38 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v47 = getelementptr inbounds %struct._expr, %struct._expr* %38, i32 0, i32 1
  %UnaryOp = bitcast %union.anon.2* %v47 to %struct.anon.5*
  %operand = getelementptr inbounds %struct.anon.5, %struct.anon.5* %UnaryOp, i32 0, i32 1
  %39 = load %struct._expr*, %struct._expr** %operand, align 8
  %call48 = call i32 @validate_expr(%struct._expr* %39, i32 1)
  store i32 %call48, i32* %retval
  br label %return

sw.bb.49:                                         ; preds = %if.end.23
  %40 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v50 = getelementptr inbounds %struct._expr, %struct._expr* %40, i32 0, i32 1
  %Lambda = bitcast %union.anon.2* %v50 to %struct.anon.6*
  %args = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda, i32 0, i32 0
  %41 = load %struct._arguments*, %struct._arguments** %args, align 8
  %call51 = call i32 @validate_arguments(%struct._arguments* %41)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.rhs.53, label %land.end.58

land.rhs.53:                                      ; preds = %sw.bb.49
  %42 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v54 = getelementptr inbounds %struct._expr, %struct._expr* %42, i32 0, i32 1
  %Lambda55 = bitcast %union.anon.2* %v54 to %struct.anon.6*
  %body = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda55, i32 0, i32 1
  %43 = load %struct._expr*, %struct._expr** %body, align 8
  %call56 = call i32 @validate_expr(%struct._expr* %43, i32 1)
  %tobool57 = icmp ne i32 %call56, 0
  br label %land.end.58

land.end.58:                                      ; preds = %land.rhs.53, %sw.bb.49
  %44 = phi i1 [ false, %sw.bb.49 ], [ %tobool57, %land.rhs.53 ]
  %land.ext59 = zext i1 %44 to i32
  store i32 %land.ext59, i32* %retval
  br label %return

sw.bb.60:                                         ; preds = %if.end.23
  %45 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v61 = getelementptr inbounds %struct._expr, %struct._expr* %45, i32 0, i32 1
  %IfExp = bitcast %union.anon.2* %v61 to %struct.anon.7*
  %test = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp, i32 0, i32 0
  %46 = load %struct._expr*, %struct._expr** %test, align 8
  %call62 = call i32 @validate_expr(%struct._expr* %46, i32 1)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %land.end.75

land.lhs.true.64:                                 ; preds = %sw.bb.60
  %47 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v65 = getelementptr inbounds %struct._expr, %struct._expr* %47, i32 0, i32 1
  %IfExp66 = bitcast %union.anon.2* %v65 to %struct.anon.7*
  %body67 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp66, i32 0, i32 1
  %48 = load %struct._expr*, %struct._expr** %body67, align 8
  %call68 = call i32 @validate_expr(%struct._expr* %48, i32 1)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.rhs.70, label %land.end.75

land.rhs.70:                                      ; preds = %land.lhs.true.64
  %49 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v71 = getelementptr inbounds %struct._expr, %struct._expr* %49, i32 0, i32 1
  %IfExp72 = bitcast %union.anon.2* %v71 to %struct.anon.7*
  %orelse = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp72, i32 0, i32 2
  %50 = load %struct._expr*, %struct._expr** %orelse, align 8
  %call73 = call i32 @validate_expr(%struct._expr* %50, i32 1)
  %tobool74 = icmp ne i32 %call73, 0
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.70, %land.lhs.true.64, %sw.bb.60
  %51 = phi i1 [ false, %land.lhs.true.64 ], [ false, %sw.bb.60 ], [ %tobool74, %land.rhs.70 ]
  %land.ext76 = zext i1 %51 to i32
  store i32 %land.ext76, i32* %retval
  br label %return

sw.bb.77:                                         ; preds = %if.end.23
  %52 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v78 = getelementptr inbounds %struct._expr, %struct._expr* %52, i32 0, i32 1
  %Dict = bitcast %union.anon.2* %v78 to %struct.anon.8*
  %keys = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict, i32 0, i32 0
  %53 = load %struct.asdl_seq*, %struct.asdl_seq** %keys, align 8
  %cmp79 = icmp eq %struct.asdl_seq* %53, null
  br i1 %cmp79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %sw.bb.77
  br label %cond.end.86

cond.false.81:                                    ; preds = %sw.bb.77
  %54 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v82 = getelementptr inbounds %struct._expr, %struct._expr* %54, i32 0, i32 1
  %Dict83 = bitcast %union.anon.2* %v82 to %struct.anon.8*
  %keys84 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict83, i32 0, i32 0
  %55 = load %struct.asdl_seq*, %struct.asdl_seq** %keys84, align 8
  %size85 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %55, i32 0, i32 0
  %56 = load i64, i64* %size85, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.81, %cond.true.80
  %cond87 = phi i64 [ 0, %cond.true.80 ], [ %56, %cond.false.81 ]
  %57 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v88 = getelementptr inbounds %struct._expr, %struct._expr* %57, i32 0, i32 1
  %Dict89 = bitcast %union.anon.2* %v88 to %struct.anon.8*
  %values90 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict89, i32 0, i32 1
  %58 = load %struct.asdl_seq*, %struct.asdl_seq** %values90, align 8
  %cmp91 = icmp eq %struct.asdl_seq* %58, null
  br i1 %cmp91, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.86
  br label %cond.end.98

cond.false.93:                                    ; preds = %cond.end.86
  %59 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v94 = getelementptr inbounds %struct._expr, %struct._expr* %59, i32 0, i32 1
  %Dict95 = bitcast %union.anon.2* %v94 to %struct.anon.8*
  %values96 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict95, i32 0, i32 1
  %60 = load %struct.asdl_seq*, %struct.asdl_seq** %values96, align 8
  %size97 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %60, i32 0, i32 0
  %61 = load i64, i64* %size97, align 8
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.93, %cond.true.92
  %cond99 = phi i64 [ 0, %cond.true.92 ], [ %61, %cond.false.93 ]
  %cmp100 = icmp ne i64 %cond87, %cond99
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.98
  %62 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %cond.end.98
  %63 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v103 = getelementptr inbounds %struct._expr, %struct._expr* %63, i32 0, i32 1
  %Dict104 = bitcast %union.anon.2* %v103 to %struct.anon.8*
  %keys105 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict104, i32 0, i32 0
  %64 = load %struct.asdl_seq*, %struct.asdl_seq** %keys105, align 8
  %call106 = call i32 @validate_exprs(%struct.asdl_seq* %64, i32 1, i32 0)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %land.rhs.108, label %land.end.114

land.rhs.108:                                     ; preds = %if.end.102
  %65 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v109 = getelementptr inbounds %struct._expr, %struct._expr* %65, i32 0, i32 1
  %Dict110 = bitcast %union.anon.2* %v109 to %struct.anon.8*
  %values111 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict110, i32 0, i32 1
  %66 = load %struct.asdl_seq*, %struct.asdl_seq** %values111, align 8
  %call112 = call i32 @validate_exprs(%struct.asdl_seq* %66, i32 1, i32 0)
  %tobool113 = icmp ne i32 %call112, 0
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.108, %if.end.102
  %67 = phi i1 [ false, %if.end.102 ], [ %tobool113, %land.rhs.108 ]
  %land.ext115 = zext i1 %67 to i32
  store i32 %land.ext115, i32* %retval
  br label %return

sw.bb.116:                                        ; preds = %if.end.23
  %68 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v117 = getelementptr inbounds %struct._expr, %struct._expr* %68, i32 0, i32 1
  %Set = bitcast %union.anon.2* %v117 to %struct.anon.9*
  %elts = getelementptr inbounds %struct.anon.9, %struct.anon.9* %Set, i32 0, i32 0
  %69 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %call118 = call i32 @validate_exprs(%struct.asdl_seq* %69, i32 1, i32 0)
  store i32 %call118, i32* %retval
  br label %return

sw.bb.119:                                        ; preds = %if.end.23
  %70 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v120 = getelementptr inbounds %struct._expr, %struct._expr* %70, i32 0, i32 1
  %ListComp = bitcast %union.anon.2* %v120 to %struct.anon.10*
  %generators = getelementptr inbounds %struct.anon.10, %struct.anon.10* %ListComp, i32 0, i32 1
  %71 = load %struct.asdl_seq*, %struct.asdl_seq** %generators, align 8
  %call121 = call i32 @validate_comprehension(%struct.asdl_seq* %71)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %land.rhs.123, label %land.end.128

land.rhs.123:                                     ; preds = %sw.bb.119
  %72 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v124 = getelementptr inbounds %struct._expr, %struct._expr* %72, i32 0, i32 1
  %ListComp125 = bitcast %union.anon.2* %v124 to %struct.anon.10*
  %elt = getelementptr inbounds %struct.anon.10, %struct.anon.10* %ListComp125, i32 0, i32 0
  %73 = load %struct._expr*, %struct._expr** %elt, align 8
  %call126 = call i32 @validate_expr(%struct._expr* %73, i32 1)
  %tobool127 = icmp ne i32 %call126, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.123, %sw.bb.119
  %74 = phi i1 [ false, %sw.bb.119 ], [ %tobool127, %land.rhs.123 ]
  %land.ext129 = zext i1 %74 to i32
  store i32 %land.ext129, i32* %retval
  br label %return

sw.bb.130:                                        ; preds = %if.end.23
  %75 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v131 = getelementptr inbounds %struct._expr, %struct._expr* %75, i32 0, i32 1
  %SetComp = bitcast %union.anon.2* %v131 to %struct.anon.11*
  %generators132 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %SetComp, i32 0, i32 1
  %76 = load %struct.asdl_seq*, %struct.asdl_seq** %generators132, align 8
  %call133 = call i32 @validate_comprehension(%struct.asdl_seq* %76)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %land.rhs.135, label %land.end.141

land.rhs.135:                                     ; preds = %sw.bb.130
  %77 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v136 = getelementptr inbounds %struct._expr, %struct._expr* %77, i32 0, i32 1
  %SetComp137 = bitcast %union.anon.2* %v136 to %struct.anon.11*
  %elt138 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %SetComp137, i32 0, i32 0
  %78 = load %struct._expr*, %struct._expr** %elt138, align 8
  %call139 = call i32 @validate_expr(%struct._expr* %78, i32 1)
  %tobool140 = icmp ne i32 %call139, 0
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.135, %sw.bb.130
  %79 = phi i1 [ false, %sw.bb.130 ], [ %tobool140, %land.rhs.135 ]
  %land.ext142 = zext i1 %79 to i32
  store i32 %land.ext142, i32* %retval
  br label %return

sw.bb.143:                                        ; preds = %if.end.23
  %80 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v144 = getelementptr inbounds %struct._expr, %struct._expr* %80, i32 0, i32 1
  %GeneratorExp = bitcast %union.anon.2* %v144 to %struct.anon.13*
  %generators145 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %GeneratorExp, i32 0, i32 1
  %81 = load %struct.asdl_seq*, %struct.asdl_seq** %generators145, align 8
  %call146 = call i32 @validate_comprehension(%struct.asdl_seq* %81)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %land.rhs.148, label %land.end.154

land.rhs.148:                                     ; preds = %sw.bb.143
  %82 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v149 = getelementptr inbounds %struct._expr, %struct._expr* %82, i32 0, i32 1
  %GeneratorExp150 = bitcast %union.anon.2* %v149 to %struct.anon.13*
  %elt151 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %GeneratorExp150, i32 0, i32 0
  %83 = load %struct._expr*, %struct._expr** %elt151, align 8
  %call152 = call i32 @validate_expr(%struct._expr* %83, i32 1)
  %tobool153 = icmp ne i32 %call152, 0
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.148, %sw.bb.143
  %84 = phi i1 [ false, %sw.bb.143 ], [ %tobool153, %land.rhs.148 ]
  %land.ext155 = zext i1 %84 to i32
  store i32 %land.ext155, i32* %retval
  br label %return

sw.bb.156:                                        ; preds = %if.end.23
  %85 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v157 = getelementptr inbounds %struct._expr, %struct._expr* %85, i32 0, i32 1
  %DictComp = bitcast %union.anon.2* %v157 to %struct.anon.12*
  %generators158 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp, i32 0, i32 2
  %86 = load %struct.asdl_seq*, %struct.asdl_seq** %generators158, align 8
  %call159 = call i32 @validate_comprehension(%struct.asdl_seq* %86)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %land.lhs.true.161, label %land.end.171

land.lhs.true.161:                                ; preds = %sw.bb.156
  %87 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v162 = getelementptr inbounds %struct._expr, %struct._expr* %87, i32 0, i32 1
  %DictComp163 = bitcast %union.anon.2* %v162 to %struct.anon.12*
  %key = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp163, i32 0, i32 0
  %88 = load %struct._expr*, %struct._expr** %key, align 8
  %call164 = call i32 @validate_expr(%struct._expr* %88, i32 1)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %land.rhs.166, label %land.end.171

land.rhs.166:                                     ; preds = %land.lhs.true.161
  %89 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v167 = getelementptr inbounds %struct._expr, %struct._expr* %89, i32 0, i32 1
  %DictComp168 = bitcast %union.anon.2* %v167 to %struct.anon.12*
  %value = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp168, i32 0, i32 1
  %90 = load %struct._expr*, %struct._expr** %value, align 8
  %call169 = call i32 @validate_expr(%struct._expr* %90, i32 1)
  %tobool170 = icmp ne i32 %call169, 0
  br label %land.end.171

land.end.171:                                     ; preds = %land.rhs.166, %land.lhs.true.161, %sw.bb.156
  %91 = phi i1 [ false, %land.lhs.true.161 ], [ false, %sw.bb.156 ], [ %tobool170, %land.rhs.166 ]
  %land.ext172 = zext i1 %91 to i32
  store i32 %land.ext172, i32* %retval
  br label %return

sw.bb.173:                                        ; preds = %if.end.23
  %92 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v174 = getelementptr inbounds %struct._expr, %struct._expr* %92, i32 0, i32 1
  %Yield = bitcast %union.anon.2* %v174 to %struct.anon.14*
  %value175 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %Yield, i32 0, i32 0
  %93 = load %struct._expr*, %struct._expr** %value175, align 8
  %tobool176 = icmp ne %struct._expr* %93, null
  br i1 %tobool176, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %sw.bb.173
  %94 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v177 = getelementptr inbounds %struct._expr, %struct._expr* %94, i32 0, i32 1
  %Yield178 = bitcast %union.anon.2* %v177 to %struct.anon.14*
  %value179 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %Yield178, i32 0, i32 0
  %95 = load %struct._expr*, %struct._expr** %value179, align 8
  %call180 = call i32 @validate_expr(%struct._expr* %95, i32 1)
  %tobool181 = icmp ne i32 %call180, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.173
  %96 = phi i1 [ true, %sw.bb.173 ], [ %tobool181, %lor.rhs ]
  %lor.ext = zext i1 %96 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.182:                                        ; preds = %if.end.23
  %97 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v183 = getelementptr inbounds %struct._expr, %struct._expr* %97, i32 0, i32 1
  %YieldFrom = bitcast %union.anon.2* %v183 to %struct.anon.15*
  %value184 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %YieldFrom, i32 0, i32 0
  %98 = load %struct._expr*, %struct._expr** %value184, align 8
  %call185 = call i32 @validate_expr(%struct._expr* %98, i32 1)
  store i32 %call185, i32* %retval
  br label %return

sw.bb.186:                                        ; preds = %if.end.23
  %99 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v187 = getelementptr inbounds %struct._expr, %struct._expr* %99, i32 0, i32 1
  %Compare = bitcast %union.anon.2* %v187 to %struct.anon.16*
  %comparators = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare, i32 0, i32 2
  %100 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators, align 8
  %cmp188 = icmp eq %struct.asdl_seq* %100, null
  br i1 %cmp188, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %sw.bb.186
  br i1 false, label %if.end.197, label %if.then.196

cond.false.190:                                   ; preds = %sw.bb.186
  %101 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v191 = getelementptr inbounds %struct._expr, %struct._expr* %101, i32 0, i32 1
  %Compare192 = bitcast %union.anon.2* %v191 to %struct.anon.16*
  %comparators193 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare192, i32 0, i32 2
  %102 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators193, align 8
  %size194 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %102, i32 0, i32 0
  %103 = load i64, i64* %size194, align 8
  %tobool195 = icmp ne i64 %103, 0
  br i1 %tobool195, label %if.end.197, label %if.then.196

if.then.196:                                      ; preds = %cond.false.190, %cond.true.189
  %104 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.197:                                       ; preds = %cond.false.190, %cond.true.189
  %105 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v198 = getelementptr inbounds %struct._expr, %struct._expr* %105, i32 0, i32 1
  %Compare199 = bitcast %union.anon.2* %v198 to %struct.anon.16*
  %comparators200 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare199, i32 0, i32 2
  %106 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators200, align 8
  %cmp201 = icmp eq %struct.asdl_seq* %106, null
  br i1 %cmp201, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %if.end.197
  br label %cond.end.208

cond.false.203:                                   ; preds = %if.end.197
  %107 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v204 = getelementptr inbounds %struct._expr, %struct._expr* %107, i32 0, i32 1
  %Compare205 = bitcast %union.anon.2* %v204 to %struct.anon.16*
  %comparators206 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare205, i32 0, i32 2
  %108 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators206, align 8
  %size207 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %108, i32 0, i32 0
  %109 = load i64, i64* %size207, align 8
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.203, %cond.true.202
  %cond209 = phi i64 [ 0, %cond.true.202 ], [ %109, %cond.false.203 ]
  %110 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v210 = getelementptr inbounds %struct._expr, %struct._expr* %110, i32 0, i32 1
  %Compare211 = bitcast %union.anon.2* %v210 to %struct.anon.16*
  %ops = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare211, i32 0, i32 1
  %111 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %ops, align 8
  %cmp212 = icmp eq %struct.asdl_int_seq* %111, null
  br i1 %cmp212, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %cond.end.208
  br label %cond.end.219

cond.false.214:                                   ; preds = %cond.end.208
  %112 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v215 = getelementptr inbounds %struct._expr, %struct._expr* %112, i32 0, i32 1
  %Compare216 = bitcast %union.anon.2* %v215 to %struct.anon.16*
  %ops217 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare216, i32 0, i32 1
  %113 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %ops217, align 8
  %size218 = getelementptr inbounds %struct.asdl_int_seq, %struct.asdl_int_seq* %113, i32 0, i32 0
  %114 = load i64, i64* %size218, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.214, %cond.true.213
  %cond220 = phi i64 [ 0, %cond.true.213 ], [ %114, %cond.false.214 ]
  %cmp221 = icmp ne i64 %cond209, %cond220
  br i1 %cmp221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %cond.end.219
  %115 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %115, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.223:                                       ; preds = %cond.end.219
  %116 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v224 = getelementptr inbounds %struct._expr, %struct._expr* %116, i32 0, i32 1
  %Compare225 = bitcast %union.anon.2* %v224 to %struct.anon.16*
  %comparators226 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare225, i32 0, i32 2
  %117 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators226, align 8
  %call227 = call i32 @validate_exprs(%struct.asdl_seq* %117, i32 1, i32 0)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %land.rhs.229, label %land.end.235

land.rhs.229:                                     ; preds = %if.end.223
  %118 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v230 = getelementptr inbounds %struct._expr, %struct._expr* %118, i32 0, i32 1
  %Compare231 = bitcast %union.anon.2* %v230 to %struct.anon.16*
  %left232 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare231, i32 0, i32 0
  %119 = load %struct._expr*, %struct._expr** %left232, align 8
  %call233 = call i32 @validate_expr(%struct._expr* %119, i32 1)
  %tobool234 = icmp ne i32 %call233, 0
  br label %land.end.235

land.end.235:                                     ; preds = %land.rhs.229, %if.end.223
  %120 = phi i1 [ false, %if.end.223 ], [ %tobool234, %land.rhs.229 ]
  %land.ext236 = zext i1 %120 to i32
  store i32 %land.ext236, i32* %retval
  br label %return

sw.bb.237:                                        ; preds = %if.end.23
  %121 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v238 = getelementptr inbounds %struct._expr, %struct._expr* %121, i32 0, i32 1
  %Call = bitcast %union.anon.2* %v238 to %struct.anon.17*
  %func = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call, i32 0, i32 0
  %122 = load %struct._expr*, %struct._expr** %func, align 8
  %call239 = call i32 @validate_expr(%struct._expr* %122, i32 1)
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %land.lhs.true.241, label %land.end.273

land.lhs.true.241:                                ; preds = %sw.bb.237
  %123 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v242 = getelementptr inbounds %struct._expr, %struct._expr* %123, i32 0, i32 1
  %Call243 = bitcast %union.anon.2* %v242 to %struct.anon.17*
  %args244 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call243, i32 0, i32 1
  %124 = load %struct.asdl_seq*, %struct.asdl_seq** %args244, align 8
  %call245 = call i32 @validate_exprs(%struct.asdl_seq* %124, i32 1, i32 0)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %land.lhs.true.247, label %land.end.273

land.lhs.true.247:                                ; preds = %land.lhs.true.241
  %125 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v248 = getelementptr inbounds %struct._expr, %struct._expr* %125, i32 0, i32 1
  %Call249 = bitcast %union.anon.2* %v248 to %struct.anon.17*
  %keywords = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call249, i32 0, i32 2
  %126 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %call250 = call i32 @validate_keywords(%struct.asdl_seq* %126)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %land.lhs.true.252, label %land.end.273

land.lhs.true.252:                                ; preds = %land.lhs.true.247
  %127 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v253 = getelementptr inbounds %struct._expr, %struct._expr* %127, i32 0, i32 1
  %Call254 = bitcast %union.anon.2* %v253 to %struct.anon.17*
  %starargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call254, i32 0, i32 3
  %128 = load %struct._expr*, %struct._expr** %starargs, align 8
  %tobool255 = icmp ne %struct._expr* %128, null
  br i1 %tobool255, label %lor.lhs.false, label %land.rhs.261

lor.lhs.false:                                    ; preds = %land.lhs.true.252
  %129 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v256 = getelementptr inbounds %struct._expr, %struct._expr* %129, i32 0, i32 1
  %Call257 = bitcast %union.anon.2* %v256 to %struct.anon.17*
  %starargs258 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call257, i32 0, i32 3
  %130 = load %struct._expr*, %struct._expr** %starargs258, align 8
  %call259 = call i32 @validate_expr(%struct._expr* %130, i32 1)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %land.rhs.261, label %land.end.273

land.rhs.261:                                     ; preds = %lor.lhs.false, %land.lhs.true.252
  %131 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v262 = getelementptr inbounds %struct._expr, %struct._expr* %131, i32 0, i32 1
  %Call263 = bitcast %union.anon.2* %v262 to %struct.anon.17*
  %kwargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call263, i32 0, i32 4
  %132 = load %struct._expr*, %struct._expr** %kwargs, align 8
  %tobool264 = icmp ne %struct._expr* %132, null
  br i1 %tobool264, label %lor.rhs.265, label %lor.end.271

lor.rhs.265:                                      ; preds = %land.rhs.261
  %133 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v266 = getelementptr inbounds %struct._expr, %struct._expr* %133, i32 0, i32 1
  %Call267 = bitcast %union.anon.2* %v266 to %struct.anon.17*
  %kwargs268 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call267, i32 0, i32 4
  %134 = load %struct._expr*, %struct._expr** %kwargs268, align 8
  %call269 = call i32 @validate_expr(%struct._expr* %134, i32 1)
  %tobool270 = icmp ne i32 %call269, 0
  br label %lor.end.271

lor.end.271:                                      ; preds = %lor.rhs.265, %land.rhs.261
  %135 = phi i1 [ true, %land.rhs.261 ], [ %tobool270, %lor.rhs.265 ]
  br label %land.end.273

land.end.273:                                     ; preds = %lor.end.271, %lor.lhs.false, %land.lhs.true.247, %land.lhs.true.241, %sw.bb.237
  %136 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true.247 ], [ false, %land.lhs.true.241 ], [ false, %sw.bb.237 ], [ %135, %lor.end.271 ]
  %land.ext274 = zext i1 %136 to i32
  store i32 %land.ext274, i32* %retval
  br label %return

sw.bb.275:                                        ; preds = %if.end.23
  %137 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v276 = getelementptr inbounds %struct._expr, %struct._expr* %137, i32 0, i32 1
  %Num = bitcast %union.anon.2* %v276 to %struct.anon.18*
  %n277 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %Num, i32 0, i32 0
  %138 = load %struct._object*, %struct._object** %n277, align 8
  store %struct._object* %138, %struct._object** %n, align 8
  %139 = load %struct._object*, %struct._object** %n, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp278 = icmp eq %struct._typeobject* %140, @PyLong_Type
  br i1 %cmp278, label %if.end.286, label %land.lhs.true.279

land.lhs.true.279:                                ; preds = %sw.bb.275
  %141 = load %struct._object*, %struct._object** %n, align 8
  %ob_type280 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type280, align 8
  %cmp281 = icmp eq %struct._typeobject* %142, @PyFloat_Type
  br i1 %cmp281, label %if.end.286, label %land.lhs.true.282

land.lhs.true.282:                                ; preds = %land.lhs.true.279
  %143 = load %struct._object*, %struct._object** %n, align 8
  %ob_type283 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type283, align 8
  %cmp284 = icmp eq %struct._typeobject* %144, @PyComplex_Type
  br i1 %cmp284, label %if.end.286, label %if.then.285

if.then.285:                                      ; preds = %land.lhs.true.282
  %145 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.286:                                       ; preds = %land.lhs.true.282, %land.lhs.true.279, %sw.bb.275
  store i32 1, i32* %retval
  br label %return

sw.bb.287:                                        ; preds = %if.end.23
  %146 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v288 = getelementptr inbounds %struct._expr, %struct._expr* %146, i32 0, i32 1
  %Str = bitcast %union.anon.2* %v288 to %struct.anon.19*
  %s289 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %Str, i32 0, i32 0
  %147 = load %struct._object*, %struct._object** %s289, align 8
  store %struct._object* %147, %struct._object** %s, align 8
  %148 = load %struct._object*, %struct._object** %s, align 8
  %ob_type290 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type290, align 8
  %cmp291 = icmp eq %struct._typeobject* %149, @PyUnicode_Type
  br i1 %cmp291, label %if.end.293, label %if.then.292

if.then.292:                                      ; preds = %sw.bb.287
  %150 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.293:                                       ; preds = %sw.bb.287
  store i32 1, i32* %retval
  br label %return

sw.bb.294:                                        ; preds = %if.end.23
  %151 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v295 = getelementptr inbounds %struct._expr, %struct._expr* %151, i32 0, i32 1
  %Bytes = bitcast %union.anon.2* %v295 to %struct.anon.20*
  %s296 = getelementptr inbounds %struct.anon.20, %struct.anon.20* %Bytes, i32 0, i32 0
  %152 = load %struct._object*, %struct._object** %s296, align 8
  store %struct._object* %152, %struct._object** %b, align 8
  %153 = load %struct._object*, %struct._object** %b, align 8
  %ob_type297 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type297, align 8
  %cmp298 = icmp eq %struct._typeobject* %154, @PyBytes_Type
  br i1 %cmp298, label %if.end.300, label %if.then.299

if.then.299:                                      ; preds = %sw.bb.294
  %155 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.300:                                       ; preds = %sw.bb.294
  store i32 1, i32* %retval
  br label %return

sw.bb.301:                                        ; preds = %if.end.23
  %156 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v302 = getelementptr inbounds %struct._expr, %struct._expr* %156, i32 0, i32 1
  %Attribute303 = bitcast %union.anon.2* %v302 to %struct.anon.22*
  %value304 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %Attribute303, i32 0, i32 0
  %157 = load %struct._expr*, %struct._expr** %value304, align 8
  %call305 = call i32 @validate_expr(%struct._expr* %157, i32 1)
  store i32 %call305, i32* %retval
  br label %return

sw.bb.306:                                        ; preds = %if.end.23
  %158 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v307 = getelementptr inbounds %struct._expr, %struct._expr* %158, i32 0, i32 1
  %Subscript308 = bitcast %union.anon.2* %v307 to %struct.anon.23*
  %slice = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript308, i32 0, i32 1
  %159 = load %struct._slice*, %struct._slice** %slice, align 8
  %call309 = call i32 @validate_slice(%struct._slice* %159)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %land.rhs.311, label %land.end.317

land.rhs.311:                                     ; preds = %sw.bb.306
  %160 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v312 = getelementptr inbounds %struct._expr, %struct._expr* %160, i32 0, i32 1
  %Subscript313 = bitcast %union.anon.2* %v312 to %struct.anon.23*
  %value314 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript313, i32 0, i32 0
  %161 = load %struct._expr*, %struct._expr** %value314, align 8
  %call315 = call i32 @validate_expr(%struct._expr* %161, i32 1)
  %tobool316 = icmp ne i32 %call315, 0
  br label %land.end.317

land.end.317:                                     ; preds = %land.rhs.311, %sw.bb.306
  %162 = phi i1 [ false, %sw.bb.306 ], [ %tobool316, %land.rhs.311 ]
  %land.ext318 = zext i1 %162 to i32
  store i32 %land.ext318, i32* %retval
  br label %return

sw.bb.319:                                        ; preds = %if.end.23
  %163 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v320 = getelementptr inbounds %struct._expr, %struct._expr* %163, i32 0, i32 1
  %Starred321 = bitcast %union.anon.2* %v320 to %struct.anon.28*
  %value322 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %Starred321, i32 0, i32 0
  %164 = load %struct._expr*, %struct._expr** %value322, align 8
  %165 = load i32, i32* %ctx.addr, align 4
  %call323 = call i32 @validate_expr(%struct._expr* %164, i32 %165)
  store i32 %call323, i32* %retval
  br label %return

sw.bb.324:                                        ; preds = %if.end.23
  %166 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v325 = getelementptr inbounds %struct._expr, %struct._expr* %166, i32 0, i32 1
  %List326 = bitcast %union.anon.2* %v325 to %struct.anon.30*
  %elts327 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %List326, i32 0, i32 0
  %167 = load %struct.asdl_seq*, %struct.asdl_seq** %elts327, align 8
  %168 = load i32, i32* %ctx.addr, align 4
  %call328 = call i32 @validate_exprs(%struct.asdl_seq* %167, i32 %168, i32 0)
  store i32 %call328, i32* %retval
  br label %return

sw.bb.329:                                        ; preds = %if.end.23
  %169 = load %struct._expr*, %struct._expr** %exp.addr, align 8
  %v330 = getelementptr inbounds %struct._expr, %struct._expr* %169, i32 0, i32 1
  %Tuple331 = bitcast %union.anon.2* %v330 to %struct.anon.31*
  %elts332 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple331, i32 0, i32 0
  %170 = load %struct.asdl_seq*, %struct.asdl_seq** %elts332, align 8
  %171 = load i32, i32* %ctx.addr, align 4
  %call333 = call i32 @validate_exprs(%struct.asdl_seq* %170, i32 %171, i32 0)
  store i32 %call333, i32* %retval
  br label %return

sw.bb.334:                                        ; preds = %if.end.23, %if.end.23, %if.end.23
  store i32 1, i32* %retval
  br label %return

sw.default.335:                                   ; preds = %if.end.23
  %172 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.335, %sw.bb.334, %sw.bb.329, %sw.bb.324, %sw.bb.319, %land.end.317, %sw.bb.301, %if.end.300, %if.then.299, %if.end.293, %if.then.292, %if.end.286, %if.then.285, %land.end.273, %land.end.235, %if.then.222, %if.then.196, %sw.bb.182, %lor.end, %land.end.171, %land.end.154, %land.end.141, %land.end.128, %sw.bb.116, %land.end.114, %if.then.101, %land.end.75, %land.end.58, %sw.bb.46, %land.end, %if.end.33, %if.then.32, %if.then.19, %if.then
  %173 = load i32, i32* %retval
  ret i32 %173
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._mod* @PyAST_FromNodeObject(%struct._node* %n, %struct.PyCompilerFlags* %flags, %struct._object* %filename, %struct._arena* %arena) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i32, align 4
  %stmts = alloca %struct.asdl_seq*, align 8
  %s = alloca %struct._stmt*, align 8
  %ch = alloca %struct._node*, align 8
  %c = alloca %struct.compiling, align 8
  %res = alloca %struct._mod*, align 8
  %testlist_ast = alloca %struct._expr*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %stmts, align 8
  store %struct._mod* null, %struct._mod** %res, align 8
  %0 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 1
  store %struct._arena* %0, %struct._arena** %c_arena, align 8
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8
  %c_filename = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 2
  store %struct._object* %1, %struct._object** %c_filename, align 8
  %c_normalize_args = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 4
  store %struct._object* null, %struct._object** %c_normalize_args, align 8
  %c_normalize = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 3
  store %struct._object* null, %struct._object** %c_normalize, align 8
  %2 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %tobool = icmp ne %struct.PyCompilerFlags* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %3, i32 0, i32 0
  %4 = load i32, i32* %cf_flags, align 4
  %and = and i32 %4, 256
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %c_encoding = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %c_encoding, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 335
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %8, i64 0
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type4 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 0
  %10 = load i16, i16* %n_type4, align 2
  %conv5 = sext i16 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 335
  br i1 %cmp6, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.else
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 1
  %12 = load i8*, i8** %n_str, align 8
  %c_encoding9 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 0
  store i8* %12, i8** %c_encoding9, align 8
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %14, i64 0
  store %struct._node* %arrayidx11, %struct._node** %n.addr, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %if.else
  %c_encoding13 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %c_encoding13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  store i32 0, i32* %k, align 4
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type16 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 0
  %16 = load i16, i16* %n_type16, align 2
  %conv17 = sext i16 %16 to i32
  switch i32 %conv17, label %sw.default [
    i32 257, label %sw.bb
    i32 258, label %sw.bb.67
    i32 256, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.end.15
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @num_stmts(%struct._node* %17)
  %conv18 = sext i32 %call to i64
  %18 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call19 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv18, %struct._arena* %18)
  store %struct.asdl_seq* %call19, %struct.asdl_seq** %stmts, align 8
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %tobool20 = icmp ne %struct.asdl_seq* %19, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %sw.bb
  br label %out

if.end.22:                                        ; preds = %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end.22
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %22, 1
  %cmp23 = icmp slt i32 %20, %sub
  br i1 %cmp23, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %25, i64 %idxprom
  store %struct._node* %arrayidx26, %struct._node** %ch, align 8
  %26 = load %struct._node*, %struct._node** %ch, align 8
  %n_type27 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 0
  %27 = load i16, i16* %n_type27, align 2
  %conv28 = sext i16 %27 to i32
  %cmp29 = icmp eq i32 %conv28, 4
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  br label %for.inc.63

if.end.32:                                        ; preds = %for.body
  %28 = load %struct._node*, %struct._node** %ch, align 8
  %call33 = call i32 @num_stmts(%struct._node* %28)
  store i32 %call33, i32* %num, align 4
  %29 = load i32, i32* %num, align 4
  %cmp34 = icmp eq i32 %29, 1
  br i1 %cmp34, label %if.then.36, label %if.else.43

if.then.36:                                       ; preds = %if.end.32
  %30 = load %struct._node*, %struct._node** %ch, align 8
  %call37 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %c, %struct._node* %30)
  store %struct._stmt* %call37, %struct._stmt** %s, align 8
  %31 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool38 = icmp ne %struct._stmt* %31, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.36
  br label %out

if.end.40:                                        ; preds = %if.then.36
  %32 = load %struct._stmt*, %struct._stmt** %s, align 8
  %33 = bitcast %struct._stmt* %32 to i8*
  %34 = load i32, i32* %k, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %k, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %35, i32 0, i32 1
  %arrayidx42 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom41
  store i8* %33, i8** %arrayidx42, align 8
  br label %if.end.62

if.else.43:                                       ; preds = %if.end.32
  %36 = load %struct._node*, %struct._node** %ch, align 8
  %n_child44 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 5
  %37 = load %struct._node*, %struct._node** %n_child44, align 8
  %arrayidx45 = getelementptr %struct._node, %struct._node* %37, i64 0
  store %struct._node* %arrayidx45, %struct._node** %ch, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.else.43
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %num, align 4
  %cmp47 = icmp slt i32 %38, %39
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %40 = load i32, i32* %j, align 4
  %mul = mul i32 %40, 2
  %idxprom50 = sext i32 %mul to i64
  %41 = load %struct._node*, %struct._node** %ch, align 8
  %n_child51 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child51, align 8
  %arrayidx52 = getelementptr %struct._node, %struct._node* %42, i64 %idxprom50
  %call53 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %c, %struct._node* %arrayidx52)
  store %struct._stmt* %call53, %struct._stmt** %s, align 8
  %43 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool54 = icmp ne %struct._stmt* %43, null
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %for.body.49
  br label %out

if.end.56:                                        ; preds = %for.body.49
  %44 = load %struct._stmt*, %struct._stmt** %s, align 8
  %45 = bitcast %struct._stmt* %44 to i8*
  %46 = load i32, i32* %k, align 4
  %inc57 = add i32 %46, 1
  store i32 %inc57, i32* %k, align 4
  %idxprom58 = sext i32 %46 to i64
  %47 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements59 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %47, i32 0, i32 1
  %arrayidx60 = getelementptr [1 x i8*], [1 x i8*]* %elements59, i32 0, i64 %idxprom58
  store i8* %45, i8** %arrayidx60, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %48 = load i32, i32* %j, align 4
  %inc61 = add i32 %48, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %if.end.40
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62, %if.then.31
  %49 = load i32, i32* %i, align 4
  %inc64 = add i32 %49, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %50 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %51 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call66 = call %struct._mod* @_Py_Module(%struct.asdl_seq* %50, %struct._arena* %51)
  store %struct._mod* %call66, %struct._mod** %res, align 8
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.15
  %52 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child68 = getelementptr inbounds %struct._node, %struct._node* %52, i32 0, i32 5
  %53 = load %struct._node*, %struct._node** %n_child68, align 8
  %arrayidx69 = getelementptr %struct._node, %struct._node* %53, i64 0
  %call70 = call %struct._expr* @ast_for_testlist(%struct.compiling* %c, %struct._node* %arrayidx69)
  store %struct._expr* %call70, %struct._expr** %testlist_ast, align 8
  %54 = load %struct._expr*, %struct._expr** %testlist_ast, align 8
  %tobool71 = icmp ne %struct._expr* %54, null
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %sw.bb.67
  br label %out

if.end.73:                                        ; preds = %sw.bb.67
  %55 = load %struct._expr*, %struct._expr** %testlist_ast, align 8
  %56 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call74 = call %struct._mod* @_Py_Expression(%struct._expr* %55, %struct._arena* %56)
  store %struct._mod* %call74, %struct._mod** %res, align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.15
  %57 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child76 = getelementptr inbounds %struct._node, %struct._node* %57, i32 0, i32 5
  %58 = load %struct._node*, %struct._node** %n_child76, align 8
  %arrayidx77 = getelementptr %struct._node, %struct._node* %58, i64 0
  %n_type78 = getelementptr inbounds %struct._node, %struct._node* %arrayidx77, i32 0, i32 0
  %59 = load i16, i16* %n_type78, align 2
  %conv79 = sext i16 %59 to i32
  %cmp80 = icmp eq i32 %conv79, 4
  br i1 %cmp80, label %if.then.82, label %if.else.96

if.then.82:                                       ; preds = %sw.bb.75
  %60 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call83 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 1, %struct._arena* %60)
  store %struct.asdl_seq* %call83, %struct.asdl_seq** %stmts, align 8
  %61 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %tobool84 = icmp ne %struct.asdl_seq* %61, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.82
  br label %out

if.end.86:                                        ; preds = %if.then.82
  %62 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %62, i32 0, i32 2
  %63 = load i32, i32* %n_lineno, align 4
  %64 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 3
  %65 = load i32, i32* %n_col_offset, align 4
  %66 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call87 = call %struct._stmt* @_Py_Pass(i32 %63, i32 %65, %struct._arena* %66)
  %67 = bitcast %struct._stmt* %call87 to i8*
  %68 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements88 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %68, i32 0, i32 1
  %arrayidx89 = getelementptr [1 x i8*], [1 x i8*]* %elements88, i32 0, i64 0
  store i8* %67, i8** %arrayidx89, align 8
  %69 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements90 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %69, i32 0, i32 1
  %arrayidx91 = getelementptr [1 x i8*], [1 x i8*]* %elements90, i32 0, i64 0
  %70 = load i8*, i8** %arrayidx91, align 8
  %tobool92 = icmp ne i8* %70, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.86
  br label %out

if.end.94:                                        ; preds = %if.end.86
  %71 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %72 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call95 = call %struct._mod* @_Py_Interactive(%struct.asdl_seq* %71, %struct._arena* %72)
  store %struct._mod* %call95, %struct._mod** %res, align 8
  br label %if.end.143

if.else.96:                                       ; preds = %sw.bb.75
  %73 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child97 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 5
  %74 = load %struct._node*, %struct._node** %n_child97, align 8
  %arrayidx98 = getelementptr %struct._node, %struct._node* %74, i64 0
  store %struct._node* %arrayidx98, %struct._node** %n.addr, align 8
  %75 = load %struct._node*, %struct._node** %n.addr, align 8
  %call99 = call i32 @num_stmts(%struct._node* %75)
  store i32 %call99, i32* %num, align 4
  %76 = load i32, i32* %num, align 4
  %conv100 = sext i32 %76 to i64
  %77 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call101 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv100, %struct._arena* %77)
  store %struct.asdl_seq* %call101, %struct.asdl_seq** %stmts, align 8
  %78 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %tobool102 = icmp ne %struct.asdl_seq* %78, null
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %if.else.96
  br label %out

if.end.104:                                       ; preds = %if.else.96
  %79 = load i32, i32* %num, align 4
  %cmp105 = icmp eq i32 %79, 1
  br i1 %cmp105, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %if.end.104
  %80 = load %struct._node*, %struct._node** %n.addr, align 8
  %call108 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %c, %struct._node* %80)
  store %struct._stmt* %call108, %struct._stmt** %s, align 8
  %81 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool109 = icmp ne %struct._stmt* %81, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %if.then.107
  br label %out

if.end.111:                                       ; preds = %if.then.107
  %82 = load %struct._stmt*, %struct._stmt** %s, align 8
  %83 = bitcast %struct._stmt* %82 to i8*
  %84 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements112 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %84, i32 0, i32 1
  %arrayidx113 = getelementptr [1 x i8*], [1 x i8*]* %elements112, i32 0, i64 0
  store i8* %83, i8** %arrayidx113, align 8
  br label %if.end.141

if.else.114:                                      ; preds = %if.end.104
  store i32 0, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.139, %if.else.114
  %85 = load i32, i32* %i, align 4
  %86 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren116 = getelementptr inbounds %struct._node, %struct._node* %86, i32 0, i32 4
  %87 = load i32, i32* %n_nchildren116, align 4
  %cmp117 = icmp slt i32 %85, %87
  br i1 %cmp117, label %for.body.119, label %for.end.140

for.body.119:                                     ; preds = %for.cond.115
  %88 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %88 to i64
  %89 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child121 = getelementptr inbounds %struct._node, %struct._node* %89, i32 0, i32 5
  %90 = load %struct._node*, %struct._node** %n_child121, align 8
  %arrayidx122 = getelementptr %struct._node, %struct._node* %90, i64 %idxprom120
  %n_type123 = getelementptr inbounds %struct._node, %struct._node* %arrayidx122, i32 0, i32 0
  %91 = load i16, i16* %n_type123, align 2
  %conv124 = sext i16 %91 to i32
  %cmp125 = icmp eq i32 %conv124, 4
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.body.119
  br label %for.end.140

if.end.128:                                       ; preds = %for.body.119
  %92 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %92 to i64
  %93 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child130 = getelementptr inbounds %struct._node, %struct._node* %93, i32 0, i32 5
  %94 = load %struct._node*, %struct._node** %n_child130, align 8
  %arrayidx131 = getelementptr %struct._node, %struct._node* %94, i64 %idxprom129
  %call132 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %c, %struct._node* %arrayidx131)
  store %struct._stmt* %call132, %struct._stmt** %s, align 8
  %95 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool133 = icmp ne %struct._stmt* %95, null
  br i1 %tobool133, label %if.end.135, label %if.then.134

if.then.134:                                      ; preds = %if.end.128
  br label %out

if.end.135:                                       ; preds = %if.end.128
  %96 = load %struct._stmt*, %struct._stmt** %s, align 8
  %97 = bitcast %struct._stmt* %96 to i8*
  %98 = load i32, i32* %i, align 4
  %div = sdiv i32 %98, 2
  %idxprom136 = sext i32 %div to i64
  %99 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %elements137 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %99, i32 0, i32 1
  %arrayidx138 = getelementptr [1 x i8*], [1 x i8*]* %elements137, i32 0, i64 %idxprom136
  store i8* %97, i8** %arrayidx138, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.135
  %100 = load i32, i32* %i, align 4
  %add = add i32 %100, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond.115

for.end.140:                                      ; preds = %if.then.127, %for.cond.115
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %if.end.111
  %101 = load %struct.asdl_seq*, %struct.asdl_seq** %stmts, align 8
  %102 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call142 = call %struct._mod* @_Py_Interactive(%struct.asdl_seq* %101, %struct._arena* %102)
  store %struct._mod* %call142, %struct._mod** %res, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.141, %if.end.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.15
  %103 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %104 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type144 = getelementptr inbounds %struct._node, %struct._node* %104, i32 0, i32 0
  %105 = load i16, i16* %n_type144, align 2
  %conv145 = sext i16 %105 to i32
  %call146 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %conv145)
  br label %out

sw.epilog:                                        ; preds = %if.end.143, %if.end.73, %for.end.65
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default, %if.then.134, %if.then.110, %if.then.103, %if.then.93, %if.then.85, %if.then.72, %if.then.55, %if.then.39, %if.then.21
  %c_normalize147 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 3
  %106 = load %struct._object*, %struct._object** %c_normalize147, align 8
  %tobool148 = icmp ne %struct._object* %106, null
  br i1 %tobool148, label %if.then.149, label %if.end.171

if.then.149:                                      ; preds = %out
  br label %do.body

do.body:                                          ; preds = %if.then.149
  %c_normalize150 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 3
  %107 = load %struct._object*, %struct._object** %c_normalize150, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %109, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp151 = icmp ne i64 %dec, 0
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body
  br label %if.end.155

if.else.154:                                      ; preds = %do.body
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %112(%struct._object* %113)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end

do.end:                                           ; preds = %if.end.155
  %c_normalize_args156 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 4
  %114 = load %struct._object*, %struct._object** %c_normalize_args156, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %115, i32 0, i32 1
  %arrayidx157 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 1
  store %struct._object* null, %struct._object** %arrayidx157, align 8
  br label %do.body.158

do.body.158:                                      ; preds = %do.end
  %c_normalize_args160 = getelementptr inbounds %struct.compiling, %struct.compiling* %c, i32 0, i32 4
  %116 = load %struct._object*, %struct._object** %c_normalize_args160, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp159, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt161, align 8
  %dec162 = add i64 %118, -1
  store i64 %dec162, i64* %ob_refcnt161, align 8
  %cmp163 = icmp ne i64 %dec162, 0
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.158
  br label %if.end.169

if.else.166:                                      ; preds = %do.body.158
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %121(%struct._object* %122)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %if.end.171

if.end.171:                                       ; preds = %do.end.170, %out
  %123 = load %struct._mod*, %struct._mod** %res, align 8
  ret %struct._mod* %123
}

declare %struct.asdl_seq* @_Py_asdl_seq_new(i64, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @num_stmts(%struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  %buf = alloca [128 x i8], align 16
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 256, label %sw.bb
    i32 257, label %sw.bb.6
    i32 268, label %sw.bb.17
    i32 293, label %sw.bb.21
    i32 269, label %sw.bb.22
    i32 301, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  %n_type1 = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %4 = load i16, i16* %n_type1, align 2
  %conv2 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %6, i64 0
  %call = call i32 @num_stmts(%struct._node* %arrayidx5)
  store i32 %call, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 0, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.6
  %7 = load i32, i32* %i, align 4
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 4
  %9 = load i32, i32* %n_nchildren, align 4
  %cmp7 = icmp slt i32 %7, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  store %struct._node* %arrayidx10, %struct._node** %ch, align 8
  %13 = load %struct._node*, %struct._node** %ch, align 8
  %n_type11 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 0
  %14 = load i16, i16* %n_type11, align 2
  %conv12 = sext i16 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 268
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body
  %15 = load %struct._node*, %struct._node** %ch, align 8
  %call16 = call i32 @num_stmts(%struct._node* %15)
  %16 = load i32, i32* %l, align 4
  %add = add i32 %16, %call16
  store i32 %add, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %l, align 4
  store i32 %18, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %20, i64 0
  %call20 = call i32 @num_stmts(%struct._node* %arrayidx19)
  store i32 %call20, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren23 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren23, align 4
  %div = sdiv i32 %22, 2
  store i32 %div, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  %23 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren25 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 4
  %24 = load i32, i32* %n_nchildren25, align 4
  %cmp26 = icmp eq i32 %24, 1
  br i1 %cmp26, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %sw.bb.24
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %26, i64 0
  %call31 = call i32 @num_stmts(%struct._node* %arrayidx30)
  store i32 %call31, i32* %retval
  br label %return

if.else.32:                                       ; preds = %sw.bb.24
  store i32 0, i32* %l, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %if.else.32
  %27 = load i32, i32* %i, align 4
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren34 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 4
  %29 = load i32, i32* %n_nchildren34, align 4
  %sub = sub i32 %29, 1
  %cmp35 = icmp slt i32 %27, %sub
  br i1 %cmp35, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.33
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child39 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child39, align 8
  %arrayidx40 = getelementptr %struct._node, %struct._node* %32, i64 %idxprom38
  %call41 = call i32 @num_stmts(%struct._node* %arrayidx40)
  %33 = load i32, i32* %l, align 4
  %add42 = add i32 %33, %call41
  store i32 %add42, i32* %l, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.37
  %34 = load i32, i32* %i, align 4
  %inc44 = add i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %35 = load i32, i32* %l, align 4
  store i32 %35, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type46 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 0
  %37 = load i16, i16* %n_type46, align 2
  %conv47 = sext i16 %37 to i32
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren48 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 4
  %39 = load i32, i32* %n_nchildren48, align 4
  %call49 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), i32 %conv47, i32 %39) #6
  %arraydecay50 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  call void @Py_FatalError(i8* %arraydecay50) #7
  unreachable

return:                                           ; preds = %for.end.45, %if.then.28, %sw.bb.22, %sw.bb.21, %sw.bb.17, %for.end, %if.else, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %ch = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 268
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type2 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type2, align 2
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 269
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %7, i64 0
  store %struct._node* %arrayidx8, %struct._node** %n.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type10 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 0
  %9 = load i16, i16* %n_type10, align 2
  %conv11 = sext i16 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 270
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %11, i64 0
  store %struct._node* %arrayidx16, %struct._node** %n.addr, align 8
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type17 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 0
  %13 = load i16, i16* %n_type17, align 2
  %conv18 = sext i16 %13 to i32
  switch i32 %conv18, label %sw.default [
    i32 271, label %sw.bb
    i32 274, label %sw.bb.19
    i32 275, label %sw.bb.21
    i32 276, label %sw.bb.23
    i32 282, label %sw.bb.25
    i32 290, label %sw.bb.27
    i32 291, label %sw.bb.29
    i32 292, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.14
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct._stmt* @ast_for_expr_stmt(%struct.compiling* %14, %struct._node* %15)
  store %struct._stmt* %call, %struct._stmt** %retval
  br label %return

sw.bb.19:                                         ; preds = %if.then.14
  %16 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %call20 = call %struct._stmt* @ast_for_del_stmt(%struct.compiling* %16, %struct._node* %17)
  store %struct._stmt* %call20, %struct._stmt** %retval
  br label %return

sw.bb.21:                                         ; preds = %if.then.14
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 2
  %19 = load i32, i32* %n_lineno, align 4
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 3
  %21 = load i32, i32* %n_col_offset, align 4
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %22, i32 0, i32 1
  %23 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call22 = call %struct._stmt* @_Py_Pass(i32 %19, i32 %21, %struct._arena* %23)
  store %struct._stmt* %call22, %struct._stmt** %retval
  br label %return

sw.bb.23:                                         ; preds = %if.then.14
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %call24 = call %struct._stmt* @ast_for_flow_stmt(%struct.compiling* %24, %struct._node* %25)
  store %struct._stmt* %call24, %struct._stmt** %retval
  br label %return

sw.bb.25:                                         ; preds = %if.then.14
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %call26 = call %struct._stmt* @ast_for_import_stmt(%struct.compiling* %26, %struct._node* %27)
  store %struct._stmt* %call26, %struct._stmt** %retval
  br label %return

sw.bb.27:                                         ; preds = %if.then.14
  %28 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %call28 = call %struct._stmt* @ast_for_global_stmt(%struct.compiling* %28, %struct._node* %29)
  store %struct._stmt* %call28, %struct._stmt** %retval
  br label %return

sw.bb.29:                                         ; preds = %if.then.14
  %30 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %call30 = call %struct._stmt* @ast_for_nonlocal_stmt(%struct.compiling* %30, %struct._node* %31)
  store %struct._stmt* %call30, %struct._stmt** %retval
  br label %return

sw.bb.31:                                         ; preds = %if.then.14
  %32 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %33 = load %struct._node*, %struct._node** %n.addr, align 8
  %call32 = call %struct._stmt* @ast_for_assert_stmt(%struct.compiling* %32, %struct._node* %33)
  store %struct._stmt* %call32, %struct._stmt** %retval
  br label %return

sw.default:                                       ; preds = %if.then.14
  %34 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %35 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type33 = getelementptr inbounds %struct._node, %struct._node* %35, i32 0, i32 0
  %36 = load i16, i16* %n_type33, align 2
  %conv34 = sext i16 %36 to i32
  %37 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 4
  %38 = load i32, i32* %n_nchildren, align 4
  %call35 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i32 0, i32 0), i32 %conv34, i32 %38)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %if.end.9
  %39 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child36 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child36, align 8
  %arrayidx37 = getelementptr %struct._node, %struct._node* %40, i64 0
  store %struct._node* %arrayidx37, %struct._node** %ch, align 8
  %41 = load %struct._node*, %struct._node** %ch, align 8
  %n_type38 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 0
  %42 = load i16, i16* %n_type38, align 2
  %conv39 = sext i16 %42 to i32
  switch i32 %conv39, label %sw.default.56 [
    i32 294, label %sw.bb.40
    i32 295, label %sw.bb.42
    i32 296, label %sw.bb.44
    i32 297, label %sw.bb.46
    i32 298, label %sw.bb.48
    i32 262, label %sw.bb.50
    i32 329, label %sw.bb.52
    i32 261, label %sw.bb.54
  ]

sw.bb.40:                                         ; preds = %if.else
  %43 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %44 = load %struct._node*, %struct._node** %ch, align 8
  %call41 = call %struct._stmt* @ast_for_if_stmt(%struct.compiling* %43, %struct._node* %44)
  store %struct._stmt* %call41, %struct._stmt** %retval
  br label %return

sw.bb.42:                                         ; preds = %if.else
  %45 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %46 = load %struct._node*, %struct._node** %ch, align 8
  %call43 = call %struct._stmt* @ast_for_while_stmt(%struct.compiling* %45, %struct._node* %46)
  store %struct._stmt* %call43, %struct._stmt** %retval
  br label %return

sw.bb.44:                                         ; preds = %if.else
  %47 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %48 = load %struct._node*, %struct._node** %ch, align 8
  %call45 = call %struct._stmt* @ast_for_for_stmt(%struct.compiling* %47, %struct._node* %48)
  store %struct._stmt* %call45, %struct._stmt** %retval
  br label %return

sw.bb.46:                                         ; preds = %if.else
  %49 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %50 = load %struct._node*, %struct._node** %ch, align 8
  %call47 = call %struct._stmt* @ast_for_try_stmt(%struct.compiling* %49, %struct._node* %50)
  store %struct._stmt* %call47, %struct._stmt** %retval
  br label %return

sw.bb.48:                                         ; preds = %if.else
  %51 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %52 = load %struct._node*, %struct._node** %ch, align 8
  %call49 = call %struct._stmt* @ast_for_with_stmt(%struct.compiling* %51, %struct._node* %52)
  store %struct._stmt* %call49, %struct._stmt** %retval
  br label %return

sw.bb.50:                                         ; preds = %if.else
  %53 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %54 = load %struct._node*, %struct._node** %ch, align 8
  %call51 = call %struct._stmt* @ast_for_funcdef(%struct.compiling* %53, %struct._node* %54, %struct.asdl_seq* null)
  store %struct._stmt* %call51, %struct._stmt** %retval
  br label %return

sw.bb.52:                                         ; preds = %if.else
  %55 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %56 = load %struct._node*, %struct._node** %ch, align 8
  %call53 = call %struct._stmt* @ast_for_classdef(%struct.compiling* %55, %struct._node* %56, %struct.asdl_seq* null)
  store %struct._stmt* %call53, %struct._stmt** %retval
  br label %return

sw.bb.54:                                         ; preds = %if.else
  %57 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %58 = load %struct._node*, %struct._node** %ch, align 8
  %call55 = call %struct._stmt* @ast_for_decorated(%struct.compiling* %57, %struct._node* %58)
  store %struct._stmt* %call55, %struct._stmt** %retval
  br label %return

sw.default.56:                                    ; preds = %if.else
  %59 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %60 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type57 = getelementptr inbounds %struct._node, %struct._node* %60, i32 0, i32 0
  %61 = load i16, i16* %n_type57, align 2
  %conv58 = sext i16 %61 to i32
  %62 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren59 = getelementptr inbounds %struct._node, %struct._node* %62, i32 0, i32 4
  %63 = load i32, i32* %n_nchildren59, align 4
  %call60 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i32 0, i32 0), i32 %conv58, i32 %63)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %sw.default.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.default, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb
  %64 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %64
}

declare %struct._mod* @_Py_Module(%struct.asdl_seq*, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_testlist(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %tmp = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 321
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 4
  %3 = load i32, i32* %n_nchildren, align 4
  %cmp2 = icmp sgt i32 %3, 1
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren6 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren6, align 4
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.5
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %8, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %6, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %retval
  br label %return

if.else.10:                                       ; preds = %if.end.5
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %call11 = call %struct.asdl_seq* @seq_for_testlist(%struct.compiling* %9, %struct._node* %10)
  store %struct.asdl_seq* %call11, %struct.asdl_seq** %tmp, align 8
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %tmp, align 8
  %tobool = icmp ne %struct.asdl_seq* %11, null
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.else.10
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.13:                                        ; preds = %if.else.10
  %12 = load %struct.asdl_seq*, %struct.asdl_seq** %tmp, align 8
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 2
  %14 = load i32, i32* %n_lineno, align 4
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 3
  %16 = load i32, i32* %n_col_offset, align 4
  %17 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %17, i32 0, i32 1
  %18 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call14 = call %struct._expr* @_Py_Tuple(%struct.asdl_seq* %12, i32 1, i32 %14, i32 %16, %struct._arena* %18)
  store %struct._expr* %call14, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.9
  %19 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %19
}

declare %struct._mod* @_Py_Expression(%struct._expr*, %struct._arena*) #1

declare %struct._stmt* @_Py_Pass(i32, i32, %struct._arena*) #1

declare %struct._mod* @_Py_Interactive(%struct.asdl_seq*, %struct._arena*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._mod* @PyAST_FromNode(%struct._node* %n, %struct.PyCompilerFlags* %flags, i8* %filename_str, %struct._arena* %arena) #0 {
entry:
  %retval = alloca %struct._mod*, align 8
  %n.addr = alloca %struct._node*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %filename_str.addr = alloca i8*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._mod* null, %struct._mod** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %3 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %4 = load %struct._object*, %struct._object** %filename, align 8
  %5 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call1 = call %struct._mod* @PyAST_FromNodeObject(%struct._node* %2, %struct.PyCompilerFlags* %3, %struct._object* %4, %struct._arena* %5)
  store %struct._mod* %call1, %struct._mod** %mod, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %13 = load %struct._mod*, %struct._mod** %mod, align 8
  store %struct._mod* %13, %struct._mod** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct._mod*, %struct._mod** %retval
  ret %struct._mod* %14
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @validate_stmt(%struct._stmt* %stmt) #0 {
entry:
  %retval = alloca i32, align 4
  %stmt.addr = alloca %struct._stmt*, align 8
  %i = alloca i32, align 4
  %item = alloca %struct._withitem*, align 8
  %handler = alloca %struct._excepthandler*, align 8
  store %struct._stmt* %stmt, %struct._stmt** %stmt.addr, align 8
  %0 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %kind = getelementptr inbounds %struct._stmt, %struct._stmt* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.18
    i32 3, label %sw.bb.61
    i32 4, label %sw.bb.71
    i32 5, label %sw.bb.74
    i32 6, label %sw.bb.87
    i32 7, label %sw.bb.99
    i32 8, label %sw.bb.122
    i32 9, label %sw.bb.140
    i32 10, label %sw.bb.159
    i32 11, label %sw.bb.189
    i32 12, label %sw.bb.219
    i32 13, label %sw.bb.362
    i32 14, label %sw.bb.381
    i32 15, label %sw.bb.384
    i32 16, label %sw.bb.394
    i32 17, label %sw.bb.398
    i32 18, label %sw.bb.402
    i32 19, label %sw.bb.406
    i32 20, label %sw.bb.406
    i32 21, label %sw.bb.406
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v = getelementptr inbounds %struct._stmt, %struct._stmt* %2, i32 0, i32 1
  %FunctionDef = bitcast %union.anon.33* %v to %struct.anon.34*
  %body = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef, i32 0, i32 2
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %call = call i32 @validate_body(%struct.asdl_seq* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v1 = getelementptr inbounds %struct._stmt, %struct._stmt* %4, i32 0, i32 1
  %FunctionDef2 = bitcast %union.anon.33* %v1 to %struct.anon.34*
  %args = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef2, i32 0, i32 1
  %5 = load %struct._arguments*, %struct._arguments** %args, align 8
  %call3 = call i32 @validate_arguments(%struct._arguments* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v6 = getelementptr inbounds %struct._stmt, %struct._stmt* %6, i32 0, i32 1
  %FunctionDef7 = bitcast %union.anon.33* %v6 to %struct.anon.34*
  %decorator_list = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef7, i32 0, i32 3
  %7 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list, align 8
  %call8 = call i32 @validate_exprs(%struct.asdl_seq* %7, i32 1, i32 0)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v10 = getelementptr inbounds %struct._stmt, %struct._stmt* %8, i32 0, i32 1
  %FunctionDef11 = bitcast %union.anon.33* %v10 to %struct.anon.34*
  %returns = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef11, i32 0, i32 4
  %9 = load %struct._expr*, %struct._expr** %returns, align 8
  %tobool12 = icmp ne %struct._expr* %9, null
  br i1 %tobool12, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %10 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v13 = getelementptr inbounds %struct._stmt, %struct._stmt* %10, i32 0, i32 1
  %FunctionDef14 = bitcast %union.anon.33* %v13 to %struct.anon.34*
  %returns15 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef14, i32 0, i32 4
  %11 = load %struct._expr*, %struct._expr** %returns15, align 8
  %call16 = call i32 @validate_expr(%struct._expr* %11, i32 1)
  %tobool17 = icmp ne i32 %call16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool17, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.5, %land.lhs.true, %sw.bb
  %13 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %sw.bb ], [ %12, %lor.end ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  %14 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v19 = getelementptr inbounds %struct._stmt, %struct._stmt* %14, i32 0, i32 1
  %ClassDef = bitcast %union.anon.33* %v19 to %struct.anon.35*
  %body20 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef, i32 0, i32 5
  %15 = load %struct.asdl_seq*, %struct.asdl_seq** %body20, align 8
  %call21 = call i32 @validate_body(%struct.asdl_seq* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %land.end.59

land.lhs.true.23:                                 ; preds = %sw.bb.18
  %16 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v24 = getelementptr inbounds %struct._stmt, %struct._stmt* %16, i32 0, i32 1
  %ClassDef25 = bitcast %union.anon.33* %v24 to %struct.anon.35*
  %bases = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef25, i32 0, i32 1
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %bases, align 8
  %call26 = call i32 @validate_exprs(%struct.asdl_seq* %17, i32 1, i32 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %land.end.59

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %18 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v29 = getelementptr inbounds %struct._stmt, %struct._stmt* %18, i32 0, i32 1
  %ClassDef30 = bitcast %union.anon.33* %v29 to %struct.anon.35*
  %keywords = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef30, i32 0, i32 2
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %call31 = call i32 @validate_keywords(%struct.asdl_seq* %19)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %land.end.59

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %20 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v34 = getelementptr inbounds %struct._stmt, %struct._stmt* %20, i32 0, i32 1
  %ClassDef35 = bitcast %union.anon.33* %v34 to %struct.anon.35*
  %decorator_list36 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef35, i32 0, i32 6
  %21 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list36, align 8
  %call37 = call i32 @validate_exprs(%struct.asdl_seq* %21, i32 1, i32 0)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %land.end.59

land.lhs.true.39:                                 ; preds = %land.lhs.true.33
  %22 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v40 = getelementptr inbounds %struct._stmt, %struct._stmt* %22, i32 0, i32 1
  %ClassDef41 = bitcast %union.anon.33* %v40 to %struct.anon.35*
  %starargs = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef41, i32 0, i32 3
  %23 = load %struct._expr*, %struct._expr** %starargs, align 8
  %tobool42 = icmp ne %struct._expr* %23, null
  br i1 %tobool42, label %lor.lhs.false, label %land.rhs.48

lor.lhs.false:                                    ; preds = %land.lhs.true.39
  %24 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v43 = getelementptr inbounds %struct._stmt, %struct._stmt* %24, i32 0, i32 1
  %ClassDef44 = bitcast %union.anon.33* %v43 to %struct.anon.35*
  %starargs45 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef44, i32 0, i32 3
  %25 = load %struct._expr*, %struct._expr** %starargs45, align 8
  %call46 = call i32 @validate_expr(%struct._expr* %25, i32 1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.rhs.48, label %land.end.59

land.rhs.48:                                      ; preds = %lor.lhs.false, %land.lhs.true.39
  %26 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v49 = getelementptr inbounds %struct._stmt, %struct._stmt* %26, i32 0, i32 1
  %ClassDef50 = bitcast %union.anon.33* %v49 to %struct.anon.35*
  %kwargs = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef50, i32 0, i32 4
  %27 = load %struct._expr*, %struct._expr** %kwargs, align 8
  %tobool51 = icmp ne %struct._expr* %27, null
  br i1 %tobool51, label %lor.rhs.52, label %lor.end.58

lor.rhs.52:                                       ; preds = %land.rhs.48
  %28 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v53 = getelementptr inbounds %struct._stmt, %struct._stmt* %28, i32 0, i32 1
  %ClassDef54 = bitcast %union.anon.33* %v53 to %struct.anon.35*
  %kwargs55 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef54, i32 0, i32 4
  %29 = load %struct._expr*, %struct._expr** %kwargs55, align 8
  %call56 = call i32 @validate_expr(%struct._expr* %29, i32 1)
  %tobool57 = icmp ne i32 %call56, 0
  br label %lor.end.58

lor.end.58:                                       ; preds = %lor.rhs.52, %land.rhs.48
  %30 = phi i1 [ true, %land.rhs.48 ], [ %tobool57, %lor.rhs.52 ]
  br label %land.end.59

land.end.59:                                      ; preds = %lor.end.58, %lor.lhs.false, %land.lhs.true.33, %land.lhs.true.28, %land.lhs.true.23, %sw.bb.18
  %31 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true.33 ], [ false, %land.lhs.true.28 ], [ false, %land.lhs.true.23 ], [ false, %sw.bb.18 ], [ %30, %lor.end.58 ]
  %land.ext60 = zext i1 %31 to i32
  store i32 %land.ext60, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %entry
  %32 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v62 = getelementptr inbounds %struct._stmt, %struct._stmt* %32, i32 0, i32 1
  %Return = bitcast %union.anon.33* %v62 to %struct.anon.36*
  %value = getelementptr inbounds %struct.anon.36, %struct.anon.36* %Return, i32 0, i32 0
  %33 = load %struct._expr*, %struct._expr** %value, align 8
  %tobool63 = icmp ne %struct._expr* %33, null
  br i1 %tobool63, label %lor.rhs.64, label %lor.end.70

lor.rhs.64:                                       ; preds = %sw.bb.61
  %34 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v65 = getelementptr inbounds %struct._stmt, %struct._stmt* %34, i32 0, i32 1
  %Return66 = bitcast %union.anon.33* %v65 to %struct.anon.36*
  %value67 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %Return66, i32 0, i32 0
  %35 = load %struct._expr*, %struct._expr** %value67, align 8
  %call68 = call i32 @validate_expr(%struct._expr* %35, i32 1)
  %tobool69 = icmp ne i32 %call68, 0
  br label %lor.end.70

lor.end.70:                                       ; preds = %lor.rhs.64, %sw.bb.61
  %36 = phi i1 [ true, %sw.bb.61 ], [ %tobool69, %lor.rhs.64 ]
  %lor.ext = zext i1 %36 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.71:                                         ; preds = %entry
  %37 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v72 = getelementptr inbounds %struct._stmt, %struct._stmt* %37, i32 0, i32 1
  %Delete = bitcast %union.anon.33* %v72 to %struct.anon.37*
  %targets = getelementptr inbounds %struct.anon.37, %struct.anon.37* %Delete, i32 0, i32 0
  %38 = load %struct.asdl_seq*, %struct.asdl_seq** %targets, align 8
  %call73 = call i32 @validate_assignlist(%struct.asdl_seq* %38, i32 3)
  store i32 %call73, i32* %retval
  br label %return

sw.bb.74:                                         ; preds = %entry
  %39 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v75 = getelementptr inbounds %struct._stmt, %struct._stmt* %39, i32 0, i32 1
  %Assign = bitcast %union.anon.33* %v75 to %struct.anon.38*
  %targets76 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %Assign, i32 0, i32 0
  %40 = load %struct.asdl_seq*, %struct.asdl_seq** %targets76, align 8
  %call77 = call i32 @validate_assignlist(%struct.asdl_seq* %40, i32 2)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %land.rhs.79, label %land.end.85

land.rhs.79:                                      ; preds = %sw.bb.74
  %41 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v80 = getelementptr inbounds %struct._stmt, %struct._stmt* %41, i32 0, i32 1
  %Assign81 = bitcast %union.anon.33* %v80 to %struct.anon.38*
  %value82 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %Assign81, i32 0, i32 1
  %42 = load %struct._expr*, %struct._expr** %value82, align 8
  %call83 = call i32 @validate_expr(%struct._expr* %42, i32 1)
  %tobool84 = icmp ne i32 %call83, 0
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.79, %sw.bb.74
  %43 = phi i1 [ false, %sw.bb.74 ], [ %tobool84, %land.rhs.79 ]
  %land.ext86 = zext i1 %43 to i32
  store i32 %land.ext86, i32* %retval
  br label %return

sw.bb.87:                                         ; preds = %entry
  %44 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v88 = getelementptr inbounds %struct._stmt, %struct._stmt* %44, i32 0, i32 1
  %AugAssign = bitcast %union.anon.33* %v88 to %struct.anon.39*
  %target = getelementptr inbounds %struct.anon.39, %struct.anon.39* %AugAssign, i32 0, i32 0
  %45 = load %struct._expr*, %struct._expr** %target, align 8
  %call89 = call i32 @validate_expr(%struct._expr* %45, i32 2)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.rhs.91, label %land.end.97

land.rhs.91:                                      ; preds = %sw.bb.87
  %46 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v92 = getelementptr inbounds %struct._stmt, %struct._stmt* %46, i32 0, i32 1
  %AugAssign93 = bitcast %union.anon.33* %v92 to %struct.anon.39*
  %value94 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %AugAssign93, i32 0, i32 2
  %47 = load %struct._expr*, %struct._expr** %value94, align 8
  %call95 = call i32 @validate_expr(%struct._expr* %47, i32 1)
  %tobool96 = icmp ne i32 %call95, 0
  br label %land.end.97

land.end.97:                                      ; preds = %land.rhs.91, %sw.bb.87
  %48 = phi i1 [ false, %sw.bb.87 ], [ %tobool96, %land.rhs.91 ]
  %land.ext98 = zext i1 %48 to i32
  store i32 %land.ext98, i32* %retval
  br label %return

sw.bb.99:                                         ; preds = %entry
  %49 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v100 = getelementptr inbounds %struct._stmt, %struct._stmt* %49, i32 0, i32 1
  %For = bitcast %union.anon.33* %v100 to %struct.anon.40*
  %target101 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For, i32 0, i32 0
  %50 = load %struct._expr*, %struct._expr** %target101, align 8
  %call102 = call i32 @validate_expr(%struct._expr* %50, i32 2)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %land.lhs.true.104, label %land.end.120

land.lhs.true.104:                                ; preds = %sw.bb.99
  %51 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v105 = getelementptr inbounds %struct._stmt, %struct._stmt* %51, i32 0, i32 1
  %For106 = bitcast %union.anon.33* %v105 to %struct.anon.40*
  %iter = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For106, i32 0, i32 1
  %52 = load %struct._expr*, %struct._expr** %iter, align 8
  %call107 = call i32 @validate_expr(%struct._expr* %52, i32 1)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %land.lhs.true.109, label %land.end.120

land.lhs.true.109:                                ; preds = %land.lhs.true.104
  %53 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v110 = getelementptr inbounds %struct._stmt, %struct._stmt* %53, i32 0, i32 1
  %For111 = bitcast %union.anon.33* %v110 to %struct.anon.40*
  %body112 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For111, i32 0, i32 2
  %54 = load %struct.asdl_seq*, %struct.asdl_seq** %body112, align 8
  %call113 = call i32 @validate_body(%struct.asdl_seq* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %land.rhs.115, label %land.end.120

land.rhs.115:                                     ; preds = %land.lhs.true.109
  %55 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v116 = getelementptr inbounds %struct._stmt, %struct._stmt* %55, i32 0, i32 1
  %For117 = bitcast %union.anon.33* %v116 to %struct.anon.40*
  %orelse = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For117, i32 0, i32 3
  %56 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %call118 = call i32 @validate_stmts(%struct.asdl_seq* %56)
  %tobool119 = icmp ne i32 %call118, 0
  br label %land.end.120

land.end.120:                                     ; preds = %land.rhs.115, %land.lhs.true.109, %land.lhs.true.104, %sw.bb.99
  %57 = phi i1 [ false, %land.lhs.true.109 ], [ false, %land.lhs.true.104 ], [ false, %sw.bb.99 ], [ %tobool119, %land.rhs.115 ]
  %land.ext121 = zext i1 %57 to i32
  store i32 %land.ext121, i32* %retval
  br label %return

sw.bb.122:                                        ; preds = %entry
  %58 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v123 = getelementptr inbounds %struct._stmt, %struct._stmt* %58, i32 0, i32 1
  %While = bitcast %union.anon.33* %v123 to %struct.anon.41*
  %test = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While, i32 0, i32 0
  %59 = load %struct._expr*, %struct._expr** %test, align 8
  %call124 = call i32 @validate_expr(%struct._expr* %59, i32 1)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %land.lhs.true.126, label %land.end.138

land.lhs.true.126:                                ; preds = %sw.bb.122
  %60 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v127 = getelementptr inbounds %struct._stmt, %struct._stmt* %60, i32 0, i32 1
  %While128 = bitcast %union.anon.33* %v127 to %struct.anon.41*
  %body129 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While128, i32 0, i32 1
  %61 = load %struct.asdl_seq*, %struct.asdl_seq** %body129, align 8
  %call130 = call i32 @validate_body(%struct.asdl_seq* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %land.rhs.132, label %land.end.138

land.rhs.132:                                     ; preds = %land.lhs.true.126
  %62 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v133 = getelementptr inbounds %struct._stmt, %struct._stmt* %62, i32 0, i32 1
  %While134 = bitcast %union.anon.33* %v133 to %struct.anon.41*
  %orelse135 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While134, i32 0, i32 2
  %63 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse135, align 8
  %call136 = call i32 @validate_stmts(%struct.asdl_seq* %63)
  %tobool137 = icmp ne i32 %call136, 0
  br label %land.end.138

land.end.138:                                     ; preds = %land.rhs.132, %land.lhs.true.126, %sw.bb.122
  %64 = phi i1 [ false, %land.lhs.true.126 ], [ false, %sw.bb.122 ], [ %tobool137, %land.rhs.132 ]
  %land.ext139 = zext i1 %64 to i32
  store i32 %land.ext139, i32* %retval
  br label %return

sw.bb.140:                                        ; preds = %entry
  %65 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v141 = getelementptr inbounds %struct._stmt, %struct._stmt* %65, i32 0, i32 1
  %If = bitcast %union.anon.33* %v141 to %struct.anon.42*
  %test142 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If, i32 0, i32 0
  %66 = load %struct._expr*, %struct._expr** %test142, align 8
  %call143 = call i32 @validate_expr(%struct._expr* %66, i32 1)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %land.lhs.true.145, label %land.end.157

land.lhs.true.145:                                ; preds = %sw.bb.140
  %67 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v146 = getelementptr inbounds %struct._stmt, %struct._stmt* %67, i32 0, i32 1
  %If147 = bitcast %union.anon.33* %v146 to %struct.anon.42*
  %body148 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If147, i32 0, i32 1
  %68 = load %struct.asdl_seq*, %struct.asdl_seq** %body148, align 8
  %call149 = call i32 @validate_body(%struct.asdl_seq* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %land.rhs.151, label %land.end.157

land.rhs.151:                                     ; preds = %land.lhs.true.145
  %69 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v152 = getelementptr inbounds %struct._stmt, %struct._stmt* %69, i32 0, i32 1
  %If153 = bitcast %union.anon.33* %v152 to %struct.anon.42*
  %orelse154 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If153, i32 0, i32 2
  %70 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse154, align 8
  %call155 = call i32 @validate_stmts(%struct.asdl_seq* %70)
  %tobool156 = icmp ne i32 %call155, 0
  br label %land.end.157

land.end.157:                                     ; preds = %land.rhs.151, %land.lhs.true.145, %sw.bb.140
  %71 = phi i1 [ false, %land.lhs.true.145 ], [ false, %sw.bb.140 ], [ %tobool156, %land.rhs.151 ]
  %land.ext158 = zext i1 %71 to i32
  store i32 %land.ext158, i32* %retval
  br label %return

sw.bb.159:                                        ; preds = %entry
  %72 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v160 = getelementptr inbounds %struct._stmt, %struct._stmt* %72, i32 0, i32 1
  %With = bitcast %union.anon.33* %v160 to %struct.anon.43*
  %items = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With, i32 0, i32 0
  %73 = load %struct.asdl_seq*, %struct.asdl_seq** %items, align 8
  %call161 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.159
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.159
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %74 = load i32, i32* %i, align 4
  %conv = sext i32 %74 to i64
  %75 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v163 = getelementptr inbounds %struct._stmt, %struct._stmt* %75, i32 0, i32 1
  %With164 = bitcast %union.anon.33* %v163 to %struct.anon.43*
  %items165 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With164, i32 0, i32 0
  %76 = load %struct.asdl_seq*, %struct.asdl_seq** %items165, align 8
  %cmp = icmp eq %struct.asdl_seq* %76, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %77 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v167 = getelementptr inbounds %struct._stmt, %struct._stmt* %77, i32 0, i32 1
  %With168 = bitcast %union.anon.33* %v167 to %struct.anon.43*
  %items169 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With168, i32 0, i32 0
  %78 = load %struct.asdl_seq*, %struct.asdl_seq** %items169, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %78, i32 0, i32 0
  %79 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %79, %cond.false ]
  %cmp170 = icmp slt i64 %conv, %cond
  br i1 %cmp170, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %80 = load i32, i32* %i, align 4
  %idxprom = sext i32 %80 to i64
  %81 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v172 = getelementptr inbounds %struct._stmt, %struct._stmt* %81, i32 0, i32 1
  %With173 = bitcast %union.anon.33* %v172 to %struct.anon.43*
  %items174 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With173, i32 0, i32 0
  %82 = load %struct.asdl_seq*, %struct.asdl_seq** %items174, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %82, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %83 = load i8*, i8** %arrayidx, align 8
  %84 = bitcast i8* %83 to %struct._withitem*
  store %struct._withitem* %84, %struct._withitem** %item, align 8
  %85 = load %struct._withitem*, %struct._withitem** %item, align 8
  %context_expr = getelementptr inbounds %struct._withitem, %struct._withitem* %85, i32 0, i32 0
  %86 = load %struct._expr*, %struct._expr** %context_expr, align 8
  %call175 = call i32 @validate_expr(%struct._expr* %86, i32 1)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %lor.lhs.false.177, label %if.then.183

lor.lhs.false.177:                                ; preds = %for.body
  %87 = load %struct._withitem*, %struct._withitem** %item, align 8
  %optional_vars = getelementptr inbounds %struct._withitem, %struct._withitem* %87, i32 0, i32 1
  %88 = load %struct._expr*, %struct._expr** %optional_vars, align 8
  %tobool178 = icmp ne %struct._expr* %88, null
  br i1 %tobool178, label %land.lhs.true.179, label %if.end.184

land.lhs.true.179:                                ; preds = %lor.lhs.false.177
  %89 = load %struct._withitem*, %struct._withitem** %item, align 8
  %optional_vars180 = getelementptr inbounds %struct._withitem, %struct._withitem* %89, i32 0, i32 1
  %90 = load %struct._expr*, %struct._expr** %optional_vars180, align 8
  %call181 = call i32 @validate_expr(%struct._expr* %90, i32 2)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.179, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.179, %lor.lhs.false.177
  br label %for.inc

for.inc:                                          ; preds = %if.end.184
  %91 = load i32, i32* %i, align 4
  %inc = add i32 %91, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %92 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v185 = getelementptr inbounds %struct._stmt, %struct._stmt* %92, i32 0, i32 1
  %With186 = bitcast %union.anon.33* %v185 to %struct.anon.43*
  %body187 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With186, i32 0, i32 1
  %93 = load %struct.asdl_seq*, %struct.asdl_seq** %body187, align 8
  %call188 = call i32 @validate_body(%struct.asdl_seq* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  store i32 %call188, i32* %retval
  br label %return

sw.bb.189:                                        ; preds = %entry
  %94 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v190 = getelementptr inbounds %struct._stmt, %struct._stmt* %94, i32 0, i32 1
  %Raise = bitcast %union.anon.33* %v190 to %struct.anon.44*
  %exc = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise, i32 0, i32 0
  %95 = load %struct._expr*, %struct._expr** %exc, align 8
  %tobool191 = icmp ne %struct._expr* %95, null
  br i1 %tobool191, label %if.then.192, label %if.end.212

if.then.192:                                      ; preds = %sw.bb.189
  %96 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v193 = getelementptr inbounds %struct._stmt, %struct._stmt* %96, i32 0, i32 1
  %Raise194 = bitcast %union.anon.33* %v193 to %struct.anon.44*
  %exc195 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise194, i32 0, i32 0
  %97 = load %struct._expr*, %struct._expr** %exc195, align 8
  %call196 = call i32 @validate_expr(%struct._expr* %97, i32 1)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %land.rhs.198, label %land.end.210

land.rhs.198:                                     ; preds = %if.then.192
  %98 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v199 = getelementptr inbounds %struct._stmt, %struct._stmt* %98, i32 0, i32 1
  %Raise200 = bitcast %union.anon.33* %v199 to %struct.anon.44*
  %cause = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise200, i32 0, i32 1
  %99 = load %struct._expr*, %struct._expr** %cause, align 8
  %tobool201 = icmp ne %struct._expr* %99, null
  br i1 %tobool201, label %lor.rhs.202, label %lor.end.208

lor.rhs.202:                                      ; preds = %land.rhs.198
  %100 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v203 = getelementptr inbounds %struct._stmt, %struct._stmt* %100, i32 0, i32 1
  %Raise204 = bitcast %union.anon.33* %v203 to %struct.anon.44*
  %cause205 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise204, i32 0, i32 1
  %101 = load %struct._expr*, %struct._expr** %cause205, align 8
  %call206 = call i32 @validate_expr(%struct._expr* %101, i32 1)
  %tobool207 = icmp ne i32 %call206, 0
  br label %lor.end.208

lor.end.208:                                      ; preds = %lor.rhs.202, %land.rhs.198
  %102 = phi i1 [ true, %land.rhs.198 ], [ %tobool207, %lor.rhs.202 ]
  br label %land.end.210

land.end.210:                                     ; preds = %lor.end.208, %if.then.192
  %103 = phi i1 [ false, %if.then.192 ], [ %102, %lor.end.208 ]
  %land.ext211 = zext i1 %103 to i32
  store i32 %land.ext211, i32* %retval
  br label %return

if.end.212:                                       ; preds = %sw.bb.189
  %104 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v213 = getelementptr inbounds %struct._stmt, %struct._stmt* %104, i32 0, i32 1
  %Raise214 = bitcast %union.anon.33* %v213 to %struct.anon.44*
  %cause215 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise214, i32 0, i32 1
  %105 = load %struct._expr*, %struct._expr** %cause215, align 8
  %tobool216 = icmp ne %struct._expr* %105, null
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.212
  %106 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.end.212
  store i32 1, i32* %retval
  br label %return

sw.bb.219:                                        ; preds = %entry
  %107 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v220 = getelementptr inbounds %struct._stmt, %struct._stmt* %107, i32 0, i32 1
  %Try = bitcast %union.anon.33* %v220 to %struct.anon.45*
  %body221 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try, i32 0, i32 0
  %108 = load %struct.asdl_seq*, %struct.asdl_seq** %body221, align 8
  %call222 = call i32 @validate_body(%struct.asdl_seq* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %sw.bb.219
  store i32 0, i32* %retval
  br label %return

if.end.225:                                       ; preds = %sw.bb.219
  %109 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v226 = getelementptr inbounds %struct._stmt, %struct._stmt* %109, i32 0, i32 1
  %Try227 = bitcast %union.anon.33* %v226 to %struct.anon.45*
  %handlers = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try227, i32 0, i32 1
  %110 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers, align 8
  %cmp228 = icmp eq %struct.asdl_seq* %110, null
  br i1 %cmp228, label %cond.true.230, label %cond.false.231

cond.true.230:                                    ; preds = %if.end.225
  br i1 false, label %if.end.250, label %land.lhs.true.237

cond.false.231:                                   ; preds = %if.end.225
  %111 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v232 = getelementptr inbounds %struct._stmt, %struct._stmt* %111, i32 0, i32 1
  %Try233 = bitcast %union.anon.33* %v232 to %struct.anon.45*
  %handlers234 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try233, i32 0, i32 1
  %112 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers234, align 8
  %size235 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %112, i32 0, i32 0
  %113 = load i64, i64* %size235, align 8
  %tobool236 = icmp ne i64 %113, 0
  br i1 %tobool236, label %if.end.250, label %land.lhs.true.237

land.lhs.true.237:                                ; preds = %cond.false.231, %cond.true.230
  %114 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v238 = getelementptr inbounds %struct._stmt, %struct._stmt* %114, i32 0, i32 1
  %Try239 = bitcast %union.anon.33* %v238 to %struct.anon.45*
  %finalbody = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try239, i32 0, i32 3
  %115 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody, align 8
  %cmp240 = icmp eq %struct.asdl_seq* %115, null
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %land.lhs.true.237
  br i1 false, label %if.end.250, label %if.then.249

cond.false.243:                                   ; preds = %land.lhs.true.237
  %116 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v244 = getelementptr inbounds %struct._stmt, %struct._stmt* %116, i32 0, i32 1
  %Try245 = bitcast %union.anon.33* %v244 to %struct.anon.45*
  %finalbody246 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try245, i32 0, i32 3
  %117 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody246, align 8
  %size247 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %117, i32 0, i32 0
  %118 = load i64, i64* %size247, align 8
  %tobool248 = icmp ne i64 %118, 0
  br i1 %tobool248, label %if.end.250, label %if.then.249

if.then.249:                                      ; preds = %cond.false.243, %cond.true.242
  %119 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.250:                                       ; preds = %cond.false.243, %cond.true.242, %cond.false.231, %cond.true.230
  %120 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v251 = getelementptr inbounds %struct._stmt, %struct._stmt* %120, i32 0, i32 1
  %Try252 = bitcast %union.anon.33* %v251 to %struct.anon.45*
  %handlers253 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try252, i32 0, i32 1
  %121 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers253, align 8
  %cmp254 = icmp eq %struct.asdl_seq* %121, null
  br i1 %cmp254, label %cond.true.256, label %cond.false.257

cond.true.256:                                    ; preds = %if.end.250
  br i1 false, label %if.end.277, label %land.lhs.true.263

cond.false.257:                                   ; preds = %if.end.250
  %122 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v258 = getelementptr inbounds %struct._stmt, %struct._stmt* %122, i32 0, i32 1
  %Try259 = bitcast %union.anon.33* %v258 to %struct.anon.45*
  %handlers260 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try259, i32 0, i32 1
  %123 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers260, align 8
  %size261 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %123, i32 0, i32 0
  %124 = load i64, i64* %size261, align 8
  %tobool262 = icmp ne i64 %124, 0
  br i1 %tobool262, label %if.end.277, label %land.lhs.true.263

land.lhs.true.263:                                ; preds = %cond.false.257, %cond.true.256
  %125 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v264 = getelementptr inbounds %struct._stmt, %struct._stmt* %125, i32 0, i32 1
  %Try265 = bitcast %union.anon.33* %v264 to %struct.anon.45*
  %orelse266 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try265, i32 0, i32 2
  %126 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse266, align 8
  %cmp267 = icmp eq %struct.asdl_seq* %126, null
  br i1 %cmp267, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %land.lhs.true.263
  br i1 false, label %if.then.276, label %if.end.277

cond.false.270:                                   ; preds = %land.lhs.true.263
  %127 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v271 = getelementptr inbounds %struct._stmt, %struct._stmt* %127, i32 0, i32 1
  %Try272 = bitcast %union.anon.33* %v271 to %struct.anon.45*
  %orelse273 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try272, i32 0, i32 2
  %128 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse273, align 8
  %size274 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %128, i32 0, i32 0
  %129 = load i64, i64* %size274, align 8
  %tobool275 = icmp ne i64 %129, 0
  br i1 %tobool275, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %cond.false.270, %cond.true.269
  %130 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.277:                                       ; preds = %cond.false.270, %cond.true.269, %cond.false.257, %cond.true.256
  store i32 0, i32* %i, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.318, %if.end.277
  %131 = load i32, i32* %i, align 4
  %conv279 = sext i32 %131 to i64
  %132 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v280 = getelementptr inbounds %struct._stmt, %struct._stmt* %132, i32 0, i32 1
  %Try281 = bitcast %union.anon.33* %v280 to %struct.anon.45*
  %handlers282 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try281, i32 0, i32 1
  %133 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers282, align 8
  %cmp283 = icmp eq %struct.asdl_seq* %133, null
  br i1 %cmp283, label %cond.true.285, label %cond.false.286

cond.true.285:                                    ; preds = %for.cond.278
  br label %cond.end.291

cond.false.286:                                   ; preds = %for.cond.278
  %134 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v287 = getelementptr inbounds %struct._stmt, %struct._stmt* %134, i32 0, i32 1
  %Try288 = bitcast %union.anon.33* %v287 to %struct.anon.45*
  %handlers289 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try288, i32 0, i32 1
  %135 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers289, align 8
  %size290 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %135, i32 0, i32 0
  %136 = load i64, i64* %size290, align 8
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.286, %cond.true.285
  %cond292 = phi i64 [ 0, %cond.true.285 ], [ %136, %cond.false.286 ]
  %cmp293 = icmp slt i64 %conv279, %cond292
  br i1 %cmp293, label %for.body.295, label %for.end.320

for.body.295:                                     ; preds = %cond.end.291
  %137 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %137 to i64
  %138 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v297 = getelementptr inbounds %struct._stmt, %struct._stmt* %138, i32 0, i32 1
  %Try298 = bitcast %union.anon.33* %v297 to %struct.anon.45*
  %handlers299 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try298, i32 0, i32 1
  %139 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers299, align 8
  %elements300 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %139, i32 0, i32 1
  %arrayidx301 = getelementptr [1 x i8*], [1 x i8*]* %elements300, i32 0, i64 %idxprom296
  %140 = load i8*, i8** %arrayidx301, align 8
  %141 = bitcast i8* %140 to %struct._excepthandler*
  store %struct._excepthandler* %141, %struct._excepthandler** %handler, align 8
  %142 = load %struct._excepthandler*, %struct._excepthandler** %handler, align 8
  %v302 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %142, i32 0, i32 1
  %ExceptHandler = bitcast %union.anon.52* %v302 to %struct.anon.53*
  %type = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler, i32 0, i32 0
  %143 = load %struct._expr*, %struct._expr** %type, align 8
  %tobool303 = icmp ne %struct._expr* %143, null
  br i1 %tobool303, label %land.lhs.true.304, label %lor.lhs.false.310

land.lhs.true.304:                                ; preds = %for.body.295
  %144 = load %struct._excepthandler*, %struct._excepthandler** %handler, align 8
  %v305 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %144, i32 0, i32 1
  %ExceptHandler306 = bitcast %union.anon.52* %v305 to %struct.anon.53*
  %type307 = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler306, i32 0, i32 0
  %145 = load %struct._expr*, %struct._expr** %type307, align 8
  %call308 = call i32 @validate_expr(%struct._expr* %145, i32 1)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %lor.lhs.false.310, label %if.then.316

lor.lhs.false.310:                                ; preds = %land.lhs.true.304, %for.body.295
  %146 = load %struct._excepthandler*, %struct._excepthandler** %handler, align 8
  %v311 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %146, i32 0, i32 1
  %ExceptHandler312 = bitcast %union.anon.52* %v311 to %struct.anon.53*
  %body313 = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler312, i32 0, i32 2
  %147 = load %struct.asdl_seq*, %struct.asdl_seq** %body313, align 8
  %call314 = call i32 @validate_body(%struct.asdl_seq* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.end.317, label %if.then.316

if.then.316:                                      ; preds = %lor.lhs.false.310, %land.lhs.true.304
  store i32 0, i32* %retval
  br label %return

if.end.317:                                       ; preds = %lor.lhs.false.310
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317
  %148 = load i32, i32* %i, align 4
  %inc319 = add i32 %148, 1
  store i32 %inc319, i32* %i, align 4
  br label %for.cond.278

for.end.320:                                      ; preds = %cond.end.291
  %149 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v321 = getelementptr inbounds %struct._stmt, %struct._stmt* %149, i32 0, i32 1
  %Try322 = bitcast %union.anon.33* %v321 to %struct.anon.45*
  %finalbody323 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try322, i32 0, i32 3
  %150 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody323, align 8
  %cmp324 = icmp eq %struct.asdl_seq* %150, null
  br i1 %cmp324, label %cond.true.326, label %cond.false.327

cond.true.326:                                    ; preds = %for.end.320
  br i1 false, label %lor.lhs.false.333, label %land.rhs.339

cond.false.327:                                   ; preds = %for.end.320
  %151 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v328 = getelementptr inbounds %struct._stmt, %struct._stmt* %151, i32 0, i32 1
  %Try329 = bitcast %union.anon.33* %v328 to %struct.anon.45*
  %finalbody330 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try329, i32 0, i32 3
  %152 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody330, align 8
  %size331 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %152, i32 0, i32 0
  %153 = load i64, i64* %size331, align 8
  %tobool332 = icmp ne i64 %153, 0
  br i1 %tobool332, label %lor.lhs.false.333, label %land.rhs.339

lor.lhs.false.333:                                ; preds = %cond.false.327, %cond.true.326
  %154 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v334 = getelementptr inbounds %struct._stmt, %struct._stmt* %154, i32 0, i32 1
  %Try335 = bitcast %union.anon.33* %v334 to %struct.anon.45*
  %finalbody336 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try335, i32 0, i32 3
  %155 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody336, align 8
  %call337 = call i32 @validate_stmts(%struct.asdl_seq* %155)
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %land.rhs.339, label %land.end.360

land.rhs.339:                                     ; preds = %lor.lhs.false.333, %cond.false.327, %cond.true.326
  %156 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v340 = getelementptr inbounds %struct._stmt, %struct._stmt* %156, i32 0, i32 1
  %Try341 = bitcast %union.anon.33* %v340 to %struct.anon.45*
  %orelse342 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try341, i32 0, i32 2
  %157 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse342, align 8
  %cmp343 = icmp eq %struct.asdl_seq* %157, null
  br i1 %cmp343, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %land.rhs.339
  br i1 false, label %lor.rhs.352, label %lor.end.358

cond.false.346:                                   ; preds = %land.rhs.339
  %158 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v347 = getelementptr inbounds %struct._stmt, %struct._stmt* %158, i32 0, i32 1
  %Try348 = bitcast %union.anon.33* %v347 to %struct.anon.45*
  %orelse349 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try348, i32 0, i32 2
  %159 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse349, align 8
  %size350 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %159, i32 0, i32 0
  %160 = load i64, i64* %size350, align 8
  %tobool351 = icmp ne i64 %160, 0
  br i1 %tobool351, label %lor.rhs.352, label %lor.end.358

lor.rhs.352:                                      ; preds = %cond.false.346, %cond.true.345
  %161 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v353 = getelementptr inbounds %struct._stmt, %struct._stmt* %161, i32 0, i32 1
  %Try354 = bitcast %union.anon.33* %v353 to %struct.anon.45*
  %orelse355 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try354, i32 0, i32 2
  %162 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse355, align 8
  %call356 = call i32 @validate_stmts(%struct.asdl_seq* %162)
  %tobool357 = icmp ne i32 %call356, 0
  br label %lor.end.358

lor.end.358:                                      ; preds = %lor.rhs.352, %cond.false.346, %cond.true.345
  %163 = phi i1 [ true, %cond.false.346 ], [ true, %cond.true.345 ], [ %tobool357, %lor.rhs.352 ]
  br label %land.end.360

land.end.360:                                     ; preds = %lor.end.358, %lor.lhs.false.333
  %164 = phi i1 [ false, %lor.lhs.false.333 ], [ %163, %lor.end.358 ]
  %land.ext361 = zext i1 %164 to i32
  store i32 %land.ext361, i32* %retval
  br label %return

sw.bb.362:                                        ; preds = %entry
  %165 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v363 = getelementptr inbounds %struct._stmt, %struct._stmt* %165, i32 0, i32 1
  %Assert = bitcast %union.anon.33* %v363 to %struct.anon.46*
  %test364 = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert, i32 0, i32 0
  %166 = load %struct._expr*, %struct._expr** %test364, align 8
  %call365 = call i32 @validate_expr(%struct._expr* %166, i32 1)
  %tobool366 = icmp ne i32 %call365, 0
  br i1 %tobool366, label %land.rhs.367, label %land.end.379

land.rhs.367:                                     ; preds = %sw.bb.362
  %167 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v368 = getelementptr inbounds %struct._stmt, %struct._stmt* %167, i32 0, i32 1
  %Assert369 = bitcast %union.anon.33* %v368 to %struct.anon.46*
  %msg = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert369, i32 0, i32 1
  %168 = load %struct._expr*, %struct._expr** %msg, align 8
  %tobool370 = icmp ne %struct._expr* %168, null
  br i1 %tobool370, label %lor.rhs.371, label %lor.end.377

lor.rhs.371:                                      ; preds = %land.rhs.367
  %169 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v372 = getelementptr inbounds %struct._stmt, %struct._stmt* %169, i32 0, i32 1
  %Assert373 = bitcast %union.anon.33* %v372 to %struct.anon.46*
  %msg374 = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert373, i32 0, i32 1
  %170 = load %struct._expr*, %struct._expr** %msg374, align 8
  %call375 = call i32 @validate_expr(%struct._expr* %170, i32 1)
  %tobool376 = icmp ne i32 %call375, 0
  br label %lor.end.377

lor.end.377:                                      ; preds = %lor.rhs.371, %land.rhs.367
  %171 = phi i1 [ true, %land.rhs.367 ], [ %tobool376, %lor.rhs.371 ]
  br label %land.end.379

land.end.379:                                     ; preds = %lor.end.377, %sw.bb.362
  %172 = phi i1 [ false, %sw.bb.362 ], [ %171, %lor.end.377 ]
  %land.ext380 = zext i1 %172 to i32
  store i32 %land.ext380, i32* %retval
  br label %return

sw.bb.381:                                        ; preds = %entry
  %173 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v382 = getelementptr inbounds %struct._stmt, %struct._stmt* %173, i32 0, i32 1
  %Import = bitcast %union.anon.33* %v382 to %struct.anon.47*
  %names = getelementptr inbounds %struct.anon.47, %struct.anon.47* %Import, i32 0, i32 0
  %174 = load %struct.asdl_seq*, %struct.asdl_seq** %names, align 8
  %call383 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  store i32 %call383, i32* %retval
  br label %return

sw.bb.384:                                        ; preds = %entry
  %175 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v385 = getelementptr inbounds %struct._stmt, %struct._stmt* %175, i32 0, i32 1
  %ImportFrom = bitcast %union.anon.33* %v385 to %struct.anon.48*
  %level = getelementptr inbounds %struct.anon.48, %struct.anon.48* %ImportFrom, i32 0, i32 2
  %176 = load i32, i32* %level, align 4
  %cmp386 = icmp slt i32 %176, -1
  br i1 %cmp386, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %sw.bb.384
  %177 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.389:                                       ; preds = %sw.bb.384
  %178 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v390 = getelementptr inbounds %struct._stmt, %struct._stmt* %178, i32 0, i32 1
  %ImportFrom391 = bitcast %union.anon.33* %v390 to %struct.anon.48*
  %names392 = getelementptr inbounds %struct.anon.48, %struct.anon.48* %ImportFrom391, i32 0, i32 1
  %179 = load %struct.asdl_seq*, %struct.asdl_seq** %names392, align 8
  %call393 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  store i32 %call393, i32* %retval
  br label %return

sw.bb.394:                                        ; preds = %entry
  %180 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v395 = getelementptr inbounds %struct._stmt, %struct._stmt* %180, i32 0, i32 1
  %Global = bitcast %union.anon.33* %v395 to %struct.anon.49*
  %names396 = getelementptr inbounds %struct.anon.49, %struct.anon.49* %Global, i32 0, i32 0
  %181 = load %struct.asdl_seq*, %struct.asdl_seq** %names396, align 8
  %call397 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0))
  store i32 %call397, i32* %retval
  br label %return

sw.bb.398:                                        ; preds = %entry
  %182 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v399 = getelementptr inbounds %struct._stmt, %struct._stmt* %182, i32 0, i32 1
  %Nonlocal = bitcast %union.anon.33* %v399 to %struct.anon.50*
  %names400 = getelementptr inbounds %struct.anon.50, %struct.anon.50* %Nonlocal, i32 0, i32 0
  %183 = load %struct.asdl_seq*, %struct.asdl_seq** %names400, align 8
  %call401 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  store i32 %call401, i32* %retval
  br label %return

sw.bb.402:                                        ; preds = %entry
  %184 = load %struct._stmt*, %struct._stmt** %stmt.addr, align 8
  %v403 = getelementptr inbounds %struct._stmt, %struct._stmt* %184, i32 0, i32 1
  %Expr = bitcast %union.anon.33* %v403 to %struct.anon.51*
  %value404 = getelementptr inbounds %struct.anon.51, %struct.anon.51* %Expr, i32 0, i32 0
  %185 = load %struct._expr*, %struct._expr** %value404, align 8
  %call405 = call i32 @validate_expr(%struct._expr* %185, i32 1)
  store i32 %call405, i32* %retval
  br label %return

sw.bb.406:                                        ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %186 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.406, %sw.bb.402, %sw.bb.398, %sw.bb.394, %if.end.389, %if.then.388, %sw.bb.381, %land.end.379, %land.end.360, %if.then.316, %if.then.276, %if.then.249, %if.then.224, %if.end.218, %if.then.217, %land.end.210, %for.end, %if.then.183, %if.then, %land.end.157, %land.end.138, %land.end.120, %land.end.97, %land.end.85, %sw.bb.71, %lor.end.70, %land.end.59, %land.end
  %187 = load i32, i32* %retval
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_body(%struct.asdl_seq* %body, i8* %owner) #0 {
entry:
  %body.addr = alloca %struct.asdl_seq*, align 8
  %owner.addr = alloca i8*, align 8
  store %struct.asdl_seq* %body, %struct.asdl_seq** %body.addr, align 8
  store i8* %owner, i8** %owner.addr, align 8
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %body.addr, align 8
  %1 = load i8*, i8** %owner.addr, align 8
  %call = call i32 @validate_nonempty_seq(%struct.asdl_seq* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %body.addr, align 8
  %call1 = call i32 @validate_stmts(%struct.asdl_seq* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_arguments(%struct._arguments* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct._arguments*, align 8
  store %struct._arguments* %args, %struct._arguments** %args.addr, align 8
  %0 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %args1 = getelementptr inbounds %struct._arguments, %struct._arguments* %0, i32 0, i32 0
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %args1, align 8
  %call = call i32 @validate_args(%struct.asdl_seq* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %vararg = getelementptr inbounds %struct._arguments, %struct._arguments* %2, i32 0, i32 1
  %3 = load %struct._arg*, %struct._arg** %vararg, align 8
  %tobool2 = icmp ne %struct._arg* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %vararg3 = getelementptr inbounds %struct._arguments, %struct._arguments* %4, i32 0, i32 1
  %5 = load %struct._arg*, %struct._arg** %vararg3, align 8
  %annotation = getelementptr inbounds %struct._arg, %struct._arg* %5, i32 0, i32 1
  %6 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool4 = icmp ne %struct._expr* %6, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %7 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %vararg6 = getelementptr inbounds %struct._arguments, %struct._arguments* %7, i32 0, i32 1
  %8 = load %struct._arg*, %struct._arg** %vararg6, align 8
  %annotation7 = getelementptr inbounds %struct._arg, %struct._arg* %8, i32 0, i32 1
  %9 = load %struct._expr*, %struct._expr** %annotation7, align 8
  %call8 = call i32 @validate_expr(%struct._expr* %9, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.5
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.5, %land.lhs.true, %if.end
  %10 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwonlyargs = getelementptr inbounds %struct._arguments, %struct._arguments* %10, i32 0, i32 2
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %call12 = call i32 @validate_args(%struct.asdl_seq* %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %12 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwarg = getelementptr inbounds %struct._arguments, %struct._arguments* %12, i32 0, i32 4
  %13 = load %struct._arg*, %struct._arg** %kwarg, align 8
  %tobool16 = icmp ne %struct._arg* %13, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.27

land.lhs.true.17:                                 ; preds = %if.end.15
  %14 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwarg18 = getelementptr inbounds %struct._arguments, %struct._arguments* %14, i32 0, i32 4
  %15 = load %struct._arg*, %struct._arg** %kwarg18, align 8
  %annotation19 = getelementptr inbounds %struct._arg, %struct._arg* %15, i32 0, i32 1
  %16 = load %struct._expr*, %struct._expr** %annotation19, align 8
  %tobool20 = icmp ne %struct._expr* %16, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %17 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwarg22 = getelementptr inbounds %struct._arguments, %struct._arguments* %17, i32 0, i32 4
  %18 = load %struct._arg*, %struct._arg** %kwarg22, align 8
  %annotation23 = getelementptr inbounds %struct._arg, %struct._arg* %18, i32 0, i32 1
  %19 = load %struct._expr*, %struct._expr** %annotation23, align 8
  %call24 = call i32 @validate_expr(%struct._expr* %19, i32 1)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %if.end.15
  %20 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %20, i32 0, i32 5
  %21 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults, align 8
  %cmp = icmp eq %struct.asdl_seq* %21, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  %22 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %defaults28 = getelementptr inbounds %struct._arguments, %struct._arguments* %22, i32 0, i32 5
  %23 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults28, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %23, i32 0, i32 0
  %24 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %24, %cond.false ]
  %25 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %args29 = getelementptr inbounds %struct._arguments, %struct._arguments* %25, i32 0, i32 0
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %args29, align 8
  %cmp30 = icmp eq %struct.asdl_seq* %26, null
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end
  br label %cond.end.35

cond.false.32:                                    ; preds = %cond.end
  %27 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %args33 = getelementptr inbounds %struct._arguments, %struct._arguments* %27, i32 0, i32 0
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %args33, align 8
  %size34 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %28, i32 0, i32 0
  %29 = load i64, i64* %size34, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.31
  %cond36 = phi i64 [ 0, %cond.true.31 ], [ %29, %cond.false.32 ]
  %cmp37 = icmp sgt i64 %cond, %cond36
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %cond.end.35
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %cond.end.35
  %31 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kw_defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %31, i32 0, i32 3
  %32 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults, align 8
  %cmp40 = icmp eq %struct.asdl_seq* %32, null
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.39
  br label %cond.end.45

cond.false.42:                                    ; preds = %if.end.39
  %33 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kw_defaults43 = getelementptr inbounds %struct._arguments, %struct._arguments* %33, i32 0, i32 3
  %34 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults43, align 8
  %size44 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %34, i32 0, i32 0
  %35 = load i64, i64* %size44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.41
  %cond46 = phi i64 [ 0, %cond.true.41 ], [ %35, %cond.false.42 ]
  %36 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwonlyargs47 = getelementptr inbounds %struct._arguments, %struct._arguments* %36, i32 0, i32 2
  %37 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs47, align 8
  %cmp48 = icmp eq %struct.asdl_seq* %37, null
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.45
  br label %cond.end.53

cond.false.50:                                    ; preds = %cond.end.45
  %38 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kwonlyargs51 = getelementptr inbounds %struct._arguments, %struct._arguments* %38, i32 0, i32 2
  %39 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs51, align 8
  %size52 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %39, i32 0, i32 0
  %40 = load i64, i64* %size52, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.50, %cond.true.49
  %cond54 = phi i64 [ 0, %cond.true.49 ], [ %40, %cond.false.50 ]
  %cmp55 = icmp ne i64 %cond46, %cond54
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %cond.end.53
  %41 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %cond.end.53
  %42 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %defaults58 = getelementptr inbounds %struct._arguments, %struct._arguments* %42, i32 0, i32 5
  %43 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults58, align 8
  %call59 = call i32 @validate_exprs(%struct.asdl_seq* %43, i32 1, i32 0)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.57
  %44 = load %struct._arguments*, %struct._arguments** %args.addr, align 8
  %kw_defaults61 = getelementptr inbounds %struct._arguments, %struct._arguments* %44, i32 0, i32 3
  %45 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults61, align 8
  %call62 = call i32 @validate_exprs(%struct.asdl_seq* %45, i32 1, i32 1)
  %tobool63 = icmp ne i32 %call62, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.57
  %46 = phi i1 [ false, %if.end.57 ], [ %tobool63, %land.rhs ]
  %land.ext = zext i1 %46 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.56, %if.then.38, %if.then.26, %if.then.14, %if.then.10, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_exprs(%struct.asdl_seq* %exprs, i32 %ctx, i32 %null_ok) #0 {
entry:
  %retval = alloca i32, align 4
  %exprs.addr = alloca %struct.asdl_seq*, align 8
  %ctx.addr = alloca i32, align 4
  %null_ok.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %expr = alloca %struct._expr*, align 8
  store %struct.asdl_seq* %exprs, %struct.asdl_seq** %exprs.addr, align 8
  store i32 %ctx, i32* %ctx.addr, align 4
  store i32 %null_ok, i32* %null_ok.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %exprs.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %exprs.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %2, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %exprs.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct._expr*
  store %struct._expr* %7, %struct._expr** %expr, align 8
  %8 = load %struct._expr*, %struct._expr** %expr, align 8
  %tobool = icmp ne %struct._expr* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct._expr*, %struct._expr** %expr, align 8
  %10 = load i32, i32* %ctx.addr, align 4
  %call = call i32 @validate_expr(%struct._expr* %9, i32 %10)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %null_ok.addr, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then.5
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_keywords(%struct.asdl_seq* %keywords) #0 {
entry:
  %retval = alloca i32, align 4
  %keywords.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  store %struct.asdl_seq* %keywords, %struct.asdl_seq** %keywords.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %2, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct._keyword*
  %value = getelementptr inbounds %struct._keyword, %struct._keyword* %7, i32 0, i32 1
  %8 = load %struct._expr*, %struct._expr** %value, align 8
  %call = call i32 @validate_expr(%struct._expr* %8, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_assignlist(%struct.asdl_seq* %targets, i32 %ctx) #0 {
entry:
  %targets.addr = alloca %struct.asdl_seq*, align 8
  %ctx.addr = alloca i32, align 4
  store %struct.asdl_seq* %targets, %struct.asdl_seq** %targets.addr, align 8
  store i32 %ctx, i32* %ctx.addr, align 4
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %targets.addr, align 8
  %1 = load i32, i32* %ctx.addr, align 4
  %cmp = icmp eq i32 %1, 3
  %cond = select i1 %cmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)
  %call = call i32 @validate_nonempty_seq(%struct.asdl_seq* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* %cond)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %targets.addr, align 8
  %3 = load i32, i32* %ctx.addr, align 4
  %call1 = call i32 @validate_exprs(%struct.asdl_seq* %2, i32 %3, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_nonempty_seq(%struct.asdl_seq* %seq, i8* %what, i8* %owner) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct.asdl_seq*, align 8
  %what.addr = alloca i8*, align 8
  %owner.addr = alloca i8*, align 8
  store %struct.asdl_seq* %seq, %struct.asdl_seq** %seq.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store i8* %owner, i8** %owner.addr, align 8
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %seq.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %seq.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %1, i32 0, i32 0
  %2 = load i64, i64* %size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %4 = load i8*, i8** %what.addr, align 8
  %5 = load i8*, i8** %owner.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %4, i8* %5)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_args(%struct.asdl_seq* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct._arg*, align 8
  store %struct.asdl_seq* %args, %struct.asdl_seq** %args.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %2, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct._arg*
  store %struct._arg* %7, %struct._arg** %arg, align 8
  %8 = load %struct._arg*, %struct._arg** %arg, align 8
  %annotation = getelementptr inbounds %struct._arg, %struct._arg* %8, i32 0, i32 1
  %9 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool = icmp ne %struct._expr* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._arg*, %struct._arg** %arg, align 8
  %annotation4 = getelementptr inbounds %struct._arg, %struct._arg* %10, i32 0, i32 1
  %11 = load %struct._expr*, %struct._expr** %annotation4, align 8
  %call = call i32 @validate_expr(%struct._expr* %11, i32 1)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i8* @expr_context_name(i32 %ctx) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i32, align 4
  store i32 %ctx, i32* %ctx.addr, align 4
  %0 = load i32, i32* %ctx.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comprehension(%struct.asdl_seq* %gens) #0 {
entry:
  %retval = alloca i32, align 4
  %gens.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %comp = alloca %struct._comprehension*, align 8
  store %struct.asdl_seq* %gens, %struct.asdl_seq** %gens.addr, align 8
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %gens.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %gens.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %1, i32 0, i32 0
  %2 = load i64, i64* %size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %gens.addr, align 8
  %cmp1 = icmp eq %struct.asdl_seq* %5, null
  br i1 %cmp1, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %for.cond
  br label %cond.end

cond.false.4:                                     ; preds = %for.cond
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %gens.addr, align 8
  %size5 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %6, i32 0, i32 0
  %7 = load i64, i64* %size5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i64 [ 0, %cond.true.3 ], [ %7, %cond.false.4 ]
  %cmp6 = icmp slt i64 %conv, %cond
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.asdl_seq*, %struct.asdl_seq** %gens.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = bitcast i8* %10 to %struct._comprehension*
  store %struct._comprehension* %11, %struct._comprehension** %comp, align 8
  %12 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %target = getelementptr inbounds %struct._comprehension, %struct._comprehension* %12, i32 0, i32 0
  %13 = load %struct._expr*, %struct._expr** %target, align 8
  %call = call i32 @validate_expr(%struct._expr* %13, i32 2)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %iter = getelementptr inbounds %struct._comprehension, %struct._comprehension* %14, i32 0, i32 1
  %15 = load %struct._expr*, %struct._expr** %iter, align 8
  %call9 = call i32 @validate_expr(%struct._expr* %15, i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false.11, label %if.then.14

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %16 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %ifs = getelementptr inbounds %struct._comprehension, %struct._comprehension* %16, i32 0, i32 2
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  %call12 = call i32 @validate_exprs(%struct.asdl_seq* %17, i32 1, i32 0)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_slice(%struct._slice* %slice) #0 {
entry:
  %retval = alloca i32, align 4
  %slice.addr = alloca %struct._slice*, align 8
  %i = alloca i32, align 4
  store %struct._slice* %slice, %struct._slice** %slice.addr, align 8
  %0 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %kind = getelementptr inbounds %struct._slice, %struct._slice* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v = getelementptr inbounds %struct._slice, %struct._slice* %2, i32 0, i32 1
  %Slice = bitcast %union.anon.24* %v to %struct.anon.25*
  %lower = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice, i32 0, i32 0
  %3 = load %struct._expr*, %struct._expr** %lower, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %sw.bb
  %4 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v1 = getelementptr inbounds %struct._slice, %struct._slice* %4, i32 0, i32 1
  %Slice2 = bitcast %union.anon.24* %v1 to %struct.anon.25*
  %lower3 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice2, i32 0, i32 0
  %5 = load %struct._expr*, %struct._expr** %lower3, align 8
  %call = call i32 @validate_expr(%struct._expr* %5, i32 1)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb
  %6 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v5 = getelementptr inbounds %struct._slice, %struct._slice* %6, i32 0, i32 1
  %Slice6 = bitcast %union.anon.24* %v5 to %struct.anon.25*
  %upper = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice6, i32 0, i32 1
  %7 = load %struct._expr*, %struct._expr** %upper, align 8
  %tobool7 = icmp ne %struct._expr* %7, null
  br i1 %tobool7, label %lor.lhs.false.8, label %land.rhs

lor.lhs.false.8:                                  ; preds = %land.lhs.true
  %8 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v9 = getelementptr inbounds %struct._slice, %struct._slice* %8, i32 0, i32 1
  %Slice10 = bitcast %union.anon.24* %v9 to %struct.anon.25*
  %upper11 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice10, i32 0, i32 1
  %9 = load %struct._expr*, %struct._expr** %upper11, align 8
  %call12 = call i32 @validate_expr(%struct._expr* %9, i32 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.8, %land.lhs.true
  %10 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v14 = getelementptr inbounds %struct._slice, %struct._slice* %10, i32 0, i32 1
  %Slice15 = bitcast %union.anon.24* %v14 to %struct.anon.25*
  %step = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice15, i32 0, i32 2
  %11 = load %struct._expr*, %struct._expr** %step, align 8
  %tobool16 = icmp ne %struct._expr* %11, null
  br i1 %tobool16, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %12 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v17 = getelementptr inbounds %struct._slice, %struct._slice* %12, i32 0, i32 1
  %Slice18 = bitcast %union.anon.24* %v17 to %struct.anon.25*
  %step19 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice18, i32 0, i32 2
  %13 = load %struct._expr*, %struct._expr** %step19, align 8
  %call20 = call i32 @validate_expr(%struct._expr* %13, i32 1)
  %tobool21 = icmp ne i32 %call20, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %tobool21, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false.8, %lor.lhs.false
  %15 = phi i1 [ false, %lor.lhs.false.8 ], [ false, %lor.lhs.false ], [ %14, %lor.end ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  %16 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v23 = getelementptr inbounds %struct._slice, %struct._slice* %16, i32 0, i32 1
  %ExtSlice = bitcast %union.anon.24* %v23 to %struct.anon.26*
  %dims = getelementptr inbounds %struct.anon.26, %struct.anon.26* %ExtSlice, i32 0, i32 0
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %dims, align 8
  %call24 = call i32 @validate_nonempty_seq(%struct.asdl_seq* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.22
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.22
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %conv = sext i32 %18 to i64
  %19 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v26 = getelementptr inbounds %struct._slice, %struct._slice* %19, i32 0, i32 1
  %ExtSlice27 = bitcast %union.anon.24* %v26 to %struct.anon.26*
  %dims28 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %ExtSlice27, i32 0, i32 0
  %20 = load %struct.asdl_seq*, %struct.asdl_seq** %dims28, align 8
  %cmp = icmp eq %struct.asdl_seq* %20, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %21 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v30 = getelementptr inbounds %struct._slice, %struct._slice* %21, i32 0, i32 1
  %ExtSlice31 = bitcast %union.anon.24* %v30 to %struct.anon.26*
  %dims32 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %ExtSlice31, i32 0, i32 0
  %22 = load %struct.asdl_seq*, %struct.asdl_seq** %dims32, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %22, i32 0, i32 0
  %23 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %23, %cond.false ]
  %cmp33 = icmp slt i64 %conv, %cond
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v35 = getelementptr inbounds %struct._slice, %struct._slice* %25, i32 0, i32 1
  %ExtSlice36 = bitcast %union.anon.24* %v35 to %struct.anon.26*
  %dims37 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %ExtSlice36, i32 0, i32 0
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %dims37, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %26, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %27 = load i8*, i8** %arrayidx, align 8
  %28 = bitcast i8* %27 to %struct._slice*
  %call38 = call i32 @validate_slice(%struct._slice* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

sw.bb.42:                                         ; preds = %entry
  %30 = load %struct._slice*, %struct._slice** %slice.addr, align 8
  %v43 = getelementptr inbounds %struct._slice, %struct._slice* %30, i32 0, i32 1
  %Index = bitcast %union.anon.24* %v43 to %struct.anon.27*
  %value = getelementptr inbounds %struct.anon.27, %struct.anon.27* %Index, i32 0, i32 0
  %31 = load %struct._expr*, %struct._expr** %value, align 8
  %call44 = call i32 @validate_expr(%struct._expr* %31, i32 1)
  store i32 %call44, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %32 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.42, %for.end, %if.then.40, %if.then, %land.end
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_expr(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct._expr*, align 8
  %expression = alloca %struct._expr*, align 8
  %expression81 = alloca %struct._expr*, align 8
  %ops = alloca %struct.asdl_int_seq*, align 8
  %cmps = alloca %struct.asdl_seq*, align 8
  %newoperator = alloca i32, align 4
  %an = alloca %struct._node*, align 8
  %en = alloca %struct._node*, align 8
  %is_from = alloca i32, align 4
  %exp = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  br label %loop

loop:                                             ; preds = %if.then.191, %if.then.145, %if.then.77, %if.then.59, %if.then.21, %entry
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 302, label %sw.bb
    i32 303, label %sw.bb
    i32 306, label %sw.bb.17
    i32 307, label %sw.bb.17
    i32 308, label %sw.bb.55
    i32 309, label %sw.bb.73
    i32 311, label %sw.bb.139
    i32 312, label %sw.bb.141
    i32 313, label %sw.bb.141
    i32 314, label %sw.bb.141
    i32 315, label %sw.bb.141
    i32 316, label %sw.bb.141
    i32 317, label %sw.bb.141
    i32 336, label %sw.bb.150
    i32 318, label %sw.bb.187
    i32 319, label %sw.bb.196
  ]

sw.bb:                                            ; preds = %loop, %loop
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  %n_type1 = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %4 = load i16, i16* %n_type1, align 2
  %conv2 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv2, 304
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %6, i64 0
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %arrayidx5, i32 0, i32 0
  %7 = load i16, i16* %n_type6, align 2
  %conv7 = sext i16 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 305
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %10, i64 0
  %call = call %struct._expr* @ast_for_lambdef(%struct.compiling* %8, %struct._node* %arrayidx11)
  store %struct._expr* %call, %struct._expr** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 4
  %12 = load i32, i32* %n_nchildren, align 4
  %cmp12 = icmp sgt i32 %12, 1
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %13 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %call15 = call %struct._expr* @ast_for_ifexpr(%struct.compiling* %13, %struct._node* %14)
  store %struct._expr* %call15, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %loop, %loop, %if.end.16
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren18 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4
  %16 = load i32, i32* %n_nchildren18, align 4
  %cmp19 = icmp eq i32 %16, 1
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %sw.bb.17
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %18, i64 0
  store %struct._node* %arrayidx23, %struct._node** %n.addr, align 8
  br label %loop

if.end.24:                                        ; preds = %sw.bb.17
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren25 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 4
  %20 = load i32, i32* %n_nchildren25, align 4
  %add = add i32 %20, 1
  %div = sdiv i32 %add, 2
  %conv26 = sext i32 %div to i64
  %21 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %21, i32 0, i32 1
  %22 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call27 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv26, %struct._arena* %22)
  store %struct.asdl_seq* %call27, %struct.asdl_seq** %seq, align 8
  %23 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %23, null
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.24
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %24 = load i32, i32* %i, align 4
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren30 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 4
  %26 = load i32, i32* %n_nchildren30, align 4
  %cmp31 = icmp slt i32 %24, %26
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom
  %call35 = call %struct._expr* @ast_for_expr(%struct.compiling* %27, %struct._node* %arrayidx34)
  store %struct._expr* %call35, %struct._expr** %e, align 8
  %31 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool36 = icmp ne %struct._expr* %31, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %for.body
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.38:                                        ; preds = %for.body
  %32 = load %struct._expr*, %struct._expr** %e, align 8
  %33 = bitcast %struct._expr* %32 to i8*
  %34 = load i32, i32* %i, align 4
  %div39 = sdiv i32 %34, 2
  %idxprom40 = sext i32 %div39 to i64
  %35 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %35, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom40
  store i8* %33, i8** %arrayidx41, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %36 = load i32, i32* %i, align 4
  %add42 = add i32 %36, 2
  store i32 %add42, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child43 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 5
  %38 = load %struct._node*, %struct._node** %n_child43, align 8
  %arrayidx44 = getelementptr %struct._node, %struct._node* %38, i64 1
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx44, i32 0, i32 1
  %39 = load i8*, i8** %n_str, align 8
  %call45 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0)) #8
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.50, label %if.then.47

if.then.47:                                       ; preds = %for.end
  %40 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 2
  %42 = load i32, i32* %n_lineno, align 4
  %43 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 3
  %44 = load i32, i32* %n_col_offset, align 4
  %45 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena48 = getelementptr inbounds %struct.compiling, %struct.compiling* %45, i32 0, i32 1
  %46 = load %struct._arena*, %struct._arena** %c_arena48, align 8
  %call49 = call %struct._expr* @_Py_BoolOp(i32 1, %struct.asdl_seq* %40, i32 %42, i32 %44, %struct._arena* %46)
  store %struct._expr* %call49, %struct._expr** %retval
  br label %return

if.end.50:                                        ; preds = %for.end
  %47 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %48 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno51 = getelementptr inbounds %struct._node, %struct._node* %48, i32 0, i32 2
  %49 = load i32, i32* %n_lineno51, align 4
  %50 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset52 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 3
  %51 = load i32, i32* %n_col_offset52, align 4
  %52 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena53 = getelementptr inbounds %struct.compiling, %struct.compiling* %52, i32 0, i32 1
  %53 = load %struct._arena*, %struct._arena** %c_arena53, align 8
  %call54 = call %struct._expr* @_Py_BoolOp(i32 2, %struct.asdl_seq* %47, i32 %49, i32 %51, %struct._arena* %53)
  store %struct._expr* %call54, %struct._expr** %retval
  br label %return

sw.bb.55:                                         ; preds = %loop
  %54 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren56 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 4
  %55 = load i32, i32* %n_nchildren56, align 4
  %cmp57 = icmp eq i32 %55, 1
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %sw.bb.55
  %56 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child60 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 5
  %57 = load %struct._node*, %struct._node** %n_child60, align 8
  %arrayidx61 = getelementptr %struct._node, %struct._node* %57, i64 0
  store %struct._node* %arrayidx61, %struct._node** %n.addr, align 8
  br label %loop

if.else.62:                                       ; preds = %sw.bb.55
  %58 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %59 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %59, i32 0, i32 5
  %60 = load %struct._node*, %struct._node** %n_child63, align 8
  %arrayidx64 = getelementptr %struct._node, %struct._node* %60, i64 1
  %call65 = call %struct._expr* @ast_for_expr(%struct.compiling* %58, %struct._node* %arrayidx64)
  store %struct._expr* %call65, %struct._expr** %expression, align 8
  %61 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool66 = icmp ne %struct._expr* %61, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.else.62
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.68:                                        ; preds = %if.else.62
  %62 = load %struct._expr*, %struct._expr** %expression, align 8
  %63 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno69 = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 2
  %64 = load i32, i32* %n_lineno69, align 4
  %65 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset70 = getelementptr inbounds %struct._node, %struct._node* %65, i32 0, i32 3
  %66 = load i32, i32* %n_col_offset70, align 4
  %67 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena71 = getelementptr inbounds %struct.compiling, %struct.compiling* %67, i32 0, i32 1
  %68 = load %struct._arena*, %struct._arena** %c_arena71, align 8
  %call72 = call %struct._expr* @_Py_UnaryOp(i32 2, %struct._expr* %62, i32 %64, i32 %66, %struct._arena* %68)
  store %struct._expr* %call72, %struct._expr** %retval
  br label %return

sw.bb.73:                                         ; preds = %loop
  %69 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren74 = getelementptr inbounds %struct._node, %struct._node* %69, i32 0, i32 4
  %70 = load i32, i32* %n_nchildren74, align 4
  %cmp75 = icmp eq i32 %70, 1
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %sw.bb.73
  %71 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child78 = getelementptr inbounds %struct._node, %struct._node* %71, i32 0, i32 5
  %72 = load %struct._node*, %struct._node** %n_child78, align 8
  %arrayidx79 = getelementptr %struct._node, %struct._node* %72, i64 0
  store %struct._node* %arrayidx79, %struct._node** %n.addr, align 8
  br label %loop

if.else.80:                                       ; preds = %sw.bb.73
  %73 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren82 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 4
  %74 = load i32, i32* %n_nchildren82, align 4
  %div83 = sdiv i32 %74, 2
  %conv84 = sext i32 %div83 to i64
  %75 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena85 = getelementptr inbounds %struct.compiling, %struct.compiling* %75, i32 0, i32 1
  %76 = load %struct._arena*, %struct._arena** %c_arena85, align 8
  %call86 = call %struct.asdl_int_seq* @_Py_asdl_int_seq_new(i64 %conv84, %struct._arena* %76)
  store %struct.asdl_int_seq* %call86, %struct.asdl_int_seq** %ops, align 8
  %77 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %ops, align 8
  %tobool87 = icmp ne %struct.asdl_int_seq* %77, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.else.80
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.89:                                        ; preds = %if.else.80
  %78 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren90 = getelementptr inbounds %struct._node, %struct._node* %78, i32 0, i32 4
  %79 = load i32, i32* %n_nchildren90, align 4
  %div91 = sdiv i32 %79, 2
  %conv92 = sext i32 %div91 to i64
  %80 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena93 = getelementptr inbounds %struct.compiling, %struct.compiling* %80, i32 0, i32 1
  %81 = load %struct._arena*, %struct._arena** %c_arena93, align 8
  %call94 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv92, %struct._arena* %81)
  store %struct.asdl_seq* %call94, %struct.asdl_seq** %cmps, align 8
  %82 = load %struct.asdl_seq*, %struct.asdl_seq** %cmps, align 8
  %tobool95 = icmp ne %struct.asdl_seq* %82, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.end.89
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.97:                                        ; preds = %if.end.89
  store i32 1, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.126, %if.end.97
  %83 = load i32, i32* %i, align 4
  %84 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren99 = getelementptr inbounds %struct._node, %struct._node* %84, i32 0, i32 4
  %85 = load i32, i32* %n_nchildren99, align 4
  %cmp100 = icmp slt i32 %83, %85
  br i1 %cmp100, label %for.body.102, label %for.end.128

for.body.102:                                     ; preds = %for.cond.98
  %86 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %87 to i64
  %88 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child104 = getelementptr inbounds %struct._node, %struct._node* %88, i32 0, i32 5
  %89 = load %struct._node*, %struct._node** %n_child104, align 8
  %arrayidx105 = getelementptr %struct._node, %struct._node* %89, i64 %idxprom103
  %call106 = call i32 @ast_for_comp_op(%struct.compiling* %86, %struct._node* %arrayidx105)
  store i32 %call106, i32* %newoperator, align 4
  %90 = load i32, i32* %newoperator, align 4
  %tobool107 = icmp ne i32 %90, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %for.body.102
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.109:                                       ; preds = %for.body.102
  %91 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %92 = load i32, i32* %i, align 4
  %add110 = add i32 %92, 1
  %idxprom111 = sext i32 %add110 to i64
  %93 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child112 = getelementptr inbounds %struct._node, %struct._node* %93, i32 0, i32 5
  %94 = load %struct._node*, %struct._node** %n_child112, align 8
  %arrayidx113 = getelementptr %struct._node, %struct._node* %94, i64 %idxprom111
  %call114 = call %struct._expr* @ast_for_expr(%struct.compiling* %91, %struct._node* %arrayidx113)
  store %struct._expr* %call114, %struct._expr** %expression81, align 8
  %95 = load %struct._expr*, %struct._expr** %expression81, align 8
  %tobool115 = icmp ne %struct._expr* %95, null
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.end.109
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.117:                                       ; preds = %if.end.109
  %96 = load i32, i32* %newoperator, align 4
  %97 = load i32, i32* %i, align 4
  %div118 = sdiv i32 %97, 2
  %idxprom119 = sext i32 %div118 to i64
  %98 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %ops, align 8
  %elements120 = getelementptr inbounds %struct.asdl_int_seq, %struct.asdl_int_seq* %98, i32 0, i32 1
  %arrayidx121 = getelementptr [1 x i32], [1 x i32]* %elements120, i32 0, i64 %idxprom119
  store i32 %96, i32* %arrayidx121, align 4
  %99 = load %struct._expr*, %struct._expr** %expression81, align 8
  %100 = bitcast %struct._expr* %99 to i8*
  %101 = load i32, i32* %i, align 4
  %div122 = sdiv i32 %101, 2
  %idxprom123 = sext i32 %div122 to i64
  %102 = load %struct.asdl_seq*, %struct.asdl_seq** %cmps, align 8
  %elements124 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %102, i32 0, i32 1
  %arrayidx125 = getelementptr [1 x i8*], [1 x i8*]* %elements124, i32 0, i64 %idxprom123
  store i8* %100, i8** %arrayidx125, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.117
  %103 = load i32, i32* %i, align 4
  %add127 = add i32 %103, 2
  store i32 %add127, i32* %i, align 4
  br label %for.cond.98

for.end.128:                                      ; preds = %for.cond.98
  %104 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %105 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child129 = getelementptr inbounds %struct._node, %struct._node* %105, i32 0, i32 5
  %106 = load %struct._node*, %struct._node** %n_child129, align 8
  %arrayidx130 = getelementptr %struct._node, %struct._node* %106, i64 0
  %call131 = call %struct._expr* @ast_for_expr(%struct.compiling* %104, %struct._node* %arrayidx130)
  store %struct._expr* %call131, %struct._expr** %expression81, align 8
  %107 = load %struct._expr*, %struct._expr** %expression81, align 8
  %tobool132 = icmp ne %struct._expr* %107, null
  br i1 %tobool132, label %if.end.134, label %if.then.133

if.then.133:                                      ; preds = %for.end.128
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.134:                                       ; preds = %for.end.128
  %108 = load %struct._expr*, %struct._expr** %expression81, align 8
  %109 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %ops, align 8
  %110 = load %struct.asdl_seq*, %struct.asdl_seq** %cmps, align 8
  %111 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno135 = getelementptr inbounds %struct._node, %struct._node* %111, i32 0, i32 2
  %112 = load i32, i32* %n_lineno135, align 4
  %113 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset136 = getelementptr inbounds %struct._node, %struct._node* %113, i32 0, i32 3
  %114 = load i32, i32* %n_col_offset136, align 4
  %115 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena137 = getelementptr inbounds %struct.compiling, %struct.compiling* %115, i32 0, i32 1
  %116 = load %struct._arena*, %struct._arena** %c_arena137, align 8
  %call138 = call %struct._expr* @_Py_Compare(%struct._expr* %108, %struct.asdl_int_seq* %109, %struct.asdl_seq* %110, i32 %112, i32 %114, %struct._arena* %116)
  store %struct._expr* %call138, %struct._expr** %retval
  br label %return

sw.bb.139:                                        ; preds = %loop
  %117 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %118 = load %struct._node*, %struct._node** %n.addr, align 8
  %call140 = call %struct._expr* @ast_for_starred(%struct.compiling* %117, %struct._node* %118)
  store %struct._expr* %call140, %struct._expr** %retval
  br label %return

sw.bb.141:                                        ; preds = %loop, %loop, %loop, %loop, %loop, %loop
  %119 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren142 = getelementptr inbounds %struct._node, %struct._node* %119, i32 0, i32 4
  %120 = load i32, i32* %n_nchildren142, align 4
  %cmp143 = icmp eq i32 %120, 1
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %sw.bb.141
  %121 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child146 = getelementptr inbounds %struct._node, %struct._node* %121, i32 0, i32 5
  %122 = load %struct._node*, %struct._node** %n_child146, align 8
  %arrayidx147 = getelementptr %struct._node, %struct._node* %122, i64 0
  store %struct._node* %arrayidx147, %struct._node** %n.addr, align 8
  br label %loop

if.end.148:                                       ; preds = %sw.bb.141
  %123 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %124 = load %struct._node*, %struct._node** %n.addr, align 8
  %call149 = call %struct._expr* @ast_for_binop(%struct.compiling* %123, %struct._node* %124)
  store %struct._expr* %call149, %struct._expr** %retval
  br label %return

sw.bb.150:                                        ; preds = %loop
  store %struct._node* null, %struct._node** %an, align 8
  store %struct._node* null, %struct._node** %en, align 8
  store i32 0, i32* %is_from, align 4
  store %struct._expr* null, %struct._expr** %exp, align 8
  %125 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren151 = getelementptr inbounds %struct._node, %struct._node* %125, i32 0, i32 4
  %126 = load i32, i32* %n_nchildren151, align 4
  %cmp152 = icmp sgt i32 %126, 1
  br i1 %cmp152, label %if.then.154, label %if.end.157

if.then.154:                                      ; preds = %sw.bb.150
  %127 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child155 = getelementptr inbounds %struct._node, %struct._node* %127, i32 0, i32 5
  %128 = load %struct._node*, %struct._node** %n_child155, align 8
  %arrayidx156 = getelementptr %struct._node, %struct._node* %128, i64 1
  store %struct._node* %arrayidx156, %struct._node** %an, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.154, %sw.bb.150
  %129 = load %struct._node*, %struct._node** %an, align 8
  %tobool158 = icmp ne %struct._node* %129, null
  br i1 %tobool158, label %if.then.159, label %if.end.175

if.then.159:                                      ; preds = %if.end.157
  %130 = load %struct._node*, %struct._node** %an, align 8
  %n_nchildren160 = getelementptr inbounds %struct._node, %struct._node* %130, i32 0, i32 4
  %131 = load i32, i32* %n_nchildren160, align 4
  %sub = sub i32 %131, 1
  %idxprom161 = sext i32 %sub to i64
  %132 = load %struct._node*, %struct._node** %an, align 8
  %n_child162 = getelementptr inbounds %struct._node, %struct._node* %132, i32 0, i32 5
  %133 = load %struct._node*, %struct._node** %n_child162, align 8
  %arrayidx163 = getelementptr %struct._node, %struct._node* %133, i64 %idxprom161
  store %struct._node* %arrayidx163, %struct._node** %en, align 8
  %134 = load %struct._node*, %struct._node** %an, align 8
  %n_nchildren164 = getelementptr inbounds %struct._node, %struct._node* %134, i32 0, i32 4
  %135 = load i32, i32* %n_nchildren164, align 4
  %cmp165 = icmp eq i32 %135, 2
  br i1 %cmp165, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.then.159
  store i32 1, i32* %is_from, align 4
  %136 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %137 = load %struct._node*, %struct._node** %en, align 8
  %call168 = call %struct._expr* @ast_for_expr(%struct.compiling* %136, %struct._node* %137)
  store %struct._expr* %call168, %struct._expr** %exp, align 8
  br label %if.end.171

if.else.169:                                      ; preds = %if.then.159
  %138 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %139 = load %struct._node*, %struct._node** %en, align 8
  %call170 = call %struct._expr* @ast_for_testlist(%struct.compiling* %138, %struct._node* %139)
  store %struct._expr* %call170, %struct._expr** %exp, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.167
  %140 = load %struct._expr*, %struct._expr** %exp, align 8
  %tobool172 = icmp ne %struct._expr* %140, null
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %if.end.171
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.174:                                       ; preds = %if.end.171
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.157
  %141 = load i32, i32* %is_from, align 4
  %tobool176 = icmp ne i32 %141, 0
  br i1 %tobool176, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %if.end.175
  %142 = load %struct._expr*, %struct._expr** %exp, align 8
  %143 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno178 = getelementptr inbounds %struct._node, %struct._node* %143, i32 0, i32 2
  %144 = load i32, i32* %n_lineno178, align 4
  %145 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset179 = getelementptr inbounds %struct._node, %struct._node* %145, i32 0, i32 3
  %146 = load i32, i32* %n_col_offset179, align 4
  %147 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena180 = getelementptr inbounds %struct.compiling, %struct.compiling* %147, i32 0, i32 1
  %148 = load %struct._arena*, %struct._arena** %c_arena180, align 8
  %call181 = call %struct._expr* @_Py_YieldFrom(%struct._expr* %142, i32 %144, i32 %146, %struct._arena* %148)
  store %struct._expr* %call181, %struct._expr** %retval
  br label %return

if.end.182:                                       ; preds = %if.end.175
  %149 = load %struct._expr*, %struct._expr** %exp, align 8
  %150 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno183 = getelementptr inbounds %struct._node, %struct._node* %150, i32 0, i32 2
  %151 = load i32, i32* %n_lineno183, align 4
  %152 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset184 = getelementptr inbounds %struct._node, %struct._node* %152, i32 0, i32 3
  %153 = load i32, i32* %n_col_offset184, align 4
  %154 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena185 = getelementptr inbounds %struct.compiling, %struct.compiling* %154, i32 0, i32 1
  %155 = load %struct._arena*, %struct._arena** %c_arena185, align 8
  %call186 = call %struct._expr* @_Py_Yield(%struct._expr* %149, i32 %151, i32 %153, %struct._arena* %155)
  store %struct._expr* %call186, %struct._expr** %retval
  br label %return

sw.bb.187:                                        ; preds = %loop
  %156 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren188 = getelementptr inbounds %struct._node, %struct._node* %156, i32 0, i32 4
  %157 = load i32, i32* %n_nchildren188, align 4
  %cmp189 = icmp eq i32 %157, 1
  br i1 %cmp189, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %sw.bb.187
  %158 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child192 = getelementptr inbounds %struct._node, %struct._node* %158, i32 0, i32 5
  %159 = load %struct._node*, %struct._node** %n_child192, align 8
  %arrayidx193 = getelementptr %struct._node, %struct._node* %159, i64 0
  store %struct._node* %arrayidx193, %struct._node** %n.addr, align 8
  br label %loop

if.end.194:                                       ; preds = %sw.bb.187
  %160 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %161 = load %struct._node*, %struct._node** %n.addr, align 8
  %call195 = call %struct._expr* @ast_for_factor(%struct.compiling* %160, %struct._node* %161)
  store %struct._expr* %call195, %struct._expr** %retval
  br label %return

sw.bb.196:                                        ; preds = %loop
  %162 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %163 = load %struct._node*, %struct._node** %n.addr, align 8
  %call197 = call %struct._expr* @ast_for_power(%struct.compiling* %162, %struct._node* %163)
  store %struct._expr* %call197, %struct._expr** %retval
  br label %return

sw.default:                                       ; preds = %loop
  %164 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %165 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type198 = getelementptr inbounds %struct._node, %struct._node* %165, i32 0, i32 0
  %166 = load i16, i16* %n_type198, align 2
  %conv199 = sext i16 %166 to i32
  %call200 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i32 %conv199)
  store %struct._expr* null, %struct._expr** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.196, %if.end.194, %if.end.182, %if.then.177, %if.then.173, %if.end.148, %sw.bb.139, %if.end.134, %if.then.133, %if.then.116, %if.then.108, %if.then.96, %if.then.88, %if.end.68, %if.then.67, %if.end.50, %if.then.47, %if.then.37, %if.then.28, %if.then.14, %if.then
  %167 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %167
}

; Function Attrs: nounwind uwtable
define internal %struct.asdl_seq* @seq_for_testlist(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %expression = alloca %struct._expr*, align 8
  %i = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %add = add i32 %1, 1
  %div = sdiv i32 %add, 2
  %conv = sext i32 %div to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %seq, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 %idxprom
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %12 = load %struct._node*, %struct._node** %ch, align 8
  %call3 = call %struct._expr* @ast_for_expr(%struct.compiling* %11, %struct._node* %12)
  store %struct._expr* %call3, %struct._expr** %expression, align 8
  %13 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool4 = icmp ne %struct._expr* %13, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %14 = load %struct._expr*, %struct._expr** %expression, align 8
  %15 = bitcast %struct._expr* %14 to i8*
  %16 = load i32, i32* %i, align 4
  %div7 = sdiv i32 %16, 2
  %idxprom8 = sext i32 %div7 to i64
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %17, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom8
  store i8* %15, i8** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %18 = load i32, i32* %i, align 4
  %add10 = add i32 %18, 2
  store i32 %add10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  store %struct.asdl_seq* %19, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %20 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %20
}

declare %struct._expr* @_Py_Tuple(%struct.asdl_seq*, i32, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_lambdef(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %args = alloca %struct._arguments*, align 8
  %expression = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct._arguments* @_Py_arguments(%struct.asdl_seq* null, %struct._arg* null, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._arg* null, %struct.asdl_seq* null, %struct._arena* %3)
  store %struct._arguments* %call, %struct._arguments** %args, align 8
  %4 = load %struct._arguments*, %struct._arguments** %args, align 8
  %tobool = icmp ne %struct._arguments* %4, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 2
  %call2 = call %struct._expr* @ast_for_expr(%struct.compiling* %5, %struct._node* %arrayidx)
  store %struct._expr* %call2, %struct._expr** %expression, align 8
  %8 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool3 = icmp ne %struct._expr* %8, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %if.end.18

if.else:                                          ; preds = %entry
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call8 = call %struct._arguments* @ast_for_arguments(%struct.compiling* %9, %struct._node* %arrayidx7)
  store %struct._arguments* %call8, %struct._arguments** %args, align 8
  %12 = load %struct._arguments*, %struct._arguments** %args, align 8
  %tobool9 = icmp ne %struct._arguments* %12, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.else
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  %13 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %15, i64 3
  %call14 = call %struct._expr* @ast_for_expr(%struct.compiling* %13, %struct._node* %arrayidx13)
  store %struct._expr* %call14, %struct._expr** %expression, align 8
  %16 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool15 = icmp ne %struct._expr* %16, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.5
  %17 = load %struct._arguments*, %struct._arguments** %args, align 8
  %18 = load %struct._expr*, %struct._expr** %expression, align 8
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 2
  %20 = load i32, i32* %n_lineno, align 4
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 3
  %22 = load i32, i32* %n_col_offset, align 4
  %23 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena19 = getelementptr inbounds %struct.compiling, %struct.compiling* %23, i32 0, i32 1
  %24 = load %struct._arena*, %struct._arena** %c_arena19, align 8
  %call20 = call %struct._expr* @_Py_Lambda(%struct._arguments* %17, %struct._expr* %18, i32 %20, i32 %22, %struct._arena* %24)
  store %struct._expr* %call20, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.then.10, %if.then.4, %if.then.1
  %25 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_ifexpr(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %body = alloca %struct._expr*, align 8
  %orelse = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %body, align 8
  %3 = load %struct._expr*, %struct._expr** %body, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %6, i64 2
  %call3 = call %struct._expr* @ast_for_expr(%struct.compiling* %4, %struct._node* %arrayidx2)
  store %struct._expr* %call3, %struct._expr** %expression, align 8
  %7 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool4 = icmp ne %struct._expr* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %10, i64 4
  %call9 = call %struct._expr* @ast_for_expr(%struct.compiling* %8, %struct._node* %arrayidx8)
  store %struct._expr* %call9, %struct._expr** %orelse, align 8
  %11 = load %struct._expr*, %struct._expr** %orelse, align 8
  %tobool10 = icmp ne %struct._expr* %11, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %12 = load %struct._expr*, %struct._expr** %expression, align 8
  %13 = load %struct._expr*, %struct._expr** %body, align 8
  %14 = load %struct._expr*, %struct._expr** %orelse, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 2
  %16 = load i32, i32* %n_lineno, align 4
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 3
  %18 = load i32, i32* %n_col_offset, align 4
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %19, i32 0, i32 1
  %20 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call13 = call %struct._expr* @_Py_IfExp(%struct._expr* %12, %struct._expr* %13, %struct._expr* %14, i32 %16, i32 %18, %struct._arena* %20)
  store %struct._expr* %call13, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.5, %if.then
  %21 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %21
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._expr* @_Py_BoolOp(i32, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_UnaryOp(i32, %struct._expr*, i32, i32, %struct._arena*) #1

declare %struct.asdl_int_seq* @_Py_asdl_int_seq_new(i64, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ast_for_comp_op(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type, align 2
  %conv = sext i16 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb.1
    i32 27, label %sw.bb.2
    i32 29, label %sw.bb.3
    i32 30, label %sw.bb.4
    i32 28, label %sw.bb.5
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.then
  store i32 5, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.then
  store i32 4, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.then
  store i32 6, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.then
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 1
  %7 = load i8*, i8** %n_str, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0)) #8
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %sw.bb.6
  store i32 9, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.6
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str10 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 1
  %9 = load i8*, i8** %n_str10, align 8
  %call11 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 7, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.then, %if.end.15
  %10 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str16 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 1
  %12 = load i8*, i8** %n_str16, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), i8* %12)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren18 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 4
  %14 = load i32, i32* %n_nchildren18, align 4
  %cmp19 = icmp eq i32 %14, 2
  br i1 %cmp19, label %if.then.21, label %if.end.51

if.then.21:                                       ; preds = %if.else
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %16, i64 0
  %n_type24 = getelementptr inbounds %struct._node, %struct._node* %arrayidx23, i32 0, i32 0
  %17 = load i16, i16* %n_type24, align 2
  %conv25 = sext i16 %17 to i32
  switch i32 %conv25, label %sw.default.43 [
    i32 1, label %sw.bb.26
  ]

sw.bb.26:                                         ; preds = %if.then.21
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %19, i64 1
  %n_str29 = getelementptr inbounds %struct._node, %struct._node* %arrayidx28, i32 0, i32 1
  %20 = load i8*, i8** %n_str29, align 8
  %call30 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0)) #8
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.26
  store i32 10, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.26
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %22, i64 0
  %n_str37 = getelementptr inbounds %struct._node, %struct._node* %arrayidx36, i32 0, i32 1
  %23 = load i8*, i8** %n_str37, align 8
  %call38 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)) #8
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  store i32 8, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.34
  br label %sw.default.43

sw.default.43:                                    ; preds = %if.then.21, %if.end.42
  %24 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child44 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child44, align 8
  %arrayidx45 = getelementptr %struct._node, %struct._node* %26, i64 0
  %n_str46 = getelementptr inbounds %struct._node, %struct._node* %arrayidx45, i32 0, i32 1
  %27 = load i8*, i8** %n_str46, align 8
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child47 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child47, align 8
  %arrayidx48 = getelementptr %struct._node, %struct._node* %29, i64 1
  %n_str49 = getelementptr inbounds %struct._node, %struct._node* %arrayidx48, i32 0, i32 1
  %30 = load i8*, i8** %n_str49, align 8
  %call50 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i8* %27, i8* %30)
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  %31 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren53 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 4
  %33 = load i32, i32* %n_nchildren53, align 4
  %call54 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i32 0, i32 0), i32 %33)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %sw.default.43, %if.then.41, %if.then.33, %sw.default, %if.then.14, %if.then.9, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare %struct._expr* @_Py_Compare(%struct._expr*, %struct.asdl_int_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_starred(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %tmp = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 1
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %tmp, align 8
  %3 = load %struct._expr*, %struct._expr** %tmp, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._expr*, %struct._expr** %tmp, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 2
  %6 = load i32, i32* %n_lineno, align 4
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 3
  %8 = load i32, i32* %n_col_offset, align 4
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %9, i32 0, i32 1
  %10 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call1 = call %struct._expr* @_Py_Starred(%struct._expr* %4, i32 1, i32 %6, i32 %8, %struct._arena* %10)
  store %struct._expr* %call1, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_binop(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %nops = alloca i32, align 4
  %expr1 = alloca %struct._expr*, align 8
  %expr2 = alloca %struct._expr*, align 8
  %result = alloca %struct._expr*, align 8
  %newoperator = alloca i32, align 4
  %tmp_result = alloca %struct._expr*, align 8
  %tmp = alloca %struct._expr*, align 8
  %next_oper = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %expr1, align 8
  %3 = load %struct._expr*, %struct._expr** %expr1, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %6, i64 2
  %call3 = call %struct._expr* @ast_for_expr(%struct.compiling* %4, %struct._node* %arrayidx2)
  store %struct._expr* %call3, %struct._expr** %expr2, align 8
  %7 = load %struct._expr*, %struct._expr** %expr2, align 8
  %tobool4 = icmp ne %struct._expr* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %9, i64 1
  %call9 = call i32 @get_operator(%struct._node* %arrayidx8)
  store i32 %call9, i32* %newoperator, align 4
  %10 = load i32, i32* %newoperator, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %11 = load %struct._expr*, %struct._expr** %expr1, align 8
  %12 = load i32, i32* %newoperator, align 4
  %13 = load %struct._expr*, %struct._expr** %expr2, align 8
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 2
  %15 = load i32, i32* %n_lineno, align 4
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 3
  %17 = load i32, i32* %n_col_offset, align 4
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %18, i32 0, i32 1
  %19 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call13 = call %struct._expr* @_Py_BinOp(%struct._expr* %11, i32 %12, %struct._expr* %13, i32 %15, i32 %17, %struct._arena* %19)
  store %struct._expr* %call13, %struct._expr** %result, align 8
  %20 = load %struct._expr*, %struct._expr** %result, align 8
  %tobool14 = icmp ne %struct._expr* %20, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %22, 1
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %nops, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %nops, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %mul = mul i32 %25, 2
  %add = add i32 %mul, 1
  %idxprom = sext i32 %add to i64
  %26 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %27, i64 %idxprom
  store %struct._node* %arrayidx19, %struct._node** %next_oper, align 8
  %28 = load %struct._node*, %struct._node** %next_oper, align 8
  %call20 = call i32 @get_operator(%struct._node* %28)
  store i32 %call20, i32* %newoperator, align 4
  %29 = load i32, i32* %newoperator, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  %30 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %31 = load i32, i32* %i, align 4
  %mul24 = mul i32 %31, 2
  %add25 = add i32 %mul24, 2
  %idxprom26 = sext i32 %add25 to i64
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %33, i64 %idxprom26
  %call29 = call %struct._expr* @ast_for_expr(%struct.compiling* %30, %struct._node* %arrayidx28)
  store %struct._expr* %call29, %struct._expr** %tmp, align 8
  %34 = load %struct._expr*, %struct._expr** %tmp, align 8
  %tobool30 = icmp ne %struct._expr* %34, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.23
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  %35 = load %struct._expr*, %struct._expr** %result, align 8
  %36 = load i32, i32* %newoperator, align 4
  %37 = load %struct._expr*, %struct._expr** %tmp, align 8
  %38 = load %struct._node*, %struct._node** %next_oper, align 8
  %n_lineno33 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 2
  %39 = load i32, i32* %n_lineno33, align 4
  %40 = load %struct._node*, %struct._node** %next_oper, align 8
  %n_col_offset34 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 3
  %41 = load i32, i32* %n_col_offset34, align 4
  %42 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena35 = getelementptr inbounds %struct.compiling, %struct.compiling* %42, i32 0, i32 1
  %43 = load %struct._arena*, %struct._arena** %c_arena35, align 8
  %call36 = call %struct._expr* @_Py_BinOp(%struct._expr* %35, i32 %36, %struct._expr* %37, i32 %39, i32 %41, %struct._arena* %43)
  store %struct._expr* %call36, %struct._expr** %tmp_result, align 8
  %44 = load %struct._expr*, %struct._expr** %tmp_result, align 8
  %tobool37 = icmp ne %struct._expr* %44, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.32
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.32
  %45 = load %struct._expr*, %struct._expr** %tmp_result, align 8
  store %struct._expr* %45, %struct._expr** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %46 = load i32, i32* %i, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct._expr*, %struct._expr** %result, align 8
  store %struct._expr* %47, %struct._expr** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.38, %if.then.31, %if.then.22, %if.then.15, %if.then.11, %if.then.5, %if.then
  %48 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %48
}

declare %struct._expr* @_Py_YieldFrom(%struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Yield(%struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_factor(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 1
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %expression, align 8
  %3 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx2, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.epilog [
    i32 14, label %sw.bb
    i32 15, label %sw.bb.4
    i32 31, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._expr*, %struct._expr** %expression, align 8
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 2
  %9 = load i32, i32* %n_lineno, align 4
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 3
  %11 = load i32, i32* %n_col_offset, align 4
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %12, i32 0, i32 1
  %13 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call3 = call %struct._expr* @_Py_UnaryOp(i32 3, %struct._expr* %7, i32 %9, i32 %11, %struct._arena* %13)
  store %struct._expr* %call3, %struct._expr** %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %14 = load %struct._expr*, %struct._expr** %expression, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno5 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 2
  %16 = load i32, i32* %n_lineno5, align 4
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset6 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 3
  %18 = load i32, i32* %n_col_offset6, align 4
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena7 = getelementptr inbounds %struct.compiling, %struct.compiling* %19, i32 0, i32 1
  %20 = load %struct._arena*, %struct._arena** %c_arena7, align 8
  %call8 = call %struct._expr* @_Py_UnaryOp(i32 4, %struct._expr* %14, i32 %16, i32 %18, %struct._arena* %20)
  store %struct._expr* %call8, %struct._expr** %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  %21 = load %struct._expr*, %struct._expr** %expression, align 8
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno10 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 2
  %23 = load i32, i32* %n_lineno10, align 4
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset11 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 3
  %25 = load i32, i32* %n_col_offset11, align 4
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena12 = getelementptr inbounds %struct.compiling, %struct.compiling* %26, i32 0, i32 1
  %27 = load %struct._arena*, %struct._arena** %c_arena12, align 8
  %call13 = call %struct._expr* @_Py_UnaryOp(i32 1, %struct._expr* %21, i32 %23, i32 %25, %struct._arena* %27)
  store %struct._expr* %call13, %struct._expr** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  %28 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %30, i64 0
  %n_type16 = getelementptr inbounds %struct._node, %struct._node* %arrayidx15, i32 0, i32 0
  %31 = load i16, i16* %n_type16, align 2
  %conv17 = sext i16 %31 to i32
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i32 %conv17)
  store %struct._expr* null, %struct._expr** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.9, %sw.bb.4, %sw.bb, %if.then
  %32 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_power(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct._expr*, align 8
  %tmp = alloca %struct._expr*, align 8
  %ch = alloca %struct._node*, align 8
  %f = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_atom(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %e, align 8
  %3 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._expr*, %struct._expr** %e, align 8
  store %struct._expr* %6, %struct._expr** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %7 = load i32, i32* %i, align 4
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 4
  %9 = load i32, i32* %n_nchildren3, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  store %struct._node* %arrayidx7, %struct._node** %ch, align 8
  %13 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 0
  %14 = load i16, i16* %n_type, align 2
  %conv = sext i16 %14 to i32
  %cmp8 = icmp ne i32 %conv, 322
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  %15 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %16 = load %struct._node*, %struct._node** %ch, align 8
  %17 = load %struct._expr*, %struct._expr** %e, align 8
  %call12 = call %struct._expr* @ast_for_trailer(%struct.compiling* %15, %struct._node* %16, %struct._expr* %17)
  store %struct._expr* %call12, %struct._expr** %tmp, align 8
  %18 = load %struct._expr*, %struct._expr** %tmp, align 8
  %tobool13 = icmp ne %struct._expr* %18, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %19 = load %struct._expr*, %struct._expr** %tmp, align 8
  store %struct._expr* %19, %struct._expr** %e, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren16 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren16, align 4
  %sub = sub i32 %22, 1
  %idxprom17 = sext i32 %sub to i64
  %23 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom17
  %n_type20 = getelementptr inbounds %struct._node, %struct._node* %arrayidx19, i32 0, i32 0
  %25 = load i16, i16* %n_type20, align 2
  %conv21 = sext i16 %25 to i32
  %cmp22 = icmp eq i32 %conv21, 318
  br i1 %cmp22, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %for.end
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren26 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 4
  %28 = load i32, i32* %n_nchildren26, align 4
  %sub27 = sub i32 %28, 1
  %idxprom28 = sext i32 %sub27 to i64
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom28
  %call31 = call %struct._expr* @ast_for_expr(%struct.compiling* %26, %struct._node* %arrayidx30)
  store %struct._expr* %call31, %struct._expr** %f, align 8
  %31 = load %struct._expr*, %struct._expr** %f, align 8
  %tobool32 = icmp ne %struct._expr* %31, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.24
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.24
  %32 = load %struct._expr*, %struct._expr** %e, align 8
  %33 = load %struct._expr*, %struct._expr** %f, align 8
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 2
  %35 = load i32, i32* %n_lineno, align 4
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 3
  %37 = load i32, i32* %n_col_offset, align 4
  %38 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %38, i32 0, i32 1
  %39 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call35 = call %struct._expr* @_Py_BinOp(%struct._expr* %32, i32 6, %struct._expr* %33, i32 %35, i32 %37, %struct._arena* %39)
  store %struct._expr* %call35, %struct._expr** %tmp, align 8
  %40 = load %struct._expr*, %struct._expr** %tmp, align 8
  %tobool36 = icmp ne %struct._expr* %40, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  %41 = load %struct._expr*, %struct._expr** %tmp, align 8
  store %struct._expr* %41, %struct._expr** %e, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.end
  %42 = load %struct._expr*, %struct._expr** %e, align 8
  store %struct._expr* %42, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.37, %if.then.33, %if.then.14, %if.then.1, %if.then
  %43 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %43
}

declare %struct._arguments* @_Py_arguments(%struct.asdl_seq*, %struct._arg*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._arg*, %struct.asdl_seq*, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._arguments* @ast_for_arguments(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._arguments*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nposargs = alloca i32, align 4
  %nkwonlyargs = alloca i32, align 4
  %nposdefaults = alloca i32, align 4
  %found_default = alloca i32, align 4
  %posargs = alloca %struct.asdl_seq*, align 8
  %posdefaults = alloca %struct.asdl_seq*, align 8
  %kwonlyargs = alloca %struct.asdl_seq*, align 8
  %kwdefaults = alloca %struct.asdl_seq*, align 8
  %vararg = alloca %struct._arg*, align 8
  %kwarg = alloca %struct._arg*, align 8
  %arg = alloca %struct._arg*, align 8
  %ch = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %res = alloca i32, align 4
  %res244 = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 0, i32* %nposargs, align 4
  store i32 0, i32* %nkwonlyargs, align 4
  store i32 0, i32* %nposdefaults, align 4
  store i32 0, i32* %found_default, align 4
  store %struct._arg* null, %struct._arg** %vararg, align 8
  store %struct._arg* null, %struct._arg** %kwarg, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 263
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 4
  %3 = load i32, i32* %n_nchildren, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %4, i32 0, i32 1
  %5 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct._arguments* @_Py_arguments(%struct.asdl_seq* null, %struct._arg* null, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._arg* null, %struct.asdl_seq* null, %struct._arena* %5)
  store %struct._arguments* %call, %struct._arguments** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 1
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren6 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 4
  %10 = load i32, i32* %n_nchildren6, align 4
  %cmp7 = icmp slt i32 %8, %10
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  store %struct._node* %arrayidx10, %struct._node** %ch, align 8
  %14 = load %struct._node*, %struct._node** %ch, align 8
  %n_type11 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 0
  %15 = load i16, i16* %n_type11, align 2
  %conv12 = sext i16 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 16
  br i1 %cmp13, label %if.then.15, label %if.end.36

if.then.15:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren16 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 4
  %19 = load i32, i32* %n_nchildren16, align 4
  %cmp17 = icmp slt i32 %17, %19
  br i1 %cmp17, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then.15
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child20 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child20, align 8
  %arrayidx21 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom19
  %n_type22 = getelementptr inbounds %struct._node, %struct._node* %arrayidx21, i32 0, i32 0
  %23 = load i16, i16* %n_type22, align 2
  %conv23 = sext i16 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 265
  br i1 %cmp24, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %26, i64 %idxprom26
  %n_type29 = getelementptr inbounds %struct._node, %struct._node* %arrayidx28, i32 0, i32 0
  %27 = load i16, i16* %n_type29, align 2
  %conv30 = sext i16 %27 to i32
  %cmp31 = icmp eq i32 %conv30, 267
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i32, i32* %i, align 4
  %inc34 = add i32 %28, 1
  store i32 %inc34, i32* %i, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %lor.lhs.false, %if.then.15
  br label %for.end

if.end.36:                                        ; preds = %for.body
  %29 = load %struct._node*, %struct._node** %ch, align 8
  %n_type37 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 0
  %30 = load i16, i16* %n_type37, align 2
  %conv38 = sext i16 %30 to i32
  %cmp39 = icmp eq i32 %conv38, 35
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  br label %for.end

if.end.42:                                        ; preds = %if.end.36
  %31 = load %struct._node*, %struct._node** %ch, align 8
  %n_type43 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 0
  %32 = load i16, i16* %n_type43, align 2
  %conv44 = sext i16 %32 to i32
  %cmp45 = icmp eq i32 %conv44, 267
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.42
  %33 = load %struct._node*, %struct._node** %ch, align 8
  %n_type48 = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 0
  %34 = load i16, i16* %n_type48, align 2
  %conv49 = sext i16 %34 to i32
  %cmp50 = icmp eq i32 %conv49, 265
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %lor.lhs.false.47, %if.end.42
  %35 = load i32, i32* %nposargs, align 4
  %inc53 = add i32 %35, 1
  store i32 %inc53, i32* %nposargs, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %lor.lhs.false.47
  %36 = load %struct._node*, %struct._node** %ch, align 8
  %n_type55 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 0
  %37 = load i16, i16* %n_type55, align 2
  %conv56 = sext i16 %37 to i32
  %cmp57 = icmp eq i32 %conv56, 22
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.54
  %38 = load i32, i32* %nposdefaults, align 4
  %inc60 = add i32 %38, 1
  store i32 %inc60, i32* %nposdefaults, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %39 = load i32, i32* %i, align 4
  %inc62 = add i32 %39, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %if.end.35, %for.cond
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.89, %for.end
  %40 = load i32, i32* %i, align 4
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren64 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 4
  %42 = load i32, i32* %n_nchildren64, align 4
  %cmp65 = icmp slt i32 %40, %42
  br i1 %cmp65, label %for.body.67, label %for.end.91

for.body.67:                                      ; preds = %for.cond.63
  %43 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %43 to i64
  %44 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child69 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 5
  %45 = load %struct._node*, %struct._node** %n_child69, align 8
  %arrayidx70 = getelementptr %struct._node, %struct._node* %45, i64 %idxprom68
  store %struct._node* %arrayidx70, %struct._node** %ch, align 8
  %46 = load %struct._node*, %struct._node** %ch, align 8
  %n_type71 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 0
  %47 = load i16, i16* %n_type71, align 2
  %conv72 = sext i16 %47 to i32
  %cmp73 = icmp eq i32 %conv72, 35
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.67
  br label %for.end.91

if.end.76:                                        ; preds = %for.body.67
  %48 = load %struct._node*, %struct._node** %ch, align 8
  %n_type77 = getelementptr inbounds %struct._node, %struct._node* %48, i32 0, i32 0
  %49 = load i16, i16* %n_type77, align 2
  %conv78 = sext i16 %49 to i32
  %cmp79 = icmp eq i32 %conv78, 265
  br i1 %cmp79, label %if.then.86, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.76
  %50 = load %struct._node*, %struct._node** %ch, align 8
  %n_type82 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 0
  %51 = load i16, i16* %n_type82, align 2
  %conv83 = sext i16 %51 to i32
  %cmp84 = icmp eq i32 %conv83, 267
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %lor.lhs.false.81, %if.end.76
  %52 = load i32, i32* %nkwonlyargs, align 4
  %inc87 = add i32 %52, 1
  store i32 %inc87, i32* %nkwonlyargs, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %lor.lhs.false.81
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %53 = load i32, i32* %i, align 4
  %inc90 = add i32 %53, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.63

for.end.91:                                       ; preds = %if.then.75, %for.cond.63
  %54 = load i32, i32* %nposargs, align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.91
  %55 = load i32, i32* %nposargs, align 4
  %conv92 = sext i32 %55 to i64
  %56 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena93 = getelementptr inbounds %struct.compiling, %struct.compiling* %56, i32 0, i32 1
  %57 = load %struct._arena*, %struct._arena** %c_arena93, align 8
  %call94 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv92, %struct._arena* %57)
  br label %cond.end

cond.false:                                       ; preds = %for.end.91
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.asdl_seq* [ %call94, %cond.true ], [ null, %cond.false ]
  store %struct.asdl_seq* %cond, %struct.asdl_seq** %posargs, align 8
  %58 = load %struct.asdl_seq*, %struct.asdl_seq** %posargs, align 8
  %tobool95 = icmp ne %struct.asdl_seq* %58, null
  br i1 %tobool95, label %if.end.99, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %cond.end
  %59 = load i32, i32* %nposargs, align 4
  %tobool97 = icmp ne i32 %59, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.lhs.true.96
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.99:                                        ; preds = %land.lhs.true.96, %cond.end
  %60 = load i32, i32* %nkwonlyargs, align 4
  %tobool100 = icmp ne i32 %60, 0
  br i1 %tobool100, label %cond.true.101, label %cond.false.105

cond.true.101:                                    ; preds = %if.end.99
  %61 = load i32, i32* %nkwonlyargs, align 4
  %conv102 = sext i32 %61 to i64
  %62 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena103 = getelementptr inbounds %struct.compiling, %struct.compiling* %62, i32 0, i32 1
  %63 = load %struct._arena*, %struct._arena** %c_arena103, align 8
  %call104 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv102, %struct._arena* %63)
  br label %cond.end.106

cond.false.105:                                   ; preds = %if.end.99
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.101
  %cond107 = phi %struct.asdl_seq* [ %call104, %cond.true.101 ], [ null, %cond.false.105 ]
  store %struct.asdl_seq* %cond107, %struct.asdl_seq** %kwonlyargs, align 8
  %64 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %tobool108 = icmp ne %struct.asdl_seq* %64, null
  br i1 %tobool108, label %if.end.112, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %cond.end.106
  %65 = load i32, i32* %nkwonlyargs, align 4
  %tobool110 = icmp ne i32 %65, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true.109
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.112:                                       ; preds = %land.lhs.true.109, %cond.end.106
  %66 = load i32, i32* %nposdefaults, align 4
  %tobool113 = icmp ne i32 %66, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %if.end.112
  %67 = load i32, i32* %nposdefaults, align 4
  %conv115 = sext i32 %67 to i64
  %68 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena116 = getelementptr inbounds %struct.compiling, %struct.compiling* %68, i32 0, i32 1
  %69 = load %struct._arena*, %struct._arena** %c_arena116, align 8
  %call117 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv115, %struct._arena* %69)
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.end.112
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.114
  %cond120 = phi %struct.asdl_seq* [ %call117, %cond.true.114 ], [ null, %cond.false.118 ]
  store %struct.asdl_seq* %cond120, %struct.asdl_seq** %posdefaults, align 8
  %70 = load %struct.asdl_seq*, %struct.asdl_seq** %posdefaults, align 8
  %tobool121 = icmp ne %struct.asdl_seq* %70, null
  br i1 %tobool121, label %if.end.125, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %cond.end.119
  %71 = load i32, i32* %nposdefaults, align 4
  %tobool123 = icmp ne i32 %71, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.122
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.125:                                       ; preds = %land.lhs.true.122, %cond.end.119
  %72 = load i32, i32* %nkwonlyargs, align 4
  %tobool126 = icmp ne i32 %72, 0
  br i1 %tobool126, label %cond.true.127, label %cond.false.131

cond.true.127:                                    ; preds = %if.end.125
  %73 = load i32, i32* %nkwonlyargs, align 4
  %conv128 = sext i32 %73 to i64
  %74 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena129 = getelementptr inbounds %struct.compiling, %struct.compiling* %74, i32 0, i32 1
  %75 = load %struct._arena*, %struct._arena** %c_arena129, align 8
  %call130 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv128, %struct._arena* %75)
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.end.125
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.127
  %cond133 = phi %struct.asdl_seq* [ %call130, %cond.true.127 ], [ null, %cond.false.131 ]
  store %struct.asdl_seq* %cond133, %struct.asdl_seq** %kwdefaults, align 8
  %76 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults, align 8
  %tobool134 = icmp ne %struct.asdl_seq* %76, null
  br i1 %tobool134, label %if.end.138, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %cond.end.132
  %77 = load i32, i32* %nkwonlyargs, align 4
  %tobool136 = icmp ne i32 %77, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.135
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.138:                                       ; preds = %land.lhs.true.135, %cond.end.132
  %78 = load i32, i32* %nposargs, align 4
  %79 = load i32, i32* %nkwonlyargs, align 4
  %add = add i32 %78, %79
  %cmp139 = icmp sgt i32 %add, 255
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.end.138
  %80 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %81 = load %struct._node*, %struct._node** %n.addr, align 8
  %call142 = call i32 @ast_error(%struct.compiling* %80, %struct._node* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0))
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.138
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.143
  %82 = load i32, i32* %i, align 4
  %83 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren144 = getelementptr inbounds %struct._node, %struct._node* %83, i32 0, i32 4
  %84 = load i32, i32* %n_nchildren144, align 4
  %cmp145 = icmp slt i32 %82, %84
  br i1 %cmp145, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %85 to i64
  %86 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child148 = getelementptr inbounds %struct._node, %struct._node* %86, i32 0, i32 5
  %87 = load %struct._node*, %struct._node** %n_child148, align 8
  %arrayidx149 = getelementptr %struct._node, %struct._node* %87, i64 %idxprom147
  store %struct._node* %arrayidx149, %struct._node** %ch, align 8
  %88 = load %struct._node*, %struct._node** %ch, align 8
  %n_type150 = getelementptr inbounds %struct._node, %struct._node* %88, i32 0, i32 0
  %89 = load i16, i16* %n_type150, align 2
  %conv151 = sext i16 %89 to i32
  switch i32 %conv151, label %sw.default [
    i32 265, label %sw.bb
    i32 267, label %sw.bb
    i32 16, label %sw.bb.192
    i32 35, label %sw.bb.252
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %90 = load i32, i32* %i, align 4
  %add152 = add i32 %90, 1
  %91 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren153 = getelementptr inbounds %struct._node, %struct._node* %91, i32 0, i32 4
  %92 = load i32, i32* %n_nchildren153, align 4
  %cmp154 = icmp slt i32 %add152, %92
  br i1 %cmp154, label %land.lhs.true.156, label %if.else

land.lhs.true.156:                                ; preds = %sw.bb
  %93 = load i32, i32* %i, align 4
  %add157 = add i32 %93, 1
  %idxprom158 = sext i32 %add157 to i64
  %94 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child159 = getelementptr inbounds %struct._node, %struct._node* %94, i32 0, i32 5
  %95 = load %struct._node*, %struct._node** %n_child159, align 8
  %arrayidx160 = getelementptr %struct._node, %struct._node* %95, i64 %idxprom158
  %n_type161 = getelementptr inbounds %struct._node, %struct._node* %arrayidx160, i32 0, i32 0
  %96 = load i16, i16* %n_type161, align 2
  %conv162 = sext i16 %96 to i32
  %cmp163 = icmp eq i32 %conv162, 22
  br i1 %cmp163, label %if.then.165, label %if.else

if.then.165:                                      ; preds = %land.lhs.true.156
  %97 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %98 = load i32, i32* %i, align 4
  %add166 = add i32 %98, 2
  %idxprom167 = sext i32 %add166 to i64
  %99 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child168 = getelementptr inbounds %struct._node, %struct._node* %99, i32 0, i32 5
  %100 = load %struct._node*, %struct._node** %n_child168, align 8
  %arrayidx169 = getelementptr %struct._node, %struct._node* %100, i64 %idxprom167
  %call170 = call %struct._expr* @ast_for_expr(%struct.compiling* %97, %struct._node* %arrayidx169)
  store %struct._expr* %call170, %struct._expr** %expression, align 8
  %101 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool171 = icmp ne %struct._expr* %101, null
  br i1 %tobool171, label %if.end.173, label %if.then.172

if.then.172:                                      ; preds = %if.then.165
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.173:                                       ; preds = %if.then.165
  %102 = load %struct._expr*, %struct._expr** %expression, align 8
  %103 = bitcast %struct._expr* %102 to i8*
  %104 = load i32, i32* %j, align 4
  %inc174 = add i32 %104, 1
  store i32 %inc174, i32* %j, align 4
  %idxprom175 = sext i32 %104 to i64
  %105 = load %struct.asdl_seq*, %struct.asdl_seq** %posdefaults, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %105, i32 0, i32 1
  %arrayidx176 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom175
  store i8* %103, i8** %arrayidx176, align 8
  %106 = load i32, i32* %i, align 4
  %add177 = add i32 %106, 2
  store i32 %add177, i32* %i, align 4
  store i32 1, i32* %found_default, align 4
  br label %if.end.182

if.else:                                          ; preds = %land.lhs.true.156, %sw.bb
  %107 = load i32, i32* %found_default, align 4
  %tobool178 = icmp ne i32 %107, 0
  br i1 %tobool178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.else
  %108 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %109 = load %struct._node*, %struct._node** %n.addr, align 8
  %call180 = call i32 @ast_error(%struct.compiling* %108, %struct._node* %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.57, i32 0, i32 0))
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.181:                                       ; preds = %if.else
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.173
  %110 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %111 = load %struct._node*, %struct._node** %ch, align 8
  %call183 = call %struct._arg* @ast_for_arg(%struct.compiling* %110, %struct._node* %111)
  store %struct._arg* %call183, %struct._arg** %arg, align 8
  %112 = load %struct._arg*, %struct._arg** %arg, align 8
  %tobool184 = icmp ne %struct._arg* %112, null
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %if.end.182
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.186:                                       ; preds = %if.end.182
  %113 = load %struct._arg*, %struct._arg** %arg, align 8
  %114 = bitcast %struct._arg* %113 to i8*
  %115 = load i32, i32* %k, align 4
  %inc187 = add i32 %115, 1
  store i32 %inc187, i32* %k, align 4
  %idxprom188 = sext i32 %115 to i64
  %116 = load %struct.asdl_seq*, %struct.asdl_seq** %posargs, align 8
  %elements189 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %116, i32 0, i32 1
  %arrayidx190 = getelementptr [1 x i8*], [1 x i8*]* %elements189, i32 0, i64 %idxprom188
  store i8* %114, i8** %arrayidx190, align 8
  %117 = load i32, i32* %i, align 4
  %add191 = add i32 %117, 2
  store i32 %add191, i32* %i, align 4
  br label %sw.epilog

sw.bb.192:                                        ; preds = %while.body
  %118 = load i32, i32* %i, align 4
  %add193 = add i32 %118, 1
  %119 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren194 = getelementptr inbounds %struct._node, %struct._node* %119, i32 0, i32 4
  %120 = load i32, i32* %n_nchildren194, align 4
  %cmp195 = icmp sge i32 %add193, %120
  br i1 %cmp195, label %if.then.197, label %if.end.202

if.then.197:                                      ; preds = %sw.bb.192
  %121 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %122 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %122 to i64
  %123 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child199 = getelementptr inbounds %struct._node, %struct._node* %123, i32 0, i32 5
  %124 = load %struct._node*, %struct._node** %n_child199, align 8
  %arrayidx200 = getelementptr %struct._node, %struct._node* %124, i64 %idxprom198
  %call201 = call i32 @ast_error(%struct.compiling* %121, %struct._node* %arrayidx200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i32 0, i32 0))
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.202:                                       ; preds = %sw.bb.192
  %125 = load i32, i32* %i, align 4
  %add203 = add i32 %125, 1
  %idxprom204 = sext i32 %add203 to i64
  %126 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child205 = getelementptr inbounds %struct._node, %struct._node* %126, i32 0, i32 5
  %127 = load %struct._node*, %struct._node** %n_child205, align 8
  %arrayidx206 = getelementptr %struct._node, %struct._node* %127, i64 %idxprom204
  store %struct._node* %arrayidx206, %struct._node** %ch, align 8
  %128 = load %struct._node*, %struct._node** %ch, align 8
  %n_type207 = getelementptr inbounds %struct._node, %struct._node* %128, i32 0, i32 0
  %129 = load i16, i16* %n_type207, align 2
  %conv208 = sext i16 %129 to i32
  %cmp209 = icmp eq i32 %conv208, 12
  br i1 %cmp209, label %if.then.211, label %if.else.218

if.then.211:                                      ; preds = %if.end.202
  store i32 0, i32* %res, align 4
  %130 = load i32, i32* %i, align 4
  %add212 = add i32 %130, 2
  store i32 %add212, i32* %i, align 4
  %131 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %132 = load %struct._node*, %struct._node** %n.addr, align 8
  %133 = load i32, i32* %i, align 4
  %134 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %135 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults, align 8
  %call213 = call i32 @handle_keywordonly_args(%struct.compiling* %131, %struct._node* %132, i32 %133, %struct.asdl_seq* %134, %struct.asdl_seq* %135)
  store i32 %call213, i32* %res, align 4
  %136 = load i32, i32* %res, align 4
  %cmp214 = icmp eq i32 %136, -1
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.then.211
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.217:                                       ; preds = %if.then.211
  %137 = load i32, i32* %res, align 4
  store i32 %137, i32* %i, align 4
  br label %if.end.251

if.else.218:                                      ; preds = %if.end.202
  %138 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %139 = load %struct._node*, %struct._node** %ch, align 8
  %call219 = call %struct._arg* @ast_for_arg(%struct.compiling* %138, %struct._node* %139)
  store %struct._arg* %call219, %struct._arg** %vararg, align 8
  %140 = load %struct._arg*, %struct._arg** %vararg, align 8
  %tobool220 = icmp ne %struct._arg* %140, null
  br i1 %tobool220, label %if.end.222, label %if.then.221

if.then.221:                                      ; preds = %if.else.218
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.222:                                       ; preds = %if.else.218
  %141 = load i32, i32* %i, align 4
  %add223 = add i32 %141, 3
  store i32 %add223, i32* %i, align 4
  %142 = load i32, i32* %i, align 4
  %143 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren224 = getelementptr inbounds %struct._node, %struct._node* %143, i32 0, i32 4
  %144 = load i32, i32* %n_nchildren224, align 4
  %cmp225 = icmp slt i32 %142, %144
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.250

land.lhs.true.227:                                ; preds = %if.end.222
  %145 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %145 to i64
  %146 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child229 = getelementptr inbounds %struct._node, %struct._node* %146, i32 0, i32 5
  %147 = load %struct._node*, %struct._node** %n_child229, align 8
  %arrayidx230 = getelementptr %struct._node, %struct._node* %147, i64 %idxprom228
  %n_type231 = getelementptr inbounds %struct._node, %struct._node* %arrayidx230, i32 0, i32 0
  %148 = load i16, i16* %n_type231, align 2
  %conv232 = sext i16 %148 to i32
  %cmp233 = icmp eq i32 %conv232, 265
  br i1 %cmp233, label %if.then.243, label %lor.lhs.false.235

lor.lhs.false.235:                                ; preds = %land.lhs.true.227
  %149 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %149 to i64
  %150 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child237 = getelementptr inbounds %struct._node, %struct._node* %150, i32 0, i32 5
  %151 = load %struct._node*, %struct._node** %n_child237, align 8
  %arrayidx238 = getelementptr %struct._node, %struct._node* %151, i64 %idxprom236
  %n_type239 = getelementptr inbounds %struct._node, %struct._node* %arrayidx238, i32 0, i32 0
  %152 = load i16, i16* %n_type239, align 2
  %conv240 = sext i16 %152 to i32
  %cmp241 = icmp eq i32 %conv240, 267
  br i1 %cmp241, label %if.then.243, label %if.end.250

if.then.243:                                      ; preds = %lor.lhs.false.235, %land.lhs.true.227
  store i32 0, i32* %res244, align 4
  %153 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %154 = load %struct._node*, %struct._node** %n.addr, align 8
  %155 = load i32, i32* %i, align 4
  %156 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %157 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults, align 8
  %call245 = call i32 @handle_keywordonly_args(%struct.compiling* %153, %struct._node* %154, i32 %155, %struct.asdl_seq* %156, %struct.asdl_seq* %157)
  store i32 %call245, i32* %res244, align 4
  %158 = load i32, i32* %res244, align 4
  %cmp246 = icmp eq i32 %158, -1
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.then.243
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.249:                                       ; preds = %if.then.243
  %159 = load i32, i32* %res244, align 4
  store i32 %159, i32* %i, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %lor.lhs.false.235, %if.end.222
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.217
  br label %sw.epilog

sw.bb.252:                                        ; preds = %while.body
  %160 = load i32, i32* %i, align 4
  %add253 = add i32 %160, 1
  %idxprom254 = sext i32 %add253 to i64
  %161 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child255 = getelementptr inbounds %struct._node, %struct._node* %161, i32 0, i32 5
  %162 = load %struct._node*, %struct._node** %n_child255, align 8
  %arrayidx256 = getelementptr %struct._node, %struct._node* %162, i64 %idxprom254
  store %struct._node* %arrayidx256, %struct._node** %ch, align 8
  %163 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %164 = load %struct._node*, %struct._node** %ch, align 8
  %call257 = call %struct._arg* @ast_for_arg(%struct.compiling* %163, %struct._node* %164)
  store %struct._arg* %call257, %struct._arg** %kwarg, align 8
  %165 = load %struct._arg*, %struct._arg** %kwarg, align 8
  %tobool258 = icmp ne %struct._arg* %165, null
  br i1 %tobool258, label %if.end.260, label %if.then.259

if.then.259:                                      ; preds = %sw.bb.252
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

if.end.260:                                       ; preds = %sw.bb.252
  %166 = load i32, i32* %i, align 4
  %add261 = add i32 %166, 3
  store i32 %add261, i32* %i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %167 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %168 = load %struct._node*, %struct._node** %ch, align 8
  %n_type262 = getelementptr inbounds %struct._node, %struct._node* %168, i32 0, i32 0
  %169 = load i16, i16* %n_type262, align 2
  %conv263 = sext i16 %169 to i32
  %170 = load i32, i32* %i, align 4
  %call264 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), i32 %conv263, i32 %170)
  store %struct._arguments* null, %struct._arguments** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.260, %if.end.251, %if.end.186
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %171 = load %struct.asdl_seq*, %struct.asdl_seq** %posargs, align 8
  %172 = load %struct._arg*, %struct._arg** %vararg, align 8
  %173 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %174 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults, align 8
  %175 = load %struct._arg*, %struct._arg** %kwarg, align 8
  %176 = load %struct.asdl_seq*, %struct.asdl_seq** %posdefaults, align 8
  %177 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena265 = getelementptr inbounds %struct.compiling, %struct.compiling* %177, i32 0, i32 1
  %178 = load %struct._arena*, %struct._arena** %c_arena265, align 8
  %call266 = call %struct._arguments* @_Py_arguments(%struct.asdl_seq* %171, %struct._arg* %172, %struct.asdl_seq* %173, %struct.asdl_seq* %174, %struct._arg* %175, %struct.asdl_seq* %176, %struct._arena* %178)
  store %struct._arguments* %call266, %struct._arguments** %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.then.259, %if.then.248, %if.then.221, %if.then.216, %if.then.197, %if.then.185, %if.then.179, %if.then.172, %if.then.141, %if.then.137, %if.then.124, %if.then.111, %if.then.98, %if.then.4
  %179 = load %struct._arguments*, %struct._arguments** %retval
  ret %struct._arguments* %179
}

declare %struct._expr* @_Py_Lambda(%struct._arguments*, %struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ast_error(%struct.compiling* %c, %struct._node* %n, i8* %errmsg) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %errmsg.addr = alloca i8*, align 8
  %value = alloca %struct._object*, align 8
  %errstr = alloca %struct._object*, align 8
  %loc = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i8* %errmsg, i8** %errmsg.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_filename = getelementptr inbounds %struct.compiling, %struct.compiling* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %c_filename, align 8
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 2
  %3 = load i32, i32* %n_lineno, align 4
  %call = call %struct._object* @PyErr_ProgramTextObject(%struct._object* %1, i32 %3)
  store %struct._object* %call, %struct._object** %loc, align 8
  %4 = load %struct._object*, %struct._object** %loc, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %loc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_filename1 = getelementptr inbounds %struct.compiling, %struct.compiling* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %c_filename1, align 8
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno2 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 2
  %9 = load i32, i32* %n_lineno2, align 4
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 3
  %11 = load i32, i32* %n_col_offset, align 4
  %12 = load %struct._object*, %struct._object** %loc, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), %struct._object* %7, i32 %9, i32 %11, %struct._object* %12)
  store %struct._object* %call3, %struct._object** %tmp, align 8
  %13 = load %struct._object*, %struct._object** %tmp, align 8
  %tobool4 = icmp ne %struct._object* %13, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load i8*, i8** %errmsg.addr, align 8
  %call7 = call %struct._object* @PyUnicode_FromString(i8* %14)
  store %struct._object* %call7, %struct._object** %errstr, align 8
  %15 = load %struct._object*, %struct._object** %errstr, align 8
  %tobool8 = icmp ne %struct._object* %15, null
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %23 = load %struct._object*, %struct._object** %errstr, align 8
  %24 = load %struct._object*, %struct._object** %tmp, align 8
  %call14 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %23, %struct._object* %24)
  store %struct._object* %call14, %struct._object** %value, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.13
  %25 = load %struct._object*, %struct._object** %errstr, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp17, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %27, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %30(%struct._object* %31)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %32 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp29, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %34, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %37(%struct._object* %38)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %39 = load %struct._object*, %struct._object** %value, align 8
  %tobool39 = icmp ne %struct._object* %39, null
  br i1 %tobool39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %do.end.38
  %40 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %41 = load %struct._object*, %struct._object** %value, align 8
  call void @PyErr_SetObject(%struct._object* %40, %struct._object* %41)
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %42 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp43, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %44, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %47(%struct._object* %48)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.end.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %do.end, %if.then.5
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal %struct._arg* @ast_for_arg(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._arg*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %name = alloca %struct._object*, align 8
  %annotation = alloca %struct._expr*, align 8
  %ch = alloca %struct._node*, align 8
  %tmp = alloca %struct._arg*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* null, %struct._expr** %annotation, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %2 = load %struct._node*, %struct._node** %ch, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 1
  %3 = load i8*, i8** %n_str, align 8
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call = call %struct._object* @new_identifier(i8* %3, %struct.compiling* %4)
  store %struct._object* %call, %struct._object** %name, align 8
  %5 = load %struct._object*, %struct._object** %name, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._arg* null, %struct._arg** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._object*, %struct._object** %name, align 8
  %8 = load %struct._node*, %struct._node** %ch, align 8
  %call1 = call i32 @forbidden_name(%struct.compiling* %6, %struct._object* %7, %struct._node* %8, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._arg* null, %struct._arg** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 4
  %10 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.4
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %12, i64 1
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx6, i32 0, i32 0
  %13 = load i16, i16* %n_type, align 2
  %conv = sext i16 %13 to i32
  %cmp7 = icmp eq i32 %conv, 11
  br i1 %cmp7, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %land.lhs.true
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %16, i64 2
  %call12 = call %struct._expr* @ast_for_expr(%struct.compiling* %14, %struct._node* %arrayidx11)
  store %struct._expr* %call12, %struct._expr** %annotation, align 8
  %17 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool13 = icmp ne %struct._expr* %17, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.9
  store %struct._arg* null, %struct._arg** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %if.end.4
  %18 = load %struct._object*, %struct._object** %name, align 8
  %19 = load %struct._expr*, %struct._expr** %annotation, align 8
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %20, i32 0, i32 1
  %21 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call17 = call %struct._arg* @_Py_arg(%struct._object* %18, %struct._expr* %19, %struct._arena* %21)
  store %struct._arg* %call17, %struct._arg** %tmp, align 8
  %22 = load %struct._arg*, %struct._arg** %tmp, align 8
  %tobool18 = icmp ne %struct._arg* %22, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  store %struct._arg* null, %struct._arg** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %23 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 2
  %24 = load i32, i32* %n_lineno, align 4
  %25 = load %struct._arg*, %struct._arg** %tmp, align 8
  %lineno = getelementptr inbounds %struct._arg, %struct._arg* %25, i32 0, i32 2
  store i32 %24, i32* %lineno, align 4
  %26 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 3
  %27 = load i32, i32* %n_col_offset, align 4
  %28 = load %struct._arg*, %struct._arg** %tmp, align 8
  %col_offset = getelementptr inbounds %struct._arg, %struct._arg* %28, i32 0, i32 3
  store i32 %27, i32* %col_offset, align 4
  %29 = load %struct._arg*, %struct._arg** %tmp, align 8
  store %struct._arg* %29, %struct._arg** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then.3, %if.then
  %30 = load %struct._arg*, %struct._arg** %retval
  ret %struct._arg* %30
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_keywordonly_args(%struct.compiling* %c, %struct._node* %n, i32 %start, %struct.asdl_seq* %kwonlyargs, %struct.asdl_seq* %kwdefaults) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %start.addr = alloca i32, align 4
  %kwonlyargs.addr = alloca %struct.asdl_seq*, align 8
  %kwdefaults.addr = alloca %struct.asdl_seq*, align 8
  %argname = alloca %struct._object*, align 8
  %ch = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %annotation = alloca %struct._expr*, align 8
  %arg = alloca %struct._arg*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.asdl_seq* %kwonlyargs, %struct.asdl_seq** %kwonlyargs.addr, align 8
  store %struct.asdl_seq* %kwdefaults, %struct.asdl_seq** %kwdefaults.addr, align 8
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  %call = call i32 @ast_error(%struct.compiling* %2, %struct._node* %arrayidx, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 4
  %8 = load i32, i32* %n_nchildren, align 4
  %cmp1 = icmp slt i32 %6, %8
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %11, i64 %idxprom2
  store %struct._node* %arrayidx4, %struct._node** %ch, align 8
  %12 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 0
  %13 = load i16, i16* %n_type, align 2
  %conv = sext i16 %13 to i32
  switch i32 %conv, label %sw.default [
    i32 267, label %sw.bb
    i32 265, label %sw.bb
    i32 35, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %14 = load i32, i32* %i, align 4
  %add = add i32 %14, 1
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren5 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4
  %16 = load i32, i32* %n_nchildren5, align 4
  %cmp6 = icmp slt i32 %add, %16
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %17 = load i32, i32* %i, align 4
  %add8 = add i32 %17, 1
  %idxprom9 = sext i32 %add8 to i64
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %19, i64 %idxprom9
  %n_type12 = getelementptr inbounds %struct._node, %struct._node* %arrayidx11, i32 0, i32 0
  %20 = load i16, i16* %n_type12, align 2
  %conv13 = sext i16 %20 to i32
  %cmp14 = icmp eq i32 %conv13, 22
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %21 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %22 = load i32, i32* %i, align 4
  %add17 = add i32 %22, 2
  %idxprom18 = sext i32 %add17 to i64
  %23 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom18
  %call21 = call %struct._expr* @ast_for_expr(%struct.compiling* %21, %struct._node* %arrayidx20)
  store %struct._expr* %call21, %struct._expr** %expression, align 8
  %25 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool = icmp ne %struct._expr* %25, null
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.16
  br label %error

if.end.23:                                        ; preds = %if.then.16
  %26 = load %struct._expr*, %struct._expr** %expression, align 8
  %27 = bitcast %struct._expr* %26 to i8*
  %28 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %29, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom24
  store i8* %27, i8** %arrayidx25, align 8
  %30 = load i32, i32* %i, align 4
  %add26 = add i32 %30, 2
  store i32 %add26, i32* %i, align 4
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %31 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load %struct.asdl_seq*, %struct.asdl_seq** %kwdefaults.addr, align 8
  %elements28 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %32, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x i8*], [1 x i8*]* %elements28, i32 0, i64 %idxprom27
  store i8* null, i8** %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.23
  %33 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren31 = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 4
  %34 = load i32, i32* %n_nchildren31, align 4
  %cmp32 = icmp eq i32 %34, 3
  br i1 %cmp32, label %if.then.34, label %if.else.41

if.then.34:                                       ; preds = %if.end.30
  %35 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %36 = load %struct._node*, %struct._node** %ch, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 5
  %37 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %37, i64 2
  %call37 = call %struct._expr* @ast_for_expr(%struct.compiling* %35, %struct._node* %arrayidx36)
  store %struct._expr* %call37, %struct._expr** %annotation, align 8
  %38 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool38 = icmp ne %struct._expr* %38, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.34
  br label %error

if.end.40:                                        ; preds = %if.then.34
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.30
  store %struct._expr* null, %struct._expr** %annotation, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.end.40
  %39 = load %struct._node*, %struct._node** %ch, align 8
  %n_child43 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child43, align 8
  %arrayidx44 = getelementptr %struct._node, %struct._node* %40, i64 0
  store %struct._node* %arrayidx44, %struct._node** %ch, align 8
  %41 = load %struct._node*, %struct._node** %ch, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 1
  %42 = load i8*, i8** %n_str, align 8
  %43 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call45 = call %struct._object* @new_identifier(i8* %42, %struct.compiling* %43)
  store %struct._object* %call45, %struct._object** %argname, align 8
  %44 = load %struct._object*, %struct._object** %argname, align 8
  %tobool46 = icmp ne %struct._object* %44, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.42
  br label %error

if.end.48:                                        ; preds = %if.end.42
  %45 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %46 = load %struct._object*, %struct._object** %argname, align 8
  %47 = load %struct._node*, %struct._node** %ch, align 8
  %call49 = call i32 @forbidden_name(%struct.compiling* %45, %struct._object* %46, %struct._node* %47, i32 0)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  br label %error

if.end.52:                                        ; preds = %if.end.48
  %48 = load %struct._object*, %struct._object** %argname, align 8
  %49 = load %struct._expr*, %struct._expr** %annotation, align 8
  %50 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %50, i32 0, i32 1
  %51 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call53 = call %struct._arg* @_Py_arg(%struct._object* %48, %struct._expr* %49, %struct._arena* %51)
  store %struct._arg* %call53, %struct._arg** %arg, align 8
  %52 = load %struct._arg*, %struct._arg** %arg, align 8
  %tobool54 = icmp ne %struct._arg* %52, null
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  br label %error

if.end.56:                                        ; preds = %if.end.52
  %53 = load %struct._node*, %struct._node** %ch, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 2
  %54 = load i32, i32* %n_lineno, align 4
  %55 = load %struct._arg*, %struct._arg** %arg, align 8
  %lineno = getelementptr inbounds %struct._arg, %struct._arg* %55, i32 0, i32 2
  store i32 %54, i32* %lineno, align 4
  %56 = load %struct._node*, %struct._node** %ch, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 3
  %57 = load i32, i32* %n_col_offset, align 4
  %58 = load %struct._arg*, %struct._arg** %arg, align 8
  %col_offset = getelementptr inbounds %struct._arg, %struct._arg* %58, i32 0, i32 3
  store i32 %57, i32* %col_offset, align 4
  %59 = load %struct._arg*, %struct._arg** %arg, align 8
  %60 = bitcast %struct._arg* %59 to i8*
  %61 = load i32, i32* %j, align 4
  %inc = add i32 %61, 1
  store i32 %inc, i32* %j, align 4
  %idxprom57 = sext i32 %61 to i64
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs.addr, align 8
  %elements58 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %62, i32 0, i32 1
  %arrayidx59 = getelementptr [1 x i8*], [1 x i8*]* %elements58, i32 0, i64 %idxprom57
  store i8* %60, i8** %arrayidx59, align 8
  %63 = load i32, i32* %i, align 4
  %add60 = add i32 %63, 2
  store i32 %add60, i32* %i, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %while.body
  %64 = load i32, i32* %i, align 4
  store i32 %64, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %65 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %66 = load %struct._node*, %struct._node** %ch, align 8
  %call62 = call i32 @ast_error(%struct.compiling* %65, %struct._node* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0))
  br label %error

sw.epilog:                                        ; preds = %if.end.56
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %67 = load i32, i32* %i, align 4
  store i32 %67, i32* %retval
  br label %return

error:                                            ; preds = %sw.default, %if.then.55, %if.then.51, %if.then.47, %if.then.39, %if.then.22
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %error, %while.end, %sw.bb.61, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare %struct._object* @PyErr_ProgramTextObject(%struct._object*, i32) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @new_identifier(i8* %n, %struct.compiling* %c) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %n.addr = alloca i8*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %id = alloca %struct._object*, align 8
  %id2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store i8* %n, i8** %n.addr, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  %0 = load i8*, i8** %n.addr, align 8
  %1 = load i8*, i8** %n.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %call1 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %0, i64 %call, i8* null)
  store %struct._object* %call1, %struct._object** %id, align 8
  %2 = load %struct._object*, %struct._object** %id, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %id, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon.54* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %if.end.28, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize = getelementptr inbounds %struct.compiling, %struct.compiling* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %c_normalize, align 8
  %tobool4 = icmp ne %struct._object* %7, null
  br i1 %tobool4, label %if.end.10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.3
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call5 = call i32 @init_normalization(%struct.compiling* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.then.3
  %16 = load %struct._object*, %struct._object** %id, align 8
  %17 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize_args = getelementptr inbounds %struct.compiling, %struct.compiling* %17, i32 0, i32 4
  %18 = load %struct._object*, %struct._object** %c_normalize_args, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 1
  store %struct._object* %16, %struct._object** %arrayidx, align 8
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize11 = getelementptr inbounds %struct.compiling, %struct.compiling* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %c_normalize11, align 8
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize_args12 = getelementptr inbounds %struct.compiling, %struct.compiling* %22, i32 0, i32 4
  %23 = load %struct._object*, %struct._object** %c_normalize_args12, align 8
  %call13 = call %struct._object* @PyObject_Call(%struct._object* %21, %struct._object* %23, %struct._object* null)
  store %struct._object* %call13, %struct._object** %id2, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.10
  %24 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp15, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %26, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %29(%struct._object* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %31 = load %struct._object*, %struct._object** %id2, align 8
  %tobool25 = icmp ne %struct._object* %31, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.24
  %32 = load %struct._object*, %struct._object** %id2, align 8
  store %struct._object* %32, %struct._object** %id, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  call void @PyUnicode_InternInPlace(%struct._object** %id)
  %33 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %33, i32 0, i32 1
  %34 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %35 = load %struct._object*, %struct._object** %id, align 8
  %call29 = call i32 @PyArena_AddPyObject(%struct._arena* %34, %struct._object* %35)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.end.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %36 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp33, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %38, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %41(%struct._object* %42)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.28
  %43 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %do.end.42, %if.then.26, %do.end, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define internal i32 @forbidden_name(%struct.compiling* %c, %struct._object* %name, %struct._node* %n, i32 %full_checks) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %name.addr = alloca %struct._object*, align 8
  %n.addr = alloca %struct._node*, align 8
  %full_checks.addr = alloca i32, align 4
  %p = alloca i8**, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %full_checks, i32* %full_checks.addr, align 4
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %call1 = call i32 @ast_error(%struct.compiling* %1, %struct._node* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %full_checks.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @FORBIDDEN, i32 0, i32 0), i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i8**, i8*** %p, align 8
  %5 = load i8*, i8** %4, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %7 = load i8**, i8*** %p, align 8
  %8 = load i8*, i8** %7, align 8
  %call4 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %6, i8* %8)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.body
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %call7 = call i32 @ast_error(%struct.compiling* %9, %struct._node* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %11 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._arg* @_Py_arg(%struct._object*, %struct._expr*, %struct._arena*) #1

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @init_normalization(%struct.compiling* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0))
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 3
  store %struct._object* %call1, %struct._object** %c_normalize, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %10 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize4 = getelementptr inbounds %struct.compiling, %struct.compiling* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %c_normalize4, align 8
  %tobool5 = icmp ne %struct._object* %11, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize_args = getelementptr inbounds %struct.compiling, %struct.compiling* %12, i32 0, i32 4
  store %struct._object* %call8, %struct._object** %c_normalize_args, align 8
  %13 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize_args9 = getelementptr inbounds %struct.compiling, %struct.compiling* %13, i32 0, i32 4
  %14 = load %struct._object*, %struct._object** %c_normalize_args9, align 8
  %tobool10 = icmp ne %struct._object* %14, null
  br i1 %tobool10, label %if.end.30, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %15 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize13 = getelementptr inbounds %struct.compiling, %struct.compiling* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %c_normalize13, align 8
  store %struct._object* %16, %struct._object** %_py_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp14 = icmp ne %struct._object* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %do.body.12
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize16 = getelementptr inbounds %struct.compiling, %struct.compiling* %18, i32 0, i32 3
  store %struct._object* null, %struct._object** %c_normalize16, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.15
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %21, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %24(%struct._object* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.body.12
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.7
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_normalize_args31 = getelementptr inbounds %struct.compiling, %struct.compiling* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %c_normalize_args31, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 1
  store %struct._object* null, %struct._object** %arrayidx, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %do.end.29, %if.then.6, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyUnicode_InternInPlace(%struct._object**) #1

declare i32 @PyArena_AddPyObject(%struct._arena*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare %struct._expr* @_Py_IfExp(%struct._expr*, %struct._expr*, %struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Starred(%struct._expr*, i32, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_operator(%struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 32, label %sw.bb.1
    i32 19, label %sw.bb.2
    i32 33, label %sw.bb.3
    i32 34, label %sw.bb.4
    i32 14, label %sw.bb.5
    i32 15, label %sw.bb.6
    i32 16, label %sw.bb.7
    i32 17, label %sw.bb.8
    i32 47, label %sw.bb.9
    i32 24, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._expr* @_Py_BinOp(%struct._expr*, i32, %struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_atom(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %ch = alloca %struct._node*, align 8
  %bytesmode = alloca i32, align 4
  %name = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %str = alloca %struct._object*, align 8
  %errtype = alloca i8*, align 8
  %buf = alloca [128 x i8], align 16
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tback = alloca %struct._object*, align 8
  %errstr = alloca %struct._object*, align 8
  %s49 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_xdecref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %pynum = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %elts = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %keys = alloca %struct.asdl_seq*, align 8
  %values = alloca %struct.asdl_seq*, align 8
  %elts266 = alloca %struct.asdl_seq*, align 8
  %expression = alloca %struct._expr*, align 8
  %expression334 = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  store i32 0, i32* %bytesmode, align 4
  %2 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type, align 2
  %conv = sext i16 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.32
    i32 2, label %sw.bb.143
    i32 51, label %sw.bb.171
    i32 7, label %sw.bb.176
    i32 9, label %sw.bb.209
    i32 25, label %sw.bb.242
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._node*, %struct._node** %ch, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 1
  %5 = load i8*, i8** %n_str, align 8
  store i8* %5, i8** %s, align 8
  %6 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %6) #8
  store i64 %call, i64* %len, align 8
  %7 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %7, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load i64, i64* %len, align 8
  %cmp2 = icmp ule i64 %8, 5
  br i1 %cmp2, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8*, i8** %s, align 8
  %call4 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 2
  %11 = load i32, i32* %n_lineno, align 4
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 3
  %13 = load i32, i32* %n_col_offset, align 4
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %14, i32 0, i32 1
  %15 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call6 = call %struct._expr* @_Py_NameConstant(%struct._object* @_Py_NoneStruct, i32 %11, i32 %13, %struct._arena* %15)
  store %struct._expr* %call6, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %16 = load i8*, i8** %s, align 8
  %call7 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno10 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 2
  %18 = load i32, i32* %n_lineno10, align 4
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset11 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 3
  %20 = load i32, i32* %n_col_offset11, align 4
  %21 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena12 = getelementptr inbounds %struct.compiling, %struct.compiling* %21, i32 0, i32 1
  %22 = load %struct._arena*, %struct._arena** %c_arena12, align 8
  %call13 = call %struct._expr* @_Py_NameConstant(%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), i32 %18, i32 %20, %struct._arena* %22)
  store %struct._expr* %call13, %struct._expr** %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %23 = load i8*, i8** %s, align 8
  %call15 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.22, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno18 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 2
  %25 = load i32, i32* %n_lineno18, align 4
  %26 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset19 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 3
  %27 = load i32, i32* %n_col_offset19, align 4
  %28 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena20 = getelementptr inbounds %struct.compiling, %struct.compiling* %28, i32 0, i32 1
  %29 = load %struct._arena*, %struct._arena** %c_arena20, align 8
  %call21 = call %struct._expr* @_Py_NameConstant(%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), i32 %25, i32 %27, %struct._arena* %29)
  store %struct._expr* %call21, %struct._expr** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %sw.bb
  %30 = load i8*, i8** %s, align 8
  %31 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call24 = call %struct._object* @new_identifier(i8* %30, %struct.compiling* %31)
  store %struct._object* %call24, %struct._object** %name, align 8
  %32 = load %struct._object*, %struct._object** %name, align 8
  %tobool25 = icmp ne %struct._object* %32, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %33 = load %struct._object*, %struct._object** %name, align 8
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno28 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 2
  %35 = load i32, i32* %n_lineno28, align 4
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset29 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 3
  %37 = load i32, i32* %n_col_offset29, align 4
  %38 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena30 = getelementptr inbounds %struct.compiling, %struct.compiling* %38, i32 0, i32 1
  %39 = load %struct._arena*, %struct._arena** %c_arena30, align 8
  %call31 = call %struct._expr* @_Py_Name(%struct._object* %33, i32 1, i32 %35, i32 %37, %struct._arena* %39)
  store %struct._expr* %call31, %struct._expr** %retval
  br label %return

sw.bb.32:                                         ; preds = %entry
  %40 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %call33 = call %struct._object* @parsestrplus(%struct.compiling* %40, %struct._node* %41, i32* %bytesmode)
  store %struct._object* %call33, %struct._object** %str, align 8
  %42 = load %struct._object*, %struct._object** %str, align 8
  %tobool34 = icmp ne %struct._object* %42, null
  br i1 %tobool34, label %if.end.113, label %if.then.35

if.then.35:                                       ; preds = %sw.bb.32
  store i8* null, i8** %errtype, align 8
  %43 = load %struct._object*, %struct._object** @PyExc_UnicodeError, align 8
  %call36 = call i32 @PyErr_ExceptionMatches(%struct._object* %43)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.35
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i8** %errtype, align 8
  br label %if.end.43

if.else:                                          ; preds = %if.then.35
  %44 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call39 = call i32 @PyErr_ExceptionMatches(%struct._object* %44)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8** %errtype, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.38
  %45 = load i8*, i8** %errtype, align 8
  %tobool44 = icmp ne i8* %45, null
  br i1 %tobool44, label %if.then.45, label %if.end.112

if.then.45:                                       ; preds = %if.end.43
  call void @PyErr_Fetch(%struct._object** %type, %struct._object** %value, %struct._object** %tback)
  %46 = load %struct._object*, %struct._object** %value, align 8
  %call46 = call %struct._object* @PyObject_Str(%struct._object* %46)
  store %struct._object* %call46, %struct._object** %errstr, align 8
  %47 = load %struct._object*, %struct._object** %errstr, align 8
  %tobool47 = icmp ne %struct._object* %47, null
  br i1 %tobool47, label %if.then.48, label %if.else.57

if.then.48:                                       ; preds = %if.then.45
  %48 = load %struct._object*, %struct._object** %errstr, align 8
  %call50 = call i8* @PyUnicode_AsUTF8(%struct._object* %48)
  store i8* %call50, i8** %s49, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %49 = load i8*, i8** %errtype, align 8
  %50 = load i8*, i8** %s49, align 8
  %call51 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* %49, i8* %50)
  br label %do.body

do.body:                                          ; preds = %if.then.48
  %51 = load %struct._object*, %struct._object** %errstr, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %53, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp52 = icmp ne i64 %dec, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body
  br label %if.end.56

if.else.55:                                       ; preds = %do.body
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %56(%struct._object* %57)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end

do.end:                                           ; preds = %if.end.56
  br label %if.end.60

if.else.57:                                       ; preds = %if.then.45
  %arraydecay58 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %58 = load i8*, i8** %errtype, align 8
  %call59 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay58, i64 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i8* %58)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %do.end
  %59 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %60 = load %struct._node*, %struct._node** %n.addr, align 8
  %arraydecay61 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call62 = call i32 @ast_error(%struct.compiling* %59, %struct._node* %60, i8* %arraydecay61)
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.60
  %61 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp64, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %63, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.63
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %66(%struct._object* %67)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %68 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %68, %struct._object** %_py_xdecref_tmp, align 8
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp76 = icmp ne %struct._object* %69, null
  br i1 %cmp76, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %do.body.75
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp80, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %72, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.79
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %75(%struct._object* %76)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %do.body.75
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %77 = load %struct._object*, %struct._object** %tback, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp94, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp94, align 8
  %cmp95 = icmp ne %struct._object* %78, null
  br i1 %cmp95, label %if.then.97, label %if.end.110

if.then.97:                                       ; preds = %do.body.93
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp94, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp99, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %81, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.98
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.98
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %84(%struct._object* %85)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.109, %do.body.93
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %if.end.43
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.113:                                       ; preds = %sw.bb.32
  %86 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena114 = getelementptr inbounds %struct.compiling, %struct.compiling* %86, i32 0, i32 1
  %87 = load %struct._arena*, %struct._arena** %c_arena114, align 8
  %88 = load %struct._object*, %struct._object** %str, align 8
  %call115 = call i32 @PyArena_AddPyObject(%struct._arena* %87, %struct._object* %88)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.131

if.then.118:                                      ; preds = %if.end.113
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %89 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp120, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %91, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.119
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.119
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %94(%struct._object* %95)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.113
  %96 = load i32, i32* %bytesmode, align 4
  %tobool132 = icmp ne i32 %96, 0
  br i1 %tobool132, label %if.then.133, label %if.else.138

if.then.133:                                      ; preds = %if.end.131
  %97 = load %struct._object*, %struct._object** %str, align 8
  %98 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno134 = getelementptr inbounds %struct._node, %struct._node* %98, i32 0, i32 2
  %99 = load i32, i32* %n_lineno134, align 4
  %100 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset135 = getelementptr inbounds %struct._node, %struct._node* %100, i32 0, i32 3
  %101 = load i32, i32* %n_col_offset135, align 4
  %102 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena136 = getelementptr inbounds %struct.compiling, %struct.compiling* %102, i32 0, i32 1
  %103 = load %struct._arena*, %struct._arena** %c_arena136, align 8
  %call137 = call %struct._expr* @_Py_Bytes(%struct._object* %97, i32 %99, i32 %101, %struct._arena* %103)
  store %struct._expr* %call137, %struct._expr** %retval
  br label %return

if.else.138:                                      ; preds = %if.end.131
  %104 = load %struct._object*, %struct._object** %str, align 8
  %105 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno139 = getelementptr inbounds %struct._node, %struct._node* %105, i32 0, i32 2
  %106 = load i32, i32* %n_lineno139, align 4
  %107 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset140 = getelementptr inbounds %struct._node, %struct._node* %107, i32 0, i32 3
  %108 = load i32, i32* %n_col_offset140, align 4
  %109 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena141 = getelementptr inbounds %struct.compiling, %struct.compiling* %109, i32 0, i32 1
  %110 = load %struct._arena*, %struct._arena** %c_arena141, align 8
  %call142 = call %struct._expr* @_Py_Str(%struct._object* %104, i32 %106, i32 %108, %struct._arena* %110)
  store %struct._expr* %call142, %struct._expr** %retval
  br label %return

sw.bb.143:                                        ; preds = %entry
  %111 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %112 = load %struct._node*, %struct._node** %ch, align 8
  %n_str144 = getelementptr inbounds %struct._node, %struct._node* %112, i32 0, i32 1
  %113 = load i8*, i8** %n_str144, align 8
  %call145 = call %struct._object* @parsenumber(%struct.compiling* %111, i8* %113)
  store %struct._object* %call145, %struct._object** %pynum, align 8
  %114 = load %struct._object*, %struct._object** %pynum, align 8
  %tobool146 = icmp ne %struct._object* %114, null
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %sw.bb.143
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.148:                                       ; preds = %sw.bb.143
  %115 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena149 = getelementptr inbounds %struct.compiling, %struct.compiling* %115, i32 0, i32 1
  %116 = load %struct._arena*, %struct._arena** %c_arena149, align 8
  %117 = load %struct._object*, %struct._object** %pynum, align 8
  %call150 = call i32 @PyArena_AddPyObject(%struct._arena* %116, %struct._object* %117)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.then.153, label %if.end.166

if.then.153:                                      ; preds = %if.end.148
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  %118 = load %struct._object*, %struct._object** %pynum, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp155, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %120, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %do.body.154
  br label %if.end.164

if.else.161:                                      ; preds = %do.body.154
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_dealloc163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %123(%struct._object* %124)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.166:                                       ; preds = %if.end.148
  %125 = load %struct._object*, %struct._object** %pynum, align 8
  %126 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno167 = getelementptr inbounds %struct._node, %struct._node* %126, i32 0, i32 2
  %127 = load i32, i32* %n_lineno167, align 4
  %128 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset168 = getelementptr inbounds %struct._node, %struct._node* %128, i32 0, i32 3
  %129 = load i32, i32* %n_col_offset168, align 4
  %130 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena169 = getelementptr inbounds %struct.compiling, %struct.compiling* %130, i32 0, i32 1
  %131 = load %struct._arena*, %struct._arena** %c_arena169, align 8
  %call170 = call %struct._expr* @_Py_Num(%struct._object* %125, i32 %127, i32 %129, %struct._arena* %131)
  store %struct._expr* %call170, %struct._expr** %retval
  br label %return

sw.bb.171:                                        ; preds = %entry
  %132 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno172 = getelementptr inbounds %struct._node, %struct._node* %132, i32 0, i32 2
  %133 = load i32, i32* %n_lineno172, align 4
  %134 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset173 = getelementptr inbounds %struct._node, %struct._node* %134, i32 0, i32 3
  %135 = load i32, i32* %n_col_offset173, align 4
  %136 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena174 = getelementptr inbounds %struct.compiling, %struct.compiling* %136, i32 0, i32 1
  %137 = load %struct._arena*, %struct._arena** %c_arena174, align 8
  %call175 = call %struct._expr* @_Py_Ellipsis(i32 %133, i32 %135, %struct._arena* %137)
  store %struct._expr* %call175, %struct._expr** %retval
  br label %return

sw.bb.176:                                        ; preds = %entry
  %138 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child177 = getelementptr inbounds %struct._node, %struct._node* %138, i32 0, i32 5
  %139 = load %struct._node*, %struct._node** %n_child177, align 8
  %arrayidx178 = getelementptr %struct._node, %struct._node* %139, i64 1
  store %struct._node* %arrayidx178, %struct._node** %ch, align 8
  %140 = load %struct._node*, %struct._node** %ch, align 8
  %n_type179 = getelementptr inbounds %struct._node, %struct._node* %140, i32 0, i32 0
  %141 = load i16, i16* %n_type179, align 2
  %conv180 = sext i16 %141 to i32
  %cmp181 = icmp eq i32 %conv180, 8
  br i1 %cmp181, label %if.then.183, label %if.end.188

if.then.183:                                      ; preds = %sw.bb.176
  %142 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno184 = getelementptr inbounds %struct._node, %struct._node* %142, i32 0, i32 2
  %143 = load i32, i32* %n_lineno184, align 4
  %144 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset185 = getelementptr inbounds %struct._node, %struct._node* %144, i32 0, i32 3
  %145 = load i32, i32* %n_col_offset185, align 4
  %146 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena186 = getelementptr inbounds %struct.compiling, %struct.compiling* %146, i32 0, i32 1
  %147 = load %struct._arena*, %struct._arena** %c_arena186, align 8
  %call187 = call %struct._expr* @_Py_Tuple(%struct.asdl_seq* null, i32 1, i32 %143, i32 %145, %struct._arena* %147)
  store %struct._expr* %call187, %struct._expr** %retval
  br label %return

if.end.188:                                       ; preds = %sw.bb.176
  %148 = load %struct._node*, %struct._node** %ch, align 8
  %n_type189 = getelementptr inbounds %struct._node, %struct._node* %148, i32 0, i32 0
  %149 = load i16, i16* %n_type189, align 2
  %conv190 = sext i16 %149 to i32
  %cmp191 = icmp eq i32 %conv190, 336
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.end.188
  %150 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %151 = load %struct._node*, %struct._node** %ch, align 8
  %call194 = call %struct._expr* @ast_for_expr(%struct.compiling* %150, %struct._node* %151)
  store %struct._expr* %call194, %struct._expr** %retval
  br label %return

if.end.195:                                       ; preds = %if.end.188
  %152 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %152, i32 0, i32 4
  %153 = load i32, i32* %n_nchildren, align 4
  %cmp196 = icmp sgt i32 %153, 1
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.207

land.lhs.true.198:                                ; preds = %if.end.195
  %154 = load %struct._node*, %struct._node** %ch, align 8
  %n_child199 = getelementptr inbounds %struct._node, %struct._node* %154, i32 0, i32 5
  %155 = load %struct._node*, %struct._node** %n_child199, align 8
  %arrayidx200 = getelementptr %struct._node, %struct._node* %155, i64 1
  %n_type201 = getelementptr inbounds %struct._node, %struct._node* %arrayidx200, i32 0, i32 0
  %156 = load i16, i16* %n_type201, align 2
  %conv202 = sext i16 %156 to i32
  %cmp203 = icmp eq i32 %conv202, 333
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %land.lhs.true.198
  %157 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %158 = load %struct._node*, %struct._node** %ch, align 8
  %call206 = call %struct._expr* @ast_for_genexp(%struct.compiling* %157, %struct._node* %158)
  store %struct._expr* %call206, %struct._expr** %retval
  br label %return

if.end.207:                                       ; preds = %land.lhs.true.198, %if.end.195
  %159 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %160 = load %struct._node*, %struct._node** %ch, align 8
  %call208 = call %struct._expr* @ast_for_testlist(%struct.compiling* %159, %struct._node* %160)
  store %struct._expr* %call208, %struct._expr** %retval
  br label %return

sw.bb.209:                                        ; preds = %entry
  %161 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child210 = getelementptr inbounds %struct._node, %struct._node* %161, i32 0, i32 5
  %162 = load %struct._node*, %struct._node** %n_child210, align 8
  %arrayidx211 = getelementptr %struct._node, %struct._node* %162, i64 1
  store %struct._node* %arrayidx211, %struct._node** %ch, align 8
  %163 = load %struct._node*, %struct._node** %ch, align 8
  %n_type212 = getelementptr inbounds %struct._node, %struct._node* %163, i32 0, i32 0
  %164 = load i16, i16* %n_type212, align 2
  %conv213 = sext i16 %164 to i32
  %cmp214 = icmp eq i32 %conv213, 10
  br i1 %cmp214, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %sw.bb.209
  %165 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno217 = getelementptr inbounds %struct._node, %struct._node* %165, i32 0, i32 2
  %166 = load i32, i32* %n_lineno217, align 4
  %167 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset218 = getelementptr inbounds %struct._node, %struct._node* %167, i32 0, i32 3
  %168 = load i32, i32* %n_col_offset218, align 4
  %169 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena219 = getelementptr inbounds %struct.compiling, %struct.compiling* %169, i32 0, i32 1
  %170 = load %struct._arena*, %struct._arena** %c_arena219, align 8
  %call220 = call %struct._expr* @_Py_List(%struct.asdl_seq* null, i32 1, i32 %166, i32 %168, %struct._arena* %170)
  store %struct._expr* %call220, %struct._expr** %retval
  br label %return

if.end.221:                                       ; preds = %sw.bb.209
  %171 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren222 = getelementptr inbounds %struct._node, %struct._node* %171, i32 0, i32 4
  %172 = load i32, i32* %n_nchildren222, align 4
  %cmp223 = icmp eq i32 %172, 1
  br i1 %cmp223, label %if.then.231, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.221
  %173 = load %struct._node*, %struct._node** %ch, align 8
  %n_child225 = getelementptr inbounds %struct._node, %struct._node* %173, i32 0, i32 5
  %174 = load %struct._node*, %struct._node** %n_child225, align 8
  %arrayidx226 = getelementptr %struct._node, %struct._node* %174, i64 1
  %n_type227 = getelementptr inbounds %struct._node, %struct._node* %arrayidx226, i32 0, i32 0
  %175 = load i16, i16* %n_type227, align 2
  %conv228 = sext i16 %175 to i32
  %cmp229 = icmp eq i32 %conv228, 12
  br i1 %cmp229, label %if.then.231, label %if.else.240

if.then.231:                                      ; preds = %lor.lhs.false, %if.end.221
  %176 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %177 = load %struct._node*, %struct._node** %ch, align 8
  %call232 = call %struct.asdl_seq* @seq_for_testlist(%struct.compiling* %176, %struct._node* %177)
  store %struct.asdl_seq* %call232, %struct.asdl_seq** %elts, align 8
  %178 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %tobool233 = icmp ne %struct.asdl_seq* %178, null
  br i1 %tobool233, label %if.end.235, label %if.then.234

if.then.234:                                      ; preds = %if.then.231
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.235:                                       ; preds = %if.then.231
  %179 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %180 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno236 = getelementptr inbounds %struct._node, %struct._node* %180, i32 0, i32 2
  %181 = load i32, i32* %n_lineno236, align 4
  %182 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset237 = getelementptr inbounds %struct._node, %struct._node* %182, i32 0, i32 3
  %183 = load i32, i32* %n_col_offset237, align 4
  %184 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena238 = getelementptr inbounds %struct.compiling, %struct.compiling* %184, i32 0, i32 1
  %185 = load %struct._arena*, %struct._arena** %c_arena238, align 8
  %call239 = call %struct._expr* @_Py_List(%struct.asdl_seq* %179, i32 1, i32 %181, i32 %183, %struct._arena* %185)
  store %struct._expr* %call239, %struct._expr** %retval
  br label %return

if.else.240:                                      ; preds = %lor.lhs.false
  %186 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %187 = load %struct._node*, %struct._node** %ch, align 8
  %call241 = call %struct._expr* @ast_for_listcomp(%struct.compiling* %186, %struct._node* %187)
  store %struct._expr* %call241, %struct._expr** %retval
  br label %return

sw.bb.242:                                        ; preds = %entry
  %188 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child243 = getelementptr inbounds %struct._node, %struct._node* %188, i32 0, i32 5
  %189 = load %struct._node*, %struct._node** %n_child243, align 8
  %arrayidx244 = getelementptr %struct._node, %struct._node* %189, i64 1
  store %struct._node* %arrayidx244, %struct._node** %ch, align 8
  %190 = load %struct._node*, %struct._node** %ch, align 8
  %n_type245 = getelementptr inbounds %struct._node, %struct._node* %190, i32 0, i32 0
  %191 = load i16, i16* %n_type245, align 2
  %conv246 = sext i16 %191 to i32
  %cmp247 = icmp eq i32 %conv246, 26
  br i1 %cmp247, label %if.then.249, label %if.else.254

if.then.249:                                      ; preds = %sw.bb.242
  %192 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno250 = getelementptr inbounds %struct._node, %struct._node* %192, i32 0, i32 2
  %193 = load i32, i32* %n_lineno250, align 4
  %194 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset251 = getelementptr inbounds %struct._node, %struct._node* %194, i32 0, i32 3
  %195 = load i32, i32* %n_col_offset251, align 4
  %196 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena252 = getelementptr inbounds %struct.compiling, %struct.compiling* %196, i32 0, i32 1
  %197 = load %struct._arena*, %struct._arena** %c_arena252, align 8
  %call253 = call %struct._expr* @_Py_Dict(%struct.asdl_seq* null, %struct.asdl_seq* null, i32 %193, i32 %195, %struct._arena* %197)
  store %struct._expr* %call253, %struct._expr** %retval
  br label %return

if.else.254:                                      ; preds = %sw.bb.242
  %198 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren255 = getelementptr inbounds %struct._node, %struct._node* %198, i32 0, i32 4
  %199 = load i32, i32* %n_nchildren255, align 4
  %cmp256 = icmp eq i32 %199, 1
  br i1 %cmp256, label %if.then.265, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %if.else.254
  %200 = load %struct._node*, %struct._node** %ch, align 8
  %n_child259 = getelementptr inbounds %struct._node, %struct._node* %200, i32 0, i32 5
  %201 = load %struct._node*, %struct._node** %n_child259, align 8
  %arrayidx260 = getelementptr %struct._node, %struct._node* %201, i64 1
  %n_type261 = getelementptr inbounds %struct._node, %struct._node* %arrayidx260, i32 0, i32 0
  %202 = load i16, i16* %n_type261, align 2
  %conv262 = sext i16 %202 to i32
  %cmp263 = icmp eq i32 %conv262, 12
  br i1 %cmp263, label %if.then.265, label %if.else.291

if.then.265:                                      ; preds = %lor.lhs.false.258, %if.else.254
  %203 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren267 = getelementptr inbounds %struct._node, %struct._node* %203, i32 0, i32 4
  %204 = load i32, i32* %n_nchildren267, align 4
  %add = add i32 %204, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %size, align 4
  %205 = load i32, i32* %size, align 4
  %conv268 = sext i32 %205 to i64
  %206 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena269 = getelementptr inbounds %struct.compiling, %struct.compiling* %206, i32 0, i32 1
  %207 = load %struct._arena*, %struct._arena** %c_arena269, align 8
  %call270 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv268, %struct._arena* %207)
  store %struct.asdl_seq* %call270, %struct.asdl_seq** %elts266, align 8
  %208 = load %struct.asdl_seq*, %struct.asdl_seq** %elts266, align 8
  %tobool271 = icmp ne %struct.asdl_seq* %208, null
  br i1 %tobool271, label %if.end.273, label %if.then.272

if.then.272:                                      ; preds = %if.then.265
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.273:                                       ; preds = %if.then.265
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.273
  %209 = load i32, i32* %i, align 4
  %210 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren274 = getelementptr inbounds %struct._node, %struct._node* %210, i32 0, i32 4
  %211 = load i32, i32* %n_nchildren274, align 4
  %cmp275 = icmp slt i32 %209, %211
  br i1 %cmp275, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %212 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %213 = load i32, i32* %i, align 4
  %idxprom = sext i32 %213 to i64
  %214 = load %struct._node*, %struct._node** %ch, align 8
  %n_child277 = getelementptr inbounds %struct._node, %struct._node* %214, i32 0, i32 5
  %215 = load %struct._node*, %struct._node** %n_child277, align 8
  %arrayidx278 = getelementptr %struct._node, %struct._node* %215, i64 %idxprom
  %call279 = call %struct._expr* @ast_for_expr(%struct.compiling* %212, %struct._node* %arrayidx278)
  store %struct._expr* %call279, %struct._expr** %expression, align 8
  %216 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool280 = icmp ne %struct._expr* %216, null
  br i1 %tobool280, label %if.end.282, label %if.then.281

if.then.281:                                      ; preds = %for.body
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.282:                                       ; preds = %for.body
  %217 = load %struct._expr*, %struct._expr** %expression, align 8
  %218 = bitcast %struct._expr* %217 to i8*
  %219 = load i32, i32* %i, align 4
  %div283 = sdiv i32 %219, 2
  %idxprom284 = sext i32 %div283 to i64
  %220 = load %struct.asdl_seq*, %struct.asdl_seq** %elts266, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %220, i32 0, i32 1
  %arrayidx285 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom284
  store i8* %218, i8** %arrayidx285, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.282
  %221 = load i32, i32* %i, align 4
  %add286 = add i32 %221, 2
  store i32 %add286, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %222 = load %struct.asdl_seq*, %struct.asdl_seq** %elts266, align 8
  %223 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno287 = getelementptr inbounds %struct._node, %struct._node* %223, i32 0, i32 2
  %224 = load i32, i32* %n_lineno287, align 4
  %225 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset288 = getelementptr inbounds %struct._node, %struct._node* %225, i32 0, i32 3
  %226 = load i32, i32* %n_col_offset288, align 4
  %227 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena289 = getelementptr inbounds %struct.compiling, %struct.compiling* %227, i32 0, i32 1
  %228 = load %struct._arena*, %struct._arena** %c_arena289, align 8
  %call290 = call %struct._expr* @_Py_Set(%struct.asdl_seq* %222, i32 %224, i32 %226, %struct._arena* %228)
  store %struct._expr* %call290, %struct._expr** %retval
  br label %return

if.else.291:                                      ; preds = %lor.lhs.false.258
  %229 = load %struct._node*, %struct._node** %ch, align 8
  %n_child292 = getelementptr inbounds %struct._node, %struct._node* %229, i32 0, i32 5
  %230 = load %struct._node*, %struct._node** %n_child292, align 8
  %arrayidx293 = getelementptr %struct._node, %struct._node* %230, i64 1
  %n_type294 = getelementptr inbounds %struct._node, %struct._node* %arrayidx293, i32 0, i32 0
  %231 = load i16, i16* %n_type294, align 2
  %conv295 = sext i16 %231 to i32
  %cmp296 = icmp eq i32 %conv295, 333
  br i1 %cmp296, label %if.then.298, label %if.else.300

if.then.298:                                      ; preds = %if.else.291
  %232 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %233 = load %struct._node*, %struct._node** %ch, align 8
  %call299 = call %struct._expr* @ast_for_setcomp(%struct.compiling* %232, %struct._node* %233)
  store %struct._expr* %call299, %struct._expr** %retval
  br label %return

if.else.300:                                      ; preds = %if.else.291
  %234 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren301 = getelementptr inbounds %struct._node, %struct._node* %234, i32 0, i32 4
  %235 = load i32, i32* %n_nchildren301, align 4
  %cmp302 = icmp sgt i32 %235, 3
  br i1 %cmp302, label %land.lhs.true.304, label %if.else.313

land.lhs.true.304:                                ; preds = %if.else.300
  %236 = load %struct._node*, %struct._node** %ch, align 8
  %n_child305 = getelementptr inbounds %struct._node, %struct._node* %236, i32 0, i32 5
  %237 = load %struct._node*, %struct._node** %n_child305, align 8
  %arrayidx306 = getelementptr %struct._node, %struct._node* %237, i64 3
  %n_type307 = getelementptr inbounds %struct._node, %struct._node* %arrayidx306, i32 0, i32 0
  %238 = load i16, i16* %n_type307, align 2
  %conv308 = sext i16 %238 to i32
  %cmp309 = icmp eq i32 %conv308, 333
  br i1 %cmp309, label %if.then.311, label %if.else.313

if.then.311:                                      ; preds = %land.lhs.true.304
  %239 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %240 = load %struct._node*, %struct._node** %ch, align 8
  %call312 = call %struct._expr* @ast_for_dictcomp(%struct.compiling* %239, %struct._node* %240)
  store %struct._expr* %call312, %struct._expr** %retval
  br label %return

if.else.313:                                      ; preds = %land.lhs.true.304, %if.else.300
  %241 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren314 = getelementptr inbounds %struct._node, %struct._node* %241, i32 0, i32 4
  %242 = load i32, i32* %n_nchildren314, align 4
  %add315 = add i32 %242, 1
  %div316 = sdiv i32 %add315, 4
  store i32 %div316, i32* %size, align 4
  %243 = load i32, i32* %size, align 4
  %conv317 = sext i32 %243 to i64
  %244 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena318 = getelementptr inbounds %struct.compiling, %struct.compiling* %244, i32 0, i32 1
  %245 = load %struct._arena*, %struct._arena** %c_arena318, align 8
  %call319 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv317, %struct._arena* %245)
  store %struct.asdl_seq* %call319, %struct.asdl_seq** %keys, align 8
  %246 = load %struct.asdl_seq*, %struct.asdl_seq** %keys, align 8
  %tobool320 = icmp ne %struct.asdl_seq* %246, null
  br i1 %tobool320, label %if.end.322, label %if.then.321

if.then.321:                                      ; preds = %if.else.313
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.322:                                       ; preds = %if.else.313
  %247 = load i32, i32* %size, align 4
  %conv323 = sext i32 %247 to i64
  %248 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena324 = getelementptr inbounds %struct.compiling, %struct.compiling* %248, i32 0, i32 1
  %249 = load %struct._arena*, %struct._arena** %c_arena324, align 8
  %call325 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv323, %struct._arena* %249)
  store %struct.asdl_seq* %call325, %struct.asdl_seq** %values, align 8
  %250 = load %struct.asdl_seq*, %struct.asdl_seq** %values, align 8
  %tobool326 = icmp ne %struct.asdl_seq* %250, null
  br i1 %tobool326, label %if.end.328, label %if.then.327

if.then.327:                                      ; preds = %if.end.322
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.328:                                       ; preds = %if.end.322
  store i32 0, i32* %i, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.358, %if.end.328
  %251 = load i32, i32* %i, align 4
  %252 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren330 = getelementptr inbounds %struct._node, %struct._node* %252, i32 0, i32 4
  %253 = load i32, i32* %n_nchildren330, align 4
  %cmp331 = icmp slt i32 %251, %253
  br i1 %cmp331, label %for.body.333, label %for.end.360

for.body.333:                                     ; preds = %for.cond.329
  %254 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %255 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %255 to i64
  %256 = load %struct._node*, %struct._node** %ch, align 8
  %n_child336 = getelementptr inbounds %struct._node, %struct._node* %256, i32 0, i32 5
  %257 = load %struct._node*, %struct._node** %n_child336, align 8
  %arrayidx337 = getelementptr %struct._node, %struct._node* %257, i64 %idxprom335
  %call338 = call %struct._expr* @ast_for_expr(%struct.compiling* %254, %struct._node* %arrayidx337)
  store %struct._expr* %call338, %struct._expr** %expression334, align 8
  %258 = load %struct._expr*, %struct._expr** %expression334, align 8
  %tobool339 = icmp ne %struct._expr* %258, null
  br i1 %tobool339, label %if.end.341, label %if.then.340

if.then.340:                                      ; preds = %for.body.333
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.341:                                       ; preds = %for.body.333
  %259 = load %struct._expr*, %struct._expr** %expression334, align 8
  %260 = bitcast %struct._expr* %259 to i8*
  %261 = load i32, i32* %i, align 4
  %div342 = sdiv i32 %261, 4
  %idxprom343 = sext i32 %div342 to i64
  %262 = load %struct.asdl_seq*, %struct.asdl_seq** %keys, align 8
  %elements344 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %262, i32 0, i32 1
  %arrayidx345 = getelementptr [1 x i8*], [1 x i8*]* %elements344, i32 0, i64 %idxprom343
  store i8* %260, i8** %arrayidx345, align 8
  %263 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %264 = load i32, i32* %i, align 4
  %add346 = add i32 %264, 2
  %idxprom347 = sext i32 %add346 to i64
  %265 = load %struct._node*, %struct._node** %ch, align 8
  %n_child348 = getelementptr inbounds %struct._node, %struct._node* %265, i32 0, i32 5
  %266 = load %struct._node*, %struct._node** %n_child348, align 8
  %arrayidx349 = getelementptr %struct._node, %struct._node* %266, i64 %idxprom347
  %call350 = call %struct._expr* @ast_for_expr(%struct.compiling* %263, %struct._node* %arrayidx349)
  store %struct._expr* %call350, %struct._expr** %expression334, align 8
  %267 = load %struct._expr*, %struct._expr** %expression334, align 8
  %tobool351 = icmp ne %struct._expr* %267, null
  br i1 %tobool351, label %if.end.353, label %if.then.352

if.then.352:                                      ; preds = %if.end.341
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.353:                                       ; preds = %if.end.341
  %268 = load %struct._expr*, %struct._expr** %expression334, align 8
  %269 = bitcast %struct._expr* %268 to i8*
  %270 = load i32, i32* %i, align 4
  %div354 = sdiv i32 %270, 4
  %idxprom355 = sext i32 %div354 to i64
  %271 = load %struct.asdl_seq*, %struct.asdl_seq** %values, align 8
  %elements356 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %271, i32 0, i32 1
  %arrayidx357 = getelementptr [1 x i8*], [1 x i8*]* %elements356, i32 0, i64 %idxprom355
  store i8* %269, i8** %arrayidx357, align 8
  br label %for.inc.358

for.inc.358:                                      ; preds = %if.end.353
  %272 = load i32, i32* %i, align 4
  %add359 = add i32 %272, 4
  store i32 %add359, i32* %i, align 4
  br label %for.cond.329

for.end.360:                                      ; preds = %for.cond.329
  %273 = load %struct.asdl_seq*, %struct.asdl_seq** %keys, align 8
  %274 = load %struct.asdl_seq*, %struct.asdl_seq** %values, align 8
  %275 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno361 = getelementptr inbounds %struct._node, %struct._node* %275, i32 0, i32 2
  %276 = load i32, i32* %n_lineno361, align 4
  %277 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset362 = getelementptr inbounds %struct._node, %struct._node* %277, i32 0, i32 3
  %278 = load i32, i32* %n_col_offset362, align 4
  %279 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena363 = getelementptr inbounds %struct.compiling, %struct.compiling* %279, i32 0, i32 1
  %280 = load %struct._arena*, %struct._arena** %c_arena363, align 8
  %call364 = call %struct._expr* @_Py_Dict(%struct.asdl_seq* %273, %struct.asdl_seq* %274, i32 %276, i32 %278, %struct._arena* %280)
  store %struct._expr* %call364, %struct._expr** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %281 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %282 = load %struct._node*, %struct._node** %ch, align 8
  %n_type365 = getelementptr inbounds %struct._node, %struct._node* %282, i32 0, i32 0
  %283 = load i16, i16* %n_type365, align 2
  %conv366 = sext i16 %283 to i32
  %call367 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %281, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i32 %conv366)
  store %struct._expr* null, %struct._expr** %retval
  br label %return

return:                                           ; preds = %sw.default, %for.end.360, %if.then.352, %if.then.340, %if.then.327, %if.then.321, %if.then.311, %if.then.298, %for.end, %if.then.281, %if.then.272, %if.then.249, %if.else.240, %if.end.235, %if.then.234, %if.then.216, %if.end.207, %if.then.205, %if.then.193, %if.then.183, %sw.bb.171, %if.end.166, %do.end.165, %if.then.147, %if.else.138, %if.then.133, %do.end.130, %if.end.112, %if.end.27, %if.then.26, %if.then.17, %if.then.9, %if.then.5
  %284 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %284
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_trailer(%struct.compiling* %c, %struct._node* %n, %struct._expr* %left_expr) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %left_expr.addr = alloca %struct._expr*, align 8
  %tmp = alloca %struct._expr*, align 8
  %attr_id = alloca %struct._object*, align 8
  %slc = alloca %struct._slice*, align 8
  %j = alloca i32, align 4
  %slc55 = alloca %struct._slice*, align 8
  %e = alloca %struct._expr*, align 8
  %simple = alloca i32, align 4
  %slices = alloca %struct.asdl_seq*, align 8
  %elts = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* %left_expr, %struct._expr** %left_expr.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %2 = load i16, i16* %n_type, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 4
  %4 = load i32, i32* %n_nchildren, align 4
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 2
  %7 = load i32, i32* %n_lineno, align 4
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 3
  %9 = load i32, i32* %n_col_offset, align 4
  %10 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %10, i32 0, i32 1
  %11 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct._expr* @_Py_Call(%struct._expr* %5, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._expr* null, %struct._expr* null, i32 %7, i32 %9, %struct._arena* %11)
  store %struct._expr* %call, %struct._expr** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %14, i64 1
  %15 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %call7 = call %struct._expr* @ast_for_call(%struct.compiling* %12, %struct._node* %arrayidx6, %struct._expr* %15)
  store %struct._expr* %call7, %struct._expr** %tmp, align 8
  %16 = load %struct._expr*, %struct._expr** %tmp, align 8
  %tobool = icmp ne %struct._expr* %16, null
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno9 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 2
  %18 = load i32, i32* %n_lineno9, align 4
  %19 = load %struct._expr*, %struct._expr** %tmp, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %19, i32 0, i32 2
  store i32 %18, i32* %lineno, align 4
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset10 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 3
  %21 = load i32, i32* %n_col_offset10, align 4
  %22 = load %struct._expr*, %struct._expr** %tmp, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %22, i32 0, i32 3
  store i32 %21, i32* %col_offset, align 4
  %23 = load %struct._expr*, %struct._expr** %tmp, align 8
  store %struct._expr* %23, %struct._expr** %retval
  br label %return

if.else.11:                                       ; preds = %entry
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %25, i64 0
  %n_type14 = getelementptr inbounds %struct._node, %struct._node* %arrayidx13, i32 0, i32 0
  %26 = load i16, i16* %n_type14, align 2
  %conv15 = sext i16 %26 to i32
  %cmp16 = icmp eq i32 %conv15, 23
  br i1 %cmp16, label %if.then.18, label %if.else.34

if.then.18:                                       ; preds = %if.else.11
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child20 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  %28 = load %struct._node*, %struct._node** %n_child20, align 8
  %arrayidx21 = getelementptr %struct._node, %struct._node* %28, i64 1
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx21, i32 0, i32 1
  %29 = load i8*, i8** %n_str, align 8
  %30 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call22 = call %struct._object* @new_identifier(i8* %29, %struct.compiling* %30)
  store %struct._object* %call22, %struct._object** %attr_id, align 8
  %31 = load %struct._object*, %struct._object** %attr_id, align 8
  %tobool23 = icmp ne %struct._object* %31, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.18
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.18
  %32 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %33 = load %struct._object*, %struct._object** %attr_id, align 8
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child26 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5
  %35 = load %struct._node*, %struct._node** %n_child26, align 8
  %arrayidx27 = getelementptr %struct._node, %struct._node* %35, i64 1
  %n_lineno28 = getelementptr inbounds %struct._node, %struct._node* %arrayidx27, i32 0, i32 2
  %36 = load i32, i32* %n_lineno28, align 4
  %37 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 5
  %38 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %38, i64 1
  %n_col_offset31 = getelementptr inbounds %struct._node, %struct._node* %arrayidx30, i32 0, i32 3
  %39 = load i32, i32* %n_col_offset31, align 4
  %40 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena32 = getelementptr inbounds %struct.compiling, %struct.compiling* %40, i32 0, i32 1
  %41 = load %struct._arena*, %struct._arena** %c_arena32, align 8
  %call33 = call %struct._expr* @_Py_Attribute(%struct._expr* %32, %struct._object* %33, i32 1, i32 %36, i32 %39, %struct._arena* %41)
  store %struct._expr* %call33, %struct._expr** %retval
  br label %return

if.else.34:                                       ; preds = %if.else.11
  %42 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %43, i64 1
  store %struct._node* %arrayidx36, %struct._node** %n.addr, align 8
  %44 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren37 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 4
  %45 = load i32, i32* %n_nchildren37, align 4
  %cmp38 = icmp eq i32 %45, 1
  br i1 %cmp38, label %if.then.40, label %if.else.52

if.then.40:                                       ; preds = %if.else.34
  %46 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %47 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child42 = getelementptr inbounds %struct._node, %struct._node* %47, i32 0, i32 5
  %48 = load %struct._node*, %struct._node** %n_child42, align 8
  %arrayidx43 = getelementptr %struct._node, %struct._node* %48, i64 0
  %call44 = call %struct._slice* @ast_for_slice(%struct.compiling* %46, %struct._node* %arrayidx43)
  store %struct._slice* %call44, %struct._slice** %slc, align 8
  %49 = load %struct._slice*, %struct._slice** %slc, align 8
  %tobool45 = icmp ne %struct._slice* %49, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.40
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.47:                                        ; preds = %if.then.40
  %50 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %51 = load %struct._slice*, %struct._slice** %slc, align 8
  %52 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno48 = getelementptr inbounds %struct._node, %struct._node* %52, i32 0, i32 2
  %53 = load i32, i32* %n_lineno48, align 4
  %54 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset49 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 3
  %55 = load i32, i32* %n_col_offset49, align 4
  %56 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena50 = getelementptr inbounds %struct.compiling, %struct.compiling* %56, i32 0, i32 1
  %57 = load %struct._arena*, %struct._arena** %c_arena50, align 8
  %call51 = call %struct._expr* @_Py_Subscript(%struct._expr* %50, %struct._slice* %51, i32 1, i32 %53, i32 %55, %struct._arena* %57)
  store %struct._expr* %call51, %struct._expr** %retval
  br label %return

if.else.52:                                       ; preds = %if.else.34
  store i32 1, i32* %simple, align 4
  %58 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren60 = getelementptr inbounds %struct._node, %struct._node* %58, i32 0, i32 4
  %59 = load i32, i32* %n_nchildren60, align 4
  %add = add i32 %59, 1
  %div = sdiv i32 %add, 2
  %conv61 = sext i32 %div to i64
  %60 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena62 = getelementptr inbounds %struct.compiling, %struct.compiling* %60, i32 0, i32 1
  %61 = load %struct._arena*, %struct._arena** %c_arena62, align 8
  %call63 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv61, %struct._arena* %61)
  store %struct.asdl_seq* %call63, %struct.asdl_seq** %slices, align 8
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %tobool64 = icmp ne %struct.asdl_seq* %62, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.else.52
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.66:                                        ; preds = %if.else.52
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %63 = load i32, i32* %j, align 4
  %64 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren67 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 4
  %65 = load i32, i32* %n_nchildren67, align 4
  %cmp68 = icmp slt i32 %63, %65
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %67 = load i32, i32* %j, align 4
  %idxprom = sext i32 %67 to i64
  %68 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child70 = getelementptr inbounds %struct._node, %struct._node* %68, i32 0, i32 5
  %69 = load %struct._node*, %struct._node** %n_child70, align 8
  %arrayidx71 = getelementptr %struct._node, %struct._node* %69, i64 %idxprom
  %call72 = call %struct._slice* @ast_for_slice(%struct.compiling* %66, %struct._node* %arrayidx71)
  store %struct._slice* %call72, %struct._slice** %slc55, align 8
  %70 = load %struct._slice*, %struct._slice** %slc55, align 8
  %tobool73 = icmp ne %struct._slice* %70, null
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %for.body
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.75:                                        ; preds = %for.body
  %71 = load %struct._slice*, %struct._slice** %slc55, align 8
  %kind = getelementptr inbounds %struct._slice, %struct._slice* %71, i32 0, i32 0
  %72 = load i32, i32* %kind, align 4
  %cmp76 = icmp ne i32 %72, 3
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  store i32 0, i32* %simple, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.75
  %73 = load %struct._slice*, %struct._slice** %slc55, align 8
  %74 = bitcast %struct._slice* %73 to i8*
  %75 = load i32, i32* %j, align 4
  %div80 = sdiv i32 %75, 2
  %idxprom81 = sext i32 %div80 to i64
  %76 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %76, i32 0, i32 1
  %arrayidx82 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom81
  store i8* %74, i8** %arrayidx82, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %77 = load i32, i32* %j, align 4
  %add83 = add i32 %77, 2
  store i32 %add83, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load i32, i32* %simple, align 4
  %tobool84 = icmp ne i32 %78, 0
  br i1 %tobool84, label %if.end.92, label %if.then.85

if.then.85:                                       ; preds = %for.end
  %79 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %80 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %81 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena86 = getelementptr inbounds %struct.compiling, %struct.compiling* %81, i32 0, i32 1
  %82 = load %struct._arena*, %struct._arena** %c_arena86, align 8
  %call87 = call %struct._slice* @_Py_ExtSlice(%struct.asdl_seq* %80, %struct._arena* %82)
  %83 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno88 = getelementptr inbounds %struct._node, %struct._node* %83, i32 0, i32 2
  %84 = load i32, i32* %n_lineno88, align 4
  %85 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset89 = getelementptr inbounds %struct._node, %struct._node* %85, i32 0, i32 3
  %86 = load i32, i32* %n_col_offset89, align 4
  %87 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena90 = getelementptr inbounds %struct.compiling, %struct.compiling* %87, i32 0, i32 1
  %88 = load %struct._arena*, %struct._arena** %c_arena90, align 8
  %call91 = call %struct._expr* @_Py_Subscript(%struct._expr* %79, %struct._slice* %call87, i32 1, i32 %84, i32 %86, %struct._arena* %88)
  store %struct._expr* %call91, %struct._expr** %retval
  br label %return

if.end.92:                                        ; preds = %for.end
  %89 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %cmp93 = icmp eq %struct.asdl_seq* %89, null
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.92
  br label %cond.end

cond.false:                                       ; preds = %if.end.92
  %90 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %90, i32 0, i32 0
  %91 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %91, %cond.false ]
  %92 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena95 = getelementptr inbounds %struct.compiling, %struct.compiling* %92, i32 0, i32 1
  %93 = load %struct._arena*, %struct._arena** %c_arena95, align 8
  %call96 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %cond, %struct._arena* %93)
  store %struct.asdl_seq* %call96, %struct.asdl_seq** %elts, align 8
  %94 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %tobool97 = icmp ne %struct.asdl_seq* %94, null
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %cond.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.99:                                        ; preds = %cond.end
  store i32 0, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.118, %if.end.99
  %95 = load i32, i32* %j, align 4
  %conv101 = sext i32 %95 to i64
  %96 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %cmp102 = icmp eq %struct.asdl_seq* %96, null
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %for.cond.100
  br label %cond.end.107

cond.false.105:                                   ; preds = %for.cond.100
  %97 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %size106 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %97, i32 0, i32 0
  %98 = load i64, i64* %size106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i64 [ 0, %cond.true.104 ], [ %98, %cond.false.105 ]
  %cmp109 = icmp slt i64 %conv101, %cond108
  br i1 %cmp109, label %for.body.111, label %for.end.119

for.body.111:                                     ; preds = %cond.end.107
  %99 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %99 to i64
  %100 = load %struct.asdl_seq*, %struct.asdl_seq** %slices, align 8
  %elements113 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %100, i32 0, i32 1
  %arrayidx114 = getelementptr [1 x i8*], [1 x i8*]* %elements113, i32 0, i64 %idxprom112
  %101 = load i8*, i8** %arrayidx114, align 8
  %102 = bitcast i8* %101 to %struct._slice*
  store %struct._slice* %102, %struct._slice** %slc55, align 8
  %103 = load %struct._slice*, %struct._slice** %slc55, align 8
  %v = getelementptr inbounds %struct._slice, %struct._slice* %103, i32 0, i32 1
  %Index = bitcast %union.anon.24* %v to %struct.anon.27*
  %value = getelementptr inbounds %struct.anon.27, %struct.anon.27* %Index, i32 0, i32 0
  %104 = load %struct._expr*, %struct._expr** %value, align 8
  %105 = bitcast %struct._expr* %104 to i8*
  %106 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %106 to i64
  %107 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %elements116 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %107, i32 0, i32 1
  %arrayidx117 = getelementptr [1 x i8*], [1 x i8*]* %elements116, i32 0, i64 %idxprom115
  store i8* %105, i8** %arrayidx117, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.111
  %108 = load i32, i32* %j, align 4
  %inc = add i32 %108, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.100

for.end.119:                                      ; preds = %cond.end.107
  %109 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  %110 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno120 = getelementptr inbounds %struct._node, %struct._node* %110, i32 0, i32 2
  %111 = load i32, i32* %n_lineno120, align 4
  %112 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset121 = getelementptr inbounds %struct._node, %struct._node* %112, i32 0, i32 3
  %113 = load i32, i32* %n_col_offset121, align 4
  %114 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena122 = getelementptr inbounds %struct.compiling, %struct.compiling* %114, i32 0, i32 1
  %115 = load %struct._arena*, %struct._arena** %c_arena122, align 8
  %call123 = call %struct._expr* @_Py_Tuple(%struct.asdl_seq* %109, i32 1, i32 %111, i32 %113, %struct._arena* %115)
  store %struct._expr* %call123, %struct._expr** %e, align 8
  %116 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool124 = icmp ne %struct._expr* %116, null
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %for.end.119
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.126:                                       ; preds = %for.end.119
  %117 = load %struct._expr*, %struct._expr** %left_expr.addr, align 8
  %118 = load %struct._expr*, %struct._expr** %e, align 8
  %119 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena127 = getelementptr inbounds %struct.compiling, %struct.compiling* %119, i32 0, i32 1
  %120 = load %struct._arena*, %struct._arena** %c_arena127, align 8
  %call128 = call %struct._slice* @_Py_Index(%struct._expr* %118, %struct._arena* %120)
  %121 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno129 = getelementptr inbounds %struct._node, %struct._node* %121, i32 0, i32 2
  %122 = load i32, i32* %n_lineno129, align 4
  %123 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset130 = getelementptr inbounds %struct._node, %struct._node* %123, i32 0, i32 3
  %124 = load i32, i32* %n_col_offset130, align 4
  %125 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena131 = getelementptr inbounds %struct.compiling, %struct.compiling* %125, i32 0, i32 1
  %126 = load %struct._arena*, %struct._arena** %c_arena131, align 8
  %call132 = call %struct._expr* @_Py_Subscript(%struct._expr* %117, %struct._slice* %call128, i32 1, i32 %122, i32 %124, %struct._arena* %126)
  store %struct._expr* %call132, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.126, %if.then.125, %if.then.98, %if.then.85, %if.then.74, %if.then.65, %if.end.47, %if.then.46, %if.end.25, %if.then.24, %if.end, %if.then.8, %if.then.4
  %127 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %127
}

declare %struct._expr* @_Py_NameConstant(%struct._object*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Name(%struct._object*, i32, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @parsestrplus(%struct.compiling* %c, %struct._node* %n, i32* %bytesmode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %bytesmode.addr = alloca i32*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct._object*, align 8
  %subbm = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %bytesmode, i32** %bytesmode.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %3 = load i32*, i32** %bytesmode.addr, align 8
  %call = call %struct._object* @parsestr(%struct.compiling* %0, %struct._node* %arrayidx, i32* %3)
  store %struct._object* %call, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren, align 4
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %subbm, align 4
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %11, i64 %idxprom
  %call4 = call %struct._object* @parsestr(%struct.compiling* %8, %struct._node* %arrayidx3, i32* %subbm)
  store %struct._object* %call4, %struct._object** %s, align 8
  %12 = load %struct._object*, %struct._object** %s, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  br label %onError

if.end:                                           ; preds = %for.body
  %13 = load i32*, i32** %bytesmode.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %subbm, align 4
  %cmp7 = icmp ne i32 %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %call9 = call i32 @ast_error(%struct.compiling* %16, %struct._node* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.82, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %18 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %onError

if.end.13:                                        ; preds = %if.end
  %25 = load %struct._object*, %struct._object** %v, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 19
  %27 = load i64, i64* %tp_flags, align 8
  %and = and i64 %27, 134217728
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %s, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_flags17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags17, align 8
  %and18 = and i64 %30, 134217728
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %land.lhs.true
  %31 = load %struct._object*, %struct._object** %s, align 8
  call void @PyBytes_ConcatAndDel(%struct._object** %v, %struct._object* %31)
  %32 = load %struct._object*, %struct._object** %v, align 8
  %cmp21 = icmp eq %struct._object* %32, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  br label %onError

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.51

if.else.24:                                       ; preds = %land.lhs.true, %if.end.13
  %33 = load %struct._object*, %struct._object** %v, align 8
  %34 = load %struct._object*, %struct._object** %s, align 8
  %call25 = call %struct._object* @PyUnicode_Concat(%struct._object* %33, %struct._object* %34)
  store %struct._object* %call25, %struct._object** %temp, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.else.24
  %35 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp27, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %37, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %40(%struct._object* %41)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %42 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp38, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %44, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %47(%struct._object* %48)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %49 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %49, %struct._object** %v, align 8
  %50 = load %struct._object*, %struct._object** %v, align 8
  %cmp48 = icmp eq %struct._object* %50, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.47
  br label %onError

if.end.50:                                        ; preds = %do.end.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %51 = load i32, i32* %i, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.end.52:                                        ; preds = %for.end, %entry
  %52 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.49, %if.then.22, %do.end, %if.then.6
  br label %do.body.53

do.body.53:                                       ; preds = %onError
  %53 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp54 = icmp ne %struct._object* %54, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.53
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp57, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %57, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %60(%struct._object* %61)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.53
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.68, %if.end.52
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare %struct._expr* @_Py_Bytes(%struct._object*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Str(%struct._object*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @parsenumber(%struct.compiling* %c, i8* %s) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %s.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %x = alloca i64, align 8
  %dx = alloca double, align 8
  %compl = alloca %struct.Py_complex, align 8
  %imflag = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %call = call i32* @__errno_location() #9
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %add.ptr = getelementptr i8, i8* %0, i64 %call1
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr2, i8** %end, align 8
  %2 = load i8*, i8** %end, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 106
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load i8*, i8** %end, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 74
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %imflag, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 48
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %9 = load i8*, i8** %s.addr, align 8
  %call10 = call i64 @PyOS_strtoul(i8* %9, i8** %end, i32 0)
  store i64 %call10, i64* %x, align 8
  %10 = load i64, i64* %x, align 8
  %cmp11 = icmp slt i64 %10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call13 = call i32* @__errno_location() #9
  %11 = load i32, i32* %call13, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  %12 = load i8*, i8** %s.addr, align 8
  %call17 = call %struct._object* @PyLong_FromString(i8* %12, i8** null, i32 0)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.19

if.else:                                          ; preds = %lor.end
  %13 = load i8*, i8** %s.addr, align 8
  %call18 = call i64 @PyOS_strtol(i8* %13, i8** %end, i32 0)
  store i64 %call18, i64* %x, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  %14 = load i8*, i8** %end, align 8
  %15 = load i8, i8* %14, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.19
  %call24 = call i32* @__errno_location() #9
  %16 = load i32, i32* %call24, align 4
  %cmp25 = icmp ne i32 %16, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.23
  %17 = load i8*, i8** %s.addr, align 8
  %call28 = call %struct._object* @PyLong_FromString(i8* %17, i8** null, i32 0)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.23
  %18 = load i64, i64* %x, align 8
  %call30 = call %struct._object* @PyLong_FromLong(i64 %18)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.19
  %19 = load i32, i32* %imflag, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.32, label %if.else.43

if.then.32:                                       ; preds = %if.end.31
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %compl, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  %20 = load i8*, i8** %s.addr, align 8
  %call33 = call double @PyOS_string_to_double(i8* %20, i8** %end, %struct._object* null)
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %compl, i32 0, i32 1
  store double %call33, double* %imag, align 8
  %imag34 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %compl, i32 0, i32 1
  %21 = load double, double* %imag34, align 8
  %cmp35 = fcmp oeq double %21, -1.000000e+00
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.then.32
  %call38 = call %struct._object* @PyErr_Occurred()
  %tobool39 = icmp ne %struct._object* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.37, %if.then.32
  %22 = bitcast %struct.Py_complex* %compl to { double, double }*
  %23 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 0
  %24 = load double, double* %23, align 1
  %25 = getelementptr { double, double }, { double, double }* %22, i32 0, i32 1
  %26 = load double, double* %25, align 1
  %call42 = call %struct._object* @PyComplex_FromCComplex(double %24, double %26)
  store %struct._object* %call42, %struct._object** %retval
  br label %return

if.else.43:                                       ; preds = %if.end.31
  %27 = load i8*, i8** %s.addr, align 8
  %call44 = call double @PyOS_string_to_double(i8* %27, i8** null, %struct._object* null)
  store double %call44, double* %dx, align 8
  %28 = load double, double* %dx, align 8
  %cmp45 = fcmp oeq double %28, -1.000000e+00
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %if.else.43
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.47, %if.else.43
  %29 = load double, double* %dx, align 8
  %call52 = call %struct._object* @PyFloat_FromDouble(double %29)
  store %struct._object* %call52, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.50, %if.end.41, %if.then.40, %if.end.29, %if.then.27, %if.then.16
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare %struct._expr* @_Py_Num(%struct._object*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Ellipsis(i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_genexp(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct._expr* @ast_for_itercomp(%struct.compiling* %0, %struct._node* %1, i32 0)
  ret %struct._expr* %call
}

declare %struct._expr* @_Py_List(%struct.asdl_seq*, i32, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_listcomp(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct._expr* @ast_for_itercomp(%struct.compiling* %0, %struct._node* %1, i32 1)
  ret %struct._expr* %call
}

declare %struct._expr* @_Py_Dict(%struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Set(%struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_setcomp(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call %struct._expr* @ast_for_itercomp(%struct.compiling* %0, %struct._node* %1, i32 2)
  ret %struct._expr* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_dictcomp(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %key = alloca %struct._expr*, align 8
  %value = alloca %struct._expr*, align 8
  %comps = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %key, align 8
  %3 = load %struct._expr*, %struct._expr** %key, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %6, i64 2
  %call3 = call %struct._expr* @ast_for_expr(%struct.compiling* %4, %struct._node* %arrayidx2)
  store %struct._expr* %call3, %struct._expr** %value, align 8
  %7 = load %struct._expr*, %struct._expr** %value, align 8
  %tobool4 = icmp ne %struct._expr* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %10, i64 3
  %call9 = call %struct.asdl_seq* @ast_for_comprehension(%struct.compiling* %8, %struct._node* %arrayidx8)
  store %struct.asdl_seq* %call9, %struct.asdl_seq** %comps, align 8
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %tobool10 = icmp ne %struct.asdl_seq* %11, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %12 = load %struct._expr*, %struct._expr** %key, align 8
  %13 = load %struct._expr*, %struct._expr** %value, align 8
  %14 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 2
  %16 = load i32, i32* %n_lineno, align 4
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 3
  %18 = load i32, i32* %n_col_offset, align 4
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %19, i32 0, i32 1
  %20 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call13 = call %struct._expr* @_Py_DictComp(%struct._expr* %12, %struct._expr* %13, %struct.asdl_seq* %14, i32 %16, i32 %18, %struct._arena* %20)
  store %struct._expr* %call13, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.5, %if.then
  %21 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parsestr(%struct.compiling* %c, %struct._node* %n, i32* %bytesmode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %bytesmode.addr = alloca i32*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %quote = alloca i32, align 4
  %rawmode = alloca i32, align 4
  %need_encoding = alloca i32, align 4
  %ch = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %u = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32* %bytesmode, i32** %bytesmode.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 1
  %1 = load i8*, i8** %n_str, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  store i32 %conv2, i32* %quote, align 4
  store i32 0, i32* %rawmode, align 4
  %4 = load i32, i32* %quote, align 4
  %and3 = and i32 %4, 255
  %conv4 = trunc i32 %and3 to i8
  %idxprom = zext i8 %conv4 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %and5 = and i32 %5, 3
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.then
  %6 = load i32*, i32** %bytesmode.addr, align 8
  %7 = load i32, i32* %6, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %8 = load i32, i32* %rawmode, align 4
  %tobool7 = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool7, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %9 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i32, i32* %quote, align 4
  %cmp = icmp eq i32 %10, 98
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i32, i32* %quote, align 4
  %cmp9 = icmp eq i32 %11, 66
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %while.body
  %12 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv12 = sext i8 %13 to i32
  store i32 %conv12, i32* %quote, align 4
  %14 = load i32*, i32** %bytesmode.addr, align 8
  store i32 1, i32* %14, align 4
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false
  %15 = load i32, i32* %quote, align 4
  %cmp13 = icmp eq i32 %15, 117
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.else
  %16 = load i32, i32* %quote, align 4
  %cmp16 = icmp eq i32 %16, 85
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %lor.lhs.false.15, %if.else
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr19 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %s, align 8
  %18 = load i8, i8* %incdec.ptr19, align 1
  %conv20 = sext i8 %18 to i32
  store i32 %conv20, i32* %quote, align 4
  br label %if.end.31

if.else.21:                                       ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %quote, align 4
  %cmp22 = icmp eq i32 %19, 114
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.else.21
  %20 = load i32, i32* %quote, align 4
  %cmp25 = icmp eq i32 %20, 82
  br i1 %cmp25, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.else.21
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr28 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr28, i8** %s, align 8
  %22 = load i8, i8* %incdec.ptr28, align 1
  %conv29 = sext i8 %22 to i32
  store i32 %conv29, i32* %quote, align 4
  store i32 1, i32* %rawmode, align 4
  br label %if.end

if.else.30:                                       ; preds = %lor.lhs.false.24
  br label %while.end

if.end:                                           ; preds = %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.18
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.11
  br label %while.cond

while.end:                                        ; preds = %if.else.30, %lor.end
  br label %if.end.33

if.end.33:                                        ; preds = %while.end, %entry
  %23 = load i32, i32* %quote, align 4
  %cmp34 = icmp ne i32 %23, 39
  br i1 %cmp34, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.33
  %24 = load i32, i32* %quote, align 4
  %cmp36 = icmp ne i32 %24, 34
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 3792)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true, %if.end.33
  %25 = load i8*, i8** %s, align 8
  %incdec.ptr40 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr40, i8** %s, align 8
  %26 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %26) #8
  store i64 %call, i64* %len, align 8
  %27 = load i64, i64* %len, align 8
  %cmp41 = icmp ugt i64 %27, 2147483647
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  %28 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  %29 = load i64, i64* %len, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %len, align 8
  %30 = load i8*, i8** %s, align 8
  %arrayidx45 = getelementptr i8, i8* %30, i64 %dec
  %31 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %31 to i32
  %32 = load i32, i32* %quote, align 4
  %cmp47 = icmp ne i32 %conv46, %32
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 3803)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  %33 = load i64, i64* %len, align 8
  %cmp51 = icmp uge i64 %33, 4
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.77

land.lhs.true.53:                                 ; preds = %if.end.50
  %34 = load i8*, i8** %s, align 8
  %arrayidx54 = getelementptr i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %35 to i32
  %36 = load i32, i32* %quote, align 4
  %cmp56 = icmp eq i32 %conv55, %36
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.77

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %37 = load i8*, i8** %s, align 8
  %arrayidx59 = getelementptr i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %38 to i32
  %39 = load i32, i32* %quote, align 4
  %cmp61 = icmp eq i32 %conv60, %39
  br i1 %cmp61, label %if.then.63, label %if.end.77

if.then.63:                                       ; preds = %land.lhs.true.58
  %40 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr i8, i8* %40, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %41 = load i64, i64* %len, align 8
  %sub = sub i64 %41, 2
  store i64 %sub, i64* %len, align 8
  %42 = load i64, i64* %len, align 8
  %dec64 = add i64 %42, -1
  store i64 %dec64, i64* %len, align 8
  %43 = load i8*, i8** %s, align 8
  %arrayidx65 = getelementptr i8, i8* %43, i64 %dec64
  %44 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %44 to i32
  %45 = load i32, i32* %quote, align 4
  %cmp67 = icmp ne i32 %conv66, %45
  br i1 %cmp67, label %if.then.75, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.then.63
  %46 = load i64, i64* %len, align 8
  %dec70 = add i64 %46, -1
  store i64 %dec70, i64* %len, align 8
  %47 = load i8*, i8** %s, align 8
  %arrayidx71 = getelementptr i8, i8* %47, i64 %dec70
  %48 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %48 to i32
  %49 = load i32, i32* %quote, align 4
  %cmp73 = icmp ne i32 %conv72, %49
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.69, %if.then.63
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 3810)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.69
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.58, %land.lhs.true.53, %if.end.50
  %50 = load i32*, i32** %bytesmode.addr, align 8
  %51 = load i32, i32* %50, align 4
  %tobool78 = icmp ne i32 %51, 0
  br i1 %tobool78, label %if.end.83, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %if.end.77
  %52 = load i32, i32* %rawmode, align 4
  %tobool80 = icmp ne i32 %52, 0
  br i1 %tobool80, label %if.end.83, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.79
  %53 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %54 = load i8*, i8** %s, align 8
  %55 = load i64, i64* %len, align 8
  %56 = load i32, i32* %rawmode, align 4
  %57 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding = getelementptr inbounds %struct.compiling, %struct.compiling* %57, i32 0, i32 0
  %58 = load i8*, i8** %c_encoding, align 8
  %call82 = call %struct._object* @decode_unicode(%struct.compiling* %53, i8* %54, i64 %55, i32 %56, i8* %58)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true.79, %if.end.77
  %59 = load i32*, i32** %bytesmode.addr, align 8
  %60 = load i32, i32* %59, align 4
  %tobool84 = icmp ne i32 %60, 0
  br i1 %tobool84, label %if.then.85, label %if.end.97

if.then.85:                                       ; preds = %if.end.83
  %61 = load i8*, i8** %s, align 8
  store i8* %61, i8** %ch, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.85
  %62 = load i8*, i8** %ch, align 8
  %63 = load i8, i8* %62, align 1
  %tobool86 = icmp ne i8 %63, 0
  br i1 %tobool86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i8*, i8** %ch, align 8
  %65 = load i8, i8* %64, align 1
  %conv87 = sext i8 %65 to i32
  %and88 = and i32 %conv87, 255
  %conv89 = trunc i32 %and88 to i8
  %conv90 = zext i8 %conv89 to i32
  %cmp91 = icmp sge i32 %conv90, 128
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.body
  %66 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %67 = load %struct._node*, %struct._node** %n.addr, align 8
  %call94 = call i32 @ast_error(%struct.compiling* %66, %struct._node* %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %68 = load i8*, i8** %ch, align 8
  %incdec.ptr96 = getelementptr i8, i8* %68, i32 1
  store i8* %incdec.ptr96, i8** %ch, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.97

if.end.97:                                        ; preds = %for.end, %if.end.83
  %69 = load i32*, i32** %bytesmode.addr, align 8
  %70 = load i32, i32* %69, align 4
  %tobool98 = icmp ne i32 %70, 0
  br i1 %tobool98, label %land.end, label %land.lhs.true.99

land.lhs.true.99:                                 ; preds = %if.end.97
  %71 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding100 = getelementptr inbounds %struct.compiling, %struct.compiling* %71, i32 0, i32 0
  %72 = load i8*, i8** %c_encoding100, align 8
  %cmp101 = icmp ne i8* %72, null
  br i1 %cmp101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.99
  %73 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding103 = getelementptr inbounds %struct.compiling, %struct.compiling* %73, i32 0, i32 0
  %74 = load i8*, i8** %c_encoding103, align 8
  %call104 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp105 = icmp ne i32 %call104, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.99, %if.end.97
  %75 = phi i1 [ false, %land.lhs.true.99 ], [ false, %if.end.97 ], [ %cmp105, %land.rhs ]
  %land.ext = zext i1 %75 to i32
  store i32 %land.ext, i32* %need_encoding, align 4
  %76 = load i32, i32* %rawmode, align 4
  %tobool107 = icmp ne i32 %76, 0
  br i1 %tobool107, label %if.then.112, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.end
  %77 = load i8*, i8** %s, align 8
  %call109 = call i8* @strchr(i8* %77, i32 92) #8
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %if.then.112, label %if.end.143

if.then.112:                                      ; preds = %lor.lhs.false.108, %land.end
  %78 = load i32, i32* %need_encoding, align 4
  %tobool113 = icmp ne i32 %78, 0
  br i1 %tobool113, label %if.then.114, label %if.else.130

if.then.114:                                      ; preds = %if.then.112
  %79 = load i8*, i8** %s, align 8
  %80 = load i64, i64* %len, align 8
  %call115 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %79, i64 %80, i8* null)
  store %struct._object* %call115, %struct._object** %u, align 8
  %81 = load %struct._object*, %struct._object** %u, align 8
  %cmp116 = icmp eq %struct._object* %81, null
  br i1 %cmp116, label %if.then.120, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.114
  %82 = load i32*, i32** %bytesmode.addr, align 8
  %83 = load i32, i32* %82, align 4
  %tobool119 = icmp ne i32 %83, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %lor.lhs.false.118, %if.then.114
  %84 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %84, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %lor.lhs.false.118
  %85 = load %struct._object*, %struct._object** %u, align 8
  %86 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding122 = getelementptr inbounds %struct.compiling, %struct.compiling* %86, i32 0, i32 0
  %87 = load i8*, i8** %c_encoding122, align 8
  %call123 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %85, i8* %87, i8* null)
  store %struct._object* %call123, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.121
  %88 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt, align 8
  %dec124 = add i64 %90, -1
  store i64 %dec124, i64* %ob_refcnt, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.body
  br label %if.end.129

if.else.128:                                      ; preds = %do.body
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %93(%struct._object* %94)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.then.127
  br label %do.end

do.end:                                           ; preds = %if.end.129
  %95 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %95, %struct._object** %retval
  br label %return

if.else.130:                                      ; preds = %if.then.112
  %96 = load i32*, i32** %bytesmode.addr, align 8
  %97 = load i32, i32* %96, align 4
  %tobool131 = icmp ne i32 %97, 0
  br i1 %tobool131, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %if.else.130
  %98 = load i8*, i8** %s, align 8
  %99 = load i64, i64* %len, align 8
  %call133 = call %struct._object* @PyBytes_FromStringAndSize(i8* %98, i64 %99)
  store %struct._object* %call133, %struct._object** %retval
  br label %return

if.else.134:                                      ; preds = %if.else.130
  %100 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding135 = getelementptr inbounds %struct.compiling, %struct.compiling* %100, i32 0, i32 0
  %101 = load i8*, i8** %c_encoding135, align 8
  %call136 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %if.else.134
  %102 = load i8*, i8** %s, align 8
  %103 = load i64, i64* %len, align 8
  %call140 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %102, i64 %103)
  store %struct._object* %call140, %struct._object** %retval
  br label %return

if.else.141:                                      ; preds = %if.else.134
  %104 = load i8*, i8** %s, align 8
  %105 = load i64, i64* %len, align 8
  %call142 = call %struct._object* @PyUnicode_DecodeLatin1(i8* %104, i64 %105, i8* null)
  store %struct._object* %call142, %struct._object** %retval
  br label %return

if.end.143:                                       ; preds = %lor.lhs.false.108
  %106 = load i8*, i8** %s, align 8
  %107 = load i64, i64* %len, align 8
  %108 = load i32, i32* %need_encoding, align 4
  %tobool144 = icmp ne i32 %108, 0
  br i1 %tobool144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.143
  %109 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_encoding145 = getelementptr inbounds %struct.compiling, %struct.compiling* %109, i32 0, i32 0
  %110 = load i8*, i8** %c_encoding145, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.143
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %110, %cond.true ], [ null, %cond.false ]
  %call146 = call %struct._object* @PyBytes_DecodeEscape(i8* %106, i64 %107, i8* null, i64 1, i8* %cond)
  store %struct._object* %call146, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.141, %if.then.139, %if.then.132, %do.end, %if.then.120, %if.then.93, %if.then.81, %if.then.75, %if.then.49, %if.then.43, %if.then.38
  %111 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %111
}

declare void @PyBytes_ConcatAndDel(%struct._object**, %struct._object*) #1

declare %struct._object* @PyUnicode_Concat(%struct._object*, %struct._object*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @decode_unicode(%struct.compiling* %c, i8* %s, i64 %len, i32 %rawmode, i8* %encoding) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rawmode.addr = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %u = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %w = alloca %struct._object*, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %len22 = alloca i64, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %chr = alloca i32, align 4
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %rawmode, i32* %rawmode.addr, align 4
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %u, align 8
  br label %if.end.86

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %1, 3074457345618258602
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %2 = load i64, i64* %len.addr, align 8
  %mul = mul i64 %2, 6
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul)
  store %struct._object* %call, %struct._object** %u, align 8
  %3 = load %struct._object*, %struct._object** %u, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %u, align 8
  %call6 = call i8* @PyBytes_AsString(%struct._object* %4)
  store i8* %call6, i8** %buf, align 8
  store i8* %call6, i8** %p, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %6
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.end.5
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8*, i8** %end, align 8
  %cmp7 = icmp ult i8* %7, %8
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv, 92
  br i1 %cmp8, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %while.body
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv12 = sext i8 %15 to i32
  %and = and i32 %conv12, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.10
  %16 = load i8*, i8** %p, align 8
  %call14 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #6
  %17 = load i8*, i8** %p, align 8
  %add.ptr15 = getelementptr i8, i8* %17, i64 5
  store i8* %add.ptr15, i8** %p, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %while.body
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = sext i8 %19 to i32
  %and19 = and i32 %conv18, 128
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.82

if.then.21:                                       ; preds = %if.end.17
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %21 = load i8*, i8** %end, align 8
  %call23 = call %struct._object* @decode_utf8(%struct.compiling* %20, i8** %s.addr, i8* %21)
  store %struct._object* %call23, %struct._object** %w, align 8
  %22 = load %struct._object*, %struct._object** %w, align 8
  %cmp24 = icmp eq %struct._object* %22, null
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.then.21
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %23 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else.30:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.21
  %30 = load %struct._object*, %struct._object** %w, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i32 0, i32 3
  %32 = bitcast %struct.anon.54* %state to i32*
  %bf.load = load i32, i32* %32, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %33 = load %struct._object*, %struct._object** %w, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %state33 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3
  %35 = bitcast %struct.anon.54* %state33 to i32*
  %bf.load34 = load i32, i32* %35, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 5
  %bf.clear36 = and i32 %bf.lshr35, 1
  %tobool37 = icmp ne i32 %bf.clear36, 0
  br i1 %tobool37, label %cond.true, label %cond.false.46

cond.true:                                        ; preds = %if.end.32
  %36 = load %struct._object*, %struct._object** %w, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %state38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3
  %38 = bitcast %struct.anon.54* %state38 to i32*
  %bf.load39 = load i32, i32* %38, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 6
  %bf.clear41 = and i32 %bf.lshr40, 1
  %tobool42 = icmp ne i32 %bf.clear41, 0
  br i1 %tobool42, label %cond.true.43, label %cond.false

cond.true.43:                                     ; preds = %cond.true
  %39 = load %struct._object*, %struct._object** %w, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %add.ptr44 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i64 1
  %41 = bitcast %struct.PyASCIIObject* %add.ptr44 to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %42 = load %struct._object*, %struct._object** %w, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyCompactUnicodeObject*
  %add.ptr45 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %43, i64 1
  %44 = bitcast %struct.PyCompactUnicodeObject* %add.ptr45 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.43
  %cond = phi i8* [ %41, %cond.true.43 ], [ %44, %cond.false ]
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.end.32
  %45 = load %struct._object*, %struct._object** %w, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyUnicodeObject*
  %data47 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %46, i32 0, i32 1
  %any = bitcast %union.anon.55* %data47 to i8**
  %47 = load i8*, i8** %any, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.end
  %cond49 = phi i8* [ %cond, %cond.end ], [ %47, %cond.false.46 ]
  store i8* %cond49, i8** %data, align 8
  %48 = load %struct._object*, %struct._object** %w, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %49, i32 0, i32 1
  %50 = load i64, i64* %length, align 8
  store i64 %50, i64* %len22, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.48
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %len22, align 8
  %cmp50 = icmp slt i64 %51, %52
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %kind, align 4
  %cmp52 = icmp eq i32 %53, 1
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %for.body
  %54 = load i64, i64* %i, align 8
  %55 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %55, i64 %54
  %56 = load i8, i8* %arrayidx, align 1
  %conv55 = zext i8 %56 to i32
  br label %cond.end.66

cond.false.56:                                    ; preds = %for.body
  %57 = load i32, i32* %kind, align 4
  %cmp57 = icmp eq i32 %57, 2
  br i1 %cmp57, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %cond.false.56
  %58 = load i64, i64* %i, align 8
  %59 = load i8*, i8** %data, align 8
  %60 = bitcast i8* %59 to i16*
  %arrayidx60 = getelementptr i16, i16* %60, i64 %58
  %61 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %61 to i32
  br label %cond.end.64

cond.false.62:                                    ; preds = %cond.false.56
  %62 = load i64, i64* %i, align 8
  %63 = load i8*, i8** %data, align 8
  %64 = bitcast i8* %63 to i32*
  %arrayidx63 = getelementptr i32, i32* %64, i64 %62
  %65 = load i32, i32* %arrayidx63, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.59
  %cond65 = phi i32 [ %conv61, %cond.true.59 ], [ %65, %cond.false.62 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.54
  %cond67 = phi i32 [ %conv55, %cond.true.54 ], [ %cond65, %cond.end.64 ]
  store i32 %cond67, i32* %chr, align 4
  %66 = load i8*, i8** %p, align 8
  %67 = load i32, i32* %chr, align 4
  %call68 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %67) #6
  %68 = load i8*, i8** %p, align 8
  %add.ptr69 = getelementptr i8, i8* %68, i64 10
  store i8* %add.ptr69, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.66
  %69 = load i64, i64* %i, align 8
  %inc = add i64 %69, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.70

do.body.70:                                       ; preds = %for.end
  %70 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp71, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %72, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.70
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.70
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %75(%struct._object* %76)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.85

if.else.82:                                       ; preds = %if.end.17
  %77 = load i8*, i8** %s.addr, align 8
  %incdec.ptr83 = getelementptr i8, i8* %77, i32 1
  store i8* %incdec.ptr83, i8** %s.addr, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %p, align 8
  %incdec.ptr84 = getelementptr i8, i8* %79, i32 1
  store i8* %incdec.ptr84, i8** %p, align 8
  store i8 %78, i8* %79, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %do.end.81
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %80 = load i8*, i8** %p, align 8
  %81 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len.addr, align 8
  %82 = load i8*, i8** %buf, align 8
  store i8* %82, i8** %s.addr, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %while.end, %if.then
  %83 = load i32, i32* %rawmode.addr, align 4
  %tobool87 = icmp ne i32 %83, 0
  br i1 %tobool87, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.end.86
  %84 = load i8*, i8** %s.addr, align 8
  %85 = load i64, i64* %len.addr, align 8
  %call89 = call %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8* %84, i64 %85, i8* null)
  store %struct._object* %call89, %struct._object** %v, align 8
  br label %if.end.92

if.else.90:                                       ; preds = %if.end.86
  %86 = load i8*, i8** %s.addr, align 8
  %87 = load i64, i64* %len.addr, align 8
  %call91 = call %struct._object* @PyUnicode_DecodeUnicodeEscape(i8* %86, i64 %87, i8* null)
  store %struct._object* %call91, %struct._object** %v, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.92
  %88 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %88, %struct._object** %_py_xdecref_tmp, align 8
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp94 = icmp ne %struct._object* %89, null
  br i1 %cmp94, label %if.then.96, label %if.end.109

if.then.96:                                       ; preds = %do.body.93
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp98, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %92, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.97
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.97
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %95(%struct._object* %96)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.93
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %97 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %97, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.110, %do.end, %if.then.4, %if.then.2
  %98 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %98
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyUnicode_DecodeLatin1(i8*, i64, i8*) #1

declare %struct._object* @PyBytes_DecodeEscape(i8*, i64, i8*, i64, i8*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @decode_utf8(%struct.compiling* %c, i8** %sPtr, i8* %end) #0 {
entry:
  %c.addr = alloca %struct.compiling*, align 8
  %sPtr.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store i8** %sPtr, i8*** %sPtr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8**, i8*** %sPtr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %s, align 8
  store i8* %1, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %sPtr.addr, align 8
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** %t, align 8
  %11 = load i8*, i8** %s, align 8
  %12 = load i8*, i8** %t, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call %struct._object* @PyUnicode_DecodeUTF8(i8* %10, i64 %sub.ptr.sub, i8* null)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_DecodeUnicodeEscape(i8*, i64, i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @PyOS_strtoul(i8*, i8**, i32) #1

declare %struct._object* @PyLong_FromString(i8*, i8**, i32) #1

declare i64 @PyOS_strtol(i8*, i8**, i32) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyComplex_FromCComplex(double, double) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_itercomp(%struct.compiling* %c, %struct._node* %n, i32 %type) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %elt = alloca %struct._expr*, align 8
  %comps = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %elt, align 8
  %3 = load %struct._expr*, %struct._expr** %elt, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %6, i64 1
  %call3 = call %struct.asdl_seq* @ast_for_comprehension(%struct.compiling* %4, %struct._node* %arrayidx2)
  store %struct.asdl_seq* %call3, %struct.asdl_seq** %comps, align 8
  %7 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %tobool4 = icmp ne %struct.asdl_seq* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %9 = load %struct._expr*, %struct._expr** %elt, align 8
  %10 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 2
  %12 = load i32, i32* %n_lineno, align 4
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 3
  %14 = load i32, i32* %n_col_offset, align 4
  %15 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %15, i32 0, i32 1
  %16 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call8 = call %struct._expr* @_Py_GeneratorExp(%struct._expr* %9, %struct.asdl_seq* %10, i32 %12, i32 %14, %struct._arena* %16)
  store %struct._expr* %call8, %struct._expr** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %17 = load i32, i32* %type.addr, align 4
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else
  %18 = load %struct._expr*, %struct._expr** %elt, align 8
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno11 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 2
  %21 = load i32, i32* %n_lineno11, align 4
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset12 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 3
  %23 = load i32, i32* %n_col_offset12, align 4
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena13 = getelementptr inbounds %struct.compiling, %struct.compiling* %24, i32 0, i32 1
  %25 = load %struct._arena*, %struct._arena** %c_arena13, align 8
  %call14 = call %struct._expr* @_Py_ListComp(%struct._expr* %18, %struct.asdl_seq* %19, i32 %21, i32 %23, %struct._arena* %25)
  store %struct._expr* %call14, %struct._expr** %retval
  br label %return

if.else.15:                                       ; preds = %if.else
  %26 = load i32, i32* %type.addr, align 4
  %cmp16 = icmp eq i32 %26, 2
  br i1 %cmp16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.else.15
  %27 = load %struct._expr*, %struct._expr** %elt, align 8
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno18 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 2
  %30 = load i32, i32* %n_lineno18, align 4
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset19 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 3
  %32 = load i32, i32* %n_col_offset19, align 4
  %33 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena20 = getelementptr inbounds %struct.compiling, %struct.compiling* %33, i32 0, i32 1
  %34 = load %struct._arena*, %struct._arena** %c_arena20, align 8
  %call21 = call %struct._expr* @_Py_SetComp(%struct._expr* %27, %struct.asdl_seq* %28, i32 %30, i32 %32, %struct._arena* %34)
  store %struct._expr* %call21, %struct._expr** %retval
  br label %return

if.else.22:                                       ; preds = %if.else.15
  store %struct._expr* null, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.then.17, %if.then.10, %if.then.7, %if.then.5, %if.then
  %35 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %35
}

; Function Attrs: nounwind uwtable
define internal %struct.asdl_seq* @ast_for_comprehension(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %n_fors = alloca i32, align 4
  %comps = alloca %struct.asdl_seq*, align 8
  %comp = alloca %struct._comprehension*, align 8
  %t = alloca %struct.asdl_seq*, align 8
  %expression = alloca %struct._expr*, align 8
  %first = alloca %struct._expr*, align 8
  %for_ch = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %n_ifs = alloca i32, align 4
  %ifs = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @count_comp_fors(%struct.compiling* %0, %struct._node* %1)
  store i32 %call, i32* %n_fors, align 4
  %2 = load i32, i32* %n_fors, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n_fors, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %4, i32 0, i32 1
  %5 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call1 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %5)
  store %struct.asdl_seq* %call1, %struct.asdl_seq** %comps, align 8
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %tobool = icmp ne %struct.asdl_seq* %6, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_fors, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 1
  store %struct._node* %arrayidx, %struct._node** %for_ch, align 8
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %12 = load %struct._node*, %struct._node** %for_ch, align 8
  %call6 = call %struct.asdl_seq* @ast_for_exprlist(%struct.compiling* %11, %struct._node* %12, i32 2)
  store %struct.asdl_seq* %call6, %struct.asdl_seq** %t, align 8
  %13 = load %struct.asdl_seq*, %struct.asdl_seq** %t, align 8
  %tobool7 = icmp ne %struct.asdl_seq* %13, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %16, i64 3
  %call12 = call %struct._expr* @ast_for_expr(%struct.compiling* %14, %struct._node* %arrayidx11)
  store %struct._expr* %call12, %struct._expr** %expression, align 8
  %17 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool13 = icmp ne %struct._expr* %17, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.9
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %18 = load %struct.asdl_seq*, %struct.asdl_seq** %t, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %18, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 0
  %19 = load i8*, i8** %arrayidx16, align 8
  %20 = bitcast i8* %19 to %struct._expr*
  store %struct._expr* %20, %struct._expr** %first, align 8
  %21 = load %struct._node*, %struct._node** %for_ch, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren, align 4
  %cmp17 = icmp eq i32 %22, 1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.15
  %23 = load %struct._expr*, %struct._expr** %first, align 8
  %24 = load %struct._expr*, %struct._expr** %expression, align 8
  %25 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena20 = getelementptr inbounds %struct.compiling, %struct.compiling* %25, i32 0, i32 1
  %26 = load %struct._arena*, %struct._arena** %c_arena20, align 8
  %call21 = call %struct._comprehension* @_Py_comprehension(%struct._expr* %23, %struct._expr* %24, %struct.asdl_seq* null, %struct._arena* %26)
  store %struct._comprehension* %call21, %struct._comprehension** %comp, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.15
  %27 = load %struct.asdl_seq*, %struct.asdl_seq** %t, align 8
  %28 = load %struct._expr*, %struct._expr** %first, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %28, i32 0, i32 2
  %29 = load i32, i32* %lineno, align 4
  %30 = load %struct._expr*, %struct._expr** %first, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %30, i32 0, i32 3
  %31 = load i32, i32* %col_offset, align 4
  %32 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena22 = getelementptr inbounds %struct.compiling, %struct.compiling* %32, i32 0, i32 1
  %33 = load %struct._arena*, %struct._arena** %c_arena22, align 8
  %call23 = call %struct._expr* @_Py_Tuple(%struct.asdl_seq* %27, i32 2, i32 %29, i32 %31, %struct._arena* %33)
  %34 = load %struct._expr*, %struct._expr** %expression, align 8
  %35 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena24 = getelementptr inbounds %struct.compiling, %struct.compiling* %35, i32 0, i32 1
  %36 = load %struct._arena*, %struct._arena** %c_arena24, align 8
  %call25 = call %struct._comprehension* @_Py_comprehension(%struct._expr* %call23, %struct._expr* %34, %struct.asdl_seq* null, %struct._arena* %36)
  store %struct._comprehension* %call25, %struct._comprehension** %comp, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.19
  %37 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %tobool27 = icmp ne %struct._comprehension* %37, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren30 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 4
  %39 = load i32, i32* %n_nchildren30, align 4
  %cmp31 = icmp eq i32 %39, 5
  br i1 %cmp31, label %if.then.33, label %if.end.76

if.then.33:                                       ; preds = %if.end.29
  %40 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 5
  %41 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %41, i64 4
  store %struct._node* %arrayidx35, %struct._node** %n.addr, align 8
  %42 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %43 = load %struct._node*, %struct._node** %n.addr, align 8
  %call36 = call i32 @count_comp_ifs(%struct.compiling* %42, %struct._node* %43)
  store i32 %call36, i32* %n_ifs, align 4
  %44 = load i32, i32* %n_ifs, align 4
  %cmp37 = icmp eq i32 %44, -1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.33
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.33
  %45 = load i32, i32* %n_ifs, align 4
  %conv41 = sext i32 %45 to i64
  %46 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena42 = getelementptr inbounds %struct.compiling, %struct.compiling* %46, i32 0, i32 1
  %47 = load %struct._arena*, %struct._arena** %c_arena42, align 8
  %call43 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv41, %struct._arena* %47)
  store %struct.asdl_seq* %call43, %struct.asdl_seq** %ifs, align 8
  %48 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  %tobool44 = icmp ne %struct.asdl_seq* %48, null
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.40
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.40
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.end.46
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %n_ifs, align 4
  %cmp48 = icmp slt i32 %49, %50
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %51 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child51 = getelementptr inbounds %struct._node, %struct._node* %51, i32 0, i32 5
  %52 = load %struct._node*, %struct._node** %n_child51, align 8
  %arrayidx52 = getelementptr %struct._node, %struct._node* %52, i64 0
  store %struct._node* %arrayidx52, %struct._node** %n.addr, align 8
  %53 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %54 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child53 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 5
  %55 = load %struct._node*, %struct._node** %n_child53, align 8
  %arrayidx54 = getelementptr %struct._node, %struct._node* %55, i64 1
  %call55 = call %struct._expr* @ast_for_expr(%struct.compiling* %53, %struct._node* %arrayidx54)
  store %struct._expr* %call55, %struct._expr** %expression, align 8
  %56 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool56 = icmp ne %struct._expr* %56, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %for.body.50
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.58:                                        ; preds = %for.body.50
  %57 = load %struct._expr*, %struct._expr** %expression, align 8
  %58 = bitcast %struct._expr* %57 to i8*
  %59 = load i32, i32* %j, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  %elements59 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %60, i32 0, i32 1
  %arrayidx60 = getelementptr [1 x i8*], [1 x i8*]* %elements59, i32 0, i64 %idxprom
  store i8* %58, i8** %arrayidx60, align 8
  %61 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren61 = getelementptr inbounds %struct._node, %struct._node* %61, i32 0, i32 4
  %62 = load i32, i32* %n_nchildren61, align 4
  %cmp62 = icmp eq i32 %62, 3
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.58
  %63 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child65 = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 5
  %64 = load %struct._node*, %struct._node** %n_child65, align 8
  %arrayidx66 = getelementptr %struct._node, %struct._node* %64, i64 2
  store %struct._node* %arrayidx66, %struct._node** %n.addr, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %65 = load i32, i32* %j, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  %66 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %66, i32 0, i32 0
  %67 = load i16, i16* %n_type, align 2
  %conv68 = sext i16 %67 to i32
  %cmp69 = icmp eq i32 %conv68, 332
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %for.end
  %68 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child72 = getelementptr inbounds %struct._node, %struct._node* %68, i32 0, i32 5
  %69 = load %struct._node*, %struct._node** %n_child72, align 8
  %arrayidx73 = getelementptr %struct._node, %struct._node* %69, i64 0
  store %struct._node* %arrayidx73, %struct._node** %n.addr, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %for.end
  %70 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  %71 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %ifs75 = getelementptr inbounds %struct._comprehension, %struct._comprehension* %71, i32 0, i32 2
  store %struct.asdl_seq* %70, %struct.asdl_seq** %ifs75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.74, %if.end.29
  %72 = load %struct._comprehension*, %struct._comprehension** %comp, align 8
  %73 = bitcast %struct._comprehension* %72 to i8*
  %74 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %74 to i64
  %75 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  %elements78 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %75, i32 0, i32 1
  %arrayidx79 = getelementptr [1 x i8*], [1 x i8*]* %elements78, i32 0, i64 %idxprom77
  store i8* %73, i8** %arrayidx79, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.76
  %76 = load i32, i32* %i, align 4
  %inc81 = add i32 %76, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %77 = load %struct.asdl_seq*, %struct.asdl_seq** %comps, align 8
  store %struct.asdl_seq* %77, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %for.end.82, %if.then.57, %if.then.45, %if.then.39, %if.then.28, %if.then.14, %if.then.8, %if.then.2, %if.then
  %78 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %78
}

declare %struct._expr* @_Py_GeneratorExp(%struct._expr*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_ListComp(%struct._expr*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_SetComp(%struct._expr*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @count_comp_fors(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %n_fors = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 0, i32* %n_fors, align 4
  br label %count_comp_for

count_comp_for:                                   ; preds = %if.then.5, %entry
  %0 = load i32, i32* %n_fors, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %n_fors, align 4
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4
  %2 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %count_comp_for
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 4
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %count_comp_for
  %5 = load i32, i32* %n_fors, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %count_comp_iter

count_comp_iter:                                  ; preds = %if.then.15, %if.end
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %7, i64 0
  store %struct._node* %arrayidx2, %struct._node** %n.addr, align 8
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 0
  %9 = load i16, i16* %n_type, align 2
  %conv = sext i16 %9 to i32
  %cmp3 = icmp eq i32 %conv, 333
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %count_comp_iter
  br label %count_comp_for

if.else.6:                                        ; preds = %count_comp_iter
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type7 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 0
  %11 = load i16, i16* %n_type7, align 2
  %conv8 = sext i16 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 334
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.else.6
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren12 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 4
  %13 = load i32, i32* %n_nchildren12, align 4
  %cmp13 = icmp eq i32 %13, 3
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.11
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %15, i64 2
  store %struct._node* %arrayidx17, %struct._node** %n.addr, align 8
  br label %count_comp_iter

if.else.18:                                       ; preds = %if.then.11
  %16 = load i32, i32* %n_fors, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.else.6
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %17 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.88, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.18, %if.else
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.asdl_seq* @ast_for_exprlist(%struct.compiling* %c, %struct._node* %n, i32 %context) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %context.addr = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %context, i32* %context.addr, align 4
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %add = add i32 %1, 1
  %div = sdiv i32 %add, 2
  %conv = sext i32 %div to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %seq, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %11, i64 %idxprom
  %call3 = call %struct._expr* @ast_for_expr(%struct.compiling* %8, %struct._node* %arrayidx)
  store %struct._expr* %call3, %struct._expr** %e, align 8
  %12 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool4 = icmp ne %struct._expr* %12, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %13 = load %struct._expr*, %struct._expr** %e, align 8
  %14 = bitcast %struct._expr* %13 to i8*
  %15 = load i32, i32* %i, align 4
  %div7 = sdiv i32 %15, 2
  %idxprom8 = sext i32 %div7 to i64
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %16, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom8
  store i8* %14, i8** %arrayidx9, align 8
  %17 = load i32, i32* %context.addr, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.6
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %19 = load %struct._expr*, %struct._expr** %e, align 8
  %20 = load i32, i32* %context.addr, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %23, i64 %idxprom11
  %call14 = call i32 @set_context(%struct.compiling* %18, %struct._expr* %19, i32 %20, %struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %24 = load i32, i32* %i, align 4
  %add18 = add i32 %24, 2
  store i32 %add18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  store %struct.asdl_seq* %25, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.5, %if.then
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %26
}

declare %struct._comprehension* @_Py_comprehension(%struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @count_comp_ifs(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %n_ifs = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 0, i32* %n_ifs, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.7
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %2 = load i16, i16* %n_type, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 333
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %n_ifs, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %5, i64 0
  store %struct._node* %arrayidx3, %struct._node** %n.addr, align 8
  %6 = load i32, i32* %n_ifs, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %n_ifs, align 4
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 4
  %8 = load i32, i32* %n_nchildren, align 4
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %n_ifs, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %11, i64 2
  store %struct._node* %arrayidx9, %struct._node** %n.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @set_context(%struct.compiling* %c, %struct._expr* %e, i32 %ctx, %struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %e.addr = alloca %struct._expr*, align 8
  %ctx.addr = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  %s = alloca %struct.asdl_seq*, align 8
  %expr_name = alloca i8*, align 8
  %buf = alloca [300 x i8], align 16
  %i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  store i32 %ctx, i32* %ctx.addr, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %s, align 8
  store i8* null, i8** %expr_name, align 8
  %0 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 21, label %sw.bb
    i32 22, label %sw.bb.4
    i32 23, label %sw.bb.7
    i32 24, label %sw.bb.16
    i32 25, label %sw.bb.28
    i32 26, label %sw.bb.33
    i32 4, label %sw.bb.49
    i32 15, label %sw.bb.50
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.51
    i32 11, label %sw.bb.52
    i32 12, label %sw.bb.53
    i32 13, label %sw.bb.53
    i32 8, label %sw.bb.54
    i32 9, label %sw.bb.55
    i32 10, label %sw.bb.56
    i32 6, label %sw.bb.57
    i32 7, label %sw.bb.57
    i32 16, label %sw.bb.57
    i32 17, label %sw.bb.57
    i32 18, label %sw.bb.57
    i32 19, label %sw.bb.58
    i32 20, label %sw.bb.59
    i32 14, label %sw.bb.60
    i32 5, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %ctx.addr, align 4
  %3 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %3, i32 0, i32 1
  %Attribute = bitcast %union.anon.2* %v to %struct.anon.22*
  %ctx1 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %Attribute, i32 0, i32 2
  store i32 %2, i32* %ctx1, align 4
  %4 = load i32, i32* %ctx.addr, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %6 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v2 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %Attribute3 = bitcast %union.anon.2* %v2 to %struct.anon.22*
  %attr = getelementptr inbounds %struct.anon.22, %struct.anon.22* %Attribute3, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %attr, align 8
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @forbidden_name(%struct.compiling* %5, %struct._object* %7, %struct._node* %8, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load i32, i32* %ctx.addr, align 4
  %10 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v5 = getelementptr inbounds %struct._expr, %struct._expr* %10, i32 0, i32 1
  %Subscript = bitcast %union.anon.2* %v5 to %struct.anon.23*
  %ctx6 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript, i32 0, i32 2
  store i32 %9, i32* %ctx6, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load i32, i32* %ctx.addr, align 4
  %12 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v8 = getelementptr inbounds %struct._expr, %struct._expr* %12, i32 0, i32 1
  %Starred = bitcast %union.anon.2* %v8 to %struct.anon.28*
  %ctx9 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %Starred, i32 0, i32 1
  store i32 %11, i32* %ctx9, align 4
  %13 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %14 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v10 = getelementptr inbounds %struct._expr, %struct._expr* %14, i32 0, i32 1
  %Starred11 = bitcast %union.anon.2* %v10 to %struct.anon.28*
  %value = getelementptr inbounds %struct.anon.28, %struct.anon.28* %Starred11, i32 0, i32 0
  %15 = load %struct._expr*, %struct._expr** %value, align 8
  %16 = load i32, i32* %ctx.addr, align 4
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %call12 = call i32 @set_context(%struct.compiling* %13, %struct._expr* %15, i32 %16, %struct._node* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.7
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %18 = load i32, i32* %ctx.addr, align 4
  %cmp17 = icmp eq i32 %18, 2
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %sw.bb.16
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %20 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v19 = getelementptr inbounds %struct._expr, %struct._expr* %20, i32 0, i32 1
  %Name = bitcast %union.anon.2* %v19 to %struct.anon.29*
  %id = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name, i32 0, i32 0
  %21 = load %struct._object*, %struct._object** %id, align 8
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %call20 = call i32 @forbidden_name(%struct.compiling* %19, %struct._object* %21, %struct._node* %22, i32 0)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %sw.bb.16
  %23 = load i32, i32* %ctx.addr, align 4
  %24 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v25 = getelementptr inbounds %struct._expr, %struct._expr* %24, i32 0, i32 1
  %Name26 = bitcast %union.anon.2* %v25 to %struct.anon.29*
  %ctx27 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name26, i32 0, i32 1
  store i32 %23, i32* %ctx27, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %25 = load i32, i32* %ctx.addr, align 4
  %26 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v29 = getelementptr inbounds %struct._expr, %struct._expr* %26, i32 0, i32 1
  %List = bitcast %union.anon.2* %v29 to %struct.anon.30*
  %ctx30 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %List, i32 0, i32 1
  store i32 %25, i32* %ctx30, align 4
  %27 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v31 = getelementptr inbounds %struct._expr, %struct._expr* %27, i32 0, i32 1
  %List32 = bitcast %union.anon.2* %v31 to %struct.anon.30*
  %elts = getelementptr inbounds %struct.anon.30, %struct.anon.30* %List32, i32 0, i32 0
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  store %struct.asdl_seq* %28, %struct.asdl_seq** %s, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %29 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v34 = getelementptr inbounds %struct._expr, %struct._expr* %29, i32 0, i32 1
  %Tuple = bitcast %union.anon.2* %v34 to %struct.anon.31*
  %elts35 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple, i32 0, i32 0
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %elts35, align 8
  %cmp36 = icmp eq %struct.asdl_seq* %30, null
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.33
  br i1 false, label %if.then.41, label %if.else

cond.false:                                       ; preds = %sw.bb.33
  %31 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v37 = getelementptr inbounds %struct._expr, %struct._expr* %31, i32 0, i32 1
  %Tuple38 = bitcast %union.anon.2* %v37 to %struct.anon.31*
  %elts39 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple38, i32 0, i32 0
  %32 = load %struct.asdl_seq*, %struct.asdl_seq** %elts39, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %32, i32 0, i32 0
  %33 = load i64, i64* %size, align 8
  %tobool40 = icmp ne i64 %33, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %cond.false, %cond.true
  %34 = load i32, i32* %ctx.addr, align 4
  %35 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v42 = getelementptr inbounds %struct._expr, %struct._expr* %35, i32 0, i32 1
  %Tuple43 = bitcast %union.anon.2* %v42 to %struct.anon.31*
  %ctx44 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple43, i32 0, i32 1
  store i32 %34, i32* %ctx44, align 4
  %36 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v45 = getelementptr inbounds %struct._expr, %struct._expr* %36, i32 0, i32 1
  %Tuple46 = bitcast %union.anon.2* %v45 to %struct.anon.31*
  %elts47 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple46, i32 0, i32 0
  %37 = load %struct.asdl_seq*, %struct.asdl_seq** %elts47, align 8
  store %struct.asdl_seq* %37, %struct.asdl_seq** %s, align 8
  br label %if.end.48

if.else:                                          ; preds = %cond.false, %cond.true
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8** %expr_name, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.41
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry, %entry, %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry, %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.59:                                         ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0), i8** %expr_name, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %39 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %kind62 = getelementptr inbounds %struct._expr, %struct._expr* %39, i32 0, i32 0
  %40 = load i32, i32* %kind62, align 4
  %41 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %41, i32 0, i32 2
  %42 = load i32, i32* %lineno, align 4
  %call63 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.103, i32 0, i32 0), i32 %40, i32 %42)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb.56, %sw.bb.55, %sw.bb.54, %sw.bb.53, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49, %if.end.48, %sw.bb.28, %if.end.24, %if.end.15, %sw.bb.4, %if.end
  %43 = load i8*, i8** %expr_name, align 8
  %tobool64 = icmp ne i8* %43, null
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %sw.epilog
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %buf, i32 0, i32 0
  %44 = load i32, i32* %ctx.addr, align 4
  %cmp66 = icmp eq i32 %44, 2
  %cond = select i1 %cmp66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0)
  %45 = load i8*, i8** %expr_name, align 8
  %call67 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 300, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* %cond, i8* %45)
  %46 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %47 = load %struct._node*, %struct._node** %n.addr, align 8
  %arraydecay68 = getelementptr inbounds [300 x i8], [300 x i8]* %buf, i32 0, i32 0
  %call69 = call i32 @ast_error(%struct.compiling* %46, %struct._node* %47, i8* %arraydecay68)
  store i32 %call69, i32* %retval
  br label %return

if.end.70:                                        ; preds = %sw.epilog
  %48 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool71 = icmp ne %struct.asdl_seq* %48, null
  br i1 %tobool71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %if.end.70
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %49 = load i32, i32* %i, align 4
  %conv = sext i32 %49 to i64
  %50 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %cmp73 = icmp eq %struct.asdl_seq* %50, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %for.cond
  br label %cond.end

cond.false.76:                                    ; preds = %for.cond
  %51 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %size77 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %51, i32 0, i32 0
  %52 = load i64, i64* %size77, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i64 [ 0, %cond.true.75 ], [ %52, %cond.false.76 ]
  %cmp79 = icmp slt i64 %conv, %cond78
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %53 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %55, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %56 = load i8*, i8** %arrayidx, align 8
  %57 = bitcast i8* %56 to %struct._expr*
  %58 = load i32, i32* %ctx.addr, align 4
  %59 = load %struct._node*, %struct._node** %n.addr, align 8
  %call81 = call i32 @set_context(%struct.compiling* %53, %struct._expr* %57, i32 %58, %struct._node* %59)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %60 = load i32, i32* %i, align 4
  %inc = add i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %if.end.85

if.end.85:                                        ; preds = %for.end, %if.end.70
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.83, %if.then.65, %sw.default, %if.then.22, %if.then.14, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare %struct._expr* @_Py_DictComp(%struct._expr*, %struct._expr*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._expr* @_Py_Call(%struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_call(%struct.compiling* %c, %struct._node* %n, %struct._expr* %func) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %func.addr = alloca %struct._expr*, align 8
  %i = alloca i32, align 4
  %nargs = alloca i32, align 4
  %nkeywords = alloca i32, align 4
  %ngens = alloca i32, align 4
  %args = alloca %struct.asdl_seq*, align 8
  %keywords = alloca %struct.asdl_seq*, align 8
  %vararg = alloca %struct._expr*, align 8
  %kwarg = alloca %struct._expr*, align 8
  %ch = alloca %struct._node*, align 8
  %ch50 = alloca %struct._node*, align 8
  %e = alloca %struct._expr*, align 8
  %kw = alloca %struct._keyword*, align 8
  %key = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %k = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* %func, %struct._expr** %func.addr, align 8
  store %struct._expr* null, %struct._expr** %vararg, align 8
  store %struct._expr* null, %struct._expr** %kwarg, align 8
  store i32 0, i32* %nargs, align 4
  store i32 0, i32* %nkeywords, align 4
  store i32 0, i32* %ngens, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4
  %2 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %6 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  %cmp1 = icmp eq i32 %conv, 331
  br i1 %cmp1, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  %8 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 4
  %9 = load i32, i32* %n_nchildren3, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load i32, i32* %nargs, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %nargs, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %11 = load %struct._node*, %struct._node** %ch, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %12, i64 1
  %n_type9 = getelementptr inbounds %struct._node, %struct._node* %arrayidx8, i32 0, i32 0
  %13 = load i16, i16* %n_type9, align 2
  %conv10 = sext i16 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 333
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %14 = load i32, i32* %ngens, align 4
  %inc14 = add i32 %14, 1
  store i32 %inc14, i32* %ngens, align 4
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %15 = load i32, i32* %nkeywords, align 4
  %inc16 = add i32 %15, 1
  store i32 %inc16, i32* %nkeywords, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.6
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %16 = load i32, i32* %i, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %ngens, align 4
  %cmp20 = icmp sgt i32 %17, 1
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %18 = load i32, i32* %ngens, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i32, i32* %nargs, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %nkeywords, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.23, %land.lhs.true, %for.end
  %21 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @ast_error(%struct.compiling* %21, %struct._node* %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.107, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.23, %lor.lhs.false
  %23 = load i32, i32* %nargs, align 4
  %24 = load i32, i32* %nkeywords, align 4
  %add = add i32 %23, %24
  %25 = load i32, i32* %ngens, align 4
  %add27 = add i32 %add, %25
  %cmp28 = icmp sgt i32 %add27, 255
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.26
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %call31 = call i32 @ast_error(%struct.compiling* %26, %struct._node* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %28 = load i32, i32* %nargs, align 4
  %29 = load i32, i32* %ngens, align 4
  %add33 = add i32 %28, %29
  %conv34 = sext i32 %add33 to i64
  %30 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %30, i32 0, i32 1
  %31 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call35 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv34, %struct._arena* %31)
  store %struct.asdl_seq* %call35, %struct.asdl_seq** %args, align 8
  %32 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %tobool36 = icmp ne %struct.asdl_seq* %32, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.32
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  %33 = load i32, i32* %nkeywords, align 4
  %conv39 = sext i32 %33 to i64
  %34 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena40 = getelementptr inbounds %struct.compiling, %struct.compiling* %34, i32 0, i32 1
  %35 = load %struct._arena*, %struct._arena** %c_arena40, align 8
  %call41 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv39, %struct._arena* %35)
  store %struct.asdl_seq* %call41, %struct.asdl_seq** %keywords, align 8
  %36 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %tobool42 = icmp ne %struct.asdl_seq* %36, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.38
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.38
  store i32 0, i32* %nargs, align 4
  store i32 0, i32* %nkeywords, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.199, %if.end.44
  %37 = load i32, i32* %i, align 4
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren46 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 4
  %39 = load i32, i32* %n_nchildren46, align 4
  %cmp47 = icmp slt i32 %37, %39
  br i1 %cmp47, label %for.body.49, label %for.end.201

for.body.49:                                      ; preds = %for.cond.45
  %40 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child52 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child52, align 8
  %arrayidx53 = getelementptr %struct._node, %struct._node* %42, i64 %idxprom51
  store %struct._node* %arrayidx53, %struct._node** %ch50, align 8
  %43 = load %struct._node*, %struct._node** %ch50, align 8
  %n_type54 = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 0
  %44 = load i16, i16* %n_type54, align 2
  %conv55 = sext i16 %44 to i32
  %cmp56 = icmp eq i32 %conv55, 331
  br i1 %cmp56, label %if.then.58, label %if.else.166

if.then.58:                                       ; preds = %for.body.49
  %45 = load %struct._node*, %struct._node** %ch50, align 8
  %n_nchildren59 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 4
  %46 = load i32, i32* %n_nchildren59, align 4
  %cmp60 = icmp eq i32 %46, 1
  br i1 %cmp60, label %if.then.62, label %if.else.84

if.then.62:                                       ; preds = %if.then.58
  %47 = load i32, i32* %nkeywords, align 4
  %tobool63 = icmp ne i32 %47, 0
  br i1 %tobool63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.then.62
  %48 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %49 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child65 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child65, align 8
  %arrayidx66 = getelementptr %struct._node, %struct._node* %50, i64 0
  %call67 = call i32 @ast_error(%struct.compiling* %48, %struct._node* %arrayidx66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.108, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  %51 = load %struct._expr*, %struct._expr** %vararg, align 8
  %tobool69 = icmp ne %struct._expr* %51, null
  br i1 %tobool69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.68
  %52 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %53 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child71 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 5
  %54 = load %struct._node*, %struct._node** %n_child71, align 8
  %arrayidx72 = getelementptr %struct._node, %struct._node* %54, i64 0
  %call73 = call i32 @ast_error(%struct.compiling* %52, %struct._node* %arrayidx72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.109, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.68
  %55 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %56 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child75 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 5
  %57 = load %struct._node*, %struct._node** %n_child75, align 8
  %arrayidx76 = getelementptr %struct._node, %struct._node* %57, i64 0
  %call77 = call %struct._expr* @ast_for_expr(%struct.compiling* %55, %struct._node* %arrayidx76)
  store %struct._expr* %call77, %struct._expr** %e, align 8
  %58 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool78 = icmp ne %struct._expr* %58, null
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.74
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.80:                                        ; preds = %if.end.74
  %59 = load %struct._expr*, %struct._expr** %e, align 8
  %60 = bitcast %struct._expr* %59 to i8*
  %61 = load i32, i32* %nargs, align 4
  %inc81 = add i32 %61, 1
  store i32 %inc81, i32* %nargs, align 4
  %idxprom82 = sext i32 %61 to i64
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %62, i32 0, i32 1
  %arrayidx83 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom82
  store i8* %60, i8** %arrayidx83, align 8
  br label %if.end.165

if.else.84:                                       ; preds = %if.then.58
  %63 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child85 = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 5
  %64 = load %struct._node*, %struct._node** %n_child85, align 8
  %arrayidx86 = getelementptr %struct._node, %struct._node* %64, i64 1
  %n_type87 = getelementptr inbounds %struct._node, %struct._node* %arrayidx86, i32 0, i32 0
  %65 = load i16, i16* %n_type87, align 2
  %conv88 = sext i16 %65 to i32
  %cmp89 = icmp eq i32 %conv88, 333
  br i1 %cmp89, label %if.then.91, label %if.else.100

if.then.91:                                       ; preds = %if.else.84
  %66 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %67 = load %struct._node*, %struct._node** %ch50, align 8
  %call92 = call %struct._expr* @ast_for_genexp(%struct.compiling* %66, %struct._node* %67)
  store %struct._expr* %call92, %struct._expr** %e, align 8
  %68 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool93 = icmp ne %struct._expr* %68, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.91
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.95:                                        ; preds = %if.then.91
  %69 = load %struct._expr*, %struct._expr** %e, align 8
  %70 = bitcast %struct._expr* %69 to i8*
  %71 = load i32, i32* %nargs, align 4
  %inc96 = add i32 %71, 1
  store i32 %inc96, i32* %nargs, align 4
  %idxprom97 = sext i32 %71 to i64
  %72 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %elements98 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %72, i32 0, i32 1
  %arrayidx99 = getelementptr [1 x i8*], [1 x i8*]* %elements98, i32 0, i64 %idxprom97
  store i8* %70, i8** %arrayidx99, align 8
  br label %if.end.164

if.else.100:                                      ; preds = %if.else.84
  %73 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %74 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child102 = getelementptr inbounds %struct._node, %struct._node* %74, i32 0, i32 5
  %75 = load %struct._node*, %struct._node** %n_child102, align 8
  %arrayidx103 = getelementptr %struct._node, %struct._node* %75, i64 0
  %call104 = call %struct._expr* @ast_for_expr(%struct.compiling* %73, %struct._node* %arrayidx103)
  store %struct._expr* %call104, %struct._expr** %e, align 8
  %76 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool105 = icmp ne %struct._expr* %76, null
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %if.else.100
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.107:                                       ; preds = %if.else.100
  %77 = load %struct._expr*, %struct._expr** %e, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %77, i32 0, i32 0
  %78 = load i32, i32* %kind, align 4
  %cmp108 = icmp eq i32 %78, 4
  br i1 %cmp108, label %if.then.110, label %if.else.114

if.then.110:                                      ; preds = %if.end.107
  %79 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %80 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child111 = getelementptr inbounds %struct._node, %struct._node* %80, i32 0, i32 5
  %81 = load %struct._node*, %struct._node** %n_child111, align 8
  %arrayidx112 = getelementptr %struct._node, %struct._node* %81, i64 0
  %call113 = call i32 @ast_error(%struct.compiling* %79, %struct._node* %arrayidx112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.110, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.else.114:                                      ; preds = %if.end.107
  %82 = load %struct._expr*, %struct._expr** %e, align 8
  %kind115 = getelementptr inbounds %struct._expr, %struct._expr* %82, i32 0, i32 0
  %83 = load i32, i32* %kind115, align 4
  %cmp116 = icmp ne i32 %83, 24
  br i1 %cmp116, label %if.then.118, label %if.else.122

if.then.118:                                      ; preds = %if.else.114
  %84 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %85 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child119 = getelementptr inbounds %struct._node, %struct._node* %85, i32 0, i32 5
  %86 = load %struct._node*, %struct._node** %n_child119, align 8
  %arrayidx120 = getelementptr %struct._node, %struct._node* %86, i64 0
  %call121 = call i32 @ast_error(%struct.compiling* %84, %struct._node* %arrayidx120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.111, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.else.122:                                      ; preds = %if.else.114
  %87 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %88 = load %struct._expr*, %struct._expr** %e, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %88, i32 0, i32 1
  %Name = bitcast %union.anon.2* %v to %struct.anon.29*
  %id = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name, i32 0, i32 0
  %89 = load %struct._object*, %struct._object** %id, align 8
  %90 = load %struct._node*, %struct._node** %ch50, align 8
  %call123 = call i32 @forbidden_name(%struct.compiling* %87, %struct._object* %89, %struct._node* %90, i32 1)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.else.122
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.126:                                       ; preds = %if.else.122
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  %91 = load %struct._expr*, %struct._expr** %e, align 8
  %v129 = getelementptr inbounds %struct._expr, %struct._expr* %91, i32 0, i32 1
  %Name130 = bitcast %union.anon.2* %v129 to %struct.anon.29*
  %id131 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name130, i32 0, i32 0
  %92 = load %struct._object*, %struct._object** %id131, align 8
  store %struct._object* %92, %struct._object** %key, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.146, %if.end.128
  %93 = load i32, i32* %k, align 4
  %94 = load i32, i32* %nkeywords, align 4
  %cmp133 = icmp slt i32 %93, %94
  br i1 %cmp133, label %for.body.135, label %for.end.148

for.body.135:                                     ; preds = %for.cond.132
  %95 = load i32, i32* %k, align 4
  %idxprom136 = sext i32 %95 to i64
  %96 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %elements137 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %96, i32 0, i32 1
  %arrayidx138 = getelementptr [1 x i8*], [1 x i8*]* %elements137, i32 0, i64 %idxprom136
  %97 = load i8*, i8** %arrayidx138, align 8
  %98 = bitcast i8* %97 to %struct._keyword*
  %arg = getelementptr inbounds %struct._keyword, %struct._keyword* %98, i32 0, i32 0
  %99 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %99, %struct._object** %tmp, align 8
  %100 = load %struct._object*, %struct._object** %tmp, align 8
  %101 = load %struct._object*, %struct._object** %key, align 8
  %call139 = call i32 @PyUnicode_Compare(%struct._object* %100, %struct._object* %101)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.end.145, label %if.then.141

if.then.141:                                      ; preds = %for.body.135
  %102 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %103 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child142 = getelementptr inbounds %struct._node, %struct._node* %103, i32 0, i32 5
  %104 = load %struct._node*, %struct._node** %n_child142, align 8
  %arrayidx143 = getelementptr %struct._node, %struct._node* %104, i64 0
  %call144 = call i32 @ast_error(%struct.compiling* %102, %struct._node* %arrayidx143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0))
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.145:                                       ; preds = %for.body.135
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %105 = load i32, i32* %k, align 4
  %inc147 = add i32 %105, 1
  store i32 %inc147, i32* %k, align 4
  br label %for.cond.132

for.end.148:                                      ; preds = %for.cond.132
  %106 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %107 = load %struct._node*, %struct._node** %ch50, align 8
  %n_child149 = getelementptr inbounds %struct._node, %struct._node* %107, i32 0, i32 5
  %108 = load %struct._node*, %struct._node** %n_child149, align 8
  %arrayidx150 = getelementptr %struct._node, %struct._node* %108, i64 2
  %call151 = call %struct._expr* @ast_for_expr(%struct.compiling* %106, %struct._node* %arrayidx150)
  store %struct._expr* %call151, %struct._expr** %e, align 8
  %109 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool152 = icmp ne %struct._expr* %109, null
  br i1 %tobool152, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %for.end.148
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.154:                                       ; preds = %for.end.148
  %110 = load %struct._object*, %struct._object** %key, align 8
  %111 = load %struct._expr*, %struct._expr** %e, align 8
  %112 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena155 = getelementptr inbounds %struct.compiling, %struct.compiling* %112, i32 0, i32 1
  %113 = load %struct._arena*, %struct._arena** %c_arena155, align 8
  %call156 = call %struct._keyword* @_Py_keyword(%struct._object* %110, %struct._expr* %111, %struct._arena* %113)
  store %struct._keyword* %call156, %struct._keyword** %kw, align 8
  %114 = load %struct._keyword*, %struct._keyword** %kw, align 8
  %tobool157 = icmp ne %struct._keyword* %114, null
  br i1 %tobool157, label %if.end.159, label %if.then.158

if.then.158:                                      ; preds = %if.end.154
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.154
  %115 = load %struct._keyword*, %struct._keyword** %kw, align 8
  %116 = bitcast %struct._keyword* %115 to i8*
  %117 = load i32, i32* %nkeywords, align 4
  %inc160 = add i32 %117, 1
  store i32 %inc160, i32* %nkeywords, align 4
  %idxprom161 = sext i32 %117 to i64
  %118 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %elements162 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %118, i32 0, i32 1
  %arrayidx163 = getelementptr [1 x i8*], [1 x i8*]* %elements162, i32 0, i64 %idxprom161
  store i8* %116, i8** %arrayidx163, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.159, %if.end.95
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.80
  br label %if.end.198

if.else.166:                                      ; preds = %for.body.49
  %119 = load %struct._node*, %struct._node** %ch50, align 8
  %n_type167 = getelementptr inbounds %struct._node, %struct._node* %119, i32 0, i32 0
  %120 = load i16, i16* %n_type167, align 2
  %conv168 = sext i16 %120 to i32
  %cmp169 = icmp eq i32 %conv168, 16
  br i1 %cmp169, label %if.then.171, label %if.else.181

if.then.171:                                      ; preds = %if.else.166
  %121 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %122 = load i32, i32* %i, align 4
  %add172 = add i32 %122, 1
  %idxprom173 = sext i32 %add172 to i64
  %123 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child174 = getelementptr inbounds %struct._node, %struct._node* %123, i32 0, i32 5
  %124 = load %struct._node*, %struct._node** %n_child174, align 8
  %arrayidx175 = getelementptr %struct._node, %struct._node* %124, i64 %idxprom173
  %call176 = call %struct._expr* @ast_for_expr(%struct.compiling* %121, %struct._node* %arrayidx175)
  store %struct._expr* %call176, %struct._expr** %vararg, align 8
  %125 = load %struct._expr*, %struct._expr** %vararg, align 8
  %tobool177 = icmp ne %struct._expr* %125, null
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %if.then.171
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.179:                                       ; preds = %if.then.171
  %126 = load i32, i32* %i, align 4
  %inc180 = add i32 %126, 1
  store i32 %inc180, i32* %i, align 4
  br label %if.end.197

if.else.181:                                      ; preds = %if.else.166
  %127 = load %struct._node*, %struct._node** %ch50, align 8
  %n_type182 = getelementptr inbounds %struct._node, %struct._node* %127, i32 0, i32 0
  %128 = load i16, i16* %n_type182, align 2
  %conv183 = sext i16 %128 to i32
  %cmp184 = icmp eq i32 %conv183, 35
  br i1 %cmp184, label %if.then.186, label %if.end.196

if.then.186:                                      ; preds = %if.else.181
  %129 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %130 = load i32, i32* %i, align 4
  %add187 = add i32 %130, 1
  %idxprom188 = sext i32 %add187 to i64
  %131 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child189 = getelementptr inbounds %struct._node, %struct._node* %131, i32 0, i32 5
  %132 = load %struct._node*, %struct._node** %n_child189, align 8
  %arrayidx190 = getelementptr %struct._node, %struct._node* %132, i64 %idxprom188
  %call191 = call %struct._expr* @ast_for_expr(%struct.compiling* %129, %struct._node* %arrayidx190)
  store %struct._expr* %call191, %struct._expr** %kwarg, align 8
  %133 = load %struct._expr*, %struct._expr** %kwarg, align 8
  %tobool192 = icmp ne %struct._expr* %133, null
  br i1 %tobool192, label %if.end.194, label %if.then.193

if.then.193:                                      ; preds = %if.then.186
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.194:                                       ; preds = %if.then.186
  %134 = load i32, i32* %i, align 4
  %inc195 = add i32 %134, 1
  store i32 %inc195, i32* %i, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.194, %if.else.181
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.179
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.165
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %135 = load i32, i32* %i, align 4
  %inc200 = add i32 %135, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.45

for.end.201:                                      ; preds = %for.cond.45
  %136 = load %struct._expr*, %struct._expr** %func.addr, align 8
  %137 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %138 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %139 = load %struct._expr*, %struct._expr** %vararg, align 8
  %140 = load %struct._expr*, %struct._expr** %kwarg, align 8
  %141 = load %struct._expr*, %struct._expr** %func.addr, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %141, i32 0, i32 2
  %142 = load i32, i32* %lineno, align 4
  %143 = load %struct._expr*, %struct._expr** %func.addr, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %143, i32 0, i32 3
  %144 = load i32, i32* %col_offset, align 4
  %145 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena202 = getelementptr inbounds %struct.compiling, %struct.compiling* %145, i32 0, i32 1
  %146 = load %struct._arena*, %struct._arena** %c_arena202, align 8
  %call203 = call %struct._expr* @_Py_Call(%struct._expr* %136, %struct.asdl_seq* %137, %struct.asdl_seq* %138, %struct._expr* %139, %struct._expr* %140, i32 %142, i32 %144, %struct._arena* %146)
  store %struct._expr* %call203, %struct._expr** %retval
  br label %return

return:                                           ; preds = %for.end.201, %if.then.193, %if.then.178, %if.then.158, %if.then.153, %if.then.141, %if.then.125, %if.then.118, %if.then.110, %if.then.106, %if.then.94, %if.then.79, %if.then.70, %if.then.64, %if.then.43, %if.then.37, %if.then.30, %if.then.25
  %147 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %147
}

declare %struct._expr* @_Py_Attribute(%struct._expr*, %struct._object*, i32, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._slice* @ast_for_slice(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._slice*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %ch = alloca %struct._node*, align 8
  %lower = alloca %struct._expr*, align 8
  %upper = alloca %struct._expr*, align 8
  %step = alloca %struct._expr*, align 8
  %n2 = alloca %struct._node*, align 8
  %n242 = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* null, %struct._expr** %lower, align 8
  store %struct._expr* null, %struct._expr** %upper, align 8
  store %struct._expr* null, %struct._expr** %step, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 4
  %3 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type, align 2
  %conv = sext i16 %5 to i32
  %cmp1 = icmp eq i32 %conv, 302
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._node*, %struct._node** %ch, align 8
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %6, %struct._node* %7)
  store %struct._expr* %call, %struct._expr** %step, align 8
  %8 = load %struct._expr*, %struct._expr** %step, align 8
  %tobool = icmp ne %struct._expr* %8, null
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store %struct._slice* null, %struct._slice** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._expr*, %struct._expr** %step, align 8
  %10 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %10, i32 0, i32 1
  %11 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call4 = call %struct._slice* @_Py_Index(%struct._expr* %9, %struct._arena* %11)
  store %struct._slice* %call4, %struct._slice** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  %12 = load %struct._node*, %struct._node** %ch, align 8
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 0
  %13 = load i16, i16* %n_type6, align 2
  %conv7 = sext i16 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 302
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.5
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %ch, align 8
  %call11 = call %struct._expr* @ast_for_expr(%struct.compiling* %14, %struct._node* %15)
  store %struct._expr* %call11, %struct._expr** %lower, align 8
  %16 = load %struct._expr*, %struct._expr** %lower, align 8
  %tobool12 = icmp ne %struct._expr* %16, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store %struct._slice* null, %struct._slice** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.5
  %17 = load %struct._node*, %struct._node** %ch, align 8
  %n_type16 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 0
  %18 = load i16, i16* %n_type16, align 2
  %conv17 = sext i16 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 11
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.15
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren21 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 4
  %20 = load i32, i32* %n_nchildren21, align 4
  %cmp22 = icmp sgt i32 %20, 1
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.then.20
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %22, i64 1
  store %struct._node* %arrayidx26, %struct._node** %n2, align 8
  %23 = load %struct._node*, %struct._node** %n2, align 8
  %n_type27 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 0
  %24 = load i16, i16* %n_type27, align 2
  %conv28 = sext i16 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 302
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.then.24
  %25 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %26 = load %struct._node*, %struct._node** %n2, align 8
  %call32 = call %struct._expr* @ast_for_expr(%struct.compiling* %25, %struct._node* %26)
  store %struct._expr* %call32, %struct._expr** %upper, align 8
  %27 = load %struct._expr*, %struct._expr** %upper, align 8
  %tobool33 = icmp ne %struct._expr* %27, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  store %struct._slice* null, %struct._slice** %retval
  br label %return

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.20
  br label %if.end.56

if.else:                                          ; preds = %if.end.15
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren38 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 4
  %29 = load i32, i32* %n_nchildren38, align 4
  %cmp39 = icmp sgt i32 %29, 2
  br i1 %cmp39, label %if.then.41, label %if.end.55

if.then.41:                                       ; preds = %if.else
  %30 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child43 = getelementptr inbounds %struct._node, %struct._node* %30, i32 0, i32 5
  %31 = load %struct._node*, %struct._node** %n_child43, align 8
  %arrayidx44 = getelementptr %struct._node, %struct._node* %31, i64 2
  store %struct._node* %arrayidx44, %struct._node** %n242, align 8
  %32 = load %struct._node*, %struct._node** %n242, align 8
  %n_type45 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 0
  %33 = load i16, i16* %n_type45, align 2
  %conv46 = sext i16 %33 to i32
  %cmp47 = icmp eq i32 %conv46, 302
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.then.41
  %34 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %35 = load %struct._node*, %struct._node** %n242, align 8
  %call50 = call %struct._expr* @ast_for_expr(%struct.compiling* %34, %struct._node* %35)
  store %struct._expr* %call50, %struct._expr** %upper, align 8
  %36 = load %struct._expr*, %struct._expr** %upper, align 8
  %tobool51 = icmp ne %struct._expr* %36, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.49
  store %struct._slice* null, %struct._slice** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.41
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.else
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.37
  %37 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren57 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 4
  %38 = load i32, i32* %n_nchildren57, align 4
  %sub = sub i32 %38, 1
  %idxprom = sext i32 %sub to i64
  %39 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child58 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child58, align 8
  %arrayidx59 = getelementptr %struct._node, %struct._node* %40, i64 %idxprom
  store %struct._node* %arrayidx59, %struct._node** %ch, align 8
  %41 = load %struct._node*, %struct._node** %ch, align 8
  %n_type60 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 0
  %42 = load i16, i16* %n_type60, align 2
  %conv61 = sext i16 %42 to i32
  %cmp62 = icmp eq i32 %conv61, 325
  br i1 %cmp62, label %if.then.64, label %if.end.82

if.then.64:                                       ; preds = %if.end.56
  %43 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren65 = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 4
  %44 = load i32, i32* %n_nchildren65, align 4
  %cmp66 = icmp ne i32 %44, 1
  br i1 %cmp66, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %if.then.64
  %45 = load %struct._node*, %struct._node** %ch, align 8
  %n_child69 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 5
  %46 = load %struct._node*, %struct._node** %n_child69, align 8
  %arrayidx70 = getelementptr %struct._node, %struct._node* %46, i64 1
  store %struct._node* %arrayidx70, %struct._node** %ch, align 8
  %47 = load %struct._node*, %struct._node** %ch, align 8
  %n_type71 = getelementptr inbounds %struct._node, %struct._node* %47, i32 0, i32 0
  %48 = load i16, i16* %n_type71, align 2
  %conv72 = sext i16 %48 to i32
  %cmp73 = icmp eq i32 %conv72, 302
  br i1 %cmp73, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.then.68
  %49 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %50 = load %struct._node*, %struct._node** %ch, align 8
  %call76 = call %struct._expr* @ast_for_expr(%struct.compiling* %49, %struct._node* %50)
  store %struct._expr* %call76, %struct._expr** %step, align 8
  %51 = load %struct._expr*, %struct._expr** %step, align 8
  %tobool77 = icmp ne %struct._expr* %51, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.then.75
  store %struct._slice* null, %struct._slice** %retval
  br label %return

if.end.79:                                        ; preds = %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.64
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.56
  %52 = load %struct._expr*, %struct._expr** %lower, align 8
  %53 = load %struct._expr*, %struct._expr** %upper, align 8
  %54 = load %struct._expr*, %struct._expr** %step, align 8
  %55 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena83 = getelementptr inbounds %struct.compiling, %struct.compiling* %55, i32 0, i32 1
  %56 = load %struct._arena*, %struct._arena** %c_arena83, align 8
  %call84 = call %struct._slice* @_Py_Slice(%struct._expr* %52, %struct._expr* %53, %struct._expr* %54, %struct._arena* %56)
  store %struct._slice* %call84, %struct._slice** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.78, %if.then.52, %if.then.34, %if.then.13, %if.end, %if.then.3
  %57 = load %struct._slice*, %struct._slice** %retval
  ret %struct._slice* %57
}

declare %struct._expr* @_Py_Subscript(%struct._expr*, %struct._slice*, i32, i32, i32, %struct._arena*) #1

declare %struct._slice* @_Py_ExtSlice(%struct.asdl_seq*, %struct._arena*) #1

declare %struct._slice* @_Py_Index(%struct._expr*, %struct._arena*) #1

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

declare %struct._keyword* @_Py_keyword(%struct._object*, %struct._expr*, %struct._arena*) #1

declare %struct._slice* @_Py_Slice(%struct._expr*, %struct._expr*, %struct._expr*, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_expr_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %e = alloca %struct._expr*, align 8
  %expr1 = alloca %struct._expr*, align 8
  %expr2 = alloca %struct._expr*, align 8
  %newoperator = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %targets = alloca %struct.asdl_seq*, align 8
  %value = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %e54 = alloca %struct._expr*, align 8
  %ch55 = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 0
  %call = call %struct._expr* @ast_for_testlist(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %e, align 8
  %5 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool = icmp ne %struct._expr* %5, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._expr*, %struct._expr** %e, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 2
  %8 = load i32, i32* %n_lineno, align 4
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 3
  %10 = load i32, i32* %n_col_offset, align 4
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %11, i32 0, i32 1
  %12 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call2 = call %struct._stmt* @_Py_Expr(%struct._expr* %6, i32 %8, i32 %10, %struct._arena* %12)
  store %struct._stmt* %call2, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %entry
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %14, i64 1
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx4, i32 0, i32 0
  %15 = load i16, i16* %n_type, align 2
  %conv = sext i16 %15 to i32
  %cmp5 = icmp eq i32 %conv, 273
  br i1 %cmp5, label %if.then.7, label %if.else.43

if.then.7:                                        ; preds = %if.else
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %17, i64 0
  store %struct._node* %arrayidx9, %struct._node** %ch, align 8
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %19 = load %struct._node*, %struct._node** %ch, align 8
  %call10 = call %struct._expr* @ast_for_testlist(%struct.compiling* %18, %struct._node* %19)
  store %struct._expr* %call10, %struct._expr** %expr1, align 8
  %20 = load %struct._expr*, %struct._expr** %expr1, align 8
  %tobool11 = icmp ne %struct._expr* %20, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  %21 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %22 = load %struct._expr*, %struct._expr** %expr1, align 8
  %23 = load %struct._node*, %struct._node** %ch, align 8
  %call14 = call i32 @set_context(%struct.compiling* %21, %struct._expr* %22, i32 2, %struct._node* %23)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %24 = load %struct._expr*, %struct._expr** %expr1, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %24, i32 0, i32 0
  %25 = load i32, i32* %kind, align 4
  switch i32 %25, label %sw.default [
    i32 24, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.17, %if.end.17, %if.end.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load %struct._node*, %struct._node** %ch, align 8
  %call18 = call i32 @ast_error(%struct.compiling* %26, %struct._node* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.114, i32 0, i32 0))
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %29, i64 2
  store %struct._node* %arrayidx20, %struct._node** %ch, align 8
  %30 = load %struct._node*, %struct._node** %ch, align 8
  %n_type21 = getelementptr inbounds %struct._node, %struct._node* %30, i32 0, i32 0
  %31 = load i16, i16* %n_type21, align 2
  %conv22 = sext i16 %31 to i32
  %cmp23 = icmp eq i32 %conv22, 327
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %sw.epilog
  %32 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %33 = load %struct._node*, %struct._node** %ch, align 8
  %call26 = call %struct._expr* @ast_for_testlist(%struct.compiling* %32, %struct._node* %33)
  store %struct._expr* %call26, %struct._expr** %expr2, align 8
  br label %if.end.29

if.else.27:                                       ; preds = %sw.epilog
  %34 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %35 = load %struct._node*, %struct._node** %ch, align 8
  %call28 = call %struct._expr* @ast_for_expr(%struct.compiling* %34, %struct._node* %35)
  store %struct._expr* %call28, %struct._expr** %expr2, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.25
  %36 = load %struct._expr*, %struct._expr** %expr2, align 8
  %tobool30 = icmp ne %struct._expr* %36, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %37 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 5
  %39 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %39, i64 1
  %call35 = call i32 @ast_for_augassign(%struct.compiling* %37, %struct._node* %arrayidx34)
  store i32 %call35, i32* %newoperator, align 4
  %40 = load i32, i32* %newoperator, align 4
  %tobool36 = icmp ne i32 %40, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.32
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  %41 = load %struct._expr*, %struct._expr** %expr1, align 8
  %42 = load i32, i32* %newoperator, align 4
  %43 = load %struct._expr*, %struct._expr** %expr2, align 8
  %44 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno39 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 2
  %45 = load i32, i32* %n_lineno39, align 4
  %46 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset40 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 3
  %47 = load i32, i32* %n_col_offset40, align 4
  %48 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena41 = getelementptr inbounds %struct.compiling, %struct.compiling* %48, i32 0, i32 1
  %49 = load %struct._arena*, %struct._arena** %c_arena41, align 8
  %call42 = call %struct._stmt* @_Py_AugAssign(%struct._expr* %41, i32 %42, %struct._expr* %43, i32 %45, i32 %47, %struct._arena* %49)
  store %struct._stmt* %call42, %struct._stmt** %retval
  br label %return

if.else.43:                                       ; preds = %if.else
  %50 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren44 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 4
  %51 = load i32, i32* %n_nchildren44, align 4
  %div = sdiv i32 %51, 2
  %conv45 = sext i32 %div to i64
  %52 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena46 = getelementptr inbounds %struct.compiling, %struct.compiling* %52, i32 0, i32 1
  %53 = load %struct._arena*, %struct._arena** %c_arena46, align 8
  %call47 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv45, %struct._arena* %53)
  store %struct.asdl_seq* %call47, %struct.asdl_seq** %targets, align 8
  %54 = load %struct.asdl_seq*, %struct.asdl_seq** %targets, align 8
  %tobool48 = icmp ne %struct.asdl_seq* %54, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.else.43
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.50:                                        ; preds = %if.else.43
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %55 = load i32, i32* %i, align 4
  %56 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren51 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 4
  %57 = load i32, i32* %n_nchildren51, align 4
  %sub = sub i32 %57, 2
  %cmp52 = icmp slt i32 %55, %sub
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child56 = getelementptr inbounds %struct._node, %struct._node* %59, i32 0, i32 5
  %60 = load %struct._node*, %struct._node** %n_child56, align 8
  %arrayidx57 = getelementptr %struct._node, %struct._node* %60, i64 %idxprom
  store %struct._node* %arrayidx57, %struct._node** %ch55, align 8
  %61 = load %struct._node*, %struct._node** %ch55, align 8
  %n_type58 = getelementptr inbounds %struct._node, %struct._node* %61, i32 0, i32 0
  %62 = load i16, i16* %n_type58, align 2
  %conv59 = sext i16 %62 to i32
  %cmp60 = icmp eq i32 %conv59, 336
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.body
  %63 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %64 = load %struct._node*, %struct._node** %ch55, align 8
  %call63 = call i32 @ast_error(%struct.compiling* %63, %struct._node* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.115, i32 0, i32 0))
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.64:                                        ; preds = %for.body
  %65 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %66 = load %struct._node*, %struct._node** %ch55, align 8
  %call65 = call %struct._expr* @ast_for_testlist(%struct.compiling* %65, %struct._node* %66)
  store %struct._expr* %call65, %struct._expr** %e54, align 8
  %67 = load %struct._expr*, %struct._expr** %e54, align 8
  %tobool66 = icmp ne %struct._expr* %67, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %68 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %69 = load %struct._expr*, %struct._expr** %e54, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %70 to i64
  %71 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child70 = getelementptr inbounds %struct._node, %struct._node* %71, i32 0, i32 5
  %72 = load %struct._node*, %struct._node** %n_child70, align 8
  %arrayidx71 = getelementptr %struct._node, %struct._node* %72, i64 %idxprom69
  %call72 = call i32 @set_context(%struct.compiling* %68, %struct._expr* %69, i32 2, %struct._node* %arrayidx71)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.68
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.68
  %73 = load %struct._expr*, %struct._expr** %e54, align 8
  %74 = bitcast %struct._expr* %73 to i8*
  %75 = load i32, i32* %i, align 4
  %div76 = sdiv i32 %75, 2
  %idxprom77 = sext i32 %div76 to i64
  %76 = load %struct.asdl_seq*, %struct.asdl_seq** %targets, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %76, i32 0, i32 1
  %arrayidx78 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom77
  store i8* %74, i8** %arrayidx78, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %77 = load i32, i32* %i, align 4
  %add = add i32 %77, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren79 = getelementptr inbounds %struct._node, %struct._node* %78, i32 0, i32 4
  %79 = load i32, i32* %n_nchildren79, align 4
  %sub80 = sub i32 %79, 1
  %idxprom81 = sext i32 %sub80 to i64
  %80 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child82 = getelementptr inbounds %struct._node, %struct._node* %80, i32 0, i32 5
  %81 = load %struct._node*, %struct._node** %n_child82, align 8
  %arrayidx83 = getelementptr %struct._node, %struct._node* %81, i64 %idxprom81
  store %struct._node* %arrayidx83, %struct._node** %value, align 8
  %82 = load %struct._node*, %struct._node** %value, align 8
  %n_type84 = getelementptr inbounds %struct._node, %struct._node* %82, i32 0, i32 0
  %83 = load i16, i16* %n_type84, align 2
  %conv85 = sext i16 %83 to i32
  %cmp86 = icmp eq i32 %conv85, 272
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %for.end
  %84 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %85 = load %struct._node*, %struct._node** %value, align 8
  %call89 = call %struct._expr* @ast_for_testlist(%struct.compiling* %84, %struct._node* %85)
  store %struct._expr* %call89, %struct._expr** %expression, align 8
  br label %if.end.92

if.else.90:                                       ; preds = %for.end
  %86 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %87 = load %struct._node*, %struct._node** %value, align 8
  %call91 = call %struct._expr* @ast_for_expr(%struct.compiling* %86, %struct._node* %87)
  store %struct._expr* %call91, %struct._expr** %expression, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  %88 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool93 = icmp ne %struct._expr* %88, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.end.92
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.92
  %89 = load %struct.asdl_seq*, %struct.asdl_seq** %targets, align 8
  %90 = load %struct._expr*, %struct._expr** %expression, align 8
  %91 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno96 = getelementptr inbounds %struct._node, %struct._node* %91, i32 0, i32 2
  %92 = load i32, i32* %n_lineno96, align 4
  %93 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset97 = getelementptr inbounds %struct._node, %struct._node* %93, i32 0, i32 3
  %94 = load i32, i32* %n_col_offset97, align 4
  %95 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena98 = getelementptr inbounds %struct.compiling, %struct.compiling* %95, i32 0, i32 1
  %96 = load %struct._arena*, %struct._arena** %c_arena98, align 8
  %call99 = call %struct._stmt* @_Py_Assign(%struct.asdl_seq* %89, %struct._expr* %90, i32 %92, i32 %94, %struct._arena* %96)
  store %struct._stmt* %call99, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.94, %if.then.74, %if.then.67, %if.then.62, %if.then.49, %if.end.38, %if.then.37, %if.then.31, %sw.default, %if.then.16, %if.then.12, %if.end, %if.then.1
  %97 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %97
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_del_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %expr_list = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 1
  %call = call %struct.asdl_seq* @ast_for_exprlist(%struct.compiling* %0, %struct._node* %arrayidx, i32 3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %expr_list, align 8
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %expr_list, align 8
  %tobool = icmp ne %struct.asdl_seq* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %expr_list, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 2
  %6 = load i32, i32* %n_lineno, align 4
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 3
  %8 = load i32, i32* %n_col_offset, align 4
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %9, i32 0, i32 1
  %10 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call1 = call %struct._stmt* @_Py_Delete(%struct.asdl_seq* %4, i32 %6, i32 %8, %struct._arena* %10)
  store %struct._stmt* %call1, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_flow_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %ch = alloca %struct._node*, align 8
  %exp = alloca %struct._expr*, align 8
  %expression = alloca %struct._expr*, align 8
  %cause = alloca %struct._expr*, align 8
  %expression45 = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %2 = load %struct._node*, %struct._node** %ch, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type, align 2
  %conv = sext i16 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 277, label %sw.bb
    i32 278, label %sw.bb.1
    i32 280, label %sw.bb.6
    i32 279, label %sw.bb.14
    i32 281, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 2
  %5 = load i32, i32* %n_lineno, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 3
  %7 = load i32, i32* %n_col_offset, align 4
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %8, i32 0, i32 1
  %9 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct._stmt* @_Py_Break(i32 %5, i32 %7, %struct._arena* %9)
  store %struct._stmt* %call, %struct._stmt** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno2 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 2
  %11 = load i32, i32* %n_lineno2, align 4
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset3 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 3
  %13 = load i32, i32* %n_col_offset3, align 4
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena4 = getelementptr inbounds %struct.compiling, %struct.compiling* %14, i32 0, i32 1
  %15 = load %struct._arena*, %struct._arena** %c_arena4, align 8
  %call5 = call %struct._stmt* @_Py_Continue(i32 %11, i32 %13, %struct._arena* %15)
  store %struct._stmt* %call5, %struct._stmt** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %17 = load %struct._node*, %struct._node** %ch, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %18, i64 0
  %call9 = call %struct._expr* @ast_for_expr(%struct.compiling* %16, %struct._node* %arrayidx8)
  store %struct._expr* %call9, %struct._expr** %exp, align 8
  %19 = load %struct._expr*, %struct._expr** %exp, align 8
  %tobool = icmp ne %struct._expr* %19, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.6
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.6
  %20 = load %struct._expr*, %struct._expr** %exp, align 8
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno10 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 2
  %22 = load i32, i32* %n_lineno10, align 4
  %23 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset11 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 3
  %24 = load i32, i32* %n_col_offset11, align 4
  %25 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena12 = getelementptr inbounds %struct.compiling, %struct.compiling* %25, i32 0, i32 1
  %26 = load %struct._arena*, %struct._arena** %c_arena12, align 8
  %call13 = call %struct._stmt* @_Py_Expr(%struct._expr* %20, i32 %22, i32 %24, %struct._arena* %26)
  store %struct._stmt* %call13, %struct._stmt** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %27 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 4
  %28 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb.14
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno17 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 2
  %30 = load i32, i32* %n_lineno17, align 4
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset18 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 3
  %32 = load i32, i32* %n_col_offset18, align 4
  %33 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena19 = getelementptr inbounds %struct.compiling, %struct.compiling* %33, i32 0, i32 1
  %34 = load %struct._arena*, %struct._arena** %c_arena19, align 8
  %call20 = call %struct._stmt* @_Py_Return(%struct._expr* null, i32 %30, i32 %32, %struct._arena* %34)
  store %struct._stmt* %call20, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %sw.bb.14
  %35 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %36 = load %struct._node*, %struct._node** %ch, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 5
  %37 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %37, i64 1
  %call23 = call %struct._expr* @ast_for_testlist(%struct.compiling* %35, %struct._node* %arrayidx22)
  store %struct._expr* %call23, %struct._expr** %expression, align 8
  %38 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool24 = icmp ne %struct._expr* %38, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.else
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.26:                                        ; preds = %if.else
  %39 = load %struct._expr*, %struct._expr** %expression, align 8
  %40 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno27 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 2
  %41 = load i32, i32* %n_lineno27, align 4
  %42 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset28 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 3
  %43 = load i32, i32* %n_col_offset28, align 4
  %44 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena29 = getelementptr inbounds %struct.compiling, %struct.compiling* %44, i32 0, i32 1
  %45 = load %struct._arena*, %struct._arena** %c_arena29, align 8
  %call30 = call %struct._stmt* @_Py_Return(%struct._expr* %39, i32 %41, i32 %43, %struct._arena* %45)
  store %struct._stmt* %call30, %struct._stmt** %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %46 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren32 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 4
  %47 = load i32, i32* %n_nchildren32, align 4
  %cmp33 = icmp eq i32 %47, 1
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %sw.bb.31
  %48 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno36 = getelementptr inbounds %struct._node, %struct._node* %48, i32 0, i32 2
  %49 = load i32, i32* %n_lineno36, align 4
  %50 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset37 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 3
  %51 = load i32, i32* %n_col_offset37, align 4
  %52 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena38 = getelementptr inbounds %struct.compiling, %struct.compiling* %52, i32 0, i32 1
  %53 = load %struct._arena*, %struct._arena** %c_arena38, align 8
  %call39 = call %struct._stmt* @_Py_Raise(%struct._expr* null, %struct._expr* null, i32 %49, i32 %51, %struct._arena* %53)
  store %struct._stmt* %call39, %struct._stmt** %retval
  br label %return

if.else.40:                                       ; preds = %sw.bb.31
  %54 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren41 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 4
  %55 = load i32, i32* %n_nchildren41, align 4
  %cmp42 = icmp sge i32 %55, 2
  br i1 %cmp42, label %if.then.44, label %if.end.67

if.then.44:                                       ; preds = %if.else.40
  store %struct._expr* null, %struct._expr** %cause, align 8
  %56 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %57 = load %struct._node*, %struct._node** %ch, align 8
  %n_child46 = getelementptr inbounds %struct._node, %struct._node* %57, i32 0, i32 5
  %58 = load %struct._node*, %struct._node** %n_child46, align 8
  %arrayidx47 = getelementptr %struct._node, %struct._node* %58, i64 1
  %call48 = call %struct._expr* @ast_for_expr(%struct.compiling* %56, %struct._node* %arrayidx47)
  store %struct._expr* %call48, %struct._expr** %expression45, align 8
  %59 = load %struct._expr*, %struct._expr** %expression45, align 8
  %tobool49 = icmp ne %struct._expr* %59, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.then.44
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.44
  %60 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren52 = getelementptr inbounds %struct._node, %struct._node* %60, i32 0, i32 4
  %61 = load i32, i32* %n_nchildren52, align 4
  %cmp53 = icmp eq i32 %61, 4
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.51
  %62 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %63 = load %struct._node*, %struct._node** %ch, align 8
  %n_child56 = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 5
  %64 = load %struct._node*, %struct._node** %n_child56, align 8
  %arrayidx57 = getelementptr %struct._node, %struct._node* %64, i64 3
  %call58 = call %struct._expr* @ast_for_expr(%struct.compiling* %62, %struct._node* %arrayidx57)
  store %struct._expr* %call58, %struct._expr** %cause, align 8
  %65 = load %struct._expr*, %struct._expr** %cause, align 8
  %tobool59 = icmp ne %struct._expr* %65, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.55
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.61:                                        ; preds = %if.then.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.51
  %66 = load %struct._expr*, %struct._expr** %expression45, align 8
  %67 = load %struct._expr*, %struct._expr** %cause, align 8
  %68 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno63 = getelementptr inbounds %struct._node, %struct._node* %68, i32 0, i32 2
  %69 = load i32, i32* %n_lineno63, align 4
  %70 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset64 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 3
  %71 = load i32, i32* %n_col_offset64, align 4
  %72 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena65 = getelementptr inbounds %struct.compiling, %struct.compiling* %72, i32 0, i32 1
  %73 = load %struct._arena*, %struct._arena** %c_arena65, align 8
  %call66 = call %struct._stmt* @_Py_Raise(%struct._expr* %66, %struct._expr* %67, i32 %69, i32 %71, %struct._arena* %73)
  store %struct._stmt* %call66, %struct._stmt** %retval
  br label %return

if.end.67:                                        ; preds = %if.else.40
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.68
  %74 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %75 = load %struct._node*, %struct._node** %ch, align 8
  %n_type69 = getelementptr inbounds %struct._node, %struct._node* %75, i32 0, i32 0
  %76 = load i16, i16* %n_type69, align 2
  %conv70 = sext i16 %76 to i32
  %call71 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.117, i32 0, i32 0), i32 %conv70)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.62, %if.then.60, %if.then.50, %if.then.35, %if.end.26, %if.then.25, %if.then.16, %if.end, %if.then, %sw.bb.1, %sw.bb
  %77 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %77
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_import_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %lineno = alloca i32, align 4
  %col_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %aliases = alloca %struct.asdl_seq*, align 8
  %import_alias = alloca %struct._alias*, align 8
  %n_children = alloca i32, align 4
  %idx = alloca i32, align 4
  %ndots = alloca i32, align 4
  %mod = alloca %struct._alias*, align 8
  %modname = alloca %struct._object*, align 8
  %import_alias111 = alloca %struct._alias*, align 8
  %import_alias124 = alloca %struct._alias*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 2
  %1 = load i32, i32* %n_lineno, align 4
  store i32 %1, i32* %lineno, align 4
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 3
  %3 = load i32, i32* %n_col_offset, align 4
  store i32 %3, i32* %col_offset, align 4
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  %cmp = icmp eq i32 %conv, 283
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %9, i64 1
  store %struct._node* %arrayidx3, %struct._node** %n.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 4
  %11 = load i32, i32* %n_nchildren, align 4
  %add = add i32 %11, 1
  %div = sdiv i32 %add, 2
  %conv4 = sext i32 %div to i64
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %12, i32 0, i32 1
  %13 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv4, %struct._arena* %13)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %aliases, align 8
  %14 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %tobool = icmp ne %struct.asdl_seq* %14, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren6 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 4
  %17 = load i32, i32* %n_nchildren6, align 4
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom
  %call11 = call %struct._alias* @alias_for_import_name(%struct.compiling* %18, %struct._node* %arrayidx10, i32 1)
  store %struct._alias* %call11, %struct._alias** %import_alias, align 8
  %22 = load %struct._alias*, %struct._alias** %import_alias, align 8
  %tobool12 = icmp ne %struct._alias* %22, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  %23 = load %struct._alias*, %struct._alias** %import_alias, align 8
  %24 = bitcast %struct._alias* %23 to i8*
  %25 = load i32, i32* %i, align 4
  %div15 = sdiv i32 %25, 2
  %idxprom16 = sext i32 %div15 to i64
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %26, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom16
  store i8* %24, i8** %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %27 = load i32, i32* %i, align 4
  %add18 = add i32 %27, 2
  store i32 %add18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %29 = load i32, i32* %lineno, align 4
  %30 = load i32, i32* %col_offset, align 4
  %31 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena19 = getelementptr inbounds %struct.compiling, %struct.compiling* %31, i32 0, i32 1
  %32 = load %struct._arena*, %struct._arena** %c_arena19, align 8
  %call20 = call %struct._stmt* @_Py_Import(%struct.asdl_seq* %28, i32 %29, i32 %30, %struct._arena* %32)
  store %struct._stmt* %call20, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %entry
  %33 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type21 = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 0
  %34 = load i16, i16* %n_type21, align 2
  %conv22 = sext i16 %34 to i32
  %cmp23 = icmp eq i32 %conv22, 284
  br i1 %cmp23, label %if.then.25, label %if.end.146

if.then.25:                                       ; preds = %if.else
  store i32 0, i32* %ndots, align 4
  store %struct._alias* null, %struct._alias** %mod, align 8
  store %struct._object* null, %struct._object** %modname, align 8
  store i32 1, i32* %idx, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.69, %if.then.25
  %35 = load i32, i32* %idx, align 4
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren27 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 4
  %37 = load i32, i32* %n_nchildren27, align 4
  %cmp28 = icmp slt i32 %35, %37
  br i1 %cmp28, label %for.body.30, label %for.end.71

for.body.30:                                      ; preds = %for.cond.26
  %38 = load i32, i32* %idx, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %40, i64 %idxprom31
  %n_type34 = getelementptr inbounds %struct._node, %struct._node* %arrayidx33, i32 0, i32 0
  %41 = load i16, i16* %n_type34, align 2
  %conv35 = sext i16 %41 to i32
  %cmp36 = icmp eq i32 %conv35, 289
  br i1 %cmp36, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %for.body.30
  %42 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %43 = load i32, i32* %idx, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child40 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 5
  %45 = load %struct._node*, %struct._node** %n_child40, align 8
  %arrayidx41 = getelementptr %struct._node, %struct._node* %45, i64 %idxprom39
  %call42 = call %struct._alias* @alias_for_import_name(%struct.compiling* %42, %struct._node* %arrayidx41, i32 0)
  store %struct._alias* %call42, %struct._alias** %mod, align 8
  %46 = load %struct._alias*, %struct._alias** %mod, align 8
  %tobool43 = icmp ne %struct._alias* %46, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.38
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.38
  %47 = load i32, i32* %idx, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.end.71

if.else.46:                                       ; preds = %for.body.30
  %48 = load i32, i32* %idx, align 4
  %idxprom47 = sext i32 %48 to i64
  %49 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child48 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child48, align 8
  %arrayidx49 = getelementptr %struct._node, %struct._node* %50, i64 %idxprom47
  %n_type50 = getelementptr inbounds %struct._node, %struct._node* %arrayidx49, i32 0, i32 0
  %51 = load i16, i16* %n_type50, align 2
  %conv51 = sext i16 %51 to i32
  %cmp52 = icmp eq i32 %conv51, 51
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.else.46
  %52 = load i32, i32* %ndots, align 4
  %add55 = add i32 %52, 3
  store i32 %add55, i32* %ndots, align 4
  br label %for.inc.69

if.else.56:                                       ; preds = %if.else.46
  %53 = load i32, i32* %idx, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child58 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 5
  %55 = load %struct._node*, %struct._node** %n_child58, align 8
  %arrayidx59 = getelementptr %struct._node, %struct._node* %55, i64 %idxprom57
  %n_type60 = getelementptr inbounds %struct._node, %struct._node* %arrayidx59, i32 0, i32 0
  %56 = load i16, i16* %n_type60, align 2
  %conv61 = sext i16 %56 to i32
  %cmp62 = icmp ne i32 %conv61, 23
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.56
  br label %for.end.71

if.end.65:                                        ; preds = %if.else.56
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  %57 = load i32, i32* %ndots, align 4
  %inc68 = add i32 %57, 1
  store i32 %inc68, i32* %ndots, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.67, %if.then.54
  %58 = load i32, i32* %idx, align 4
  %inc70 = add i32 %58, 1
  store i32 %inc70, i32* %idx, align 4
  br label %for.cond.26

for.end.71:                                       ; preds = %if.then.64, %if.end.45, %for.cond.26
  %59 = load i32, i32* %idx, align 4
  %inc72 = add i32 %59, 1
  store i32 %inc72, i32* %idx, align 4
  %60 = load i32, i32* %idx, align 4
  %idxprom73 = sext i32 %60 to i64
  %61 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child74 = getelementptr inbounds %struct._node, %struct._node* %61, i32 0, i32 5
  %62 = load %struct._node*, %struct._node** %n_child74, align 8
  %arrayidx75 = getelementptr %struct._node, %struct._node* %62, i64 %idxprom73
  %n_type76 = getelementptr inbounds %struct._node, %struct._node* %arrayidx75, i32 0, i32 0
  %63 = load i16, i16* %n_type76, align 2
  %conv77 = sext i16 %63 to i32
  switch i32 %conv77, label %sw.default [
    i32 16, label %sw.bb
    i32 7, label %sw.bb.81
    i32 287, label %sw.bb.87
  ]

sw.bb:                                            ; preds = %for.end.71
  %64 = load i32, i32* %idx, align 4
  %idxprom78 = sext i32 %64 to i64
  %65 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child79 = getelementptr inbounds %struct._node, %struct._node* %65, i32 0, i32 5
  %66 = load %struct._node*, %struct._node** %n_child79, align 8
  %arrayidx80 = getelementptr %struct._node, %struct._node* %66, i64 %idxprom78
  store %struct._node* %arrayidx80, %struct._node** %n.addr, align 8
  store i32 1, i32* %n_children, align 4
  br label %sw.epilog

sw.bb.81:                                         ; preds = %for.end.71
  %67 = load i32, i32* %idx, align 4
  %add82 = add i32 %67, 1
  %idxprom83 = sext i32 %add82 to i64
  %68 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child84 = getelementptr inbounds %struct._node, %struct._node* %68, i32 0, i32 5
  %69 = load %struct._node*, %struct._node** %n_child84, align 8
  %arrayidx85 = getelementptr %struct._node, %struct._node* %69, i64 %idxprom83
  store %struct._node* %arrayidx85, %struct._node** %n.addr, align 8
  %70 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren86 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 4
  %71 = load i32, i32* %n_nchildren86, align 4
  store i32 %71, i32* %n_children, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %for.end.71
  %72 = load i32, i32* %idx, align 4
  %idxprom88 = sext i32 %72 to i64
  %73 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child89 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 5
  %74 = load %struct._node*, %struct._node** %n_child89, align 8
  %arrayidx90 = getelementptr %struct._node, %struct._node* %74, i64 %idxprom88
  store %struct._node* %arrayidx90, %struct._node** %n.addr, align 8
  %75 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren91 = getelementptr inbounds %struct._node, %struct._node* %75, i32 0, i32 4
  %76 = load i32, i32* %n_nchildren91, align 4
  store i32 %76, i32* %n_children, align 4
  %77 = load i32, i32* %n_children, align 4
  %rem = srem i32 %77, 2
  %cmp92 = icmp eq i32 %rem, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %sw.bb.87
  %78 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %79 = load %struct._node*, %struct._node** %n.addr, align 8
  %call95 = call i32 @ast_error(%struct.compiling* %78, %struct._node* %79, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.118, i32 0, i32 0))
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.96:                                        ; preds = %sw.bb.87
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.71
  %80 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %81 = load %struct._node*, %struct._node** %n.addr, align 8
  %call97 = call i32 @ast_error(%struct.compiling* %80, %struct._node* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.119, i32 0, i32 0))
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.96, %sw.bb.81, %sw.bb
  %82 = load i32, i32* %n_children, align 4
  %add98 = add i32 %82, 1
  %div99 = sdiv i32 %add98, 2
  %conv100 = sext i32 %div99 to i64
  %83 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena101 = getelementptr inbounds %struct.compiling, %struct.compiling* %83, i32 0, i32 1
  %84 = load %struct._arena*, %struct._arena** %c_arena101, align 8
  %call102 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv100, %struct._arena* %84)
  store %struct.asdl_seq* %call102, %struct.asdl_seq** %aliases, align 8
  %85 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %tobool103 = icmp ne %struct.asdl_seq* %85, null
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %sw.epilog
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.105:                                       ; preds = %sw.epilog
  %86 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type106 = getelementptr inbounds %struct._node, %struct._node* %86, i32 0, i32 0
  %87 = load i16, i16* %n_type106, align 2
  %conv107 = sext i16 %87 to i32
  %cmp108 = icmp eq i32 %conv107, 16
  br i1 %cmp108, label %if.then.110, label %if.else.118

if.then.110:                                      ; preds = %if.end.105
  %88 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %89 = load %struct._node*, %struct._node** %n.addr, align 8
  %call112 = call %struct._alias* @alias_for_import_name(%struct.compiling* %88, %struct._node* %89, i32 1)
  store %struct._alias* %call112, %struct._alias** %import_alias111, align 8
  %90 = load %struct._alias*, %struct._alias** %import_alias111, align 8
  %tobool113 = icmp ne %struct._alias* %90, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.115:                                       ; preds = %if.then.110
  %91 = load %struct._alias*, %struct._alias** %import_alias111, align 8
  %92 = bitcast %struct._alias* %91 to i8*
  %93 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %elements116 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %93, i32 0, i32 1
  %arrayidx117 = getelementptr [1 x i8*], [1 x i8*]* %elements116, i32 0, i64 0
  store i8* %92, i8** %arrayidx117, align 8
  br label %if.end.139

if.else.118:                                      ; preds = %if.end.105
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.136, %if.else.118
  %94 = load i32, i32* %i, align 4
  %95 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren120 = getelementptr inbounds %struct._node, %struct._node* %95, i32 0, i32 4
  %96 = load i32, i32* %n_nchildren120, align 4
  %cmp121 = icmp slt i32 %94, %96
  br i1 %cmp121, label %for.body.123, label %for.end.138

for.body.123:                                     ; preds = %for.cond.119
  %97 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %98 to i64
  %99 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child126 = getelementptr inbounds %struct._node, %struct._node* %99, i32 0, i32 5
  %100 = load %struct._node*, %struct._node** %n_child126, align 8
  %arrayidx127 = getelementptr %struct._node, %struct._node* %100, i64 %idxprom125
  %call128 = call %struct._alias* @alias_for_import_name(%struct.compiling* %97, %struct._node* %arrayidx127, i32 1)
  store %struct._alias* %call128, %struct._alias** %import_alias124, align 8
  %101 = load %struct._alias*, %struct._alias** %import_alias124, align 8
  %tobool129 = icmp ne %struct._alias* %101, null
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %for.body.123
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.131:                                       ; preds = %for.body.123
  %102 = load %struct._alias*, %struct._alias** %import_alias124, align 8
  %103 = bitcast %struct._alias* %102 to i8*
  %104 = load i32, i32* %i, align 4
  %div132 = sdiv i32 %104, 2
  %idxprom133 = sext i32 %div132 to i64
  %105 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %elements134 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %105, i32 0, i32 1
  %arrayidx135 = getelementptr [1 x i8*], [1 x i8*]* %elements134, i32 0, i64 %idxprom133
  store i8* %103, i8** %arrayidx135, align 8
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.131
  %106 = load i32, i32* %i, align 4
  %add137 = add i32 %106, 2
  store i32 %add137, i32* %i, align 4
  br label %for.cond.119

for.end.138:                                      ; preds = %for.cond.119
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %if.end.115
  %107 = load %struct._alias*, %struct._alias** %mod, align 8
  %cmp140 = icmp ne %struct._alias* %107, null
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  %108 = load %struct._alias*, %struct._alias** %mod, align 8
  %name = getelementptr inbounds %struct._alias, %struct._alias* %108, i32 0, i32 0
  %109 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %109, %struct._object** %modname, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.139
  %110 = load %struct._object*, %struct._object** %modname, align 8
  %111 = load %struct.asdl_seq*, %struct.asdl_seq** %aliases, align 8
  %112 = load i32, i32* %ndots, align 4
  %113 = load i32, i32* %lineno, align 4
  %114 = load i32, i32* %col_offset, align 4
  %115 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena144 = getelementptr inbounds %struct.compiling, %struct.compiling* %115, i32 0, i32 1
  %116 = load %struct._arena*, %struct._arena** %c_arena144, align 8
  %call145 = call %struct._stmt* @_Py_ImportFrom(%struct._object* %110, %struct.asdl_seq* %111, i32 %112, i32 %113, i32 %114, %struct._arena* %116)
  store %struct._stmt* %call145, %struct._stmt** %retval
  br label %return

if.end.146:                                       ; preds = %if.else
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146
  %117 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %118 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child148 = getelementptr inbounds %struct._node, %struct._node* %118, i32 0, i32 5
  %119 = load %struct._node*, %struct._node** %n_child148, align 8
  %arrayidx149 = getelementptr %struct._node, %struct._node* %119, i64 0
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx149, i32 0, i32 1
  %120 = load i8*, i8** %n_str, align 8
  %call150 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %117, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.120, i32 0, i32 0), i8* %120)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.end.143, %if.then.130, %if.then.114, %if.then.104, %sw.default, %if.then.94, %if.then.44, %for.end, %if.then.13, %if.then.5
  %121 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %121
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_global_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %name = alloca %struct._object*, align 8
  %s = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %div = sdiv i32 %1, 2
  %conv = sext i32 %div to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %s, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 %idxprom
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 1
  %11 = load i8*, i8** %n_str, align 8
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call3 = call %struct._object* @new_identifier(i8* %11, %struct.compiling* %12)
  store %struct._object* %call3, %struct._object** %name, align 8
  %13 = load %struct._object*, %struct._object** %name, align 8
  %tobool4 = icmp ne %struct._object* %13, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %name, align 8
  %15 = bitcast %struct._object* %14 to i8*
  %16 = load i32, i32* %i, align 4
  %div7 = sdiv i32 %16, 2
  %idxprom8 = sext i32 %div7 to i64
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %17, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom8
  store i8* %15, i8** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %18 = load i32, i32* %i, align 4
  %add = add i32 %18, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 2
  %21 = load i32, i32* %n_lineno, align 4
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 3
  %23 = load i32, i32* %n_col_offset, align 4
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena10 = getelementptr inbounds %struct.compiling, %struct.compiling* %24, i32 0, i32 1
  %25 = load %struct._arena*, %struct._arena** %c_arena10, align 8
  %call11 = call %struct._stmt* @_Py_Global(%struct.asdl_seq* %19, i32 %21, i32 %23, %struct._arena* %25)
  store %struct._stmt* %call11, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %26 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_nonlocal_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %name = alloca %struct._object*, align 8
  %s = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %div = sdiv i32 %1, 2
  %conv = sext i32 %div to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %s, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 %idxprom
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 1
  %11 = load i8*, i8** %n_str, align 8
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call3 = call %struct._object* @new_identifier(i8* %11, %struct.compiling* %12)
  store %struct._object* %call3, %struct._object** %name, align 8
  %13 = load %struct._object*, %struct._object** %name, align 8
  %tobool4 = icmp ne %struct._object* %13, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %name, align 8
  %15 = bitcast %struct._object* %14 to i8*
  %16 = load i32, i32* %i, align 4
  %div7 = sdiv i32 %16, 2
  %idxprom8 = sext i32 %div7 to i64
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %17, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom8
  store i8* %15, i8** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %18 = load i32, i32* %i, align 4
  %add = add i32 %18, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 2
  %21 = load i32, i32* %n_lineno, align 4
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 3
  %23 = load i32, i32* %n_col_offset, align 4
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena10 = getelementptr inbounds %struct.compiling, %struct.compiling* %24, i32 0, i32 1
  %25 = load %struct._arena*, %struct._arena** %c_arena10, align 8
  %call11 = call %struct._stmt* @_Py_Nonlocal(%struct.asdl_seq* %19, i32 %21, i32 %23, %struct._arena* %25)
  store %struct._stmt* %call11, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %26 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_assert_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %expr1 = alloca %struct._expr*, align 8
  %expr2 = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 1
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %expression, align 8
  %5 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool = icmp ne %struct._expr* %5, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._expr*, %struct._expr** %expression, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 2
  %8 = load i32, i32* %n_lineno, align 4
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 3
  %10 = load i32, i32* %n_col_offset, align 4
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %11, i32 0, i32 1
  %12 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call2 = call %struct._stmt* @_Py_Assert(%struct._expr* %6, %struct._expr* null, i32 %8, i32 %10, %struct._arena* %12)
  store %struct._stmt* %call2, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %entry
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 4
  %14 = load i32, i32* %n_nchildren3, align 4
  %cmp4 = icmp eq i32 %14, 4
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %if.else
  %15 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call8 = call %struct._expr* @ast_for_expr(%struct.compiling* %15, %struct._node* %arrayidx7)
  store %struct._expr* %call8, %struct._expr** %expr1, align 8
  %18 = load %struct._expr*, %struct._expr** %expr1, align 8
  %tobool9 = icmp ne %struct._expr* %18, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.5
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.5
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %21, i64 3
  %call14 = call %struct._expr* @ast_for_expr(%struct.compiling* %19, %struct._node* %arrayidx13)
  store %struct._expr* %call14, %struct._expr** %expr2, align 8
  %22 = load %struct._expr*, %struct._expr** %expr2, align 8
  %tobool15 = icmp ne %struct._expr* %22, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %23 = load %struct._expr*, %struct._expr** %expr1, align 8
  %24 = load %struct._expr*, %struct._expr** %expr2, align 8
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno18 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 2
  %26 = load i32, i32* %n_lineno18, align 4
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset19 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 3
  %28 = load i32, i32* %n_col_offset19, align 4
  %29 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena20 = getelementptr inbounds %struct.compiling, %struct.compiling* %29, i32 0, i32 1
  %30 = load %struct._arena*, %struct._arena** %c_arena20, align 8
  %call21 = call %struct._stmt* @_Py_Assert(%struct._expr* %23, %struct._expr* %24, i32 %26, i32 %28, %struct._arena* %30)
  store %struct._stmt* %call21, %struct._stmt** %retval
  br label %return

if.end.22:                                        ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  %31 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren24 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 4
  %33 = load i32, i32* %n_nchildren24, align 4
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.123, i32 0, i32 0), i32 %33)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.17, %if.then.16, %if.then.10, %if.end, %if.then.1
  %34 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_if_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %s = alloca i8*, align 8
  %expression = alloca %struct._expr*, align 8
  %suite_seq = alloca %struct.asdl_seq*, align 8
  %expression16 = alloca %struct._expr*, align 8
  %seq1 = alloca %struct.asdl_seq*, align 8
  %seq2 = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %n_elif = alloca i32, align 4
  %has_else = alloca i32, align 4
  %expression44 = alloca %struct._expr*, align 8
  %suite_seq45 = alloca %struct.asdl_seq*, align 8
  %orelse = alloca %struct.asdl_seq*, align 8
  %suite_seq2 = alloca %struct.asdl_seq*, align 8
  %off = alloca i32, align 4
  %newobj = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 1
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %expression, align 8
  %5 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool = icmp ne %struct._expr* %5, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %8, i64 3
  %call4 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %6, %struct._node* %arrayidx3)
  store %struct.asdl_seq* %call4, %struct.asdl_seq** %suite_seq, align 8
  %9 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %tobool5 = icmp ne %struct.asdl_seq* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._expr*, %struct._expr** %expression, align 8
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 2
  %13 = load i32, i32* %n_lineno, align 4
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 3
  %15 = load i32, i32* %n_col_offset, align 4
  %16 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %16, i32 0, i32 1
  %17 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call8 = call %struct._stmt* @_Py_If(%struct._expr* %10, %struct.asdl_seq* %11, %struct.asdl_seq* null, i32 %13, i32 %15, %struct._arena* %17)
  store %struct._stmt* %call8, %struct._stmt** %retval
  br label %return

if.end.9:                                         ; preds = %entry
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %19, i64 4
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx11, i32 0, i32 1
  %20 = load i8*, i8** %n_str, align 8
  store i8* %20, i8** %s, align 8
  %21 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %22 to i32
  %cmp13 = icmp eq i32 %conv, 115
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  %23 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %25, i64 1
  %call19 = call %struct._expr* @ast_for_expr(%struct.compiling* %23, %struct._node* %arrayidx18)
  store %struct._expr* %call19, %struct._expr** %expression16, align 8
  %26 = load %struct._expr*, %struct._expr** %expression16, align 8
  %tobool20 = icmp ne %struct._expr* %26, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.15
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.15
  %27 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %29, i64 3
  %call25 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %27, %struct._node* %arrayidx24)
  store %struct.asdl_seq* %call25, %struct.asdl_seq** %seq1, align 8
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1, align 8
  %tobool26 = icmp ne %struct.asdl_seq* %30, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %31 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %33, i64 6
  %call31 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %31, %struct._node* %arrayidx30)
  store %struct.asdl_seq* %call31, %struct.asdl_seq** %seq2, align 8
  %34 = load %struct.asdl_seq*, %struct.asdl_seq** %seq2, align 8
  %tobool32 = icmp ne %struct.asdl_seq* %34, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.28
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.28
  %35 = load %struct._expr*, %struct._expr** %expression16, align 8
  %36 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1, align 8
  %37 = load %struct.asdl_seq*, %struct.asdl_seq** %seq2, align 8
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno35 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 2
  %39 = load i32, i32* %n_lineno35, align 4
  %40 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset36 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 3
  %41 = load i32, i32* %n_col_offset36, align 4
  %42 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena37 = getelementptr inbounds %struct.compiling, %struct.compiling* %42, i32 0, i32 1
  %43 = load %struct._arena*, %struct._arena** %c_arena37, align 8
  %call38 = call %struct._stmt* @_Py_If(%struct._expr* %35, %struct.asdl_seq* %36, %struct.asdl_seq* %37, i32 %39, i32 %41, %struct._arena* %43)
  store %struct._stmt* %call38, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %if.end.9
  %44 = load i8*, i8** %s, align 8
  %arrayidx39 = getelementptr i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %45 to i32
  %cmp41 = icmp eq i32 %conv40, 105
  br i1 %cmp41, label %if.then.43, label %if.end.167

if.then.43:                                       ; preds = %if.else
  store i32 0, i32* %has_else, align 4
  store %struct.asdl_seq* null, %struct.asdl_seq** %orelse, align 8
  %46 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren46 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 4
  %47 = load i32, i32* %n_nchildren46, align 4
  %sub = sub i32 %47, 4
  store i32 %sub, i32* %n_elif, align 4
  %48 = load i32, i32* %n_elif, align 4
  %add = add i32 %48, 1
  %idxprom = sext i32 %add to i64
  %49 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child47 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child47, align 8
  %arrayidx48 = getelementptr %struct._node, %struct._node* %50, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx48, i32 0, i32 0
  %51 = load i16, i16* %n_type, align 2
  %conv49 = sext i16 %51 to i32
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.then.43
  %52 = load i32, i32* %n_elif, align 4
  %add52 = add i32 %52, 1
  %idxprom53 = sext i32 %add52 to i64
  %53 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child54 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 5
  %54 = load %struct._node*, %struct._node** %n_child54, align 8
  %arrayidx55 = getelementptr %struct._node, %struct._node* %54, i64 %idxprom53
  %n_str56 = getelementptr inbounds %struct._node, %struct._node* %arrayidx55, i32 0, i32 1
  %55 = load i8*, i8** %n_str56, align 8
  %arrayidx57 = getelementptr i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %56 to i32
  %cmp59 = icmp eq i32 %conv58, 115
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true
  store i32 1, i32* %has_else, align 4
  %57 = load i32, i32* %n_elif, align 4
  %sub62 = sub i32 %57, 3
  store i32 %sub62, i32* %n_elif, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true, %if.then.43
  %58 = load i32, i32* %n_elif, align 4
  %div = sdiv i32 %58, 4
  store i32 %div, i32* %n_elif, align 4
  %59 = load i32, i32* %has_else, align 4
  %tobool64 = icmp ne i32 %59, 0
  br i1 %tobool64, label %if.then.65, label %if.end.113

if.then.65:                                       ; preds = %if.end.63
  %60 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena66 = getelementptr inbounds %struct.compiling, %struct.compiling* %60, i32 0, i32 1
  %61 = load %struct._arena*, %struct._arena** %c_arena66, align 8
  %call67 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 1, %struct._arena* %61)
  store %struct.asdl_seq* %call67, %struct.asdl_seq** %orelse, align 8
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %tobool68 = icmp ne %struct.asdl_seq* %62, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.65
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.65
  %63 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %64 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren71 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 4
  %65 = load i32, i32* %n_nchildren71, align 4
  %sub72 = sub i32 %65, 6
  %idxprom73 = sext i32 %sub72 to i64
  %66 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child74 = getelementptr inbounds %struct._node, %struct._node* %66, i32 0, i32 5
  %67 = load %struct._node*, %struct._node** %n_child74, align 8
  %arrayidx75 = getelementptr %struct._node, %struct._node* %67, i64 %idxprom73
  %call76 = call %struct._expr* @ast_for_expr(%struct.compiling* %63, %struct._node* %arrayidx75)
  store %struct._expr* %call76, %struct._expr** %expression44, align 8
  %68 = load %struct._expr*, %struct._expr** %expression44, align 8
  %tobool77 = icmp ne %struct._expr* %68, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.70
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.79:                                        ; preds = %if.end.70
  %69 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %70 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren80 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 4
  %71 = load i32, i32* %n_nchildren80, align 4
  %sub81 = sub i32 %71, 4
  %idxprom82 = sext i32 %sub81 to i64
  %72 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child83 = getelementptr inbounds %struct._node, %struct._node* %72, i32 0, i32 5
  %73 = load %struct._node*, %struct._node** %n_child83, align 8
  %arrayidx84 = getelementptr %struct._node, %struct._node* %73, i64 %idxprom82
  %call85 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %69, %struct._node* %arrayidx84)
  store %struct.asdl_seq* %call85, %struct.asdl_seq** %suite_seq45, align 8
  %74 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %tobool86 = icmp ne %struct.asdl_seq* %74, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.79
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.88:                                        ; preds = %if.end.79
  %75 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %76 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren89 = getelementptr inbounds %struct._node, %struct._node* %76, i32 0, i32 4
  %77 = load i32, i32* %n_nchildren89, align 4
  %sub90 = sub i32 %77, 1
  %idxprom91 = sext i32 %sub90 to i64
  %78 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child92 = getelementptr inbounds %struct._node, %struct._node* %78, i32 0, i32 5
  %79 = load %struct._node*, %struct._node** %n_child92, align 8
  %arrayidx93 = getelementptr %struct._node, %struct._node* %79, i64 %idxprom91
  %call94 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %75, %struct._node* %arrayidx93)
  store %struct.asdl_seq* %call94, %struct.asdl_seq** %suite_seq2, align 8
  %80 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq2, align 8
  %tobool95 = icmp ne %struct.asdl_seq* %80, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.end.88
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.97:                                        ; preds = %if.end.88
  %81 = load %struct._expr*, %struct._expr** %expression44, align 8
  %82 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %83 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq2, align 8
  %84 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren98 = getelementptr inbounds %struct._node, %struct._node* %84, i32 0, i32 4
  %85 = load i32, i32* %n_nchildren98, align 4
  %sub99 = sub i32 %85, 6
  %idxprom100 = sext i32 %sub99 to i64
  %86 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child101 = getelementptr inbounds %struct._node, %struct._node* %86, i32 0, i32 5
  %87 = load %struct._node*, %struct._node** %n_child101, align 8
  %arrayidx102 = getelementptr %struct._node, %struct._node* %87, i64 %idxprom100
  %n_lineno103 = getelementptr inbounds %struct._node, %struct._node* %arrayidx102, i32 0, i32 2
  %88 = load i32, i32* %n_lineno103, align 4
  %89 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren104 = getelementptr inbounds %struct._node, %struct._node* %89, i32 0, i32 4
  %90 = load i32, i32* %n_nchildren104, align 4
  %sub105 = sub i32 %90, 6
  %idxprom106 = sext i32 %sub105 to i64
  %91 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child107 = getelementptr inbounds %struct._node, %struct._node* %91, i32 0, i32 5
  %92 = load %struct._node*, %struct._node** %n_child107, align 8
  %arrayidx108 = getelementptr %struct._node, %struct._node* %92, i64 %idxprom106
  %n_col_offset109 = getelementptr inbounds %struct._node, %struct._node* %arrayidx108, i32 0, i32 3
  %93 = load i32, i32* %n_col_offset109, align 4
  %94 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena110 = getelementptr inbounds %struct.compiling, %struct.compiling* %94, i32 0, i32 1
  %95 = load %struct._arena*, %struct._arena** %c_arena110, align 8
  %call111 = call %struct._stmt* @_Py_If(%struct._expr* %81, %struct.asdl_seq* %82, %struct.asdl_seq* %83, i32 %88, i32 %93, %struct._arena* %95)
  %96 = bitcast %struct._stmt* %call111 to i8*
  %97 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %97, i32 0, i32 1
  %arrayidx112 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 0
  store i8* %96, i8** %arrayidx112, align 8
  %98 = load i32, i32* %n_elif, align 4
  %dec = add i32 %98, -1
  store i32 %dec, i32* %n_elif, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.97, %if.end.63
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.113
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %n_elif, align 4
  %cmp114 = icmp slt i32 %99, %100
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %101 = load i32, i32* %n_elif, align 4
  %102 = load i32, i32* %i, align 4
  %sub116 = sub i32 %101, %102
  %sub117 = sub i32 %sub116, 1
  %mul = mul i32 %sub117, 4
  %add118 = add i32 5, %mul
  store i32 %add118, i32* %off, align 4
  %103 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena119 = getelementptr inbounds %struct.compiling, %struct.compiling* %103, i32 0, i32 1
  %104 = load %struct._arena*, %struct._arena** %c_arena119, align 8
  %call120 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 1, %struct._arena* %104)
  store %struct.asdl_seq* %call120, %struct.asdl_seq** %newobj, align 8
  %105 = load %struct.asdl_seq*, %struct.asdl_seq** %newobj, align 8
  %tobool121 = icmp ne %struct.asdl_seq* %105, null
  br i1 %tobool121, label %if.end.123, label %if.then.122

if.then.122:                                      ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.123:                                       ; preds = %for.body
  %106 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %107 = load i32, i32* %off, align 4
  %idxprom124 = sext i32 %107 to i64
  %108 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child125 = getelementptr inbounds %struct._node, %struct._node* %108, i32 0, i32 5
  %109 = load %struct._node*, %struct._node** %n_child125, align 8
  %arrayidx126 = getelementptr %struct._node, %struct._node* %109, i64 %idxprom124
  %call127 = call %struct._expr* @ast_for_expr(%struct.compiling* %106, %struct._node* %arrayidx126)
  store %struct._expr* %call127, %struct._expr** %expression44, align 8
  %110 = load %struct._expr*, %struct._expr** %expression44, align 8
  %tobool128 = icmp ne %struct._expr* %110, null
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %if.end.123
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.130:                                       ; preds = %if.end.123
  %111 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %112 = load i32, i32* %off, align 4
  %add131 = add i32 %112, 2
  %idxprom132 = sext i32 %add131 to i64
  %113 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child133 = getelementptr inbounds %struct._node, %struct._node* %113, i32 0, i32 5
  %114 = load %struct._node*, %struct._node** %n_child133, align 8
  %arrayidx134 = getelementptr %struct._node, %struct._node* %114, i64 %idxprom132
  %call135 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %111, %struct._node* %arrayidx134)
  store %struct.asdl_seq* %call135, %struct.asdl_seq** %suite_seq45, align 8
  %115 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %tobool136 = icmp ne %struct.asdl_seq* %115, null
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %if.end.130
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.138:                                       ; preds = %if.end.130
  %116 = load %struct._expr*, %struct._expr** %expression44, align 8
  %117 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %118 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %119 = load i32, i32* %off, align 4
  %idxprom139 = sext i32 %119 to i64
  %120 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child140 = getelementptr inbounds %struct._node, %struct._node* %120, i32 0, i32 5
  %121 = load %struct._node*, %struct._node** %n_child140, align 8
  %arrayidx141 = getelementptr %struct._node, %struct._node* %121, i64 %idxprom139
  %n_lineno142 = getelementptr inbounds %struct._node, %struct._node* %arrayidx141, i32 0, i32 2
  %122 = load i32, i32* %n_lineno142, align 4
  %123 = load i32, i32* %off, align 4
  %idxprom143 = sext i32 %123 to i64
  %124 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child144 = getelementptr inbounds %struct._node, %struct._node* %124, i32 0, i32 5
  %125 = load %struct._node*, %struct._node** %n_child144, align 8
  %arrayidx145 = getelementptr %struct._node, %struct._node* %125, i64 %idxprom143
  %n_col_offset146 = getelementptr inbounds %struct._node, %struct._node* %arrayidx145, i32 0, i32 3
  %126 = load i32, i32* %n_col_offset146, align 4
  %127 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena147 = getelementptr inbounds %struct.compiling, %struct.compiling* %127, i32 0, i32 1
  %128 = load %struct._arena*, %struct._arena** %c_arena147, align 8
  %call148 = call %struct._stmt* @_Py_If(%struct._expr* %116, %struct.asdl_seq* %117, %struct.asdl_seq* %118, i32 %122, i32 %126, %struct._arena* %128)
  %129 = bitcast %struct._stmt* %call148 to i8*
  %130 = load %struct.asdl_seq*, %struct.asdl_seq** %newobj, align 8
  %elements149 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %130, i32 0, i32 1
  %arrayidx150 = getelementptr [1 x i8*], [1 x i8*]* %elements149, i32 0, i64 0
  store i8* %129, i8** %arrayidx150, align 8
  %131 = load %struct.asdl_seq*, %struct.asdl_seq** %newobj, align 8
  store %struct.asdl_seq* %131, %struct.asdl_seq** %orelse, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %132 = load i32, i32* %i, align 4
  %inc = add i32 %132, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %133 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %134 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child151 = getelementptr inbounds %struct._node, %struct._node* %134, i32 0, i32 5
  %135 = load %struct._node*, %struct._node** %n_child151, align 8
  %arrayidx152 = getelementptr %struct._node, %struct._node* %135, i64 1
  %call153 = call %struct._expr* @ast_for_expr(%struct.compiling* %133, %struct._node* %arrayidx152)
  store %struct._expr* %call153, %struct._expr** %expression44, align 8
  %136 = load %struct._expr*, %struct._expr** %expression44, align 8
  %tobool154 = icmp ne %struct._expr* %136, null
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %for.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.156:                                       ; preds = %for.end
  %137 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %138 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child157 = getelementptr inbounds %struct._node, %struct._node* %138, i32 0, i32 5
  %139 = load %struct._node*, %struct._node** %n_child157, align 8
  %arrayidx158 = getelementptr %struct._node, %struct._node* %139, i64 3
  %call159 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %137, %struct._node* %arrayidx158)
  store %struct.asdl_seq* %call159, %struct.asdl_seq** %suite_seq45, align 8
  %140 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %tobool160 = icmp ne %struct.asdl_seq* %140, null
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %if.end.156
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.162:                                       ; preds = %if.end.156
  %141 = load %struct._expr*, %struct._expr** %expression44, align 8
  %142 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq45, align 8
  %143 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %144 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno163 = getelementptr inbounds %struct._node, %struct._node* %144, i32 0, i32 2
  %145 = load i32, i32* %n_lineno163, align 4
  %146 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset164 = getelementptr inbounds %struct._node, %struct._node* %146, i32 0, i32 3
  %147 = load i32, i32* %n_col_offset164, align 4
  %148 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena165 = getelementptr inbounds %struct.compiling, %struct.compiling* %148, i32 0, i32 1
  %149 = load %struct._arena*, %struct._arena** %c_arena165, align 8
  %call166 = call %struct._stmt* @_Py_If(%struct._expr* %141, %struct.asdl_seq* %142, %struct.asdl_seq* %143, i32 %145, i32 %147, %struct._arena* %149)
  store %struct._stmt* %call166, %struct._stmt** %retval
  br label %return

if.end.167:                                       ; preds = %if.else
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167
  %150 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %151 = load i8*, i8** %s, align 8
  %call169 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.124, i32 0, i32 0), i8* %151)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.168, %if.end.162, %if.then.161, %if.then.155, %if.then.137, %if.then.129, %if.then.122, %if.then.96, %if.then.87, %if.then.78, %if.then.69, %if.end.34, %if.then.33, %if.then.27, %if.then.21, %if.end.7, %if.then.6, %if.then.1
  %152 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %152
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_while_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %expression = alloca %struct._expr*, align 8
  %suite_seq = alloca %struct.asdl_seq*, align 8
  %expression12 = alloca %struct._expr*, align 8
  %seq1 = alloca %struct.asdl_seq*, align 8
  %seq2 = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 1
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %expression, align 8
  %5 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool = icmp ne %struct._expr* %5, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %8, i64 3
  %call4 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %6, %struct._node* %arrayidx3)
  store %struct.asdl_seq* %call4, %struct.asdl_seq** %suite_seq, align 8
  %9 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %tobool5 = icmp ne %struct.asdl_seq* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._expr*, %struct._expr** %expression, align 8
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 2
  %13 = load i32, i32* %n_lineno, align 4
  %14 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 3
  %15 = load i32, i32* %n_col_offset, align 4
  %16 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %16, i32 0, i32 1
  %17 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call8 = call %struct._stmt* @_Py_While(%struct._expr* %10, %struct.asdl_seq* %11, %struct.asdl_seq* null, i32 %13, i32 %15, %struct._arena* %17)
  store %struct._stmt* %call8, %struct._stmt** %retval
  br label %return

if.else:                                          ; preds = %entry
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren9 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 4
  %19 = load i32, i32* %n_nchildren9, align 4
  %cmp10 = icmp eq i32 %19, 7
  br i1 %cmp10, label %if.then.11, label %if.end.35

if.then.11:                                       ; preds = %if.else
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %21 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %22, i64 1
  %call15 = call %struct._expr* @ast_for_expr(%struct.compiling* %20, %struct._node* %arrayidx14)
  store %struct._expr* %call15, %struct._expr** %expression12, align 8
  %23 = load %struct._expr*, %struct._expr** %expression12, align 8
  %tobool16 = icmp ne %struct._expr* %23, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.11
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.11
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %26, i64 3
  %call21 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %24, %struct._node* %arrayidx20)
  store %struct.asdl_seq* %call21, %struct.asdl_seq** %seq1, align 8
  %27 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1, align 8
  %tobool22 = icmp ne %struct.asdl_seq* %27, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %28 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %30, i64 6
  %call27 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %28, %struct._node* %arrayidx26)
  store %struct.asdl_seq* %call27, %struct.asdl_seq** %seq2, align 8
  %31 = load %struct.asdl_seq*, %struct.asdl_seq** %seq2, align 8
  %tobool28 = icmp ne %struct.asdl_seq* %31, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.24
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.24
  %32 = load %struct._expr*, %struct._expr** %expression12, align 8
  %33 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1, align 8
  %34 = load %struct.asdl_seq*, %struct.asdl_seq** %seq2, align 8
  %35 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno31 = getelementptr inbounds %struct._node, %struct._node* %35, i32 0, i32 2
  %36 = load i32, i32* %n_lineno31, align 4
  %37 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset32 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 3
  %38 = load i32, i32* %n_col_offset32, align 4
  %39 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena33 = getelementptr inbounds %struct.compiling, %struct.compiling* %39, i32 0, i32 1
  %40 = load %struct._arena*, %struct._arena** %c_arena33, align 8
  %call34 = call %struct._stmt* @_Py_While(%struct._expr* %32, %struct.asdl_seq* %33, %struct.asdl_seq* %34, i32 %36, i32 %38, %struct._arena* %40)
  store %struct._stmt* %call34, %struct._stmt** %retval
  br label %return

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35
  %41 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %42 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren37 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 4
  %43 = load i32, i32* %n_nchildren37, align 4
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i32 0, i32 0), i32 %43)
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.end.30, %if.then.29, %if.then.23, %if.then.17, %if.end.7, %if.then.6, %if.then.1
  %44 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_for_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %_target = alloca %struct.asdl_seq*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %suite_seq = alloca %struct.asdl_seq*, align 8
  %expression = alloca %struct._expr*, align 8
  %target = alloca %struct._expr*, align 8
  %first = alloca %struct._expr*, align 8
  %node_target = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %seq, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 8
  %call = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %seq, align 8
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %5, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %7, i64 1
  store %struct._node* %arrayidx4, %struct._node** %node_target, align 8
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load %struct._node*, %struct._node** %node_target, align 8
  %call5 = call %struct.asdl_seq* @ast_for_exprlist(%struct.compiling* %8, %struct._node* %9, i32 2)
  store %struct.asdl_seq* %call5, %struct.asdl_seq** %_target, align 8
  %10 = load %struct.asdl_seq*, %struct.asdl_seq** %_target, align 8
  %tobool6 = icmp ne %struct.asdl_seq* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.2
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.2
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %_target, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %11, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 0
  %12 = load i8*, i8** %arrayidx9, align 8
  %13 = bitcast i8* %12 to %struct._expr*
  store %struct._expr* %13, %struct._expr** %first, align 8
  %14 = load %struct._node*, %struct._node** %node_target, align 8
  %n_nchildren10 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 4
  %15 = load i32, i32* %n_nchildren10, align 4
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  %16 = load %struct._expr*, %struct._expr** %first, align 8
  store %struct._expr* %16, %struct._expr** %target, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.8
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %_target, align 8
  %18 = load %struct._expr*, %struct._expr** %first, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %18, i32 0, i32 2
  %19 = load i32, i32* %lineno, align 4
  %20 = load %struct._expr*, %struct._expr** %first, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %20, i32 0, i32 3
  %21 = load i32, i32* %col_offset, align 4
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %22, i32 0, i32 1
  %23 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call13 = call %struct._expr* @_Py_Tuple(%struct.asdl_seq* %17, i32 2, i32 %19, i32 %21, %struct._arena* %23)
  store %struct._expr* %call13, %struct._expr** %target, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  %24 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %25 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %26, i64 3
  %call17 = call %struct._expr* @ast_for_testlist(%struct.compiling* %24, %struct._node* %arrayidx16)
  store %struct._expr* %call17, %struct._expr** %expression, align 8
  %27 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool18 = icmp ne %struct._expr* %27, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %28 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %30, i64 5
  %call23 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %28, %struct._node* %arrayidx22)
  store %struct.asdl_seq* %call23, %struct.asdl_seq** %suite_seq, align 8
  %31 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %tobool24 = icmp ne %struct.asdl_seq* %31, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %32 = load %struct._expr*, %struct._expr** %target, align 8
  %33 = load %struct._expr*, %struct._expr** %expression, align 8
  %34 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %35 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 2
  %37 = load i32, i32* %n_lineno, align 4
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 3
  %39 = load i32, i32* %n_col_offset, align 4
  %40 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena27 = getelementptr inbounds %struct.compiling, %struct.compiling* %40, i32 0, i32 1
  %41 = load %struct._arena*, %struct._arena** %c_arena27, align 8
  %call28 = call %struct._stmt* @_Py_For(%struct._expr* %32, %struct._expr* %33, %struct.asdl_seq* %34, %struct.asdl_seq* %35, i32 %37, i32 %39, %struct._arena* %41)
  store %struct._stmt* %call28, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.19, %if.then.7, %if.then.1
  %42 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_try_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %n_except = alloca i32, align 4
  %body = alloca %struct.asdl_seq*, align 8
  %handlers = alloca %struct.asdl_seq*, align 8
  %orelse = alloca %struct.asdl_seq*, align 8
  %finally = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct._excepthandler*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %sub = sub i32 %2, 3
  %div = sdiv i32 %sub, 3
  store i32 %div, i32* %n_except, align 4
  store %struct.asdl_seq* null, %struct.asdl_seq** %handlers, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %orelse, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %finally, align 8
  %3 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 2
  %call = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %3, %struct._node* %arrayidx)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %body, align 8
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %cmp = icmp eq %struct.asdl_seq* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %nch, align 4
  %sub1 = sub i32 %7, 3
  %idxprom = sext i32 %sub1 to i64
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx3, i32 0, i32 0
  %10 = load i16, i16* %n_type, align 2
  %conv = sext i16 %10 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then.6, label %if.else.57

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %nch, align 4
  %sub7 = sub i32 %11, 3
  %idxprom8 = sext i32 %sub7 to i64
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx10, i32 0, i32 1
  %14 = load i8*, i8** %n_str, align 8
  %call11 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0)) #8
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.6
  %15 = load i32, i32* %nch, align 4
  %cmp15 = icmp sge i32 %15, 9
  br i1 %cmp15, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then.14
  %16 = load i32, i32* %nch, align 4
  %sub17 = sub i32 %16, 6
  %idxprom18 = sext i32 %sub17 to i64
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom18
  %n_type21 = getelementptr inbounds %struct._node, %struct._node* %arrayidx20, i32 0, i32 0
  %19 = load i16, i16* %n_type21, align 2
  %conv22 = sext i16 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 1
  br i1 %cmp23, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %land.lhs.true
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %21 = load i32, i32* %nch, align 4
  %sub26 = sub i32 %21, 4
  %idxprom27 = sext i32 %sub26 to i64
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child28 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child28, align 8
  %arrayidx29 = getelementptr %struct._node, %struct._node* %23, i64 %idxprom27
  %call30 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %20, %struct._node* %arrayidx29)
  store %struct.asdl_seq* %call30, %struct.asdl_seq** %orelse, align 8
  %24 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %cmp31 = icmp eq %struct.asdl_seq* %24, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.25
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.25
  %25 = load i32, i32* %n_except, align 4
  %dec = add i32 %25, -1
  store i32 %dec, i32* %n_except, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %if.then.14
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load i32, i32* %nch, align 4
  %sub36 = sub i32 %27, 1
  %idxprom37 = sext i32 %sub36 to i64
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child38 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child38, align 8
  %arrayidx39 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom37
  %call40 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %26, %struct._node* %arrayidx39)
  store %struct.asdl_seq* %call40, %struct.asdl_seq** %finally, align 8
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %finally, align 8
  %cmp41 = icmp eq %struct.asdl_seq* %30, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.35
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.35
  %31 = load i32, i32* %n_except, align 4
  %dec45 = add i32 %31, -1
  store i32 %dec45, i32* %n_except, align 4
  br label %if.end.56

if.else:                                          ; preds = %if.then.6
  %32 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %33 = load i32, i32* %nch, align 4
  %sub46 = sub i32 %33, 1
  %idxprom47 = sext i32 %sub46 to i64
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child48 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5
  %35 = load %struct._node*, %struct._node** %n_child48, align 8
  %arrayidx49 = getelementptr %struct._node, %struct._node* %35, i64 %idxprom47
  %call50 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %32, %struct._node* %arrayidx49)
  store %struct.asdl_seq* %call50, %struct.asdl_seq** %orelse, align 8
  %36 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %cmp51 = icmp eq %struct.asdl_seq* %36, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.54:                                        ; preds = %if.else
  %37 = load i32, i32* %n_except, align 4
  %dec55 = add i32 %37, -1
  store i32 %dec55, i32* %n_except, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %if.end.44
  br label %if.end.69

if.else.57:                                       ; preds = %if.end
  %38 = load i32, i32* %nch, align 4
  %sub58 = sub i32 %38, 3
  %idxprom59 = sext i32 %sub58 to i64
  %39 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child60 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child60, align 8
  %arrayidx61 = getelementptr %struct._node, %struct._node* %40, i64 %idxprom59
  %n_type62 = getelementptr inbounds %struct._node, %struct._node* %arrayidx61, i32 0, i32 0
  %41 = load i16, i16* %n_type62, align 2
  %conv63 = sext i16 %41 to i32
  %cmp64 = icmp ne i32 %conv63, 300
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.else.57
  %42 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %43 = load %struct._node*, %struct._node** %n.addr, align 8
  %call67 = call i32 @ast_error(%struct.compiling* %42, %struct._node* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.127, i32 0, i32 0))
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.68:                                        ; preds = %if.else.57
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.56
  %44 = load i32, i32* %n_except, align 4
  %cmp70 = icmp sgt i32 %44, 0
  br i1 %cmp70, label %if.then.72, label %if.end.94

if.then.72:                                       ; preds = %if.end.69
  %45 = load i32, i32* %n_except, align 4
  %conv73 = sext i32 %45 to i64
  %46 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %46, i32 0, i32 1
  %47 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call74 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv73, %struct._arena* %47)
  store %struct.asdl_seq* %call74, %struct.asdl_seq** %handlers, align 8
  %48 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers, align 8
  %cmp75 = icmp eq %struct.asdl_seq* %48, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.72
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.78:                                        ; preds = %if.then.72
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.78
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n_except, align 4
  %cmp79 = icmp slt i32 %49, %50
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %52 = load i32, i32* %i, align 4
  %mul = mul i32 %52, 3
  %add = add i32 3, %mul
  %idxprom81 = sext i32 %add to i64
  %53 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child82 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 5
  %54 = load %struct._node*, %struct._node** %n_child82, align 8
  %arrayidx83 = getelementptr %struct._node, %struct._node* %54, i64 %idxprom81
  %55 = load i32, i32* %i, align 4
  %mul84 = mul i32 %55, 3
  %add85 = add i32 5, %mul84
  %idxprom86 = sext i32 %add85 to i64
  %56 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child87 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 5
  %57 = load %struct._node*, %struct._node** %n_child87, align 8
  %arrayidx88 = getelementptr %struct._node, %struct._node* %57, i64 %idxprom86
  %call89 = call %struct._excepthandler* @ast_for_except_clause(%struct.compiling* %51, %struct._node* %arrayidx83, %struct._node* %arrayidx88)
  store %struct._excepthandler* %call89, %struct._excepthandler** %e, align 8
  %58 = load %struct._excepthandler*, %struct._excepthandler** %e, align 8
  %tobool = icmp ne %struct._excepthandler* %58, null
  br i1 %tobool, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.91:                                        ; preds = %for.body
  %59 = load %struct._excepthandler*, %struct._excepthandler** %e, align 8
  %60 = bitcast %struct._excepthandler* %59 to i8*
  %61 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %61 to i64
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %62, i32 0, i32 1
  %arrayidx93 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom92
  store i8* %60, i8** %arrayidx93, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %63 = load i32, i32* %i, align 4
  %inc = add i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %if.end.69
  %64 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %65 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers, align 8
  %66 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %67 = load %struct.asdl_seq*, %struct.asdl_seq** %finally, align 8
  %68 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %68, i32 0, i32 2
  %69 = load i32, i32* %n_lineno, align 4
  %70 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 3
  %71 = load i32, i32* %n_col_offset, align 4
  %72 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena95 = getelementptr inbounds %struct.compiling, %struct.compiling* %72, i32 0, i32 1
  %73 = load %struct._arena*, %struct._arena** %c_arena95, align 8
  %call96 = call %struct._stmt* @_Py_Try(%struct.asdl_seq* %64, %struct.asdl_seq* %65, %struct.asdl_seq* %66, %struct.asdl_seq* %67, i32 %69, i32 %71, %struct._arena* %73)
  store %struct._stmt* %call96, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.90, %if.then.77, %if.then.66, %if.then.53, %if.then.43, %if.then.33, %if.then
  %74 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %74
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_with_stmt(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %n_items = alloca i32, align 4
  %items = alloca %struct.asdl_seq*, align 8
  %body = alloca %struct.asdl_seq*, align 8
  %item = alloca %struct._withitem*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %1, 2
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %n_items, align 4
  %2 = load i32, i32* %n_items, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %3, i32 0, i32 1
  %4 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %4)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %items, align 8
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %items, align 8
  %tobool = icmp ne %struct.asdl_seq* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 4
  %8 = load i32, i32* %n_nchildren1, align 4
  %sub2 = sub i32 %8, 2
  %cmp = icmp slt i32 %6, %sub2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  %call4 = call %struct._withitem* @ast_for_with_item(%struct.compiling* %9, %struct._node* %arrayidx)
  store %struct._withitem* %call4, %struct._withitem** %item, align 8
  %13 = load %struct._withitem*, %struct._withitem** %item, align 8
  %tobool5 = icmp ne %struct._withitem* %13, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  %14 = load %struct._withitem*, %struct._withitem** %item, align 8
  %15 = bitcast %struct._withitem* %14 to i8*
  %16 = load i32, i32* %i, align 4
  %sub8 = sub i32 %16, 1
  %div9 = sdiv i32 %sub8, 2
  %idxprom10 = sext i32 %div9 to i64
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %items, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %17, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom10
  store i8* %15, i8** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %18 = load i32, i32* %i, align 4
  %add = add i32 %18, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren12 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 4
  %21 = load i32, i32* %n_nchildren12, align 4
  %sub13 = sub i32 %21, 1
  %idxprom14 = sext i32 %sub13 to i64
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %23, i64 %idxprom14
  %call17 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %19, %struct._node* %arrayidx16)
  store %struct.asdl_seq* %call17, %struct.asdl_seq** %body, align 8
  %24 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %tobool18 = icmp ne %struct.asdl_seq* %24, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.20:                                        ; preds = %for.end
  %25 = load %struct.asdl_seq*, %struct.asdl_seq** %items, align 8
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 2
  %28 = load i32, i32* %n_lineno, align 4
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 3
  %30 = load i32, i32* %n_col_offset, align 4
  %31 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena21 = getelementptr inbounds %struct.compiling, %struct.compiling* %31, i32 0, i32 1
  %32 = load %struct._arena*, %struct._arena** %c_arena21, align 8
  %call22 = call %struct._stmt* @_Py_With(%struct.asdl_seq* %25, %struct.asdl_seq* %26, i32 %28, i32 %30, %struct._arena* %32)
  store %struct._stmt* %call22, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.6, %if.then
  %33 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_funcdef(%struct.compiling* %c, %struct._node* %n, %struct.asdl_seq* %decorator_seq) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %decorator_seq.addr = alloca %struct.asdl_seq*, align 8
  %name = alloca %struct._object*, align 8
  %args = alloca %struct._arguments*, align 8
  %body = alloca %struct.asdl_seq*, align 8
  %returns = alloca %struct._expr*, align 8
  %name_i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.asdl_seq* %decorator_seq, %struct.asdl_seq** %decorator_seq.addr, align 8
  store %struct._expr* null, %struct._expr** %returns, align 8
  store i32 1, i32* %name_i, align 4
  %0 = load i32, i32* %name_i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 %idxprom
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %n_str, align 8
  %4 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call = call %struct._object* @new_identifier(i8* %3, %struct.compiling* %4)
  store %struct._object* %call, %struct._object** %name, align 8
  %5 = load %struct._object*, %struct._object** %name, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._object*, %struct._object** %name, align 8
  %8 = load i32, i32* %name_i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %10, i64 %idxprom1
  %call4 = call i32 @forbidden_name(%struct.compiling* %6, %struct._object* %7, %struct._node* %arrayidx3, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %12 = load i32, i32* %name_i, align 4
  %add = add i32 %12, 1
  %idxprom8 = sext i32 %add to i64
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %14, i64 %idxprom8
  %call11 = call %struct._arguments* @ast_for_arguments(%struct.compiling* %11, %struct._node* %arrayidx10)
  store %struct._arguments* %call11, %struct._arguments** %args, align 8
  %15 = load %struct._arguments*, %struct._arguments** %args, align 8
  %tobool12 = icmp ne %struct._arguments* %15, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.7
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %16 = load i32, i32* %name_i, align 4
  %add15 = add i32 %16, 2
  %idxprom16 = sext i32 %add15 to i64
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom16
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx18, i32 0, i32 0
  %19 = load i16, i16* %n_type, align 2
  %conv = sext i16 %19 to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.14
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %21 = load i32, i32* %name_i, align 4
  %add21 = add i32 %21, 3
  %idxprom22 = sext i32 %add21 to i64
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %23, i64 %idxprom22
  %call25 = call %struct._expr* @ast_for_expr(%struct.compiling* %20, %struct._node* %arrayidx24)
  store %struct._expr* %call25, %struct._expr** %returns, align 8
  %24 = load %struct._expr*, %struct._expr** %returns, align 8
  %tobool26 = icmp ne %struct._expr* %24, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.20
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.20
  %25 = load i32, i32* %name_i, align 4
  %add29 = add i32 %25, 2
  store i32 %add29, i32* %name_i, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.end.14
  %26 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %27 = load i32, i32* %name_i, align 4
  %add31 = add i32 %27, 3
  %idxprom32 = sext i32 %add31 to i64
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom32
  %call35 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %26, %struct._node* %arrayidx34)
  store %struct.asdl_seq* %call35, %struct.asdl_seq** %body, align 8
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %tobool36 = icmp ne %struct.asdl_seq* %30, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.30
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.30
  %31 = load %struct._object*, %struct._object** %name, align 8
  %32 = load %struct._arguments*, %struct._arguments** %args, align 8
  %33 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %34 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq.addr, align 8
  %35 = load %struct._expr*, %struct._expr** %returns, align 8
  %36 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 2
  %37 = load i32, i32* %n_lineno, align 4
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 3
  %39 = load i32, i32* %n_col_offset, align 4
  %40 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %40, i32 0, i32 1
  %41 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call39 = call %struct._stmt* @_Py_FunctionDef(%struct._object* %31, %struct._arguments* %32, %struct.asdl_seq* %33, %struct.asdl_seq* %34, %struct._expr* %35, i32 %37, i32 %39, %struct._arena* %41)
  store %struct._stmt* %call39, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.37, %if.then.27, %if.then.13, %if.then.6, %if.then
  %42 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_classdef(%struct.compiling* %c, %struct._node* %n, %struct.asdl_seq* %decorator_seq) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %decorator_seq.addr = alloca %struct.asdl_seq*, align 8
  %classname = alloca %struct._object*, align 8
  %s = alloca %struct.asdl_seq*, align 8
  %call = alloca %struct._expr*, align 8
  %dummy_name = alloca %struct._object*, align 8
  %dummy = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct.asdl_seq* %decorator_seq, %struct.asdl_seq** %decorator_seq.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 3
  %call1 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %2, %struct._node* %arrayidx)
  store %struct.asdl_seq* %call1, %struct.asdl_seq** %s, align 8
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool = icmp ne %struct.asdl_seq* %5, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %7, i64 1
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx4, i32 0, i32 1
  %8 = load i8*, i8** %n_str, align 8
  %9 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call5 = call %struct._object* @new_identifier(i8* %8, %struct.compiling* %9)
  store %struct._object* %call5, %struct._object** %classname, align 8
  %10 = load %struct._object*, %struct._object** %classname, align 8
  %tobool6 = icmp ne %struct._object* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %12 = load %struct._object*, %struct._object** %classname, align 8
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %14, i64 3
  %call11 = call i32 @forbidden_name(%struct.compiling* %11, %struct._object* %12, %struct._node* %arrayidx10, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %classname, align 8
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq.addr, align 8
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 2
  %19 = load i32, i32* %n_lineno, align 4
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 3
  %21 = load i32, i32* %n_col_offset, align 4
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %22, i32 0, i32 1
  %23 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call15 = call %struct._stmt* @_Py_ClassDef(%struct._object* %15, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._expr* null, %struct._expr* null, %struct.asdl_seq* %16, %struct.asdl_seq* %17, i32 %19, i32 %21, %struct._arena* %23)
  store %struct._stmt* %call15, %struct._stmt** %retval
  br label %return

if.end.16:                                        ; preds = %entry
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %25, i64 3
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx18, i32 0, i32 0
  %26 = load i16, i16* %n_type, align 2
  %conv = sext i16 %26 to i32
  %cmp19 = icmp eq i32 %conv, 8
  br i1 %cmp19, label %if.then.21, label %if.end.45

if.then.21:                                       ; preds = %if.end.16
  %27 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %28 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %29, i64 5
  %call24 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %27, %struct._node* %arrayidx23)
  store %struct.asdl_seq* %call24, %struct.asdl_seq** %s, align 8
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool25 = icmp ne %struct.asdl_seq* %30, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.21
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.21
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child28 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child28, align 8
  %arrayidx29 = getelementptr %struct._node, %struct._node* %32, i64 1
  %n_str30 = getelementptr inbounds %struct._node, %struct._node* %arrayidx29, i32 0, i32 1
  %33 = load i8*, i8** %n_str30, align 8
  %34 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call31 = call %struct._object* @new_identifier(i8* %33, %struct.compiling* %34)
  store %struct._object* %call31, %struct._object** %classname, align 8
  %35 = load %struct._object*, %struct._object** %classname, align 8
  %tobool32 = icmp ne %struct._object* %35, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.27
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.27
  %36 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %37 = load %struct._object*, %struct._object** %classname, align 8
  %38 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 5
  %39 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %39, i64 3
  %call37 = call i32 @forbidden_name(%struct.compiling* %36, %struct._object* %37, %struct._node* %arrayidx36, i32 0)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** %classname, align 8
  %41 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %42 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq.addr, align 8
  %43 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno41 = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 2
  %44 = load i32, i32* %n_lineno41, align 4
  %45 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset42 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 3
  %46 = load i32, i32* %n_col_offset42, align 4
  %47 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena43 = getelementptr inbounds %struct.compiling, %struct.compiling* %47, i32 0, i32 1
  %48 = load %struct._arena*, %struct._arena** %c_arena43, align 8
  %call44 = call %struct._stmt* @_Py_ClassDef(%struct._object* %40, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._expr* null, %struct._expr* null, %struct.asdl_seq* %41, %struct.asdl_seq* %42, i32 %44, i32 %46, %struct._arena* %48)
  store %struct._stmt* %call44, %struct._stmt** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.16
  %49 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child46 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child46, align 8
  %arrayidx47 = getelementptr %struct._node, %struct._node* %50, i64 1
  %n_str48 = getelementptr inbounds %struct._node, %struct._node* %arrayidx47, i32 0, i32 1
  %51 = load i8*, i8** %n_str48, align 8
  %52 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call49 = call %struct._object* @new_identifier(i8* %51, %struct.compiling* %52)
  store %struct._object* %call49, %struct._object** %dummy_name, align 8
  %53 = load %struct._object*, %struct._object** %dummy_name, align 8
  %tobool50 = icmp ne %struct._object* %53, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.45
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.45
  %54 = load %struct._object*, %struct._object** %dummy_name, align 8
  %55 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno53 = getelementptr inbounds %struct._node, %struct._node* %55, i32 0, i32 2
  %56 = load i32, i32* %n_lineno53, align 4
  %57 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset54 = getelementptr inbounds %struct._node, %struct._node* %57, i32 0, i32 3
  %58 = load i32, i32* %n_col_offset54, align 4
  %59 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena55 = getelementptr inbounds %struct.compiling, %struct.compiling* %59, i32 0, i32 1
  %60 = load %struct._arena*, %struct._arena** %c_arena55, align 8
  %call56 = call %struct._expr* @_Py_Name(%struct._object* %54, i32 1, i32 %56, i32 %58, %struct._arena* %60)
  store %struct._expr* %call56, %struct._expr** %dummy, align 8
  %61 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %62 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %62, i32 0, i32 5
  %63 = load %struct._node*, %struct._node** %n_child57, align 8
  %arrayidx58 = getelementptr %struct._node, %struct._node* %63, i64 3
  %64 = load %struct._expr*, %struct._expr** %dummy, align 8
  %call59 = call %struct._expr* @ast_for_call(%struct.compiling* %61, %struct._node* %arrayidx58, %struct._expr* %64)
  store %struct._expr* %call59, %struct._expr** %call, align 8
  %65 = load %struct._expr*, %struct._expr** %call, align 8
  %tobool60 = icmp ne %struct._expr* %65, null
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.52
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.52
  %66 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %67 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %67, i32 0, i32 5
  %68 = load %struct._node*, %struct._node** %n_child63, align 8
  %arrayidx64 = getelementptr %struct._node, %struct._node* %68, i64 6
  %call65 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %66, %struct._node* %arrayidx64)
  store %struct.asdl_seq* %call65, %struct.asdl_seq** %s, align 8
  %69 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %tobool66 = icmp ne %struct.asdl_seq* %69, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.62
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.62
  %70 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child69 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 5
  %71 = load %struct._node*, %struct._node** %n_child69, align 8
  %arrayidx70 = getelementptr %struct._node, %struct._node* %71, i64 1
  %n_str71 = getelementptr inbounds %struct._node, %struct._node* %arrayidx70, i32 0, i32 1
  %72 = load i8*, i8** %n_str71, align 8
  %73 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call72 = call %struct._object* @new_identifier(i8* %72, %struct.compiling* %73)
  store %struct._object* %call72, %struct._object** %classname, align 8
  %74 = load %struct._object*, %struct._object** %classname, align 8
  %tobool73 = icmp ne %struct._object* %74, null
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.68
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.68
  %75 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %76 = load %struct._object*, %struct._object** %classname, align 8
  %77 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child76 = getelementptr inbounds %struct._node, %struct._node* %77, i32 0, i32 5
  %78 = load %struct._node*, %struct._node** %n_child76, align 8
  %arrayidx77 = getelementptr %struct._node, %struct._node* %78, i64 1
  %call78 = call i32 @forbidden_name(%struct.compiling* %75, %struct._object* %76, %struct._node* %arrayidx77, i32 0)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.75
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end.81:                                        ; preds = %if.end.75
  %79 = load %struct._object*, %struct._object** %classname, align 8
  %80 = load %struct._expr*, %struct._expr** %call, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %80, i32 0, i32 1
  %Call = bitcast %union.anon.2* %v to %struct.anon.17*
  %args = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call, i32 0, i32 1
  %81 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %82 = load %struct._expr*, %struct._expr** %call, align 8
  %v82 = getelementptr inbounds %struct._expr, %struct._expr* %82, i32 0, i32 1
  %Call83 = bitcast %union.anon.2* %v82 to %struct.anon.17*
  %keywords = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call83, i32 0, i32 2
  %83 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  %84 = load %struct._expr*, %struct._expr** %call, align 8
  %v84 = getelementptr inbounds %struct._expr, %struct._expr* %84, i32 0, i32 1
  %Call85 = bitcast %union.anon.2* %v84 to %struct.anon.17*
  %starargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call85, i32 0, i32 3
  %85 = load %struct._expr*, %struct._expr** %starargs, align 8
  %86 = load %struct._expr*, %struct._expr** %call, align 8
  %v86 = getelementptr inbounds %struct._expr, %struct._expr* %86, i32 0, i32 1
  %Call87 = bitcast %union.anon.2* %v86 to %struct.anon.17*
  %kwargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call87, i32 0, i32 4
  %87 = load %struct._expr*, %struct._expr** %kwargs, align 8
  %88 = load %struct.asdl_seq*, %struct.asdl_seq** %s, align 8
  %89 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq.addr, align 8
  %90 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno88 = getelementptr inbounds %struct._node, %struct._node* %90, i32 0, i32 2
  %91 = load i32, i32* %n_lineno88, align 4
  %92 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset89 = getelementptr inbounds %struct._node, %struct._node* %92, i32 0, i32 3
  %93 = load i32, i32* %n_col_offset89, align 4
  %94 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena90 = getelementptr inbounds %struct.compiling, %struct.compiling* %94, i32 0, i32 1
  %95 = load %struct._arena*, %struct._arena** %c_arena90, align 8
  %call91 = call %struct._stmt* @_Py_ClassDef(%struct._object* %79, %struct.asdl_seq* %81, %struct.asdl_seq* %83, %struct._expr* %85, %struct._expr* %87, %struct.asdl_seq* %88, %struct.asdl_seq* %89, i32 %91, i32 %93, %struct._arena* %95)
  store %struct._stmt* %call91, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.80, %if.then.74, %if.then.67, %if.then.61, %if.then.51, %if.end.40, %if.then.39, %if.then.33, %if.then.26, %if.end.14, %if.then.13, %if.then.7, %if.then.2
  %96 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %96
}

; Function Attrs: nounwind uwtable
define internal %struct._stmt* @ast_for_decorated(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._stmt*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %thing = alloca %struct._stmt*, align 8
  %decorator_seq = alloca %struct.asdl_seq*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._stmt* null, %struct._stmt** %thing, align 8
  store %struct.asdl_seq* null, %struct.asdl_seq** %decorator_seq, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct.asdl_seq* @ast_for_decorators(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %decorator_seq, align 8
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._stmt* null, %struct._stmt** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %5, i64 1
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx2, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 262
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %9, i64 1
  %10 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  %call7 = call %struct._stmt* @ast_for_funcdef(%struct.compiling* %7, %struct._node* %arrayidx6, %struct.asdl_seq* %10)
  store %struct._stmt* %call7, %struct._stmt** %thing, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %12, i64 1
  %n_type10 = getelementptr inbounds %struct._node, %struct._node* %arrayidx9, i32 0, i32 0
  %13 = load i16, i16* %n_type10, align 2
  %conv11 = sext i16 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 329
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.else
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %16, i64 1
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  %call17 = call %struct._stmt* @ast_for_classdef(%struct.compiling* %14, %struct._node* %arrayidx16, %struct.asdl_seq* %17)
  store %struct._stmt* %call17, %struct._stmt** %thing, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.4
  %18 = load %struct._stmt*, %struct._stmt** %thing, align 8
  %tobool20 = icmp ne %struct._stmt* %18, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 2
  %20 = load i32, i32* %n_lineno, align 4
  %21 = load %struct._stmt*, %struct._stmt** %thing, align 8
  %lineno = getelementptr inbounds %struct._stmt, %struct._stmt* %21, i32 0, i32 2
  store i32 %20, i32* %lineno, align 4
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 3
  %23 = load i32, i32* %n_col_offset, align 4
  %24 = load %struct._stmt*, %struct._stmt** %thing, align 8
  %col_offset = getelementptr inbounds %struct._stmt, %struct._stmt* %24, i32 0, i32 3
  store i32 %23, i32* %col_offset, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %25 = load %struct._stmt*, %struct._stmt** %thing, align 8
  store %struct._stmt* %25, %struct._stmt** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %26 = load %struct._stmt*, %struct._stmt** %retval
  ret %struct._stmt* %26
}

declare %struct._stmt* @_Py_Expr(%struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ast_for_augassign(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 5
  %1 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 0
  store %struct._node* %arrayidx, %struct._node** %n.addr, align 8
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 1
  %3 = load i8*, i8** %n_str, align 8
  %arrayidx1 = getelementptr i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb.2
    i32 47, label %sw.bb.3
    i32 37, label %sw.bb.8
    i32 60, label %sw.bb.9
    i32 62, label %sw.bb.10
    i32 38, label %sw.bb.11
    i32 94, label %sw.bb.12
    i32 124, label %sw.bb.13
    i32 42, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str4 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 1
  %6 = load i8*, i8** %n_str4, align 8
  %arrayidx5 = getelementptr i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv6, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.3
  store i32 12, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.3
  store i32 4, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str15 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 1
  %9 = load i8*, i8** %n_str15, align 8
  %arrayidx16 = getelementptr i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %cmp18 = icmp eq i32 %conv17, 42
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %sw.bb.14
  store i32 6, i32* %retval
  br label %return

if.else.21:                                       ; preds = %sw.bb.14
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %11 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str22 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 1
  %13 = load i8*, i8** %n_str22, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i32 0, i32 0), i8* %13)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.21, %if.then.20, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %if.else, %if.then, %sw.bb.2, %sw.bb
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._stmt* @_Py_AugAssign(%struct._expr*, i32, %struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Assign(%struct.asdl_seq*, %struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Delete(%struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Break(i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Continue(i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Return(%struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Raise(%struct._expr*, %struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._alias* @alias_for_import_name(%struct.compiling* %c, %struct._node* %n, i32 %store) #0 {
entry:
  %retval = alloca %struct._alias*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %store.addr = alloca i32, align 4
  %str = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %name_node = alloca %struct._node*, align 8
  %str_node = alloca %struct._node*, align 8
  %asname_node = alloca %struct._node*, align 8
  %a = alloca %struct._alias*, align 8
  %name_node53 = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %uni = alloca %struct._object*, align 8
  %sch = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %store, i32* %store.addr, align 4
  br label %loop

loop:                                             ; preds = %if.then.25, %entry
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 285, label %sw.bb
    i32 286, label %sw.bb.21
    i32 289, label %sw.bb.48
    i32 16, label %sw.bb.137
  ]

sw.bb:                                            ; preds = %loop
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  store %struct._node* %arrayidx, %struct._node** %name_node, align 8
  store %struct._object* null, %struct._object** %str, align 8
  %4 = load %struct._node*, %struct._node** %name_node, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 1
  %5 = load i8*, i8** %n_str, align 8
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call = call %struct._object* @new_identifier(i8* %5, %struct.compiling* %6)
  store %struct._object* %call, %struct._object** %name, align 8
  %7 = load %struct._object*, %struct._object** %name, align 8
  %tobool = icmp ne %struct._object* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 4
  %9 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %11, i64 2
  store %struct._node* %arrayidx4, %struct._node** %str_node, align 8
  %12 = load %struct._node*, %struct._node** %str_node, align 8
  %n_str5 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 1
  %13 = load i8*, i8** %n_str5, align 8
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call6 = call %struct._object* @new_identifier(i8* %13, %struct.compiling* %14)
  store %struct._object* %call6, %struct._object** %str, align 8
  %15 = load %struct._object*, %struct._object** %str, align 8
  %tobool7 = icmp ne %struct._object* %15, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.2
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  %16 = load i32, i32* %store.addr, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.9
  %17 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = load %struct._node*, %struct._node** %str_node, align 8
  %call11 = call i32 @forbidden_name(%struct.compiling* %17, %struct._object* %18, %struct._node* %19, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.9
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %20 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %21 = load %struct._object*, %struct._object** %name, align 8
  %22 = load %struct._node*, %struct._node** %name_node, align 8
  %call15 = call i32 @forbidden_name(%struct.compiling* %20, %struct._object* %21, %struct._node* %22, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.18:                                        ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.14
  %23 = load %struct._object*, %struct._object** %name, align 8
  %24 = load %struct._object*, %struct._object** %str, align 8
  %25 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %25, i32 0, i32 1
  %26 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call20 = call %struct._alias* @_Py_alias(%struct._object* %23, %struct._object* %24, %struct._arena* %26)
  store %struct._alias* %call20, %struct._alias** %retval
  br label %return

sw.bb.21:                                         ; preds = %loop
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren22 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 4
  %28 = load i32, i32* %n_nchildren22, align 4
  %cmp23 = icmp eq i32 %28, 1
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %sw.bb.21
  %29 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child26 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child26, align 8
  %arrayidx27 = getelementptr %struct._node, %struct._node* %30, i64 0
  store %struct._node* %arrayidx27, %struct._node** %n.addr, align 8
  br label %loop

if.else.28:                                       ; preds = %sw.bb.21
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %32, i64 2
  store %struct._node* %arrayidx30, %struct._node** %asname_node, align 8
  %33 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child31 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5
  %35 = load %struct._node*, %struct._node** %n_child31, align 8
  %arrayidx32 = getelementptr %struct._node, %struct._node* %35, i64 0
  %call33 = call %struct._alias* @alias_for_import_name(%struct.compiling* %33, %struct._node* %arrayidx32, i32 0)
  store %struct._alias* %call33, %struct._alias** %a, align 8
  %36 = load %struct._alias*, %struct._alias** %a, align 8
  %tobool34 = icmp ne %struct._alias* %36, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.else.28
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.36:                                        ; preds = %if.else.28
  %37 = load %struct._node*, %struct._node** %asname_node, align 8
  %n_str37 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 1
  %38 = load i8*, i8** %n_str37, align 8
  %39 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call38 = call %struct._object* @new_identifier(i8* %38, %struct.compiling* %39)
  %40 = load %struct._alias*, %struct._alias** %a, align 8
  %asname = getelementptr inbounds %struct._alias, %struct._alias* %40, i32 0, i32 1
  store %struct._object* %call38, %struct._object** %asname, align 8
  %41 = load %struct._alias*, %struct._alias** %a, align 8
  %asname39 = getelementptr inbounds %struct._alias, %struct._alias* %41, i32 0, i32 1
  %42 = load %struct._object*, %struct._object** %asname39, align 8
  %tobool40 = icmp ne %struct._object* %42, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.36
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  %43 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %44 = load %struct._alias*, %struct._alias** %a, align 8
  %asname43 = getelementptr inbounds %struct._alias, %struct._alias* %44, i32 0, i32 1
  %45 = load %struct._object*, %struct._object** %asname43, align 8
  %46 = load %struct._node*, %struct._node** %asname_node, align 8
  %call44 = call i32 @forbidden_name(%struct.compiling* %43, %struct._object* %45, %struct._node* %46, i32 0)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.42
  %47 = load %struct._alias*, %struct._alias** %a, align 8
  store %struct._alias* %47, %struct._alias** %retval
  br label %return

sw.bb.48:                                         ; preds = %loop
  %48 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren49 = getelementptr inbounds %struct._node, %struct._node* %48, i32 0, i32 4
  %49 = load i32, i32* %n_nchildren49, align 4
  %cmp50 = icmp eq i32 %49, 1
  br i1 %cmp50, label %if.then.52, label %if.else.69

if.then.52:                                       ; preds = %sw.bb.48
  %50 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child54 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 5
  %51 = load %struct._node*, %struct._node** %n_child54, align 8
  %arrayidx55 = getelementptr %struct._node, %struct._node* %51, i64 0
  store %struct._node* %arrayidx55, %struct._node** %name_node53, align 8
  %52 = load %struct._node*, %struct._node** %name_node53, align 8
  %n_str56 = getelementptr inbounds %struct._node, %struct._node* %52, i32 0, i32 1
  %53 = load i8*, i8** %n_str56, align 8
  %54 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call57 = call %struct._object* @new_identifier(i8* %53, %struct.compiling* %54)
  store %struct._object* %call57, %struct._object** %name, align 8
  %55 = load %struct._object*, %struct._object** %name, align 8
  %tobool58 = icmp ne %struct._object* %55, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.52
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.60:                                        ; preds = %if.then.52
  %56 = load i32, i32* %store.addr, align 4
  %tobool61 = icmp ne i32 %56, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.66

land.lhs.true.62:                                 ; preds = %if.end.60
  %57 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %58 = load %struct._object*, %struct._object** %name, align 8
  %59 = load %struct._node*, %struct._node** %name_node53, align 8
  %call63 = call i32 @forbidden_name(%struct.compiling* %57, %struct._object* %58, %struct._node* %59, i32 0)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.62
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.66:                                        ; preds = %land.lhs.true.62, %if.end.60
  %60 = load %struct._object*, %struct._object** %name, align 8
  %61 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena67 = getelementptr inbounds %struct.compiling, %struct.compiling* %61, i32 0, i32 1
  %62 = load %struct._arena*, %struct._arena** %c_arena67, align 8
  %call68 = call %struct._alias* @_Py_alias(%struct._object* %60, %struct._object* null, %struct._arena* %62)
  store %struct._alias* %call68, %struct._alias** %retval
  br label %return

if.else.69:                                       ; preds = %sw.bb.48
  store i64 0, i64* %len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.69
  %63 = load i32, i32* %i, align 4
  %64 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren70 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 4
  %65 = load i32, i32* %n_nchildren70, align 4
  %cmp71 = icmp slt i32 %63, %65
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %idxprom = sext i32 %66 to i64
  %67 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child73 = getelementptr inbounds %struct._node, %struct._node* %67, i32 0, i32 5
  %68 = load %struct._node*, %struct._node** %n_child73, align 8
  %arrayidx74 = getelementptr %struct._node, %struct._node* %68, i64 %idxprom
  %n_str75 = getelementptr inbounds %struct._node, %struct._node* %arrayidx74, i32 0, i32 1
  %69 = load i8*, i8** %n_str75, align 8
  %call76 = call i64 @strlen(i8* %69) #8
  %add = add i64 %call76, 1
  %70 = load i64, i64* %len, align 8
  %add77 = add i64 %70, %add
  store i64 %add77, i64* %len, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %i, align 4
  %add78 = add i32 %71, 2
  store i32 %add78, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load i64, i64* %len, align 8
  %dec = add i64 %72, -1
  store i64 %dec, i64* %len, align 8
  %73 = load i64, i64* %len, align 8
  %call79 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %73)
  store %struct._object* %call79, %struct._object** %str, align 8
  %74 = load %struct._object*, %struct._object** %str, align 8
  %tobool80 = icmp ne %struct._object* %74, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %for.end
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.82:                                        ; preds = %for.end
  %75 = load %struct._object*, %struct._object** %str, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %76, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  %77 = load i8*, i8** %s, align 8
  %tobool83 = icmp ne i8* %77, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.82
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.85:                                        ; preds = %if.end.82
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.101, %if.end.85
  %78 = load i32, i32* %i, align 4
  %79 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren87 = getelementptr inbounds %struct._node, %struct._node* %79, i32 0, i32 4
  %80 = load i32, i32* %n_nchildren87, align 4
  %cmp88 = icmp slt i32 %78, %80
  br i1 %cmp88, label %for.body.90, label %for.end.103

for.body.90:                                      ; preds = %for.cond.86
  %81 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child92 = getelementptr inbounds %struct._node, %struct._node* %82, i32 0, i32 5
  %83 = load %struct._node*, %struct._node** %n_child92, align 8
  %arrayidx93 = getelementptr %struct._node, %struct._node* %83, i64 %idxprom91
  %n_str94 = getelementptr inbounds %struct._node, %struct._node* %arrayidx93, i32 0, i32 1
  %84 = load i8*, i8** %n_str94, align 8
  store i8* %84, i8** %sch, align 8
  %85 = load i8*, i8** %s, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child96 = getelementptr inbounds %struct._node, %struct._node* %87, i32 0, i32 5
  %88 = load %struct._node*, %struct._node** %n_child96, align 8
  %arrayidx97 = getelementptr %struct._node, %struct._node* %88, i64 %idxprom95
  %n_str98 = getelementptr inbounds %struct._node, %struct._node* %arrayidx97, i32 0, i32 1
  %89 = load i8*, i8** %n_str98, align 8
  %call99 = call i8* @strcpy(i8* %85, i8* %89) #6
  %90 = load i8*, i8** %sch, align 8
  %call100 = call i64 @strlen(i8* %90) #8
  %91 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr i8, i8* %91, i64 %call100
  store i8* %add.ptr, i8** %s, align 8
  %92 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %92, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 46, i8* %92, align 1
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.90
  %93 = load i32, i32* %i, align 4
  %add102 = add i32 %93, 2
  store i32 %add102, i32* %i, align 4
  br label %for.cond.86

for.end.103:                                      ; preds = %for.cond.86
  %94 = load i8*, i8** %s, align 8
  %incdec.ptr104 = getelementptr i8, i8* %94, i32 -1
  store i8* %incdec.ptr104, i8** %s, align 8
  %95 = load i8*, i8** %s, align 8
  store i8 0, i8* %95, align 1
  %96 = load %struct._object*, %struct._object** %str, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyBytesObject*
  %ob_sval105 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %97, i32 0, i32 2
  %arraydecay106 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval105, i32 0, i32 0
  %98 = load %struct._object*, %struct._object** %str, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %99, i32 0, i32 1
  %100 = load i64, i64* %ob_size, align 8
  %call107 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %arraydecay106, i64 %100, i8* null)
  store %struct._object* %call107, %struct._object** %uni, align 8
  br label %do.body

do.body:                                          ; preds = %for.end.103
  %101 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt, align 8
  %dec108 = add i64 %103, -1
  store i64 %dec108, i64* %ob_refcnt, align 8
  %cmp109 = icmp ne i64 %dec108, 0
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %do.body
  br label %if.end.113

if.else.112:                                      ; preds = %do.body
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %106(%struct._object* %107)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.111
  br label %do.end

do.end:                                           ; preds = %if.end.113
  %108 = load %struct._object*, %struct._object** %uni, align 8
  %tobool114 = icmp ne %struct._object* %108, null
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %do.end
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.116:                                       ; preds = %do.end
  %109 = load %struct._object*, %struct._object** %uni, align 8
  store %struct._object* %109, %struct._object** %str, align 8
  call void @PyUnicode_InternInPlace(%struct._object** %str)
  %110 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena117 = getelementptr inbounds %struct.compiling, %struct.compiling* %110, i32 0, i32 1
  %111 = load %struct._arena*, %struct._arena** %c_arena117, align 8
  %112 = load %struct._object*, %struct._object** %str, align 8
  %call118 = call i32 @PyArena_AddPyObject(%struct._arena* %111, %struct._object* %112)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.134

if.then.121:                                      ; preds = %if.end.116
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.121
  %113 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp123, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt124, align 8
  %dec125 = add i64 %115, -1
  store i64 %dec125, i64* %ob_refcnt124, align 8
  %cmp126 = icmp ne i64 %dec125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.122
  br label %if.end.132

if.else.129:                                      ; preds = %do.body.122
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  call void %118(%struct._object* %119)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.134:                                       ; preds = %if.end.116
  %120 = load %struct._object*, %struct._object** %str, align 8
  %121 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena135 = getelementptr inbounds %struct.compiling, %struct.compiling* %121, i32 0, i32 1
  %122 = load %struct._arena*, %struct._arena** %c_arena135, align 8
  %call136 = call %struct._alias* @_Py_alias(%struct._object* %120, %struct._object* null, %struct._arena* %122)
  store %struct._alias* %call136, %struct._alias** %retval
  br label %return

sw.bb.137:                                        ; preds = %loop
  %call138 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0))
  store %struct._object* %call138, %struct._object** %str, align 8
  %123 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena139 = getelementptr inbounds %struct.compiling, %struct.compiling* %123, i32 0, i32 1
  %124 = load %struct._arena*, %struct._arena** %c_arena139, align 8
  %125 = load %struct._object*, %struct._object** %str, align 8
  %call140 = call i32 @PyArena_AddPyObject(%struct._arena* %124, %struct._object* %125)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.156

if.then.143:                                      ; preds = %sw.bb.137
  br label %do.body.144

do.body.144:                                      ; preds = %if.then.143
  %126 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp145, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %128, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %do.body.144
  br label %if.end.154

if.else.151:                                      ; preds = %do.body.144
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %131(%struct._object* %132)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  store %struct._alias* null, %struct._alias** %retval
  br label %return

if.end.156:                                       ; preds = %sw.bb.137
  %133 = load %struct._object*, %struct._object** %str, align 8
  %134 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena157 = getelementptr inbounds %struct.compiling, %struct.compiling* %134, i32 0, i32 1
  %135 = load %struct._arena*, %struct._arena** %c_arena157, align 8
  %call158 = call %struct._alias* @_Py_alias(%struct._object* %133, %struct._object* null, %struct._arena* %135)
  store %struct._alias* %call158, %struct._alias** %retval
  br label %return

sw.default:                                       ; preds = %loop
  %136 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %137 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type159 = getelementptr inbounds %struct._node, %struct._node* %137, i32 0, i32 0
  %138 = load i16, i16* %n_type159, align 2
  %conv160 = sext i16 %138 to i32
  %call161 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.122, i32 0, i32 0), i32 %conv160)
  store %struct._alias* null, %struct._alias** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.156, %do.end.155, %if.end.134, %do.end.133, %if.then.115, %if.then.84, %if.then.81, %if.end.66, %if.then.65, %if.then.59, %if.end.47, %if.then.46, %if.then.41, %if.then.35, %if.end.19, %if.then.17, %if.then.13, %if.then.8, %if.then
  %139 = load %struct._alias*, %struct._alias** %retval
  ret %struct._alias* %139
}

declare %struct._stmt* @_Py_Import(%struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_ImportFrom(%struct._object*, %struct.asdl_seq*, i32, i32, i32, %struct._arena*) #1

declare %struct._alias* @_Py_alias(%struct._object*, %struct._object*, %struct._arena*) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare %struct._stmt* @_Py_Global(%struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Nonlocal(%struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_Assert(%struct._expr*, %struct._expr*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct.asdl_seq* @ast_for_suite(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %s = alloca %struct._stmt*, align 8
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  %num = alloca i32, align 4
  %end = alloca i32, align 4
  %pos = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 0, i32* %pos, align 4
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @num_stmts(%struct._node* %0)
  store i32 %call, i32* %total, align 4
  %1 = load i32, i32* %total, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call1 = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call1, %struct.asdl_seq** %seq, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv2 = sext i16 %7 to i32
  %cmp = icmp eq i32 %conv2, 269
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %9, i64 0
  store %struct._node* %arrayidx6, %struct._node** %n.addr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 4
  %11 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %11, 1
  store i32 %sub, i32* %end, align 4
  %12 = load i32, i32* %end, align 4
  %sub7 = sub i32 %12, 1
  %idxprom = sext i32 %sub7 to i64
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %14, i64 %idxprom
  %n_type10 = getelementptr inbounds %struct._node, %struct._node* %arrayidx9, i32 0, i32 0
  %15 = load i16, i16* %n_type10, align 2
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.4
  %16 = load i32, i32* %end, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %end, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %end, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom18
  store %struct._node* %arrayidx20, %struct._node** %ch, align 8
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %23 = load %struct._node*, %struct._node** %ch, align 8
  %call21 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %22, %struct._node* %23)
  store %struct._stmt* %call21, %struct._stmt** %s, align 8
  %24 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool22 = icmp ne %struct._stmt* %24, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  %25 = load %struct._stmt*, %struct._stmt** %s, align 8
  %26 = bitcast %struct._stmt* %25 to i8*
  %27 = load i32, i32* %pos, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %28, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom25
  store i8* %26, i8** %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %29 = load i32, i32* %i, align 4
  %add = add i32 %29, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.else:                                          ; preds = %if.end
  store i32 2, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.79, %if.else
  %30 = load i32, i32* %i, align 4
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren28 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 4
  %32 = load i32, i32* %n_nchildren28, align 4
  %sub29 = sub i32 %32, 1
  %cmp30 = icmp slt i32 %30, %sub29
  br i1 %cmp30, label %for.body.32, label %for.end.81

for.body.32:                                      ; preds = %for.cond.27
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5
  %35 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %35, i64 %idxprom33
  store %struct._node* %arrayidx35, %struct._node** %ch, align 8
  %36 = load %struct._node*, %struct._node** %ch, align 8
  %call36 = call i32 @num_stmts(%struct._node* %36)
  store i32 %call36, i32* %num, align 4
  %37 = load i32, i32* %num, align 4
  %cmp37 = icmp eq i32 %37, 1
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %for.body.32
  %38 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %39 = load %struct._node*, %struct._node** %ch, align 8
  %call40 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %38, %struct._node* %39)
  store %struct._stmt* %call40, %struct._stmt** %s, align 8
  %40 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool41 = icmp ne %struct._stmt* %40, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.39
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.39
  %41 = load %struct._stmt*, %struct._stmt** %s, align 8
  %42 = bitcast %struct._stmt* %41 to i8*
  %43 = load i32, i32* %pos, align 4
  %inc44 = add i32 %43, 1
  store i32 %inc44, i32* %pos, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements46 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %44, i32 0, i32 1
  %arrayidx47 = getelementptr [1 x i8*], [1 x i8*]* %elements46, i32 0, i64 %idxprom45
  store i8* %42, i8** %arrayidx47, align 8
  br label %if.end.78

if.else.48:                                       ; preds = %for.body.32
  %45 = load %struct._node*, %struct._node** %ch, align 8
  %n_child49 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 5
  %46 = load %struct._node*, %struct._node** %n_child49, align 8
  %arrayidx50 = getelementptr %struct._node, %struct._node* %46, i64 0
  store %struct._node* %arrayidx50, %struct._node** %ch, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.75, %if.else.48
  %47 = load i32, i32* %j, align 4
  %48 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren52 = getelementptr inbounds %struct._node, %struct._node* %48, i32 0, i32 4
  %49 = load i32, i32* %n_nchildren52, align 4
  %cmp53 = icmp slt i32 %47, %49
  br i1 %cmp53, label %for.body.55, label %for.end.77

for.body.55:                                      ; preds = %for.cond.51
  %50 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %50 to i64
  %51 = load %struct._node*, %struct._node** %ch, align 8
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %51, i32 0, i32 5
  %52 = load %struct._node*, %struct._node** %n_child57, align 8
  %arrayidx58 = getelementptr %struct._node, %struct._node* %52, i64 %idxprom56
  %n_nchildren59 = getelementptr inbounds %struct._node, %struct._node* %arrayidx58, i32 0, i32 4
  %53 = load i32, i32* %n_nchildren59, align 4
  %cmp60 = icmp eq i32 %53, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.55
  br label %for.end.77

if.end.63:                                        ; preds = %for.body.55
  %54 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %55 to i64
  %56 = load %struct._node*, %struct._node** %ch, align 8
  %n_child65 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 5
  %57 = load %struct._node*, %struct._node** %n_child65, align 8
  %arrayidx66 = getelementptr %struct._node, %struct._node* %57, i64 %idxprom64
  %call67 = call %struct._stmt* @ast_for_stmt(%struct.compiling* %54, %struct._node* %arrayidx66)
  store %struct._stmt* %call67, %struct._stmt** %s, align 8
  %58 = load %struct._stmt*, %struct._stmt** %s, align 8
  %tobool68 = icmp ne %struct._stmt* %58, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.63
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.63
  %59 = load %struct._stmt*, %struct._stmt** %s, align 8
  %60 = bitcast %struct._stmt* %59 to i8*
  %61 = load i32, i32* %pos, align 4
  %inc71 = add i32 %61, 1
  store i32 %inc71, i32* %pos, align 4
  %idxprom72 = sext i32 %61 to i64
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements73 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %62, i32 0, i32 1
  %arrayidx74 = getelementptr [1 x i8*], [1 x i8*]* %elements73, i32 0, i64 %idxprom72
  store i8* %60, i8** %arrayidx74, align 8
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.70
  %63 = load i32, i32* %j, align 4
  %add76 = add i32 %63, 2
  store i32 %add76, i32* %j, align 4
  br label %for.cond.51

for.end.77:                                       ; preds = %if.then.62, %for.cond.51
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %if.end.43
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %64 = load i32, i32* %i, align 4
  %inc80 = add i32 %64, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.27

for.end.81:                                       ; preds = %for.cond.27
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %for.end
  %65 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  store %struct.asdl_seq* %65, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.69, %if.then.42, %if.then.23, %if.then
  %66 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %66
}

declare %struct._stmt* @_Py_If(%struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_While(%struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_For(%struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._excepthandler* @ast_for_except_clause(%struct.compiling* %c, %struct._node* %exc, %struct._node* %body) #0 {
entry:
  %retval = alloca %struct._excepthandler*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %exc.addr = alloca %struct._node*, align 8
  %body.addr = alloca %struct._node*, align 8
  %suite_seq = alloca %struct.asdl_seq*, align 8
  %expression = alloca %struct._expr*, align 8
  %suite_seq6 = alloca %struct.asdl_seq*, align 8
  %suite_seq23 = alloca %struct.asdl_seq*, align 8
  %expression24 = alloca %struct._expr*, align 8
  %e = alloca %struct._object*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %exc, %struct._node** %exc.addr, align 8
  store %struct._node* %body, %struct._node** %body.addr, align 8
  %0 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %3 = load %struct._node*, %struct._node** %body.addr, align 8
  %call = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %2, %struct._node* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %suite_seq, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq, align 8
  %6 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 2
  %7 = load i32, i32* %n_lineno, align 4
  %8 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 3
  %9 = load i32, i32* %n_col_offset, align 4
  %10 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %10, i32 0, i32 1
  %11 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call2 = call %struct._excepthandler* @_Py_ExceptHandler(%struct._expr* null, %struct._object* null, %struct.asdl_seq* %5, i32 %7, i32 %9, %struct._arena* %11)
  store %struct._excepthandler* %call2, %struct._excepthandler** %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 4
  %13 = load i32, i32* %n_nchildren3, align 4
  %cmp4 = icmp eq i32 %13, 2
  br i1 %cmp4, label %if.then.5, label %if.else.19

if.then.5:                                        ; preds = %if.else
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %15 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %16, i64 1
  %call7 = call %struct._expr* @ast_for_expr(%struct.compiling* %14, %struct._node* %arrayidx)
  store %struct._expr* %call7, %struct._expr** %expression, align 8
  %17 = load %struct._expr*, %struct._expr** %expression, align 8
  %tobool8 = icmp ne %struct._expr* %17, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.5
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  %18 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %19 = load %struct._node*, %struct._node** %body.addr, align 8
  %call11 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %18, %struct._node* %19)
  store %struct.asdl_seq* %call11, %struct.asdl_seq** %suite_seq6, align 8
  %20 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq6, align 8
  %tobool12 = icmp ne %struct.asdl_seq* %20, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %21 = load %struct._expr*, %struct._expr** %expression, align 8
  %22 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq6, align 8
  %23 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_lineno15 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 2
  %24 = load i32, i32* %n_lineno15, align 4
  %25 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_col_offset16 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 3
  %26 = load i32, i32* %n_col_offset16, align 4
  %27 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena17 = getelementptr inbounds %struct.compiling, %struct.compiling* %27, i32 0, i32 1
  %28 = load %struct._arena*, %struct._arena** %c_arena17, align 8
  %call18 = call %struct._excepthandler* @_Py_ExceptHandler(%struct._expr* %21, %struct._object* null, %struct.asdl_seq* %22, i32 %24, i32 %26, %struct._arena* %28)
  store %struct._excepthandler* %call18, %struct._excepthandler** %retval
  br label %return

if.else.19:                                       ; preds = %if.else
  %29 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_nchildren20 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 4
  %30 = load i32, i32* %n_nchildren20, align 4
  %cmp21 = icmp eq i32 %30, 4
  br i1 %cmp21, label %if.then.22, label %if.end.51

if.then.22:                                       ; preds = %if.else.19
  %31 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %32, i64 3
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx26, i32 0, i32 1
  %33 = load i8*, i8** %n_str, align 8
  %34 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call27 = call %struct._object* @new_identifier(i8* %33, %struct.compiling* %34)
  store %struct._object* %call27, %struct._object** %e, align 8
  %35 = load %struct._object*, %struct._object** %e, align 8
  %tobool28 = icmp ne %struct._object* %35, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.22
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.22
  %36 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %37 = load %struct._object*, %struct._object** %e, align 8
  %38 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_child31 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 5
  %39 = load %struct._node*, %struct._node** %n_child31, align 8
  %arrayidx32 = getelementptr %struct._node, %struct._node* %39, i64 3
  %call33 = call i32 @forbidden_name(%struct.compiling* %36, %struct._object* %37, %struct._node* %arrayidx32, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.30
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.30
  %40 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %41 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_child37 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child37, align 8
  %arrayidx38 = getelementptr %struct._node, %struct._node* %42, i64 1
  %call39 = call %struct._expr* @ast_for_expr(%struct.compiling* %40, %struct._node* %arrayidx38)
  store %struct._expr* %call39, %struct._expr** %expression24, align 8
  %43 = load %struct._expr*, %struct._expr** %expression24, align 8
  %tobool40 = icmp ne %struct._expr* %43, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.36
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  %44 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %45 = load %struct._node*, %struct._node** %body.addr, align 8
  %call43 = call %struct.asdl_seq* @ast_for_suite(%struct.compiling* %44, %struct._node* %45)
  store %struct.asdl_seq* %call43, %struct.asdl_seq** %suite_seq23, align 8
  %46 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq23, align 8
  %tobool44 = icmp ne %struct.asdl_seq* %46, null
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %47 = load %struct._expr*, %struct._expr** %expression24, align 8
  %48 = load %struct._object*, %struct._object** %e, align 8
  %49 = load %struct.asdl_seq*, %struct.asdl_seq** %suite_seq23, align 8
  %50 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_lineno47 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 2
  %51 = load i32, i32* %n_lineno47, align 4
  %52 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_col_offset48 = getelementptr inbounds %struct._node, %struct._node* %52, i32 0, i32 3
  %53 = load i32, i32* %n_col_offset48, align 4
  %54 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena49 = getelementptr inbounds %struct.compiling, %struct.compiling* %54, i32 0, i32 1
  %55 = load %struct._arena*, %struct._arena** %c_arena49, align 8
  %call50 = call %struct._excepthandler* @_Py_ExceptHandler(%struct._expr* %47, %struct._object* %48, %struct.asdl_seq* %49, i32 %51, i32 %53, %struct._arena* %55)
  store %struct._excepthandler* %call50, %struct._excepthandler** %retval
  br label %return

if.end.51:                                        ; preds = %if.else.19
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  %56 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %57 = load %struct._node*, %struct._node** %exc.addr, align 8
  %n_nchildren54 = getelementptr inbounds %struct._node, %struct._node* %57, i32 0, i32 4
  %58 = load i32, i32* %n_nchildren54, align 4
  %call55 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.128, i32 0, i32 0), i32 %58)
  store %struct._excepthandler* null, %struct._excepthandler** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.46, %if.then.45, %if.then.41, %if.then.35, %if.then.29, %if.end.14, %if.then.13, %if.then.9, %if.end, %if.then.1
  %59 = load %struct._excepthandler*, %struct._excepthandler** %retval
  ret %struct._excepthandler* %59
}

declare %struct._stmt* @_Py_Try(%struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._excepthandler* @_Py_ExceptHandler(%struct._expr*, %struct._object*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._withitem* @ast_for_with_item(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._withitem*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %context_expr = alloca %struct._expr*, align 8
  %optional_vars = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* null, %struct._expr** %optional_vars, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call = call %struct._expr* @ast_for_expr(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %context_expr, align 8
  %3 = load %struct._expr*, %struct._expr** %context_expr, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._withitem* null, %struct._withitem** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %8, i64 2
  %call4 = call %struct._expr* @ast_for_expr(%struct.compiling* %6, %struct._node* %arrayidx3)
  store %struct._expr* %call4, %struct._expr** %optional_vars, align 8
  %9 = load %struct._expr*, %struct._expr** %optional_vars, align 8
  %tobool5 = icmp ne %struct._expr* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.1
  store %struct._withitem* null, %struct._withitem** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.1
  %10 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %11 = load %struct._expr*, %struct._expr** %optional_vars, align 8
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %call8 = call i32 @set_context(%struct.compiling* %10, %struct._expr* %11, i32 2, %struct._node* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._withitem* null, %struct._withitem** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %13 = load %struct._expr*, %struct._expr** %context_expr, align 8
  %14 = load %struct._expr*, %struct._expr** %optional_vars, align 8
  %15 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %15, i32 0, i32 1
  %16 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call13 = call %struct._withitem* @_Py_withitem(%struct._expr* %13, %struct._expr* %14, %struct._arena* %16)
  store %struct._withitem* %call13, %struct._withitem** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.6, %if.then
  %17 = load %struct._withitem*, %struct._withitem** %retval
  ret %struct._withitem* %17
}

declare %struct._stmt* @_Py_With(%struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

declare %struct._withitem* @_Py_withitem(%struct._expr*, %struct._expr*, %struct._arena*) #1

declare %struct._stmt* @_Py_FunctionDef(%struct._object*, %struct._arguments*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, i32, i32, %struct._arena*) #1

declare %struct._stmt* @_Py_ClassDef(%struct._object*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, i32, i32, %struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct.asdl_seq* @ast_for_decorators(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %decorator_seq = alloca %struct.asdl_seq*, align 8
  %d = alloca %struct._expr*, align 8
  %i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %2, i32 0, i32 1
  %3 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call = call %struct.asdl_seq* @_Py_asdl_seq_new(i64 %conv, %struct._arena* %3)
  store %struct.asdl_seq* %call, %struct.asdl_seq** %decorator_seq, align 8
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  %tobool = icmp ne %struct.asdl_seq* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %11, i64 %idxprom
  %call3 = call %struct._expr* @ast_for_decorator(%struct.compiling* %8, %struct._node* %arrayidx)
  store %struct._expr* %call3, %struct._expr** %d, align 8
  %12 = load %struct._expr*, %struct._expr** %d, align 8
  %tobool4 = icmp ne %struct._expr* %12, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  %13 = load %struct._expr*, %struct._expr** %d, align 8
  %14 = bitcast %struct._expr* %13 to i8*
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %16, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom7
  store i8* %14, i8** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_seq, align 8
  store %struct.asdl_seq* %18, %struct.asdl_seq** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %retval
  ret %struct.asdl_seq* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_decorator(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %d = alloca %struct._expr*, align 8
  %name_expr = alloca %struct._expr*, align 8
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._expr* null, %struct._expr** %d, align 8
  %0 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 1
  %call = call %struct._expr* @ast_for_dotted_name(%struct.compiling* %0, %struct._node* %arrayidx)
  store %struct._expr* %call, %struct._expr** %name_expr, align 8
  %3 = load %struct._expr*, %struct._expr** %name_expr, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._expr*, %struct._expr** %name_expr, align 8
  store %struct._expr* %6, %struct._expr** %d, align 8
  store %struct._expr* null, %struct._expr** %name_expr, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren2 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 4
  %8 = load i32, i32* %n_nchildren2, align 4
  %cmp3 = icmp eq i32 %8, 5
  br i1 %cmp3, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._expr*, %struct._expr** %name_expr, align 8
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 2
  %11 = load i32, i32* %n_lineno, align 4
  %12 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 3
  %13 = load i32, i32* %n_col_offset, align 4
  %14 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %14, i32 0, i32 1
  %15 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call5 = call %struct._expr* @_Py_Call(%struct._expr* %9, %struct.asdl_seq* null, %struct.asdl_seq* null, %struct._expr* null, %struct._expr* null, i32 %11, i32 %13, %struct._arena* %15)
  store %struct._expr* %call5, %struct._expr** %d, align 8
  %16 = load %struct._expr*, %struct._expr** %d, align 8
  %tobool6 = icmp ne %struct._expr* %16, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  store %struct._expr* null, %struct._expr** %name_expr, align 8
  br label %if.end.16

if.else.9:                                        ; preds = %if.else
  %17 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %18 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %19, i64 3
  %20 = load %struct._expr*, %struct._expr** %name_expr, align 8
  %call12 = call %struct._expr* @ast_for_call(%struct.compiling* %17, %struct._node* %arrayidx11, %struct._expr* %20)
  store %struct._expr* %call12, %struct._expr** %d, align 8
  %21 = load %struct._expr*, %struct._expr** %d, align 8
  %tobool13 = icmp ne %struct._expr* %21, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.else.9
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.15:                                        ; preds = %if.else.9
  store %struct._expr* null, %struct._expr** %name_expr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.1
  %22 = load %struct._expr*, %struct._expr** %d, align 8
  store %struct._expr* %22, %struct._expr** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.then.7, %if.then
  %23 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._expr* @ast_for_dotted_name(%struct.compiling* %c, %struct._node* %n) #0 {
entry:
  %retval = alloca %struct._expr*, align 8
  %c.addr = alloca %struct.compiling*, align 8
  %n.addr = alloca %struct._node*, align 8
  %e = alloca %struct._expr*, align 8
  %id = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %col_offset = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.compiling* %c, %struct.compiling** %c.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 2
  %1 = load i32, i32* %n_lineno, align 4
  store i32 %1, i32* %lineno, align 4
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 3
  %3 = load i32, i32* %n_col_offset, align 4
  store i32 %3, i32* %col_offset, align 4
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 1
  %6 = load i8*, i8** %n_str, align 8
  %7 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call = call %struct._object* @new_identifier(i8* %6, %struct.compiling* %7)
  store %struct._object* %call, %struct._object** %id, align 8
  %8 = load %struct._object*, %struct._object** %id, align 8
  %tobool = icmp ne %struct._object* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %id, align 8
  %10 = load i32, i32* %lineno, align 4
  %11 = load i32, i32* %col_offset, align 4
  %12 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena = getelementptr inbounds %struct.compiling, %struct.compiling* %12, i32 0, i32 1
  %13 = load %struct._arena*, %struct._arena** %c_arena, align 8
  %call1 = call %struct._expr* @_Py_Name(%struct._object* %9, i32 1, i32 %10, i32 %11, %struct._arena* %13)
  store %struct._expr* %call1, %struct._expr** %e, align 8
  %14 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool2 = icmp ne %struct._expr* %14, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %i, align 4
  %16 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 4
  %17 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %20, i64 %idxprom
  %n_str7 = getelementptr inbounds %struct._node, %struct._node* %arrayidx6, i32 0, i32 1
  %21 = load i8*, i8** %n_str7, align 8
  %22 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %call8 = call %struct._object* @new_identifier(i8* %21, %struct.compiling* %22)
  store %struct._object* %call8, %struct._object** %id, align 8
  %23 = load %struct._object*, %struct._object** %id, align 8
  %tobool9 = icmp ne %struct._object* %23, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.body
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  %24 = load %struct._expr*, %struct._expr** %e, align 8
  %25 = load %struct._object*, %struct._object** %id, align 8
  %26 = load i32, i32* %lineno, align 4
  %27 = load i32, i32* %col_offset, align 4
  %28 = load %struct.compiling*, %struct.compiling** %c.addr, align 8
  %c_arena12 = getelementptr inbounds %struct.compiling, %struct.compiling* %28, i32 0, i32 1
  %29 = load %struct._arena*, %struct._arena** %c_arena12, align 8
  %call13 = call %struct._expr* @_Py_Attribute(%struct._expr* %24, %struct._object* %25, i32 1, i32 %26, i32 %27, %struct._arena* %29)
  store %struct._expr* %call13, %struct._expr** %e, align 8
  %30 = load %struct._expr*, %struct._expr** %e, align 8
  %tobool14 = icmp ne %struct._expr* %30, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  store %struct._expr* null, %struct._expr** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %31 = load i32, i32* %i, align 4
  %add = add i32 %31, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._expr*, %struct._expr** %e, align 8
  store %struct._expr* %32, %struct._expr** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then.10, %if.then.3, %if.then
  %33 = load %struct._expr*, %struct._expr** %retval
  ret %struct._expr* %33
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
