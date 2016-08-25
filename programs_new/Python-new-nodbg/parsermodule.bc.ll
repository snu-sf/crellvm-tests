; ModuleID = './parsermodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }
%struct.PyST_Object = type { %struct._object, %struct._node*, i32, %struct.PyCompilerFlags }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.PyCompilerFlags = type { i32 }
%struct._arena = type opaque
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.perrdetail = type { i32, %struct._object*, i32, i32, i8*, i32, i32 }

@PyST_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.PyST_Object*)* @parser_free to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @parser_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @parser_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@parsermodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([11 x %struct.PyMethodDef], [11 x %struct.PyMethodDef]* @parser_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@parser_error = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"parser.ParserError\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ParserError\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STType\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"__copyright__\00", align 1
@parser_copyright_string = internal global [241 x i8] c"Copyright 1995-1996 by Virginia Polytechnic Institute & State\0AUniversity, Blacksburg, Virginia, USA, and Fred L. Drake, Jr., Reston,\0AVirginia, USA.  Portions copyright 1991-1995 by Stichting Mathematisch\0ACentrum, Amsterdam, The Netherlands.\00", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@parser_doc_string = internal global [50 x i8] c"This is an interface to Python's internal parser.\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@parser_version_string = internal global [4 x i8] c"0.5\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"copyreg\00", align 1
@PyInit_parser.PyId_pickle = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pickle\00", align 1
@PyInit_parser.PyId_sequence2st = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct._object* null }, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"sequence2st\00", align 1
@PyInit_parser.PyId__pickler = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"_pickler\00", align 1
@pickle_constructor = internal global %struct._object* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"parser.st\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Intermediate representation of a Python parse tree.\00", align 1
@parser_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_compilest to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_isexpr to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_issuite to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_st2list to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_st2tuple to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, i8*)* @parser_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [60 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/parsermodule.c\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Compile this ST object into a code object.\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"isexpr\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"Determines if this ST object was created from an expression.\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"issuite\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Determines if this ST object was created from a suite.\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Creates a list-tree representation of this ST.\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"totuple\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Creates a tuple-tree representation of this ST.\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Returns size in memory, in bytes.\00", align 1
@parser_compilest.keywords = internal global [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@PyModule_Type = external global %struct._typeobject, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"O!|O&:compilest\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"|O&:compile\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"<syntax-tree>\00", align 1
@parser_isexpr.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"O!:isexpr\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c":isexpr\00", align 1
@parser_issuite.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"O!:issuite\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c":issuite\00", align 1
@parser_st2list.keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.34 = private unnamed_addr constant [10 x i8] c"line_info\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"col_info\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"O!|pp:st2list\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"|pp:tolist\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"unrecognized parse tree node type\00", align 1
@parser_st2tuple.keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.39 = private unnamed_addr constant [15 x i8] c"O!|pp:st2tuple\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"|pp:totuple\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@parser_functions = internal global [11 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_compilest to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_expr to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_isexpr to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_issuite to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_suite to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_tuple2st to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_st2tuple to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_st2list to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyST_Object*, %struct._object*, %struct._object*)* @parser_tuple2st to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @parser__pickler, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.56, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"compilest\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"Compiles an ST object into a code object.\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"Creates an ST object from an expression.\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"Determines if an ST object was created from an expression.\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"Determines if an ST object was created from a suite.\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"suite\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Creates an ST object from a suite.\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"Creates an ST object from a tree representation.\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"st2tuple\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"Creates a tuple-tree representation of an ST.\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"st2list\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Creates a list-tree representation of an ST.\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tuple2st\00", align 1
@.str.56 = private unnamed_addr constant [60 x i8] c"Returns the pickle magic to allow ST objects to be pickled.\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"s:expr\00", align 1
@parser_do_parse.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* null], align 16
@.str.58 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@_PyParser_Grammar = external global %struct.grammar, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"s:suite\00", align 1
@parser_tuple2st.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16
@.str.60 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"O:sequence2st\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.62 = private unnamed_addr constant [50 x i8] c"sequence2st() requires a single sequence argument\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"parse tree does not use a valid start symbol\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"unspecified ST error occurred\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.66 = private unnamed_addr constant [56 x i8] c"Illegal syntax-tree; cannot start with terminal symbol.\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Illegal component tuple.\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"Illegal node construct.\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"terminal nodes must have 2 or 3 entries\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"second item in terminal node must be a string, found %s\00", align 1
@.str.72 = private unnamed_addr constant [57 x i8] c"third item in terminal node must be an integer, found %s\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"unknown node type.\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"unsupported number of child nodes\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"could not validate expression tuple\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Expected node type %d, got %d.\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"testlist\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"Illegal number of children for %s node.\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"Illegal terminal: expected \22%s\22\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"lambdef\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"varargslist missing child nodes\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"illegal formation for varargslist\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"expected variable argument trailer for varargslist\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.92 = private unnamed_addr constant [48 x i8] c"expected vfpdef after ** in varargslist trailer\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"expected * or ** in varargslist trailer\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"unexpected extra children in varargslist trailer\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"illegal number of nodes for 'power'\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"illegal list display atom\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"missing child nodes of testlist_comp\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"illegal trailing nodes for testlist_comp\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"star_expr\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"comp_for\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"comp_iter\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"comp_if\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"lambdef_nocond\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"exprlist\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"dictorsetmaker\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Illegal trailing nodes for dictorsetmaker.\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"arglist\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"need '(', ')' for generator expression\00", align 1
@.str.122 = private unnamed_addr constant [51 x i8] c"illegal arglist specification (extra stuff on end)\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"illegal use of '*' in arglist\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"illegal use of '**' in arglist\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"illegal arglist specification\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"subscriptlist\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"invalid number of arguments for subscript node\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"subscript\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"sliceop\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"illegal operator '%s'\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"illegal comparison operator type\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"comp_op\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"unknown comparison operator\00", align 1
@.str.136 = private unnamed_addr constant [51 x i8] c"VALIDATION FAILURE: report this to the maintainer!\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"simple_stmt\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"small_stmt\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"illegal small_stmt child type\00", align 1
@.str.142 = private unnamed_addr constant [43 x i8] c"Unrecognized child node of small_stmt: %d.\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"flow_stmt\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"illegal flow_stmt type\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"unrecognized node type\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.151 = private unnamed_addr constant [39 x i8] c"illegal number of children for funcdef\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"yield_stmt\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"augassign\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"//=\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"**=\00", align 1
@.str.172 = private unnamed_addr constant [38 x i8] c"illegal augmented assignment operator\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"del_stmt\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"import_stmt\00", align 1
@.str.178 = private unnamed_addr constant [31 x i8] c"illegal import_stmt child type\00", align 1
@.str.179 = private unnamed_addr constant [44 x i8] c"Unrecognized child node of import_stmt: %d.\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"import_name\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.182 = private unnamed_addr constant [46 x i8] c"illegal number of children for dotted_as_name\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"import_as_name\00", align 1
@.str.184 = private unnamed_addr constant [25 x i8] c"illegal global statement\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.186 = private unnamed_addr constant [27 x i8] c"illegal nonlocal statement\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"nonlocal\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.189 = private unnamed_addr constant [25 x i8] c"illegal assert statement\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.194 = private unnamed_addr constant [44 x i8] c"Illegal number of children for try/%s node.\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"try/finally\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"try/except/finally\00", align 1
@.str.198 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"compound_stmt\00", align 1
@.str.200 = private unnamed_addr constant [37 x i8] c"Illegal compound statement type: %d.\00", align 1
@.str.201 = private unnamed_addr constant [28 x i8] c"Error Parsing encoding_decl\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"O!:_pickler\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"O(O)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_parser() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %copyreg = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %pickler = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_xdecref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_xdecref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @PyST_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @parsermodule, i32 1013)
  store %struct._object* %call1, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** @parser_error, align 8
  %cmp5 = icmp eq %struct._object* %1, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call7, %struct._object** @parser_error, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %2 = load %struct._object*, %struct._object** @parser_error, align 8
  %cmp9 = icmp eq %struct._object* %2, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %3 = load %struct._object*, %struct._object** @parser_error, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %module, align 8
  %6 = load %struct._object*, %struct._object** @parser_error, align 8
  %call12 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* %6)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyST_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc16 = add i64 %7, 1
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyST_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load %struct._object*, %struct._object** %module, align 8
  %call17 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyST_Type, i32 0, i32 0, i32 0))
  %9 = load %struct._object*, %struct._object** %module, align 8
  %call18 = call i32 @PyModule_AddStringConstant(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([241 x i8], [241 x i8]* @parser_copyright_string, i32 0, i32 0))
  %10 = load %struct._object*, %struct._object** %module, align 8
  %call19 = call i32 @PyModule_AddStringConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @parser_doc_string, i32 0, i32 0))
  %11 = load %struct._object*, %struct._object** %module, align 8
  %call20 = call i32 @PyModule_AddStringConstant(%struct._object* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @parser_version_string, i32 0, i32 0))
  %call21 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call21, %struct._object** %copyreg, align 8
  %12 = load %struct._object*, %struct._object** %copyreg, align 8
  %cmp22 = icmp ne %struct._object* %12, null
  br i1 %cmp22, label %if.then.23, label %if.end.112

if.then.23:                                       ; preds = %if.end.15
  %13 = load %struct._object*, %struct._object** %copyreg, align 8
  %call24 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %13, %struct._Py_Identifier* @PyInit_parser.PyId_pickle)
  store %struct._object* %call24, %struct._object** %func, align 8
  %14 = load %struct._object*, %struct._object** %module, align 8
  %call25 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %14, %struct._Py_Identifier* @PyInit_parser.PyId_sequence2st)
  store %struct._object* %call25, %struct._object** @pickle_constructor, align 8
  %15 = load %struct._object*, %struct._object** %module, align 8
  %call26 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %15, %struct._Py_Identifier* @PyInit_parser.PyId__pickler)
  store %struct._object* %call26, %struct._object** %pickler, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %16 = load %struct._object*, %struct._object** @pickle_constructor, align 8
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp27 = icmp ne %struct._object* %17, null
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %19, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %20 = load %struct._object*, %struct._object** %func, align 8
  %cmp32 = icmp ne %struct._object* %20, null
  br i1 %cmp32, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %do.end
  %21 = load %struct._object*, %struct._object** @pickle_constructor, align 8
  %cmp33 = icmp ne %struct._object* %21, null
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.49

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %22 = load %struct._object*, %struct._object** %pickler, align 8
  %cmp35 = icmp ne %struct._object* %22, null
  br i1 %cmp35, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %land.lhs.true.34
  %23 = load %struct._object*, %struct._object** %func, align 8
  %24 = load %struct._object*, %struct._object** %pickler, align 8
  %25 = load %struct._object*, %struct._object** @pickle_constructor, align 8
  %call37 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %23, %struct._typeobject* @PyST_Type, %struct._object* %24, %struct._object* %25, i8* null)
  store %struct._object* %call37, %struct._object** %res, align 8
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.36
  %26 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp39 = icmp ne %struct._object* %27, null
  br i1 %cmp39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt42, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt42, align 8
  %cmp43 = icmp ne i64 %dec, 0
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.45

if.else:                                          ; preds = %do.body.41
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.44
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %land.lhs.true.34, %land.lhs.true, %do.end
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %35 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp51, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  %cmp52 = icmp ne %struct._object* %36, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp55, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %39, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %42(%struct._object* %43)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.50
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %44 = load %struct._object*, %struct._object** @pickle_constructor, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp68, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp68, align 8
  %cmp69 = icmp ne %struct._object* %45, null
  br i1 %cmp69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %do.body.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp68, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp72, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %48, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %51(%struct._object* %52)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %do.body.67
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %53 = load %struct._object*, %struct._object** %pickler, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp85, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8
  %cmp86 = icmp ne %struct._object* %54, null
  br i1 %cmp86, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %do.body.84
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp85, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp89, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %57, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %60(%struct._object* %61)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.84
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %62 = load %struct._object*, %struct._object** %copyreg, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp102, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %64, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %67(%struct._object* %68)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %if.end.15
  %69 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.112, %if.then.14, %if.then.10, %if.then.3, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @parser_free(%struct.PyST_Object* %st) #0 {
entry:
  %st.addr = alloca %struct.PyST_Object*, align 8
  store %struct.PyST_Object* %st, %struct.PyST_Object** %st.addr, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %st.addr, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %0, i32 0, i32 1
  %1 = load %struct._node*, %struct._node** %st_node, align 8
  call void @PyNode_Free(%struct._node* %1)
  %2 = load %struct.PyST_Object*, %struct.PyST_Object** %st.addr, align 8
  %3 = bitcast %struct.PyST_Object* %2 to i8*
  call void @PyObject_Free(i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_richcompare(%struct._object* %left, %struct._object* %right, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %left.addr = alloca %struct._object*, align 8
  %right.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  store %struct._object* %left, %struct._object** %left.addr, align 8
  store %struct._object* %right, %struct._object** %right.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %left.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %right.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0), i32 308)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %left.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyST_Type
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then.6

lor.lhs.false.3:                                  ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %right.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, @PyST_Type
  br i1 %cmp5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false.3, %if.end
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %v, align 8
  br label %finished

if.end.7:                                         ; preds = %lor.lhs.false.3
  %6 = load %struct._object*, %struct._object** %left.addr, align 8
  %7 = load %struct._object*, %struct._object** %right.addr, align 8
  %cmp8 = icmp eq %struct._object* %6, %7
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %result, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %left.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyST_Object*
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %9, i32 0, i32 1
  %10 = load %struct._node*, %struct._node** %st_node, align 8
  %11 = load %struct._object*, %struct._object** %right.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyST_Object*
  %st_node10 = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %12, i32 0, i32 1
  %13 = load %struct._node*, %struct._node** %st_node10, align 8
  %call = call i32 @parser_compare_nodes(%struct._node* %10, %struct._node* %13)
  store i32 %call, i32* %result, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %14 = load i32, i32* %op.addr, align 4
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 1, label %sw.bb.16
    i32 5, label %sw.bb.19
    i32 0, label %sw.bb.22
    i32 4, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.11
  %15 = load i32, i32* %result, align 4
  %cmp12 = icmp eq i32 %15, 0
  %cond = select i1 %cmp12, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.11
  %16 = load i32, i32* %result, align 4
  %cmp14 = icmp ne i32 %16, 0
  %cond15 = select i1 %cmp14, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond15, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.11
  %17 = load i32, i32* %result, align 4
  %cmp17 = icmp sle i32 %17, 0
  %cond18 = select i1 %cmp17, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond18, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.11
  %18 = load i32, i32* %result, align 4
  %cmp20 = icmp sge i32 %18, 0
  %cond21 = select i1 %cmp20, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond21, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.11
  %19 = load i32, i32* %result, align 4
  %cmp23 = icmp slt i32 %19, 0
  %cond24 = select i1 %cmp23, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond24, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.11
  %20 = load i32, i32* %result, align 4
  %cmp26 = icmp sgt i32 %20, 0
  %cond27 = select i1 %cmp26, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond27, %struct._object** %v, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.11
  %call28 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb
  br label %finished

finished:                                         ; preds = %sw.epilog, %if.then.6
  %21 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %23 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %finished, %sw.default, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare void @PyNode_Free(%struct._node*) #1

declare void @PyObject_Free(i8*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parser_compare_nodes(%struct._node* %left, %struct._node* %right) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca %struct._node*, align 8
  %right.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct._node* %left, %struct._node** %left.addr, align 8
  store %struct._node* %right, %struct._node** %right.addr, align 8
  %0 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %2 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_type1 = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type1, align 2
  %conv2 = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_type4 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type4, align 2
  %conv5 = sext i16 %5 to i32
  %6 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type6, align 2
  %conv7 = sext i16 %7 to i32
  %cmp8 = icmp slt i32 %conv5, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_type12 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 0
  %9 = load i16, i16* %n_type12, align 2
  %conv13 = sext i16 %9 to i32
  %cmp14 = icmp slt i32 %conv13, 256
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.11
  %10 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 1
  %11 = load i8*, i8** %n_str, align 8
  %12 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_str17 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 1
  %13 = load i8*, i8** %n_str17, align 8
  %call = call i32 @strcmp(i8* %11, i8* %13) #4
  store i32 %call, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.11
  %14 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 4
  %15 = load i32, i32* %n_nchildren, align 4
  %16 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_nchildren19 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 4
  %17 = load i32, i32* %n_nchildren19, align 4
  %cmp20 = icmp slt i32 %15, %17
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %18 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_nchildren24 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 4
  %19 = load i32, i32* %n_nchildren24, align 4
  %20 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_nchildren25 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 4
  %21 = load i32, i32* %n_nchildren25, align 4
  %cmp26 = icmp slt i32 %19, %21
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %22 = load i32, i32* %j, align 4
  %23 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_nchildren30 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 4
  %24 = load i32, i32* %n_nchildren30, align 4
  %cmp31 = icmp slt i32 %22, %24
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %j, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._node*, %struct._node** %left.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %27, i64 %idxprom
  %28 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load %struct._node*, %struct._node** %right.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom33
  %call36 = call i32 @parser_compare_nodes(%struct._node* %arrayidx, %struct._node* %arrayidx35)
  store i32 %call36, i32* %v, align 4
  %31 = load i32, i32* %v, align 4
  %cmp37 = icmp ne i32 %31, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  %32 = load i32, i32* %v, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %33 = load i32, i32* %j, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.39, %if.then.28, %if.then.22, %if.then.16, %if.then.10, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_compilest(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %arena = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %filename = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store %struct._arena* null, %struct._arena** %arena, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %cmp = icmp eq %struct.PyST_Object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %2 = bitcast %struct.PyST_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %5 = bitcast %struct.PyST_Object* %4 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @parser_compilest.keywords, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct.PyST_Object** %self.addr, i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %filename)
  store i32 %call4, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @parser_compilest.keywords, i32 0, i64 1), i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %filename)
  store i32 %call5, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %ok, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  br label %error

if.end.8:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %filename, align 8
  %cmp9 = icmp eq %struct._object* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %filename, align 8
  %13 = load %struct._object*, %struct._object** %filename, align 8
  %cmp12 = icmp eq %struct._object* %13, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  br label %error

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %call16 = call %struct._arena* @PyArena_New()
  store %struct._arena* %call16, %struct._arena** %arena, align 8
  %14 = load %struct._arena*, %struct._arena** %arena, align 8
  %tobool17 = icmp ne %struct._arena* %14, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %error

if.end.19:                                        ; preds = %if.end.15
  %15 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %15, i32 0, i32 1
  %16 = load %struct._node*, %struct._node** %st_node, align 8
  %17 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_flags = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %17, i32 0, i32 3
  %18 = load %struct._object*, %struct._object** %filename, align 8
  %19 = load %struct._arena*, %struct._arena** %arena, align 8
  %call20 = call %struct._mod* @PyAST_FromNodeObject(%struct._node* %16, %struct.PyCompilerFlags* %st_flags, %struct._object* %18, %struct._arena* %19)
  store %struct._mod* %call20, %struct._mod** %mod, align 8
  %20 = load %struct._mod*, %struct._mod** %mod, align 8
  %tobool21 = icmp ne %struct._mod* %20, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  br label %error

if.end.23:                                        ; preds = %if.end.19
  %21 = load %struct._mod*, %struct._mod** %mod, align 8
  %22 = load %struct._object*, %struct._object** %filename, align 8
  %23 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_flags24 = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %23, i32 0, i32 3
  %24 = load %struct._arena*, %struct._arena** %arena, align 8
  %call25 = call %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod* %21, %struct._object* %22, %struct.PyCompilerFlags* %st_flags24, i32 -1, %struct._arena* %24)
  %25 = bitcast %struct.PyCodeObject* %call25 to %struct._object*
  store %struct._object* %25, %struct._object** %res, align 8
  br label %error

error:                                            ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.13, %if.then.7
  br label %do.body

do.body:                                          ; preds = %error
  %26 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp26 = icmp ne %struct._object* %27, null
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.28
  br label %if.end.33

if.else.31:                                       ; preds = %do.body.28
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.33
  br label %if.end.34

if.end.34:                                        ; preds = %do.end, %do.body
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %35 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp36 = icmp ne %struct._arena* %35, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.35
  %36 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %do.end.35
  %37 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_isexpr(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %cmp = icmp eq %struct.PyST_Object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %2 = bitcast %struct.PyST_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %5 = bitcast %struct.PyST_Object* %4 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_isexpr.keywords, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct.PyST_Object** %self.addr)
  store i32 %call4, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_isexpr.keywords, i32 0, i64 1))
  store i32 %call5, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %ok, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_type = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %12, i32 0, i32 2
  %13 = load i32, i32* %st_type, align 4
  %cmp8 = icmp eq i32 %13, 1
  %cond = select i1 %cmp8, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  %14 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_issuite(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %cmp = icmp eq %struct.PyST_Object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %2 = bitcast %struct.PyST_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %5 = bitcast %struct.PyST_Object* %4 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_issuite.keywords, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct.PyST_Object** %self.addr)
  store i32 %call4, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_issuite.keywords, i32 0, i64 1))
  store i32 %call5, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %ok, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_type = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %12, i32 0, i32 2
  %13 = load i32, i32* %st_type, align 4
  %cmp8 = icmp eq i32 %13, 1
  %cond = select i1 %cmp8, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  %14 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_st2list(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %line_info = alloca i32, align 4
  %col_info = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i32 0, i32* %line_info, align 4
  store i32 0, i32* %col_info, align 4
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %cmp = icmp eq %struct.PyST_Object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %2 = bitcast %struct.PyST_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %5 = bitcast %struct.PyST_Object* %4 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @parser_st2list.keywords, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct.PyST_Object** %self.addr, i32* %line_info, i32* %col_info)
  store i32 %call4, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @parser_st2list.keywords, i32 0, i64 1), i32* %line_info, i32* %col_info)
  store i32 %call5, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %ok, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %12, i32 0, i32 1
  %13 = load %struct._node*, %struct._node** %st_node, align 8
  %14 = load i32, i32* %line_info, align 4
  %15 = load i32, i32* %col_info, align 4
  %call8 = call %struct._object* @node2tuple(%struct._node* %13, %struct._object* (i64)* @PyList_New, i32 (%struct._object*, i64, %struct._object*)* @PyList_SetItem, i32 %14, i32 %15)
  store %struct._object* %call8, %struct._object** %res, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_st2tuple(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %line_info = alloca i32, align 4
  %col_info = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i32 0, i32* %line_info, align 4
  store i32 0, i32* %col_info, align 4
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %cmp = icmp eq %struct.PyST_Object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %2 = bitcast %struct.PyST_Object* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %5 = bitcast %struct.PyST_Object* %4 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @parser_st2tuple.keywords, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct.PyST_Object** %self.addr, i32* %line_info, i32* %col_info)
  store i32 %call4, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %10 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @parser_st2tuple.keywords, i32 0, i64 1), i32* %line_info, i32* %col_info)
  store i32 %call5, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %ok, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.PyST_Object*, %struct.PyST_Object** %self.addr, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %12, i32 0, i32 1
  %13 = load %struct._node*, %struct._node** %st_node, align 8
  %14 = load i32, i32* %line_info, align 4
  %15 = load i32, i32* %col_info, align 4
  %call8 = call %struct._object* @node2tuple(%struct._node* %13, %struct._object* (i64)* @PyTuple_New, i32 (%struct._object*, i64, %struct._object*)* @PyTuple_SetItem, i32 %14, i32 %15)
  store %struct._object* %call8, %struct._object** %res, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_sizeof(%struct.PyST_Object* %st, i8* %unused) #0 {
entry:
  %st.addr = alloca %struct.PyST_Object*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.PyST_Object* %st, %struct.PyST_Object** %st.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct.PyST_Object*, %struct.PyST_Object** %st.addr, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %0, i32 0, i32 1
  %1 = load %struct._node*, %struct._node** %st_node, align 8
  %call = call i64 @_PyNode_SizeOf(%struct._node* %1)
  %add = add i64 32, %call
  store i64 %add, i64* %res, align 8
  %2 = load i64, i64* %res, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call1
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._arena* @PyArena_New() #1

declare %struct._mod* @PyAST_FromNodeObject(%struct._node*, %struct.PyCompilerFlags*, %struct._object*, %struct._arena*) #1

declare %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod*, %struct._object*, %struct.PyCompilerFlags*, i32, %struct._arena*) #1

declare void @PyArena_Free(%struct._arena*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @node2tuple(%struct._node* %n, %struct._object* (i64)* %mkseq, i32 (%struct._object*, i64, %struct._object*)* %addelem, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %n.addr = alloca %struct._node*, align 8
  %mkseq.addr = alloca %struct._object* (i64)*, align 8
  %addelem.addr = alloca i32 (%struct._object*, i64, %struct._object*)*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store %struct._object* (i64)* %mkseq, %struct._object* (i64)** %mkseq.addr, align 8
  store i32 (%struct._object*, i64, %struct._object*)* %addelem, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %cmp = icmp eq %struct._node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type, align 2
  %conv = sext i16 %3 to i32
  %cmp1 = icmp sge i32 %conv, 256
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object* (i64)*, %struct._object* (i64)** %mkseq.addr, align 8
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 4
  %6 = load i32, i32* %n_nchildren, align 4
  %add = add i32 1, %6
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type4 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 0
  %8 = load i16, i16* %n_type4, align 2
  %conv5 = sext i16 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 335
  %conv7 = zext i1 %cmp6 to i32
  %add8 = add i32 %add, %conv7
  %conv9 = sext i32 %add8 to i64
  %call = call %struct._object* %4(i64 %conv9)
  store %struct._object* %call, %struct._object** %result, align 8
  %9 = load %struct._object*, %struct._object** %result, align 8
  %cmp10 = icmp eq %struct._object* %9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.3
  br label %error

if.end.13:                                        ; preds = %if.then.3
  %10 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type14 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 0
  %11 = load i16, i16* %n_type14, align 2
  %conv15 = sext i16 %11 to i64
  %call16 = call %struct._object* @PyLong_FromLong(i64 %conv15)
  store %struct._object* %call16, %struct._object** %w, align 8
  %12 = load %struct._object*, %struct._object** %w, align 8
  %cmp17 = icmp eq %struct._object* %12, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  br label %error

if.end.20:                                        ; preds = %if.end.13
  %13 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %14 = load %struct._object*, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %w, align 8
  %call21 = call i32 %13(%struct._object* %14, i64 0, %struct._object* %15)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren22 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 4
  %18 = load i32, i32* %n_nchildren22, align 4
  %cmp23 = icmp slt i32 %16, %18
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %21, i64 %idxprom
  %22 = load %struct._object* (i64)*, %struct._object* (i64)** %mkseq.addr, align 8
  %23 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %24 = load i32, i32* %lineno.addr, align 4
  %25 = load i32, i32* %col_offset.addr, align 4
  %call25 = call %struct._object* @node2tuple(%struct._node* %arrayidx, %struct._object* (i64)* %22, i32 (%struct._object*, i64, %struct._object*)* %23, i32 %24, i32 %25)
  store %struct._object* %call25, %struct._object** %w, align 8
  %26 = load %struct._object*, %struct._object** %w, align 8
  %cmp26 = icmp eq %struct._object* %26, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %error

if.end.29:                                        ; preds = %for.body
  %27 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %28 = load %struct._object*, %struct._object** %result, align 8
  %29 = load i32, i32* %i, align 4
  %add30 = add i32 %29, 1
  %conv31 = sext i32 %add30 to i64
  %30 = load %struct._object*, %struct._object** %w, align 8
  %call32 = call i32 %27(%struct._object* %28, i64 %conv31, %struct._object* %30)
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i32, i32* %i, align 4
  %inc33 = add i32 %31, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type34 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 0
  %33 = load i16, i16* %n_type34, align 2
  %conv35 = sext i16 %33 to i32
  %cmp36 = icmp eq i32 %conv35, 335
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %for.end
  %34 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 1
  %35 = load i8*, i8** %n_str, align 8
  %call39 = call %struct._object* @PyUnicode_FromString(i8* %35)
  store %struct._object* %call39, %struct._object** %w, align 8
  %36 = load %struct._object*, %struct._object** %w, align 8
  %cmp40 = icmp eq %struct._object* %36, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  br label %error

if.end.43:                                        ; preds = %if.then.38
  %37 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %38 = load %struct._object*, %struct._object** %result, align 8
  %39 = load i32, i32* %i, align 4
  %add44 = add i32 %39, 1
  %conv45 = sext i32 %add44 to i64
  %40 = load %struct._object*, %struct._object** %w, align 8
  %call46 = call i32 %37(%struct._object* %38, i64 %conv45, %struct._object* %40)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.43, %for.end
  br label %if.end.100

if.else:                                          ; preds = %if.end
  %41 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type48 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 0
  %42 = load i16, i16* %n_type48, align 2
  %conv49 = sext i16 %42 to i32
  %cmp50 = icmp slt i32 %conv49, 256
  br i1 %cmp50, label %if.then.52, label %if.else.98

if.then.52:                                       ; preds = %if.else
  %43 = load %struct._object* (i64)*, %struct._object* (i64)** %mkseq.addr, align 8
  %44 = load i32, i32* %lineno.addr, align 4
  %add53 = add i32 2, %44
  %45 = load i32, i32* %col_offset.addr, align 4
  %add54 = add i32 %add53, %45
  %conv55 = sext i32 %add54 to i64
  %call56 = call %struct._object* %43(i64 %conv55)
  store %struct._object* %call56, %struct._object** %result, align 8
  %46 = load %struct._object*, %struct._object** %result, align 8
  %cmp57 = icmp eq %struct._object* %46, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.52
  br label %error

if.end.60:                                        ; preds = %if.then.52
  %47 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type61 = getelementptr inbounds %struct._node, %struct._node* %47, i32 0, i32 0
  %48 = load i16, i16* %n_type61, align 2
  %conv62 = sext i16 %48 to i64
  %call63 = call %struct._object* @PyLong_FromLong(i64 %conv62)
  store %struct._object* %call63, %struct._object** %w, align 8
  %49 = load %struct._object*, %struct._object** %w, align 8
  %cmp64 = icmp eq %struct._object* %49, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  br label %error

if.end.67:                                        ; preds = %if.end.60
  %50 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %51 = load %struct._object*, %struct._object** %result, align 8
  %52 = load %struct._object*, %struct._object** %w, align 8
  %call68 = call i32 %50(%struct._object* %51, i64 0, %struct._object* %52)
  %53 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str69 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 1
  %54 = load i8*, i8** %n_str69, align 8
  %call70 = call %struct._object* @PyUnicode_FromString(i8* %54)
  store %struct._object* %call70, %struct._object** %w, align 8
  %55 = load %struct._object*, %struct._object** %w, align 8
  %cmp71 = icmp eq %struct._object* %55, null
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.67
  br label %error

if.end.74:                                        ; preds = %if.end.67
  %56 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %57 = load %struct._object*, %struct._object** %result, align 8
  %58 = load %struct._object*, %struct._object** %w, align 8
  %call75 = call i32 %56(%struct._object* %57, i64 1, %struct._object* %58)
  %59 = load i32, i32* %lineno.addr, align 4
  %cmp76 = icmp eq i32 %59, 1
  br i1 %cmp76, label %if.then.78, label %if.end.86

if.then.78:                                       ; preds = %if.end.74
  %60 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %60, i32 0, i32 2
  %61 = load i32, i32* %n_lineno, align 4
  %conv79 = sext i32 %61 to i64
  %call80 = call %struct._object* @PyLong_FromLong(i64 %conv79)
  store %struct._object* %call80, %struct._object** %w, align 8
  %62 = load %struct._object*, %struct._object** %w, align 8
  %cmp81 = icmp eq %struct._object* %62, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.78
  br label %error

if.end.84:                                        ; preds = %if.then.78
  %63 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %64 = load %struct._object*, %struct._object** %result, align 8
  %65 = load %struct._object*, %struct._object** %w, align 8
  %call85 = call i32 %63(%struct._object* %64, i64 2, %struct._object* %65)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.84, %if.end.74
  %66 = load i32, i32* %col_offset.addr, align 4
  %cmp87 = icmp eq i32 %66, 1
  br i1 %cmp87, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.86
  %67 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %67, i32 0, i32 3
  %68 = load i32, i32* %n_col_offset, align 4
  %conv90 = sext i32 %68 to i64
  %call91 = call %struct._object* @PyLong_FromLong(i64 %conv90)
  store %struct._object* %call91, %struct._object** %w, align 8
  %69 = load %struct._object*, %struct._object** %w, align 8
  %cmp92 = icmp eq %struct._object* %69, null
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.89
  br label %error

if.end.95:                                        ; preds = %if.then.89
  %70 = load i32 (%struct._object*, i64, %struct._object*)*, i32 (%struct._object*, i64, %struct._object*)** %addelem.addr, align 8
  %71 = load %struct._object*, %struct._object** %result, align 8
  %72 = load %struct._object*, %struct._object** %w, align 8
  %call96 = call i32 %70(%struct._object* %71, i64 3, %struct._object* %72)
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.95, %if.end.86
  br label %if.end.99

if.else.98:                                       ; preds = %if.else
  %73 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.99:                                        ; preds = %if.end.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.47
  %74 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %74, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.94, %if.then.83, %if.then.73, %if.then.66, %if.then.59, %if.then.42, %if.then.28, %if.then.19, %if.then.12
  br label %do.body

do.body:                                          ; preds = %error
  %75 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp101 = icmp ne %struct._object* %76, null
  br i1 %cmp101, label %if.then.103, label %if.end.110

if.then.103:                                      ; preds = %do.body
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %79, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp105 = icmp ne i64 %dec, 0
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.104
  br label %if.end.109

if.else.108:                                      ; preds = %do.body.104
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %82(%struct._object* %83)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end

do.end:                                           ; preds = %if.end.109
  br label %if.end.110

if.end.110:                                       ; preds = %do.end, %do.body
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.111, %if.end.100, %if.else.98, %if.then
  %84 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %84
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #1

declare i64 @_PyNode_SizeOf(%struct._node*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_expr(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call %struct._object* @parser_do_parse(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_suite(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call %struct._object* @parser_do_parse(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_tuple2st(%struct.PyST_Object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyST_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %st = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %tree = alloca %struct._node*, align 8
  %start_sym = alloca i32, align 4
  store %struct.PyST_Object* %self, %struct.PyST_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %st, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_tuple2st.keywords, i32 0, i32 0), %struct._object** %tuple)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tuple, align 8
  %call1 = call i32 @PySequence_Check(%struct._object* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.62, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %tuple, align 8
  %call5 = call %struct._node* @build_node_tree(%struct._object* %4)
  store %struct._node* %call5, %struct._node** %tree, align 8
  %5 = load %struct._node*, %struct._node** %tree, align 8
  %cmp = icmp ne %struct._node* %5, null
  br i1 %cmp, label %if.then.6, label %if.end.39

if.then.6:                                        ; preds = %if.end.4
  %6 = load %struct._node*, %struct._node** %tree, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %start_sym, align 4
  %8 = load i32, i32* %start_sym, align 4
  %cmp7 = icmp eq i32 %8, 258
  br i1 %cmp7, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.then.6
  %9 = load %struct._node*, %struct._node** %tree, align 8
  %call10 = call i32 @validate_expr_tree(%struct._node* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %10 = load %struct._node*, %struct._node** %tree, align 8
  %call13 = call %struct._object* @parser_newstobject(%struct._node* %10, i32 1)
  store %struct._object* %call13, %struct._object** %st, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.9
  %11 = load %struct._node*, %struct._node** %tree, align 8
  call void @PyNode_Free(%struct._node* %11)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %if.end.38

if.else.15:                                       ; preds = %if.then.6
  %12 = load i32, i32* %start_sym, align 4
  %cmp16 = icmp eq i32 %12, 257
  br i1 %cmp16, label %if.then.18, label %if.else.25

if.then.18:                                       ; preds = %if.else.15
  %13 = load %struct._node*, %struct._node** %tree, align 8
  %call19 = call i32 @validate_file_input(%struct._node* %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.then.18
  %14 = load %struct._node*, %struct._node** %tree, align 8
  %call22 = call %struct._object* @parser_newstobject(%struct._node* %14, i32 2)
  store %struct._object* %call22, %struct._object** %st, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.then.18
  %15 = load %struct._node*, %struct._node** %tree, align 8
  call void @PyNode_Free(%struct._node* %15)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  br label %if.end.37

if.else.25:                                       ; preds = %if.else.15
  %16 = load i32, i32* %start_sym, align 4
  %cmp26 = icmp eq i32 %16, 335
  br i1 %cmp26, label %if.then.28, label %if.else.35

if.then.28:                                       ; preds = %if.else.25
  %17 = load %struct._node*, %struct._node** %tree, align 8
  %call29 = call i32 @validate_encoding_decl(%struct._node* %17)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.then.28
  %18 = load %struct._node*, %struct._node** %tree, align 8
  %call32 = call %struct._object* @parser_newstobject(%struct._node* %18, i32 2)
  store %struct._object* %call32, %struct._object** %st, align 8
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.28
  %19 = load %struct._node*, %struct._node** %tree, align 8
  call void @PyNode_Free(%struct._node* %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.36

if.else.35:                                       ; preds = %if.else.25
  %20 = load %struct._node*, %struct._node** %tree, align 8
  call void @PyNode_Free(%struct._node* %20)
  call void @err_string(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.end.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.24
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.14
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.4
  %21 = load %struct._object*, %struct._object** %st, align 8
  %cmp40 = icmp eq %struct._object* %21, null
  br i1 %cmp40, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.39
  %call42 = call %struct._object* @PyErr_Occurred()
  %tobool43 = icmp ne %struct._object* %call42, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true
  call void @err_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.39
  %22 = load %struct._object*, %struct._object** %st, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.3, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser__pickler(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %st = alloca %struct._object*, align 8
  %empty_dict = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %st, align 8
  store %struct._object* null, %struct._object** %empty_dict, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.202, i32 0, i32 0), %struct._typeobject* @PyST_Type, %struct._object** %st)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyDict_New()
  store %struct._object* %call1, %struct._object** %empty_dict, align 8
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %finally

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %st, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.203, i32 0, i32 0), %struct._object* %1, i32 1)
  store %struct._object* %call3, %struct._object** %newargs, align 8
  %cmp4 = icmp eq %struct._object* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %finally

if.end.6:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %newargs, align 8
  %3 = load %struct._object*, %struct._object** %empty_dict, align 8
  %call7 = call %struct._object* @parser_st2tuple(%struct.PyST_Object* null, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call7, %struct._object** %tuple, align 8
  %4 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp8 = icmp ne %struct._object* %4, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.6
  %5 = load %struct._object*, %struct._object** @pickle_constructor, align 8
  %6 = load %struct._object*, %struct._object** %tuple, align 8
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i32 0, i32 0), %struct._object* %5, %struct._object* %6)
  store %struct._object* %call10, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.end.6
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %empty_dict, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %21 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp27, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %23, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %26(%struct._object* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %entry
  br label %finally

finally:                                          ; preds = %if.end.37, %if.then.5, %if.then.2
  br label %do.body.38

do.body.38:                                       ; preds = %finally
  %28 = load %struct._object*, %struct._object** %empty_dict, align 8
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp39 = icmp ne %struct._object* %29, null
  br i1 %cmp39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %do.body.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp42, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %32, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %35(%struct._object* %36)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.body.38
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %37 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_do_parse(%struct._object* %args, %struct._object* %kw, i8* %argspec, i32 %type) #0 {
entry:
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %argspec.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %string = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %err = alloca %struct.perrdetail, align 8
  %n = alloca %struct._node*, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i8* %argspec, i8** %argspec.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* null, i8** %string, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %2 = load i8*, i8** %argspec.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @parser_do_parse.keywords, i32 0, i32 0), i8** %string)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %string, align 8
  %4 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %4, 1
  %cond = select i1 %cmp, i32 258, i32 257
  %call1 = call %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8* %3, i8* null, %struct.grammar* @_PyParser_Grammar, i32 %cond, %struct.perrdetail* %err, i32* %flags)
  store %struct._node* %call1, %struct._node** %n, align 8
  %5 = load %struct._node*, %struct._node** %n, align 8
  %tobool2 = icmp ne %struct._node* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._node*, %struct._node** %n, align 8
  %7 = load i32, i32* %type.addr, align 4
  %call4 = call %struct._object* @parser_newstobject(%struct._node* %6, i32 %7)
  store %struct._object* %call4, %struct._object** %res, align 8
  %8 = load %struct._object*, %struct._object** %res, align 8
  %tobool5 = icmp ne %struct._object* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 516096
  %10 = load %struct._object*, %struct._object** %res, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyST_Object*
  %st_flags = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %11, i32 0, i32 3
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %st_flags, i32 0, i32 0
  store i32 %and, i32* %cf_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  br label %if.end.7

if.else:                                          ; preds = %if.then
  call void @PyParser_SetError(%struct.perrdetail* %err)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  call void @PyParser_ClearError(%struct.perrdetail* %err)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %12 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %12
}

declare %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @parser_newstobject(%struct._node* %st, i32 %type) #0 {
entry:
  %st.addr = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %o = alloca %struct.PyST_Object*, align 8
  store %struct._node* %st, %struct._node** %st.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PyST_Type)
  %0 = bitcast %struct._object* %call to %struct.PyST_Object*
  store %struct.PyST_Object* %0, %struct.PyST_Object** %o, align 8
  %1 = load %struct.PyST_Object*, %struct.PyST_Object** %o, align 8
  %cmp = icmp ne %struct.PyST_Object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %st.addr, align 8
  %3 = load %struct.PyST_Object*, %struct.PyST_Object** %o, align 8
  %st_node = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %3, i32 0, i32 1
  store %struct._node* %2, %struct._node** %st_node, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load %struct.PyST_Object*, %struct.PyST_Object** %o, align 8
  %st_type = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %5, i32 0, i32 2
  store i32 %4, i32* %st_type, align 4
  %6 = load %struct.PyST_Object*, %struct.PyST_Object** %o, align 8
  %st_flags = getelementptr inbounds %struct.PyST_Object, %struct.PyST_Object* %6, i32 0, i32 3
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %st_flags, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._node*, %struct._node** %st.addr, align 8
  call void @PyNode_Free(%struct._node* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.PyST_Object*, %struct.PyST_Object** %o, align 8
  %9 = bitcast %struct.PyST_Object* %8 to %struct._object*
  ret %struct._object* %9
}

declare void @PyParser_SetError(%struct.perrdetail*) #1

declare void @PyParser_ClearError(%struct.perrdetail*) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare i32 @PySequence_Check(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._node* @build_node_tree(%struct._object* %tuple) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %tuple.addr = alloca %struct._object*, align 8
  %res = alloca %struct._node*, align 8
  %temp = alloca %struct._object*, align 8
  %num = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %line_num = alloca i32, align 4
  %encoding = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %temp52 = alloca i8*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %err = alloca %struct._object*, align 8
  %_py_xdecref_tmp168 = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  store %struct._object* %tuple, %struct._object** %tuple.addr, align 8
  store %struct._node* null, %struct._node** %res, align 8
  %0 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call = call %struct._object* @PySequence_GetItem(%struct._object* %0, i64 0)
  store %struct._object* %call, %struct._object** %temp, align 8
  store i64 -1, i64* %num, align 8
  %1 = load %struct._object*, %struct._object** %temp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %temp, align 8
  %call1 = call i64 @PyLong_AsLong(%struct._object* %2)
  store i64 %call1, i64* %num, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %12 = load i64, i64* %num, align 8
  %cmp10 = icmp slt i64 %12, 256
  br i1 %cmp10, label %if.then.11, label %if.else.30

if.then.11:                                       ; preds = %do.end.9
  %13 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), %struct._object* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %tuple.addr, align 8
  %14 = load %struct._object*, %struct._object** @parser_error, align 8
  %15 = load %struct._object*, %struct._object** %tuple.addr, align 8
  call void @PyErr_SetObject(%struct._object* %14, %struct._object* %15)
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %tuple.addr, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp14, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp14, align 8
  %cmp15 = icmp ne %struct._object* %17, null
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %do.body.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp14, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %20, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %23(%struct._object* %24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.body.13
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.187

if.else.30:                                       ; preds = %do.end.9
  %25 = load i64, i64* %num, align 8
  %cmp31 = icmp sge i64 %25, 256
  br i1 %cmp31, label %if.then.32, label %if.else.165

if.then.32:                                       ; preds = %if.else.30
  store i32 0, i32* %line_num, align 4
  store %struct._object* null, %struct._object** %encoding, align 8
  %26 = load i64, i64* %num, align 8
  %cmp33 = icmp eq i64 %26, 335
  br i1 %cmp33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.then.32
  %27 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call35 = call %struct._object* @PySequence_GetItem(%struct._object* %27, i64 2)
  store %struct._object* %call35, %struct._object** %encoding, align 8
  %28 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call36 = call %struct._object* @PySequence_GetSlice(%struct._object* %28, i64 0, i64 2)
  store %struct._object* %call36, %struct._object** %tuple.addr, align 8
  %29 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %cmp37 = icmp eq %struct._object* %29, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.32
  %30 = load i64, i64* %num, align 8
  %conv = trunc i64 %30 to i32
  %call41 = call %struct._node* @PyNode_New(i32 %conv)
  store %struct._node* %call41, %struct._node** %res, align 8
  %31 = load %struct._node*, %struct._node** %res, align 8
  %cmp42 = icmp ne %struct._node* %31, null
  br i1 %cmp42, label %if.then.44, label %if.end.164

if.then.44:                                       ; preds = %if.end.40
  %32 = load %struct._node*, %struct._node** %res, align 8
  %33 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %34 = load %struct._node*, %struct._node** %res, align 8
  %call45 = call %struct._node* @build_node_children(%struct._object* %33, %struct._node* %34, i32* %line_num)
  %cmp46 = icmp ne %struct._node* %32, %call45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.44
  %35 = load %struct._node*, %struct._node** %res, align 8
  call void @PyNode_Free(%struct._node* %35)
  store %struct._node* null, %struct._node** %res, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.44
  %36 = load %struct._node*, %struct._node** %res, align 8
  %tobool = icmp ne %struct._node* %36, null
  br i1 %tobool, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %if.end.49
  %37 = load %struct._object*, %struct._object** %encoding, align 8
  %tobool50 = icmp ne %struct._object* %37, null
  br i1 %tobool50, label %if.then.51, label %if.end.163

if.then.51:                                       ; preds = %land.lhs.true
  %38 = load %struct._object*, %struct._object** %encoding, align 8
  %call53 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %38, i64* %len)
  store i8* %call53, i8** %temp52, align 8
  %39 = load i8*, i8** %temp52, align 8
  %cmp54 = icmp eq i8* %39, null
  br i1 %cmp54, label %if.then.56, label %if.end.93

if.then.56:                                       ; preds = %if.then.51
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %40 = load %struct._node*, %struct._node** %res, align 8
  %41 = bitcast %struct._node* %40 to %struct._object*
  store %struct._object* %41, %struct._object** %_py_decref_tmp58, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %43, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %46(%struct._object* %47)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %48 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp70, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %50, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.69
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %53(%struct._object* %54)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  %55 = load %struct._object*, %struct._object** %tuple.addr, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp82, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %57, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %60(%struct._object* %61)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.93:                                        ; preds = %if.then.51
  %62 = load i64, i64* %len, align 8
  %add = add i64 %62, 1
  %call94 = call i8* @PyObject_Malloc(i64 %add)
  %63 = load %struct._node*, %struct._node** %res, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 1
  store i8* %call94, i8** %n_str, align 8
  %64 = load %struct._node*, %struct._node** %res, align 8
  %n_str95 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 1
  %65 = load i8*, i8** %n_str95, align 8
  %cmp96 = icmp eq i8* %65, null
  br i1 %cmp96, label %if.then.98, label %if.end.136

if.then.98:                                       ; preds = %if.end.93
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.98
  %66 = load %struct._node*, %struct._node** %res, align 8
  %67 = bitcast %struct._node* %66 to %struct._object*
  store %struct._object* %67, %struct._object** %_py_decref_tmp100, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %69, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %do.body.99
  br label %if.end.109

if.else.106:                                      ; preds = %do.body.99
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %72(%struct._object* %73)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %74 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp112, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt113, align 8
  %dec114 = add i64 %76, -1
  store i64 %dec114, i64* %ob_refcnt113, align 8
  %cmp115 = icmp ne i64 %dec114, 0
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.111
  br label %if.end.121

if.else.118:                                      ; preds = %do.body.111
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  call void %79(%struct._object* %80)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %81 = load %struct._object*, %struct._object** %tuple.addr, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp124, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt125, align 8
  %dec126 = add i64 %83, -1
  store i64 %dec126, i64* %ob_refcnt125, align 8
  %cmp127 = icmp ne i64 %dec126, 0
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.123
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.123
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %86(%struct._object* %87)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  %call135 = call %struct._object* @PyErr_NoMemory()
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.93
  %88 = load %struct._node*, %struct._node** %res, align 8
  %n_str137 = getelementptr inbounds %struct._node, %struct._node* %88, i32 0, i32 1
  %89 = load i8*, i8** %n_str137, align 8
  %90 = load i8*, i8** %temp52, align 8
  %91 = load i64, i64* %len, align 8
  %add138 = add i64 %91, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 %add138, i32 1, i1 false)
  br label %do.body.139

do.body.139:                                      ; preds = %if.end.136
  %92 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp140, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %94, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.139
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.139
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %97(%struct._object* %98)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  br label %do.body.151

do.body.151:                                      ; preds = %do.end.150
  %99 = load %struct._object*, %struct._object** %tuple.addr, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp152, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt153, align 8
  %dec154 = add i64 %101, -1
  store i64 %dec154, i64* %ob_refcnt153, align 8
  %cmp155 = icmp ne i64 %dec154, 0
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %do.body.151
  br label %if.end.161

if.else.158:                                      ; preds = %do.body.151
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  call void %104(%struct._object* %105)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %do.end.162, %land.lhs.true, %if.end.49
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.40
  br label %if.end.186

if.else.165:                                      ; preds = %if.else.30
  %106 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call166 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), %struct._object* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* %call166, %struct._object** %err, align 8
  %107 = load %struct._object*, %struct._object** @parser_error, align 8
  %108 = load %struct._object*, %struct._object** %err, align 8
  call void @PyErr_SetObject(%struct._object* %107, %struct._object* %108)
  br label %do.body.167

do.body.167:                                      ; preds = %if.else.165
  %109 = load %struct._object*, %struct._object** %err, align 8
  store %struct._object* %109, %struct._object** %_py_xdecref_tmp168, align 8
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp168, align 8
  %cmp169 = icmp ne %struct._object* %110, null
  br i1 %cmp169, label %if.then.171, label %if.end.184

if.then.171:                                      ; preds = %do.body.167
  br label %do.body.172

do.body.172:                                      ; preds = %if.then.171
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp168, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp173, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt174, align 8
  %dec175 = add i64 %113, -1
  store i64 %dec175, i64* %ob_refcnt174, align 8
  %cmp176 = icmp ne i64 %dec175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.172
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.172
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  call void %116(%struct._object* %117)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  br label %if.end.184

if.end.184:                                       ; preds = %do.end.183, %do.body.167
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.184
  br label %if.end.186

if.end.186:                                       ; preds = %do.end.185, %if.end.164
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %do.end.29
  %118 = load %struct._node*, %struct._node** %res, align 8
  store %struct._node* %118, %struct._node** %retval
  br label %return

return:                                           ; preds = %if.end.187, %do.end.134, %do.end.92, %if.then.38
  %119 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %119
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_expr_tree(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_eval_input(%struct._node* %0)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @err_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, i32* %res, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_file_input(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  %call = call i32 @validate_ntype(%struct._node* %arrayidx, i32 0)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %land.rhs.2, label %land.end.4

land.rhs.2:                                       ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp3 = icmp slt i32 %8, %9
  br label %land.end.4

land.end.4:                                       ; preds = %land.rhs.2, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs.2 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.4
  %11 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom6
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx8, i32 0, i32 0
  %14 = load i16, i16* %n_type, align 2
  %conv = sext i16 %14 to i32
  %cmp9 = icmp eq i32 %conv, 268
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom11
  %call14 = call i32 @validate_stmt(%struct._node* %arrayidx13)
  store i32 %call14, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %20, i64 %idxprom15
  %call18 = call i32 @validate_terminal(%struct._node* %arrayidx17, i32 4, i8* null)
  store i32 %call18, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.4
  %22 = load i32, i32* %res, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %call20 = call %struct._object* @PyErr_Occurred()
  %tobool21 = icmp ne %struct._object* %call20, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true
  call void @err_string(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.136, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true, %for.end
  %23 = load i32, i32* %res, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_encoding_decl(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 0
  %call = call i32 @validate_file_input(%struct._node* %arrayidx)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @err_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.201, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %7 = load i32, i32* %res, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @err_string(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._object*, %struct._object** @parser_error, align 8
  %1 = load i8*, i8** %message.addr, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* %1)
  ret void
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PySequence_GetSlice(%struct._object*, i64, i64) #1

declare %struct._node* @PyNode_New(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._node* @build_node_children(%struct._object* %tuple, %struct._node* %root, i32* %line_num) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %tuple.addr = alloca %struct._object*, align 8
  %root.addr = alloca %struct._node*, align 8
  %line_num.addr = alloca i32*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %err = alloca i32, align 4
  %elem = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %type = alloca i32, align 4
  %strn = alloca i8*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %err56 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_xdecref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %len99 = alloca i64, align 8
  %temp101 = alloca %struct._object*, align 8
  %temp_str = alloca i8*, align 8
  %_py_decref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %num = alloca i32, align 4
  %_py_decref_tmp168 = alloca %struct._object*, align 8
  %_py_decref_tmp180 = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  %_py_decref_tmp209 = alloca %struct._object*, align 8
  %_py_decref_tmp221 = alloca %struct._object*, align 8
  %_py_decref_tmp233 = alloca %struct._object*, align 8
  %_py_decref_tmp246 = alloca %struct._object*, align 8
  %_py_decref_tmp264 = alloca %struct._object*, align 8
  %_py_xdecref_tmp276 = alloca %struct._object*, align 8
  %_py_decref_tmp281 = alloca %struct._object*, align 8
  %_py_decref_tmp300 = alloca %struct._object*, align 8
  %_py_xdecref_tmp312 = alloca %struct._object*, align 8
  %_py_decref_tmp317 = alloca %struct._object*, align 8
  %_py_decref_tmp334 = alloca %struct._object*, align 8
  %err349 = alloca %struct._object*, align 8
  %_py_xdecref_tmp352 = alloca %struct._object*, align 8
  %_py_decref_tmp357 = alloca %struct._object*, align 8
  %_py_xdecref_tmp371 = alloca %struct._object*, align 8
  %_py_decref_tmp376 = alloca %struct._object*, align 8
  %_py_xdecref_tmp396 = alloca %struct._object*, align 8
  %_py_decref_tmp401 = alloca %struct._object*, align 8
  %_py_xdecref_tmp420 = alloca %struct._object*, align 8
  %_py_decref_tmp425 = alloca %struct._object*, align 8
  %new_child = alloca %struct._node*, align 8
  %_py_xdecref_tmp447 = alloca %struct._object*, align 8
  %_py_decref_tmp452 = alloca %struct._object*, align 8
  %_py_xdecref_tmp473 = alloca %struct._object*, align 8
  %_py_decref_tmp478 = alloca %struct._object*, align 8
  store %struct._object* %tuple, %struct._object** %tuple.addr, align 8
  store %struct._node* %root, %struct._node** %root.addr, align 8
  store i32* %line_num, i32** %line_num.addr, align 8
  %0 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %call = call i64 @PyObject_Size(%struct._object* %0)
  store i64 %call, i64* %len, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %4 = load i64, i64* %i, align 8
  %call1 = call %struct._object* @PySequence_GetItem(%struct._object* %3, i64 %4)
  store %struct._object* %call1, %struct._object** %elem, align 8
  %5 = load %struct._object*, %struct._object** %elem, align 8
  %cmp2 = icmp ne %struct._object* %5, null
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %ok, align 4
  store i32 0, i32* %type, align 4
  store i8* null, i8** %strn, align 8
  %6 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._object*, %struct._object** %elem, align 8
  %call3 = call i32 @PySequence_Check(%struct._object* %7)
  store i32 %call3, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i32, i32* %ok, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.53

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %elem, align 8
  %call6 = call %struct._object* @PySequence_GetItem(%struct._object* %9, i64 0)
  store %struct._object* %call6, %struct._object** %temp, align 8
  %10 = load %struct._object*, %struct._object** %temp, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  store i32 0, i32* %ok, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.5
  %11 = load %struct._object*, %struct._object** %temp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 16777216
  %cmp10 = icmp ne i64 %and, 0
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %ok, align 4
  %14 = load i32, i32* %ok, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.39

if.then.13:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %temp, align 8
  %call14 = call i32 @_PyLong_AsInt(%struct._object* %15)
  store i32 %call14, i32* %type, align 4
  %16 = load i32, i32* %type, align 4
  %cmp15 = icmp eq i32 %16, -1
  br i1 %cmp15, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then.13
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool18 = icmp ne %struct._object* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %17 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %24 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp27, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %26, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.26
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.26
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %29(%struct._object* %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true, %if.then.13
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.else
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  %31 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp41, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %33, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %36(%struct._object* %37)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %if.then.9
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  %38 = load i32, i32* %ok, align 4
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %if.end.95, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  %39 = load %struct._object*, %struct._object** %elem, align 8
  %call57 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), %struct._object* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* %call57, %struct._object** %err56, align 8
  %40 = load %struct._object*, %struct._object** @parser_error, align 8
  %41 = load %struct._object*, %struct._object** %err56, align 8
  call void @PyErr_SetObject(%struct._object* %40, %struct._object* %41)
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.55
  %42 = load %struct._object*, %struct._object** %err56, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp59 = icmp ne %struct._object* %43, null
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %do.body.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp63, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %46, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %49(%struct._object* %50)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body.58
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %51 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp77, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  %cmp78 = icmp ne %struct._object* %52, null
  br i1 %cmp78, label %if.then.80, label %if.end.93

if.then.80:                                       ; preds = %do.body.76
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp82, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %55, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %58(%struct._object* %59)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92, %do.body.76
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.53
  %60 = load i32, i32* %type, align 4
  %cmp96 = icmp slt i32 %60, 256
  br i1 %cmp96, label %if.then.98, label %if.else.345

if.then.98:                                       ; preds = %if.end.95
  %61 = load %struct._object*, %struct._object** %elem, align 8
  %call100 = call i64 @PyObject_Size(%struct._object* %61)
  store i64 %call100, i64* %len99, align 8
  %62 = load i64, i64* %len99, align 8
  %cmp102 = icmp ne i64 %62, 2
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %if.then.98
  %63 = load i64, i64* %len99, align 8
  %cmp105 = icmp ne i64 %63, 3
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  call void @err_string(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i32 0, i32 0))
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.108:                                       ; preds = %land.lhs.true.104, %if.then.98
  %64 = load %struct._object*, %struct._object** %elem, align 8
  %call109 = call %struct._object* @PySequence_GetItem(%struct._object* %64, i64 1)
  store %struct._object* %call109, %struct._object** %temp101, align 8
  %65 = load %struct._object*, %struct._object** %temp101, align 8
  %cmp110 = icmp eq %struct._object* %65, null
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.108
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.113:                                       ; preds = %if.end.108
  %66 = load %struct._object*, %struct._object** %temp101, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_flags115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 19
  %68 = load i64, i64* %tp_flags115, align 8
  %and116 = and i64 %68, 268435456
  %cmp117 = icmp ne i64 %and116, 0
  br i1 %cmp117, label %if.end.146, label %if.then.119

if.then.119:                                      ; preds = %if.end.113
  %69 = load %struct._object*, %struct._object** @parser_error, align 8
  %70 = load %struct._object*, %struct._object** %temp101, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 1
  %72 = load i8*, i8** %tp_name, align 8
  %call121 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %69, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i32 0, i32 0), i8* %72)
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.119
  %73 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp123, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt124, align 8
  %dec125 = add i64 %75, -1
  store i64 %dec125, i64* %ob_refcnt124, align 8
  %cmp126 = icmp ne i64 %dec125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.122
  br label %if.end.132

if.else.129:                                      ; preds = %do.body.122
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  call void %78(%struct._object* %79)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %80 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp135, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %82, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.134
  br label %if.end.144

if.else.141:                                      ; preds = %do.body.134
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %85(%struct._object* %86)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.140
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.146:                                       ; preds = %if.end.113
  %87 = load i64, i64* %len99, align 8
  %cmp147 = icmp eq i64 %87, 3
  br i1 %cmp147, label %if.then.149, label %if.end.258

if.then.149:                                      ; preds = %if.end.146
  %88 = load %struct._object*, %struct._object** %elem, align 8
  %call150 = call %struct._object* @PySequence_GetItem(%struct._object* %88, i64 2)
  store %struct._object* %call150, %struct._object** %o, align 8
  %89 = load %struct._object*, %struct._object** %o, align 8
  %cmp151 = icmp ne %struct._object* %89, null
  br i1 %cmp151, label %if.then.153, label %if.end.257

if.then.153:                                      ; preds = %if.then.149
  %90 = load %struct._object*, %struct._object** %o, align 8
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8
  %tp_flags155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 19
  %92 = load i64, i64* %tp_flags155, align 8
  %and156 = and i64 %92, 16777216
  %cmp157 = icmp ne i64 %and156, 0
  br i1 %cmp157, label %if.then.159, label %if.else.204

if.then.159:                                      ; preds = %if.then.153
  %93 = load %struct._object*, %struct._object** %o, align 8
  %call160 = call i32 @_PyLong_AsInt(%struct._object* %93)
  store i32 %call160, i32* %num, align 4
  %94 = load i32, i32* %num, align 4
  %cmp161 = icmp eq i32 %94, -1
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.203

land.lhs.true.163:                                ; preds = %if.then.159
  %call164 = call %struct._object* @PyErr_Occurred()
  %tobool165 = icmp ne %struct._object* %call164, null
  br i1 %tobool165, label %if.then.166, label %if.end.203

if.then.166:                                      ; preds = %land.lhs.true.163
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  %95 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp168, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt169, align 8
  %dec170 = add i64 %97, -1
  store i64 %dec170, i64* %ob_refcnt169, align 8
  %cmp171 = icmp ne i64 %dec170, 0
  br i1 %cmp171, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.167
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.167
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  call void %100(%struct._object* %101)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %102 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp180, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_refcnt181 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt181, align 8
  %dec182 = add i64 %104, -1
  store i64 %dec182, i64* %ob_refcnt181, align 8
  %cmp183 = icmp ne i64 %dec182, 0
  br i1 %cmp183, label %if.then.185, label %if.else.186

if.then.185:                                      ; preds = %do.body.179
  br label %if.end.189

if.else.186:                                      ; preds = %do.body.179
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_type187 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type187, align 8
  %tp_dealloc188 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc188, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  call void %107(%struct._object* %108)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.185
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %109 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp192, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %111, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.191
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.191
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %114(%struct._object* %115)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.203:                                       ; preds = %land.lhs.true.163, %if.then.159
  %116 = load i32, i32* %num, align 4
  %117 = load i32*, i32** %line_num.addr, align 8
  store i32 %116, i32* %117, align 4
  br label %if.end.244

if.else.204:                                      ; preds = %if.then.153
  %118 = load %struct._object*, %struct._object** @parser_error, align 8
  %119 = load %struct._object*, %struct._object** %temp101, align 8
  %ob_type205 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type205, align 8
  %tp_name206 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 1
  %121 = load i8*, i8** %tp_name206, align 8
  %call207 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.72, i32 0, i32 0), i8* %121)
  br label %do.body.208

do.body.208:                                      ; preds = %if.else.204
  %122 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %122, %struct._object** %_py_decref_tmp209, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt210, align 8
  %dec211 = add i64 %124, -1
  store i64 %dec211, i64* %ob_refcnt210, align 8
  %cmp212 = icmp ne i64 %dec211, 0
  br i1 %cmp212, label %if.then.214, label %if.else.215

if.then.214:                                      ; preds = %do.body.208
  br label %if.end.218

if.else.215:                                      ; preds = %do.body.208
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_type216 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type216, align 8
  %tp_dealloc217 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc217, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  call void %127(%struct._object* %128)
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.215, %if.then.214
  br label %do.end.219

do.end.219:                                       ; preds = %if.end.218
  br label %do.body.220

do.body.220:                                      ; preds = %do.end.219
  %129 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp221, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_refcnt222 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt222, align 8
  %dec223 = add i64 %131, -1
  store i64 %dec223, i64* %ob_refcnt222, align 8
  %cmp224 = icmp ne i64 %dec223, 0
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %do.body.220
  br label %if.end.230

if.else.227:                                      ; preds = %do.body.220
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  %ob_type228 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type228, align 8
  %tp_dealloc229 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc229, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8
  call void %134(%struct._object* %135)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.227, %if.then.226
  br label %do.end.231

do.end.231:                                       ; preds = %if.end.230
  br label %do.body.232

do.body.232:                                      ; preds = %do.end.231
  %136 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp233, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp233, align 8
  %ob_refcnt234 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt234, align 8
  %dec235 = add i64 %138, -1
  store i64 %dec235, i64* %ob_refcnt234, align 8
  %cmp236 = icmp ne i64 %dec235, 0
  br i1 %cmp236, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %do.body.232
  br label %if.end.242

if.else.239:                                      ; preds = %do.body.232
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp233, align 8
  %ob_type240 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type240, align 8
  %tp_dealloc241 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc241, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp233, align 8
  call void %141(%struct._object* %142)
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.239, %if.then.238
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.244:                                       ; preds = %if.end.203
  br label %do.body.245

do.body.245:                                      ; preds = %if.end.244
  %143 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %143, %struct._object** %_py_decref_tmp246, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_refcnt247 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0
  %145 = load i64, i64* %ob_refcnt247, align 8
  %dec248 = add i64 %145, -1
  store i64 %dec248, i64* %ob_refcnt247, align 8
  %cmp249 = icmp ne i64 %dec248, 0
  br i1 %cmp249, label %if.then.251, label %if.else.252

if.then.251:                                      ; preds = %do.body.245
  br label %if.end.255

if.else.252:                                      ; preds = %do.body.245
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_type253 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type253, align 8
  %tp_dealloc254 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc254, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  call void %148(%struct._object* %149)
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.252, %if.then.251
  br label %do.end.256

do.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %do.end.256, %if.then.149
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.146
  %150 = load %struct._object*, %struct._object** %temp101, align 8
  %call259 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %150, i64* %len99)
  store i8* %call259, i8** %temp_str, align 8
  %151 = load i8*, i8** %temp_str, align 8
  %cmp260 = icmp eq i8* %151, null
  br i1 %cmp260, label %if.then.262, label %if.end.294

if.then.262:                                      ; preds = %if.end.258
  br label %do.body.263

do.body.263:                                      ; preds = %if.then.262
  %152 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %152, %struct._object** %_py_decref_tmp264, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp264, align 8
  %ob_refcnt265 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0
  %154 = load i64, i64* %ob_refcnt265, align 8
  %dec266 = add i64 %154, -1
  store i64 %dec266, i64* %ob_refcnt265, align 8
  %cmp267 = icmp ne i64 %dec266, 0
  br i1 %cmp267, label %if.then.269, label %if.else.270

if.then.269:                                      ; preds = %do.body.263
  br label %if.end.273

if.else.270:                                      ; preds = %do.body.263
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp264, align 8
  %ob_type271 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 1
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type271, align 8
  %tp_dealloc272 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i32 0, i32 4
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc272, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp264, align 8
  call void %157(%struct._object* %158)
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.270, %if.then.269
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %do.body.275

do.body.275:                                      ; preds = %do.end.274
  %159 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %159, %struct._object** %_py_xdecref_tmp276, align 8
  %160 = load %struct._object*, %struct._object** %_py_xdecref_tmp276, align 8
  %cmp277 = icmp ne %struct._object* %160, null
  br i1 %cmp277, label %if.then.279, label %if.end.292

if.then.279:                                      ; preds = %do.body.275
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.279
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp276, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp281, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  %ob_refcnt282 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt282, align 8
  %dec283 = add i64 %163, -1
  store i64 %dec283, i64* %ob_refcnt282, align 8
  %cmp284 = icmp ne i64 %dec283, 0
  br i1 %cmp284, label %if.then.286, label %if.else.287

if.then.286:                                      ; preds = %do.body.280
  br label %if.end.290

if.else.287:                                      ; preds = %do.body.280
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  %ob_type288 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type288, align 8
  %tp_dealloc289 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc289, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  call void %166(%struct._object* %167)
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.287, %if.then.286
  br label %do.end.291

do.end.291:                                       ; preds = %if.end.290
  br label %if.end.292

if.end.292:                                       ; preds = %do.end.291, %do.body.275
  br label %do.end.293

do.end.293:                                       ; preds = %if.end.292
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.294:                                       ; preds = %if.end.258
  %168 = load i64, i64* %len99, align 8
  %add = add i64 %168, 1
  %call295 = call i8* @PyObject_Malloc(i64 %add)
  store i8* %call295, i8** %strn, align 8
  %169 = load i8*, i8** %strn, align 8
  %cmp296 = icmp eq i8* %169, null
  br i1 %cmp296, label %if.then.298, label %if.end.331

if.then.298:                                      ; preds = %if.end.294
  br label %do.body.299

do.body.299:                                      ; preds = %if.then.298
  %170 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %170, %struct._object** %_py_decref_tmp300, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_refcnt301 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 0
  %172 = load i64, i64* %ob_refcnt301, align 8
  %dec302 = add i64 %172, -1
  store i64 %dec302, i64* %ob_refcnt301, align 8
  %cmp303 = icmp ne i64 %dec302, 0
  br i1 %cmp303, label %if.then.305, label %if.else.306

if.then.305:                                      ; preds = %do.body.299
  br label %if.end.309

if.else.306:                                      ; preds = %do.body.299
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_type307 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 1
  %174 = load %struct._typeobject*, %struct._typeobject** %ob_type307, align 8
  %tp_dealloc308 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %174, i32 0, i32 4
  %175 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc308, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  call void %175(%struct._object* %176)
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.306, %if.then.305
  br label %do.end.310

do.end.310:                                       ; preds = %if.end.309
  br label %do.body.311

do.body.311:                                      ; preds = %do.end.310
  %177 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %177, %struct._object** %_py_xdecref_tmp312, align 8
  %178 = load %struct._object*, %struct._object** %_py_xdecref_tmp312, align 8
  %cmp313 = icmp ne %struct._object* %178, null
  br i1 %cmp313, label %if.then.315, label %if.end.328

if.then.315:                                      ; preds = %do.body.311
  br label %do.body.316

do.body.316:                                      ; preds = %if.then.315
  %179 = load %struct._object*, %struct._object** %_py_xdecref_tmp312, align 8
  store %struct._object* %179, %struct._object** %_py_decref_tmp317, align 8
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  %ob_refcnt318 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 0
  %181 = load i64, i64* %ob_refcnt318, align 8
  %dec319 = add i64 %181, -1
  store i64 %dec319, i64* %ob_refcnt318, align 8
  %cmp320 = icmp ne i64 %dec319, 0
  br i1 %cmp320, label %if.then.322, label %if.else.323

if.then.322:                                      ; preds = %do.body.316
  br label %if.end.326

if.else.323:                                      ; preds = %do.body.316
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  %ob_type324 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 1
  %183 = load %struct._typeobject*, %struct._typeobject** %ob_type324, align 8
  %tp_dealloc325 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %183, i32 0, i32 4
  %184 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc325, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp317, align 8
  call void %184(%struct._object* %185)
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.323, %if.then.322
  br label %do.end.327

do.end.327:                                       ; preds = %if.end.326
  br label %if.end.328

if.end.328:                                       ; preds = %do.end.327, %do.body.311
  br label %do.end.329

do.end.329:                                       ; preds = %if.end.328
  %call330 = call %struct._object* @PyErr_NoMemory()
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.331:                                       ; preds = %if.end.294
  %186 = load i8*, i8** %strn, align 8
  %187 = load i8*, i8** %temp_str, align 8
  %188 = load i64, i64* %len99, align 8
  %add332 = add i64 %188, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 %add332, i32 1, i1 false)
  br label %do.body.333

do.body.333:                                      ; preds = %if.end.331
  %189 = load %struct._object*, %struct._object** %temp101, align 8
  store %struct._object* %189, %struct._object** %_py_decref_tmp334, align 8
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_refcnt335 = getelementptr inbounds %struct._object, %struct._object* %190, i32 0, i32 0
  %191 = load i64, i64* %ob_refcnt335, align 8
  %dec336 = add i64 %191, -1
  store i64 %dec336, i64* %ob_refcnt335, align 8
  %cmp337 = icmp ne i64 %dec336, 0
  br i1 %cmp337, label %if.then.339, label %if.else.340

if.then.339:                                      ; preds = %do.body.333
  br label %if.end.343

if.else.340:                                      ; preds = %do.body.333
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  %ob_type341 = getelementptr inbounds %struct._object, %struct._object* %192, i32 0, i32 1
  %193 = load %struct._typeobject*, %struct._typeobject** %ob_type341, align 8
  %tp_dealloc342 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %193, i32 0, i32 4
  %194 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc342, align 8
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp334, align 8
  call void %194(%struct._object* %195)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  br label %if.end.390

if.else.345:                                      ; preds = %if.end.95
  %196 = load i32, i32* %type, align 4
  %cmp346 = icmp sge i32 %196, 256
  br i1 %cmp346, label %if.end.389, label %if.then.348

if.then.348:                                      ; preds = %if.else.345
  %197 = load %struct._object*, %struct._object** %elem, align 8
  %call350 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), %struct._object* %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0))
  store %struct._object* %call350, %struct._object** %err349, align 8
  %198 = load %struct._object*, %struct._object** @parser_error, align 8
  %199 = load %struct._object*, %struct._object** %err349, align 8
  call void @PyErr_SetObject(%struct._object* %198, %struct._object* %199)
  br label %do.body.351

do.body.351:                                      ; preds = %if.then.348
  %200 = load %struct._object*, %struct._object** %err349, align 8
  store %struct._object* %200, %struct._object** %_py_xdecref_tmp352, align 8
  %201 = load %struct._object*, %struct._object** %_py_xdecref_tmp352, align 8
  %cmp353 = icmp ne %struct._object* %201, null
  br i1 %cmp353, label %if.then.355, label %if.end.368

if.then.355:                                      ; preds = %do.body.351
  br label %do.body.356

do.body.356:                                      ; preds = %if.then.355
  %202 = load %struct._object*, %struct._object** %_py_xdecref_tmp352, align 8
  store %struct._object* %202, %struct._object** %_py_decref_tmp357, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp357, align 8
  %ob_refcnt358 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 0
  %204 = load i64, i64* %ob_refcnt358, align 8
  %dec359 = add i64 %204, -1
  store i64 %dec359, i64* %ob_refcnt358, align 8
  %cmp360 = icmp ne i64 %dec359, 0
  br i1 %cmp360, label %if.then.362, label %if.else.363

if.then.362:                                      ; preds = %do.body.356
  br label %if.end.366

if.else.363:                                      ; preds = %do.body.356
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp357, align 8
  %ob_type364 = getelementptr inbounds %struct._object, %struct._object* %205, i32 0, i32 1
  %206 = load %struct._typeobject*, %struct._typeobject** %ob_type364, align 8
  %tp_dealloc365 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %206, i32 0, i32 4
  %207 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc365, align 8
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp357, align 8
  call void %207(%struct._object* %208)
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.363, %if.then.362
  br label %do.end.367

do.end.367:                                       ; preds = %if.end.366
  br label %if.end.368

if.end.368:                                       ; preds = %do.end.367, %do.body.351
  br label %do.end.369

do.end.369:                                       ; preds = %if.end.368
  br label %do.body.370

do.body.370:                                      ; preds = %do.end.369
  %209 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %209, %struct._object** %_py_xdecref_tmp371, align 8
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp371, align 8
  %cmp372 = icmp ne %struct._object* %210, null
  br i1 %cmp372, label %if.then.374, label %if.end.387

if.then.374:                                      ; preds = %do.body.370
  br label %do.body.375

do.body.375:                                      ; preds = %if.then.374
  %211 = load %struct._object*, %struct._object** %_py_xdecref_tmp371, align 8
  store %struct._object* %211, %struct._object** %_py_decref_tmp376, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp376, align 8
  %ob_refcnt377 = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 0
  %213 = load i64, i64* %ob_refcnt377, align 8
  %dec378 = add i64 %213, -1
  store i64 %dec378, i64* %ob_refcnt377, align 8
  %cmp379 = icmp ne i64 %dec378, 0
  br i1 %cmp379, label %if.then.381, label %if.else.382

if.then.381:                                      ; preds = %do.body.375
  br label %if.end.385

if.else.382:                                      ; preds = %do.body.375
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp376, align 8
  %ob_type383 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 1
  %215 = load %struct._typeobject*, %struct._typeobject** %ob_type383, align 8
  %tp_dealloc384 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %215, i32 0, i32 4
  %216 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc384, align 8
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp376, align 8
  call void %216(%struct._object* %217)
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.382, %if.then.381
  br label %do.end.386

do.end.386:                                       ; preds = %if.end.385
  br label %if.end.387

if.end.387:                                       ; preds = %do.end.386, %do.body.370
  br label %do.end.388

do.end.388:                                       ; preds = %if.end.387
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.389:                                       ; preds = %if.else.345
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %do.end.344
  %218 = load %struct._node*, %struct._node** %root.addr, align 8
  %219 = load i32, i32* %type, align 4
  %220 = load i8*, i8** %strn, align 8
  %221 = load i32*, i32** %line_num.addr, align 8
  %222 = load i32, i32* %221, align 4
  %call391 = call i32 @PyNode_AddChild(%struct._node* %218, i32 %219, i8* %220, i32 %222, i32 0)
  store i32 %call391, i32* %err, align 4
  %223 = load i32, i32* %err, align 4
  %cmp392 = icmp eq i32 %223, 15
  br i1 %cmp392, label %if.then.394, label %if.end.415

if.then.394:                                      ; preds = %if.end.390
  br label %do.body.395

do.body.395:                                      ; preds = %if.then.394
  %224 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %224, %struct._object** %_py_xdecref_tmp396, align 8
  %225 = load %struct._object*, %struct._object** %_py_xdecref_tmp396, align 8
  %cmp397 = icmp ne %struct._object* %225, null
  br i1 %cmp397, label %if.then.399, label %if.end.412

if.then.399:                                      ; preds = %do.body.395
  br label %do.body.400

do.body.400:                                      ; preds = %if.then.399
  %226 = load %struct._object*, %struct._object** %_py_xdecref_tmp396, align 8
  store %struct._object* %226, %struct._object** %_py_decref_tmp401, align 8
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp401, align 8
  %ob_refcnt402 = getelementptr inbounds %struct._object, %struct._object* %227, i32 0, i32 0
  %228 = load i64, i64* %ob_refcnt402, align 8
  %dec403 = add i64 %228, -1
  store i64 %dec403, i64* %ob_refcnt402, align 8
  %cmp404 = icmp ne i64 %dec403, 0
  br i1 %cmp404, label %if.then.406, label %if.else.407

if.then.406:                                      ; preds = %do.body.400
  br label %if.end.410

if.else.407:                                      ; preds = %do.body.400
  %229 = load %struct._object*, %struct._object** %_py_decref_tmp401, align 8
  %ob_type408 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 1
  %230 = load %struct._typeobject*, %struct._typeobject** %ob_type408, align 8
  %tp_dealloc409 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %230, i32 0, i32 4
  %231 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc409, align 8
  %232 = load %struct._object*, %struct._object** %_py_decref_tmp401, align 8
  call void %231(%struct._object* %232)
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.407, %if.then.406
  br label %do.end.411

do.end.411:                                       ; preds = %if.end.410
  br label %if.end.412

if.end.412:                                       ; preds = %do.end.411, %do.body.395
  br label %do.end.413

do.end.413:                                       ; preds = %if.end.412
  %233 = load i8*, i8** %strn, align 8
  call void @PyObject_Free(i8* %233)
  %call414 = call %struct._object* @PyErr_NoMemory()
  %234 = bitcast %struct._object* %call414 to %struct._node*
  store %struct._node* %234, %struct._node** %retval
  br label %return

if.end.415:                                       ; preds = %if.end.390
  %235 = load i32, i32* %err, align 4
  %cmp416 = icmp eq i32 %235, 19
  br i1 %cmp416, label %if.then.418, label %if.end.438

if.then.418:                                      ; preds = %if.end.415
  br label %do.body.419

do.body.419:                                      ; preds = %if.then.418
  %236 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %236, %struct._object** %_py_xdecref_tmp420, align 8
  %237 = load %struct._object*, %struct._object** %_py_xdecref_tmp420, align 8
  %cmp421 = icmp ne %struct._object* %237, null
  br i1 %cmp421, label %if.then.423, label %if.end.436

if.then.423:                                      ; preds = %do.body.419
  br label %do.body.424

do.body.424:                                      ; preds = %if.then.423
  %238 = load %struct._object*, %struct._object** %_py_xdecref_tmp420, align 8
  store %struct._object* %238, %struct._object** %_py_decref_tmp425, align 8
  %239 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  %ob_refcnt426 = getelementptr inbounds %struct._object, %struct._object* %239, i32 0, i32 0
  %240 = load i64, i64* %ob_refcnt426, align 8
  %dec427 = add i64 %240, -1
  store i64 %dec427, i64* %ob_refcnt426, align 8
  %cmp428 = icmp ne i64 %dec427, 0
  br i1 %cmp428, label %if.then.430, label %if.else.431

if.then.430:                                      ; preds = %do.body.424
  br label %if.end.434

if.else.431:                                      ; preds = %do.body.424
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  %ob_type432 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 1
  %242 = load %struct._typeobject*, %struct._typeobject** %ob_type432, align 8
  %tp_dealloc433 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %242, i32 0, i32 4
  %243 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc433, align 8
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  call void %243(%struct._object* %244)
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.430
  br label %do.end.435

do.end.435:                                       ; preds = %if.end.434
  br label %if.end.436

if.end.436:                                       ; preds = %do.end.435, %do.body.419
  br label %do.end.437

do.end.437:                                       ; preds = %if.end.436
  %245 = load i8*, i8** %strn, align 8
  call void @PyObject_Free(i8* %245)
  %246 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0))
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.438:                                       ; preds = %if.end.415
  %247 = load i32, i32* %type, align 4
  %cmp439 = icmp sge i32 %247, 256
  br i1 %cmp439, label %if.then.441, label %if.else.466

if.then.441:                                      ; preds = %if.end.438
  %248 = load i64, i64* %i, align 8
  %sub = sub i64 %248, 1
  %249 = load %struct._node*, %struct._node** %root.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %249, i32 0, i32 5
  %250 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %250, i64 %sub
  store %struct._node* %arrayidx, %struct._node** %new_child, align 8
  %251 = load %struct._node*, %struct._node** %new_child, align 8
  %252 = load %struct._object*, %struct._object** %elem, align 8
  %253 = load %struct._node*, %struct._node** %new_child, align 8
  %254 = load i32*, i32** %line_num.addr, align 8
  %call442 = call %struct._node* @build_node_children(%struct._object* %252, %struct._node* %253, i32* %254)
  %cmp443 = icmp ne %struct._node* %251, %call442
  br i1 %cmp443, label %if.then.445, label %if.end.465

if.then.445:                                      ; preds = %if.then.441
  br label %do.body.446

do.body.446:                                      ; preds = %if.then.445
  %255 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %255, %struct._object** %_py_xdecref_tmp447, align 8
  %256 = load %struct._object*, %struct._object** %_py_xdecref_tmp447, align 8
  %cmp448 = icmp ne %struct._object* %256, null
  br i1 %cmp448, label %if.then.450, label %if.end.463

if.then.450:                                      ; preds = %do.body.446
  br label %do.body.451

do.body.451:                                      ; preds = %if.then.450
  %257 = load %struct._object*, %struct._object** %_py_xdecref_tmp447, align 8
  store %struct._object* %257, %struct._object** %_py_decref_tmp452, align 8
  %258 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  %ob_refcnt453 = getelementptr inbounds %struct._object, %struct._object* %258, i32 0, i32 0
  %259 = load i64, i64* %ob_refcnt453, align 8
  %dec454 = add i64 %259, -1
  store i64 %dec454, i64* %ob_refcnt453, align 8
  %cmp455 = icmp ne i64 %dec454, 0
  br i1 %cmp455, label %if.then.457, label %if.else.458

if.then.457:                                      ; preds = %do.body.451
  br label %if.end.461

if.else.458:                                      ; preds = %do.body.451
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  %ob_type459 = getelementptr inbounds %struct._object, %struct._object* %260, i32 0, i32 1
  %261 = load %struct._typeobject*, %struct._typeobject** %ob_type459, align 8
  %tp_dealloc460 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %261, i32 0, i32 4
  %262 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc460, align 8
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  call void %262(%struct._object* %263)
  br label %if.end.461

if.end.461:                                       ; preds = %if.else.458, %if.then.457
  br label %do.end.462

do.end.462:                                       ; preds = %if.end.461
  br label %if.end.463

if.end.463:                                       ; preds = %do.end.462, %do.body.446
  br label %do.end.464

do.end.464:                                       ; preds = %if.end.463
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.465:                                       ; preds = %if.then.441
  br label %if.end.471

if.else.466:                                      ; preds = %if.end.438
  %264 = load i32, i32* %type, align 4
  %cmp467 = icmp eq i32 %264, 4
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %if.else.466
  %265 = load i32*, i32** %line_num.addr, align 8
  %266 = load i32, i32* %265, align 4
  %inc = add i32 %266, 1
  store i32 %inc, i32* %265, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.469, %if.else.466
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.end.465
  br label %do.body.472

do.body.472:                                      ; preds = %if.end.471
  %267 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %267, %struct._object** %_py_xdecref_tmp473, align 8
  %268 = load %struct._object*, %struct._object** %_py_xdecref_tmp473, align 8
  %cmp474 = icmp ne %struct._object* %268, null
  br i1 %cmp474, label %if.then.476, label %if.end.489

if.then.476:                                      ; preds = %do.body.472
  br label %do.body.477

do.body.477:                                      ; preds = %if.then.476
  %269 = load %struct._object*, %struct._object** %_py_xdecref_tmp473, align 8
  store %struct._object* %269, %struct._object** %_py_decref_tmp478, align 8
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp478, align 8
  %ob_refcnt479 = getelementptr inbounds %struct._object, %struct._object* %270, i32 0, i32 0
  %271 = load i64, i64* %ob_refcnt479, align 8
  %dec480 = add i64 %271, -1
  store i64 %dec480, i64* %ob_refcnt479, align 8
  %cmp481 = icmp ne i64 %dec480, 0
  br i1 %cmp481, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %do.body.477
  br label %if.end.487

if.else.484:                                      ; preds = %do.body.477
  %272 = load %struct._object*, %struct._object** %_py_decref_tmp478, align 8
  %ob_type485 = getelementptr inbounds %struct._object, %struct._object* %272, i32 0, i32 1
  %273 = load %struct._typeobject*, %struct._typeobject** %ob_type485, align 8
  %tp_dealloc486 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %273, i32 0, i32 4
  %274 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc486, align 8
  %275 = load %struct._object*, %struct._object** %_py_decref_tmp478, align 8
  call void %274(%struct._object* %275)
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.484, %if.then.483
  br label %do.end.488

do.end.488:                                       ; preds = %if.end.487
  br label %if.end.489

if.end.489:                                       ; preds = %do.end.488, %do.body.472
  br label %do.end.490

do.end.490:                                       ; preds = %if.end.489
  br label %for.inc

for.inc:                                          ; preds = %do.end.490
  %276 = load i64, i64* %i, align 8
  %inc491 = add i64 %276, 1
  store i64 %inc491, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %277 = load %struct._node*, %struct._node** %root.addr, align 8
  store %struct._node* %277, %struct._node** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.464, %do.end.437, %do.end.413, %do.end.388, %do.end.329, %do.end.293, %do.end.243, %do.end.202, %do.end.145, %if.then.112, %if.then.107, %do.end.94, %do.end.37
  %278 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %278
}

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @PyObject_Size(%struct._object*) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyNode_AddChild(%struct._node*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @validate_eval_input(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 258)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 2
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call2 = call i32 @validate_testlist(%struct._node* %arrayidx)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.1
  %6 = load i32, i32* %nch, align 4
  %sub = sub i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %8, i64 %idxprom
  %call6 = call i32 @validate_ntype(%struct._node* %arrayidx5, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1, %land.lhs.true, %entry
  %9 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %10 = load i32, i32* %res, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %land.rhs.9, label %land.end.12

land.rhs.9:                                       ; preds = %for.cond
  %11 = load i32, i32* %pos, align 4
  %12 = load i32, i32* %nch, align 4
  %sub10 = sub i32 %12, 1
  %cmp11 = icmp slt i32 %11, %sub10
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.9, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs.9 ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.12
  %14 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom14
  %call17 = call i32 @validate_ntype(%struct._node* %arrayidx16, i32 4)
  store i32 %call17, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %pos, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.12
  %18 = load i32, i32* %res, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_ntype(%struct._node* %n, i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  %t.addr = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, i32* %t.addr, align 4
  %cmp = icmp ne i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @parser_error, align 8
  %4 = load i32, i32* %t.addr, align 4
  %5 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type2 = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 0
  %6 = load i16, i16* %n_type2, align 2
  %conv3 = sext i16 %6 to i32
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i32 0, i32 0), i32 %4, i32 %conv3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_testlist(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_repeating_list(%struct._node* %0, i32 327, i32 (%struct._node*)* @validate_test, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_repeating_list(%struct._node* %tree, i32 %ntype, i32 (%struct._node*)* %vfunc, i8* %name) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %ntype.addr = alloca i32, align 4
  %vfunc.addr = alloca i32 (%struct._node*)*, align 8
  %name.addr = alloca i8*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 %ntype, i32* %ntype.addr, align 4
  store i32 (%struct._node*)* %vfunc, i32 (%struct._node*)** %vfunc.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %4 = load i32, i32* %ntype.addr, align 4
  %call = call i32 @validate_ntype(%struct._node* %3, i32 %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32 (%struct._node*)*, i32 (%struct._node*)** %vfunc.addr, align 8
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %call2 = call i32 %5(%struct._node* %arrayidx)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %res, align 4
  %9 = load i32, i32* %res, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.else, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool7 = icmp ne %struct._object* %call6, null
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.5
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @validate_numnodes(%struct._node* %10, i32 1, i8* %11)
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true.5, %land.end
  %12 = load i32, i32* %nch, align 4
  %and = and i32 %12, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %13 = load i32, i32* %nch, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %nch, align 4
  %idxprom = sext i32 %dec to i64
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %15, i64 %idxprom
  %call12 = call i32 @validate_terminal(%struct._node* %arrayidx11, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  store i32 %call12, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  %16 = load i32, i32* %res, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.36

land.lhs.true.14:                                 ; preds = %if.end
  %17 = load i32, i32* %nch, align 4
  %cmp15 = icmp sgt i32 %17, 1
  br i1 %cmp15, label %if.then.16, label %if.end.36

if.then.16:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %18 = load i32, i32* %res, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %land.rhs.18, label %land.end.20

land.rhs.18:                                      ; preds = %for.cond
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %nch, align 4
  %cmp19 = icmp slt i32 %19, %20
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.18, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs.18 ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.20
  %22 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom22
  %call25 = call i32 @validate_terminal(%struct._node* %arrayidx24, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs.27, label %land.end.33

land.rhs.27:                                      ; preds = %for.body
  %25 = load i32 (%struct._node*)*, i32 (%struct._node*)** %vfunc.addr, align 8
  %26 = load i32, i32* %pos, align 4
  %add = add i32 %26, 1
  %idxprom28 = sext i32 %add to i64
  %27 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  %28 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %28, i64 %idxprom28
  %call31 = call i32 %25(%struct._node* %arrayidx30)
  %tobool32 = icmp ne i32 %call31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.27, %for.body
  %29 = phi i1 [ false, %for.body ], [ %tobool32, %land.rhs.27 ]
  %land.ext34 = zext i1 %29 to i32
  store i32 %land.ext34, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.33
  %30 = load i32, i32* %pos, align 4
  %add35 = add i32 %30, 2
  store i32 %add35, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.20
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %land.lhs.true.14, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then
  %31 = load i32, i32* %res, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_test(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 302)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %8 = load i16, i16* %n_type, align 2
  %conv = sext i16 %8 to i32
  %cmp2 = icmp eq i32 %conv, 304
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %nch, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %land.rhs.6, label %land.end.11

land.rhs.6:                                       ; preds = %if.then
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %11, i64 0
  %call9 = call i32 @validate_lambdef(%struct._node* %arrayidx8)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.6, %if.then
  %12 = phi i1 [ false, %if.then ], [ %tobool10, %land.rhs.6 ]
  %land.ext12 = zext i1 %12 to i32
  store i32 %land.ext12, i32* %res, align 4
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true, %land.end
  %13 = load i32, i32* %res, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %15, i64 0
  %call17 = call i32 @validate_or_test(%struct._node* %arrayidx16)
  store i32 %call17, i32* %res, align 4
  %16 = load i32, i32* %res, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.46

land.rhs.19:                                      ; preds = %if.then.14
  %17 = load i32, i32* %nch, align 4
  %cmp20 = icmp eq i32 %17, 1
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.19
  %18 = load i32, i32* %nch, align 4
  %cmp22 = icmp eq i32 %18, 5
  br i1 %cmp22, label %land.lhs.true.24, label %land.end.44

land.lhs.true.24:                                 ; preds = %lor.rhs
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %20, i64 1
  %call27 = call i32 @validate_terminal(%struct._node* %arrayidx26, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %land.end.44

land.lhs.true.29:                                 ; preds = %land.lhs.true.24
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child30 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child30, align 8
  %arrayidx31 = getelementptr %struct._node, %struct._node* %22, i64 2
  %call32 = call i32 @validate_or_test(%struct._node* %arrayidx31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %land.end.44

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %24, i64 3
  %call37 = call i32 @validate_terminal(%struct._node* %arrayidx36, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.rhs.39, label %land.end.44

land.rhs.39:                                      ; preds = %land.lhs.true.34
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child40 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child40, align 8
  %arrayidx41 = getelementptr %struct._node, %struct._node* %26, i64 4
  %call42 = call i32 @validate_test(%struct._node* %arrayidx41)
  %tobool43 = icmp ne i32 %call42, 0
  br label %land.end.44

land.end.44:                                      ; preds = %land.rhs.39, %land.lhs.true.34, %land.lhs.true.29, %land.lhs.true.24, %lor.rhs
  %27 = phi i1 [ false, %land.lhs.true.34 ], [ false, %land.lhs.true.29 ], [ false, %land.lhs.true.24 ], [ false, %lor.rhs ], [ %tobool43, %land.rhs.39 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.44, %land.rhs.19
  %28 = phi i1 [ true, %land.rhs.19 ], [ %27, %land.end.44 ]
  br label %land.end.46

land.end.46:                                      ; preds = %lor.end, %if.then.14
  %29 = phi i1 [ false, %if.then.14 ], [ %28, %lor.end ]
  %land.ext47 = zext i1 %29 to i32
  store i32 %land.ext47, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.46, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %land.end.11
  %30 = load i32, i32* %res, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_numnodes(%struct._node* %n, i32 %num, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  %num.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @parser_error, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i32 0, i32 0), i8* %4)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_terminal(%struct._node* %terminal, i32 %type, i8* %string) #0 {
entry:
  %terminal.addr = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  store %struct._node* %terminal, %struct._node** %terminal.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct._node*, %struct._node** %terminal.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %call = call i32 @validate_ntype(%struct._node* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8*, i8** %string.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load %struct._node*, %struct._node** %terminal.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 1
  %5 = load i8*, i8** %n_str, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* %5) #4
  %cmp2 = icmp eq i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %7 = phi i1 [ false, %entry ], [ %6, %lor.end ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._object*, %struct._object** @parser_error, align 8
  %10 = load i8*, i8** %string.addr, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %11 = load i32, i32* %res, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_lambdef(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 304)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 4
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %7 = load i32, i32* %nch, align 4
  %sub = sub i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %10 = load i32, i32* %nch, align 4
  %sub10 = sub i32 %10, 1
  %idxprom11 = sext i32 %sub10 to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom11
  %call14 = call i32 @validate_test(%struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true.2, %lor.lhs.false, %entry
  %13 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.end
  %15 = load i32, i32* %nch, align 4
  %cmp18 = icmp eq i32 %15, 4
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.17
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call21 = call i32 @validate_varargslist(%struct._node* %arrayidx20)
  store i32 %call21, i32* %res, align 4
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true.17, %land.end
  %18 = load i32, i32* %res, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.end, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.else
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool25 = icmp ne %struct._object* %call24, null
  br i1 %tobool25, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call27 = call i32 @validate_numnodes(%struct._node* %19, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.26, %land.lhs.true.23, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %res, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_or_test(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 306)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %call2 = call i32 @validate_and_test(%struct._node* %arrayidx)
  store i32 %call2, i32* %res, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %9, %10
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %12 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %14, i64 %idxprom
  %call10 = call i32 @validate_terminal(%struct._node* %arrayidx9, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %15 = load i32, i32* %pos, align 4
  %add = add i32 %15, 1
  %idxprom13 = sext i32 %add to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom13
  %call16 = call i32 @validate_and_test(%struct._node* %arrayidx15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %18 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %18 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %19 = load i32, i32* %pos, align 4
  %add20 = add i32 %19, 2
  store i32 %add20, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  br label %if.end

if.end:                                           ; preds = %for.end, %land.end
  %20 = load i32, i32* %res, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_varargslist(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %sym = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type, align 2
  %conv = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 266
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type2 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0
  %5 = load i16, i16* %n_type2, align 2
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 264
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %nch, align 4
  %cmp6 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %7 = phi i1 [ false, %lor.lhs.false ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 0, i32* %i, align 4
  %8 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.end
  %9 = load i32, i32* %nch, align 4
  %cmp8 = icmp slt i32 %9, 1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void @err_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %if.end.11
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %nch, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %14, i64 %idxprom
  store %struct._node* %arrayidx, %struct._node** %ch, align 8
  %15 = load %struct._node*, %struct._node** %ch, align 8
  %n_type14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 0
  %16 = load i16, i16* %n_type14, align 2
  %conv15 = sext i16 %16 to i32
  store i32 %conv15, i32* %sym, align 4
  %17 = load i32, i32* %sym, align 4
  %cmp16 = icmp eq i32 %17, 267
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %while.body
  %18 = load i32, i32* %sym, align 4
  %cmp19 = icmp eq i32 %18, 265
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false.18, %while.body
  %19 = load %struct._node*, %struct._node** %ch, align 8
  %call = call i32 @validate_vfpdef(%struct._node* %19)
  store i32 %call, i32* %res, align 4
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  %21 = load i32, i32* %res, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.then.21
  %22 = load i32, i32* %i, align 4
  %add = add i32 %22, 2
  %23 = load i32, i32* %nch, align 4
  %cmp23 = icmp sle i32 %add, %23
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.52

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %26, i64 %idxprom26
  %n_type29 = getelementptr inbounds %struct._node, %struct._node* %arrayidx28, i32 0, i32 0
  %27 = load i16, i16* %n_type29, align 2
  %conv30 = sext i16 %27 to i32
  %cmp31 = icmp eq i32 %conv30, 22
  br i1 %cmp31, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %land.lhs.true.25
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom34
  %call37 = call i32 @validate_terminal(%struct._node* %arrayidx36, i32 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.rhs.39, label %land.end.46

land.rhs.39:                                      ; preds = %if.then.33
  %31 = load i32, i32* %i, align 4
  %add40 = add i32 %31, 1
  %idxprom41 = sext i32 %add40 to i64
  %32 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child42 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child42, align 8
  %arrayidx43 = getelementptr %struct._node, %struct._node* %33, i64 %idxprom41
  %call44 = call i32 @validate_test(%struct._node* %arrayidx43)
  %tobool45 = icmp ne i32 %call44, 0
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.39, %if.then.33
  %34 = phi i1 [ false, %if.then.33 ], [ %tobool45, %land.rhs.39 ]
  %land.ext47 = zext i1 %34 to i32
  store i32 %land.ext47, i32* %res, align 4
  %35 = load i32, i32* %res, align 4
  %tobool48 = icmp ne i32 %35, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.end.46
  %36 = load i32, i32* %i, align 4
  %add50 = add i32 %36, 2
  store i32 %add50, i32* %i, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.25, %land.lhs.true, %if.then.21
  %37 = load i32, i32* %res, align 4
  %tobool53 = icmp ne i32 %37, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %if.end.52
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %nch, align 4
  %cmp55 = icmp slt i32 %38, %39
  br i1 %cmp55, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %land.lhs.true.54
  %40 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %41 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child59 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child59, align 8
  %arrayidx60 = getelementptr %struct._node, %struct._node* %42, i64 %idxprom58
  %call61 = call i32 @validate_terminal(%struct._node* %arrayidx60, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  store i32 %call61, i32* %res, align 4
  %43 = load i32, i32* %i, align 4
  %inc62 = add i32 %43, 1
  store i32 %inc62, i32* %i, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.57, %land.lhs.true.54, %if.end.52
  br label %if.end.73

if.else:                                          ; preds = %lor.lhs.false.18
  %44 = load i32, i32* %sym, align 4
  %cmp64 = icmp eq i32 %44, 35
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.else
  %45 = load i32, i32* %sym, align 4
  %cmp67 = icmp eq i32 %45, 16
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %lor.lhs.false.66, %if.else
  %46 = load %struct._node*, %struct._node** %tree.addr, align 8
  %47 = load i32, i32* %i, align 4
  %call70 = call i32 @validate_varargslist_trailer(%struct._node* %46, i32 %47)
  store i32 %call70, i32* %res, align 4
  br label %while.end

if.else.71:                                       ; preds = %lor.lhs.false.66
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.63
  br label %while.cond

while.end:                                        ; preds = %if.then.69, %while.cond
  %48 = load i32, i32* %res, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_vfpdef(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 0
  %3 = load i16, i16* %n_type, align 2
  %conv = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 267
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* null)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %7 = phi i1 [ false, %if.then ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type4 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 0
  %9 = load i16, i16* %n_type4, align 2
  %conv5 = sext i16 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 265
  br i1 %cmp6, label %if.then.8, label %if.end.35

if.then.8:                                        ; preds = %if.else
  %10 = load i32, i32* %nch, align 4
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.then.8
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %12, i64 0
  %call14 = call i32 @validate_terminal(%struct._node* %arrayidx13, i32 1, i8* null)
  store i32 %call14, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.then.8
  %13 = load i32, i32* %nch, align 4
  %cmp16 = icmp eq i32 %13, 3
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else.15
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %15, i64 0
  %call21 = call i32 @validate_terminal(%struct._node* %arrayidx20, i32 1, i8* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %land.end.32

land.lhs.true:                                    ; preds = %if.then.18
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call25 = call i32 @validate_terminal(%struct._node* %arrayidx24, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs.27, label %land.end.32

land.rhs.27:                                      ; preds = %land.lhs.true
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child28 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child28, align 8
  %arrayidx29 = getelementptr %struct._node, %struct._node* %19, i64 2
  %call30 = call i32 @validate_test(%struct._node* %arrayidx29)
  %tobool31 = icmp ne i32 %call30, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.27, %land.lhs.true, %if.then.18
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.18 ], [ %tobool31, %land.rhs.27 ]
  %land.ext33 = zext i1 %20 to i32
  store i32 %land.ext33, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.15
  br label %if.end.34

if.end.34:                                        ; preds = %if.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %land.end.32, %if.then.11, %land.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_varargslist_trailer(%struct._node* %tree, i32 %start) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %start.addr = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  store i32 0, i32* %res, align 4
  %2 = load i32, i32* %nch, align 4
  %3 = load i32, i32* %start.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @err_string(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %start.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  %cmp1 = icmp eq i32 %conv, 16
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %start.addr, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %start.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %10, i64 %idxprom4
  %call = call i32 @validate_terminal(%struct._node* %arrayidx6, i32 16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0))
  store i32 %call, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.then.3
  %12 = load i32, i32* %start.addr, align 4
  %13 = load i32, i32* %nch, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.30

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %start.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom10
  %n_type13 = getelementptr inbounds %struct._node, %struct._node* %arrayidx12, i32 0, i32 0
  %17 = load i16, i16* %n_type13, align 2
  %conv14 = sext i16 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 267
  br i1 %cmp15, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %18 = load i32, i32* %start.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %20, i64 %idxprom17
  %n_type20 = getelementptr inbounds %struct._node, %struct._node* %arrayidx19, i32 0, i32 0
  %21 = load i16, i16* %n_type20, align 2
  %conv21 = sext i16 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 265
  br i1 %cmp22, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true.9
  %22 = load i32, i32* %start.addr, align 4
  %inc25 = add i32 %22, 1
  store i32 %inc25, i32* %start.addr, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom26
  %call29 = call i32 @validate_vfpdef(%struct._node* %arrayidx28)
  store i32 %call29, i32* %res, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %lor.lhs.false, %land.lhs.true, %if.then.3
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %if.end.30
  %25 = load i32, i32* %res, align 4
  %tobool31 = icmp ne i32 %25, 0
  br i1 %tobool31, label %land.lhs.true.32, label %land.end

land.lhs.true.32:                                 ; preds = %while.cond
  %26 = load i32, i32* %start.addr, align 4
  %add = add i32 %26, 1
  %27 = load i32, i32* %nch, align 4
  %cmp33 = icmp slt i32 %add, %27
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.32
  %28 = load i32, i32* %start.addr, align 4
  %add35 = add i32 %28, 1
  %idxprom36 = sext i32 %add35 to i64
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child37 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child37, align 8
  %arrayidx38 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom36
  %n_type39 = getelementptr inbounds %struct._node, %struct._node* %arrayidx38, i32 0, i32 0
  %31 = load i16, i16* %n_type39, align 2
  %conv40 = sext i16 %31 to i32
  %cmp41 = icmp eq i32 %conv40, 267
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %32 = load i32, i32* %start.addr, align 4
  %add43 = add i32 %32, 1
  %idxprom44 = sext i32 %add43 to i64
  %33 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child45 = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 5
  %34 = load %struct._node*, %struct._node** %n_child45, align 8
  %arrayidx46 = getelementptr %struct._node, %struct._node* %34, i64 %idxprom44
  %n_type47 = getelementptr inbounds %struct._node, %struct._node* %arrayidx46, i32 0, i32 0
  %35 = load i16, i16* %n_type47, align 2
  %conv48 = sext i16 %35 to i32
  %cmp49 = icmp eq i32 %conv48, 265
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %36 = phi i1 [ true, %land.rhs ], [ %cmp49, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.32, %while.cond
  %37 = phi i1 [ false, %land.lhs.true.32 ], [ false, %while.cond ], [ %36, %lor.end ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %38 = load i32, i32* %start.addr, align 4
  %inc51 = add i32 %38, 1
  store i32 %inc51, i32* %start.addr, align 4
  %idxprom52 = sext i32 %38 to i64
  %39 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child53 = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 5
  %40 = load %struct._node*, %struct._node** %n_child53, align 8
  %arrayidx54 = getelementptr %struct._node, %struct._node* %40, i64 %idxprom52
  %call55 = call i32 @validate_terminal(%struct._node* %arrayidx54, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %land.rhs.57, label %land.end.64

land.rhs.57:                                      ; preds = %while.body
  %41 = load i32, i32* %start.addr, align 4
  %inc58 = add i32 %41, 1
  store i32 %inc58, i32* %start.addr, align 4
  %idxprom59 = sext i32 %41 to i64
  %42 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child60 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child60, align 8
  %arrayidx61 = getelementptr %struct._node, %struct._node* %43, i64 %idxprom59
  %call62 = call i32 @validate_vfpdef(%struct._node* %arrayidx61)
  %tobool63 = icmp ne i32 %call62, 0
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.57, %while.body
  %44 = phi i1 [ false, %while.body ], [ %tobool63, %land.rhs.57 ]
  %land.ext = zext i1 %44 to i32
  store i32 %land.ext, i32* %res, align 4
  %45 = load i32, i32* %res, align 4
  %tobool65 = icmp ne i32 %45, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.94

land.lhs.true.66:                                 ; preds = %land.end.64
  %46 = load i32, i32* %start.addr, align 4
  %add67 = add i32 %46, 1
  %47 = load i32, i32* %nch, align 4
  %cmp68 = icmp slt i32 %add67, %47
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.94

land.lhs.true.70:                                 ; preds = %land.lhs.true.66
  %48 = load i32, i32* %start.addr, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child72 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child72, align 8
  %arrayidx73 = getelementptr %struct._node, %struct._node* %50, i64 %idxprom71
  %n_type74 = getelementptr inbounds %struct._node, %struct._node* %arrayidx73, i32 0, i32 0
  %51 = load i16, i16* %n_type74, align 2
  %conv75 = sext i16 %51 to i32
  %cmp76 = icmp eq i32 %conv75, 22
  br i1 %cmp76, label %if.then.78, label %if.end.94

if.then.78:                                       ; preds = %land.lhs.true.70
  %52 = load i32, i32* %start.addr, align 4
  %inc79 = add i32 %52, 1
  store i32 %inc79, i32* %start.addr, align 4
  %idxprom80 = sext i32 %52 to i64
  %53 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child81 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 5
  %54 = load %struct._node*, %struct._node** %n_child81, align 8
  %arrayidx82 = getelementptr %struct._node, %struct._node* %54, i64 %idxprom80
  %call83 = call i32 @validate_terminal(%struct._node* %arrayidx82, i32 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0))
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %land.rhs.85, label %land.end.92

land.rhs.85:                                      ; preds = %if.then.78
  %55 = load i32, i32* %start.addr, align 4
  %inc86 = add i32 %55, 1
  store i32 %inc86, i32* %start.addr, align 4
  %idxprom87 = sext i32 %55 to i64
  %56 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child88 = getelementptr inbounds %struct._node, %struct._node* %56, i32 0, i32 5
  %57 = load %struct._node*, %struct._node** %n_child88, align 8
  %arrayidx89 = getelementptr %struct._node, %struct._node* %57, i64 %idxprom87
  %call90 = call i32 @validate_test(%struct._node* %arrayidx89)
  %tobool91 = icmp ne i32 %call90, 0
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.85, %if.then.78
  %58 = phi i1 [ false, %if.then.78 ], [ %tobool91, %land.rhs.85 ]
  %land.ext93 = zext i1 %58 to i32
  store i32 %land.ext93, i32* %res, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %land.end.92, %land.lhs.true.70, %land.lhs.true.66, %land.end.64
  br label %while.cond

while.end:                                        ; preds = %land.end
  %59 = load i32, i32* %res, align 4
  %tobool95 = icmp ne i32 %59, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.132

land.lhs.true.96:                                 ; preds = %while.end
  %60 = load i32, i32* %start.addr, align 4
  %add97 = add i32 %60, 2
  %61 = load i32, i32* %nch, align 4
  %cmp98 = icmp slt i32 %add97, %61
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.132

land.lhs.true.100:                                ; preds = %land.lhs.true.96
  %62 = load i32, i32* %start.addr, align 4
  %add101 = add i32 %62, 1
  %idxprom102 = sext i32 %add101 to i64
  %63 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child103 = getelementptr inbounds %struct._node, %struct._node* %63, i32 0, i32 5
  %64 = load %struct._node*, %struct._node** %n_child103, align 8
  %arrayidx104 = getelementptr %struct._node, %struct._node* %64, i64 %idxprom102
  %n_type105 = getelementptr inbounds %struct._node, %struct._node* %arrayidx104, i32 0, i32 0
  %65 = load i16, i16* %n_type105, align 2
  %conv106 = sext i16 %65 to i32
  %cmp107 = icmp eq i32 %conv106, 35
  br i1 %cmp107, label %if.then.109, label %if.end.132

if.then.109:                                      ; preds = %land.lhs.true.100
  %66 = load i32, i32* %start.addr, align 4
  %inc110 = add i32 %66, 1
  store i32 %inc110, i32* %start.addr, align 4
  %idxprom111 = sext i32 %66 to i64
  %67 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child112 = getelementptr inbounds %struct._node, %struct._node* %67, i32 0, i32 5
  %68 = load %struct._node*, %struct._node** %n_child112, align 8
  %arrayidx113 = getelementptr %struct._node, %struct._node* %68, i64 %idxprom111
  %call114 = call i32 @validate_terminal(%struct._node* %arrayidx113, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %land.lhs.true.116, label %land.end.130

land.lhs.true.116:                                ; preds = %if.then.109
  %69 = load i32, i32* %start.addr, align 4
  %inc117 = add i32 %69, 1
  store i32 %inc117, i32* %start.addr, align 4
  %idxprom118 = sext i32 %69 to i64
  %70 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child119 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 5
  %71 = load %struct._node*, %struct._node** %n_child119, align 8
  %arrayidx120 = getelementptr %struct._node, %struct._node* %71, i64 %idxprom118
  %call121 = call i32 @validate_terminal(%struct._node* %arrayidx120, i32 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %land.rhs.123, label %land.end.130

land.rhs.123:                                     ; preds = %land.lhs.true.116
  %72 = load i32, i32* %start.addr, align 4
  %inc124 = add i32 %72, 1
  store i32 %inc124, i32* %start.addr, align 4
  %idxprom125 = sext i32 %72 to i64
  %73 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child126 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 5
  %74 = load %struct._node*, %struct._node** %n_child126, align 8
  %arrayidx127 = getelementptr %struct._node, %struct._node* %74, i64 %idxprom125
  %call128 = call i32 @validate_vfpdef(%struct._node* %arrayidx127)
  %tobool129 = icmp ne i32 %call128, 0
  br label %land.end.130

land.end.130:                                     ; preds = %land.rhs.123, %land.lhs.true.116, %if.then.109
  %75 = phi i1 [ false, %land.lhs.true.116 ], [ false, %if.then.109 ], [ %tobool129, %land.rhs.123 ]
  %land.ext131 = zext i1 %75 to i32
  store i32 %land.ext131, i32* %res, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %land.end.130, %land.lhs.true.100, %land.lhs.true.96, %while.end
  br label %if.end.164

if.else:                                          ; preds = %if.end
  %76 = load i32, i32* %start.addr, align 4
  %idxprom133 = sext i32 %76 to i64
  %77 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child134 = getelementptr inbounds %struct._node, %struct._node* %77, i32 0, i32 5
  %78 = load %struct._node*, %struct._node** %n_child134, align 8
  %arrayidx135 = getelementptr %struct._node, %struct._node* %78, i64 %idxprom133
  %n_type136 = getelementptr inbounds %struct._node, %struct._node* %arrayidx135, i32 0, i32 0
  %79 = load i16, i16* %n_type136, align 2
  %conv137 = sext i16 %79 to i32
  %cmp138 = icmp eq i32 %conv137, 35
  br i1 %cmp138, label %if.then.140, label %if.else.162

if.then.140:                                      ; preds = %if.else
  %80 = load i32, i32* %start.addr, align 4
  %add141 = add i32 %80, 1
  %81 = load i32, i32* %nch, align 4
  %cmp142 = icmp slt i32 %add141, %81
  br i1 %cmp142, label %if.then.144, label %if.else.160

if.then.144:                                      ; preds = %if.then.140
  %82 = load i32, i32* %start.addr, align 4
  %inc145 = add i32 %82, 1
  store i32 %inc145, i32* %start.addr, align 4
  %idxprom146 = sext i32 %82 to i64
  %83 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child147 = getelementptr inbounds %struct._node, %struct._node* %83, i32 0, i32 5
  %84 = load %struct._node*, %struct._node** %n_child147, align 8
  %arrayidx148 = getelementptr %struct._node, %struct._node* %84, i64 %idxprom146
  %call149 = call i32 @validate_terminal(%struct._node* %arrayidx148, i32 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %land.rhs.151, label %land.end.158

land.rhs.151:                                     ; preds = %if.then.144
  %85 = load i32, i32* %start.addr, align 4
  %inc152 = add i32 %85, 1
  store i32 %inc152, i32* %start.addr, align 4
  %idxprom153 = sext i32 %85 to i64
  %86 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child154 = getelementptr inbounds %struct._node, %struct._node* %86, i32 0, i32 5
  %87 = load %struct._node*, %struct._node** %n_child154, align 8
  %arrayidx155 = getelementptr %struct._node, %struct._node* %87, i64 %idxprom153
  %call156 = call i32 @validate_vfpdef(%struct._node* %arrayidx155)
  %tobool157 = icmp ne i32 %call156, 0
  br label %land.end.158

land.end.158:                                     ; preds = %land.rhs.151, %if.then.144
  %88 = phi i1 [ false, %if.then.144 ], [ %tobool157, %land.rhs.151 ]
  %land.ext159 = zext i1 %88 to i32
  store i32 %land.ext159, i32* %res, align 4
  br label %if.end.161

if.else.160:                                      ; preds = %if.then.140
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.92, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %land.end.158
  br label %if.end.163

if.else.162:                                      ; preds = %if.else
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.162, %if.end.161
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.132
  %89 = load i32, i32* %res, align 4
  %tobool165 = icmp ne i32 %89, 0
  br i1 %tobool165, label %land.lhs.true.166, label %if.end.170

land.lhs.true.166:                                ; preds = %if.end.164
  %90 = load i32, i32* %start.addr, align 4
  %91 = load i32, i32* %nch, align 4
  %cmp167 = icmp ne i32 %90, %91
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.166
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %land.lhs.true.166, %if.end.164
  %92 = load i32, i32* %res, align 4
  store i32 %92, i32* %retval
  br label %return

return:                                           ; preds = %if.end.170, %if.then
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_and_test(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 307)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_not_test(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_terminal(%struct._node* %arrayidx9, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.17

land.rhs.12:                                      ; preds = %for.body
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %15, i64 0
  %call15 = call i32 @validate_not_test(%struct._node* %arrayidx14)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.12, %for.body
  %16 = phi i1 [ false, %for.body ], [ %tobool16, %land.rhs.12 ]
  %land.ext18 = zext i1 %16 to i32
  store i32 %land.ext18, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.17
  %17 = load i32, i32* %pos, align 4
  %add = add i32 %17, 2
  store i32 %add, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %18 = load i32, i32* %res, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_not_test(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 308)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp1, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.end.20

if.then:                                          ; preds = %land.end
  %8 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 0
  %call5 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs.7, label %land.end.12

land.rhs.7:                                       ; preds = %if.then.4
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %12, i64 1
  %call10 = call i32 @validate_not_test(%struct._node* %arrayidx9)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.7, %if.then.4
  %13 = phi i1 [ false, %if.then.4 ], [ %tobool11, %land.rhs.7 ]
  %land.ext13 = zext i1 %13 to i32
  store i32 %land.ext13, i32* %res, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then
  %14 = load i32, i32* %nch, align 4
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %16, i64 0
  %call18 = call i32 @validate_comparison(%struct._node* %arrayidx17)
  store i32 %call18, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %land.end.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.end
  %17 = load i32, i32* %res, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comparison(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 309)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_expr(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_comp_op(%struct._node* %arrayidx9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %14 = load i32, i32* %pos, align 4
  %add = add i32 %14, 1
  %idxprom13 = sext i32 %add to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom13
  %call16 = call i32 @validate_expr(%struct._node* %arrayidx15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %17 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %17 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %18 = load i32, i32* %pos, align 4
  %add20 = add i32 %18, 2
  store i32 %add20, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_expr(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 312)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_xor_expr(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_xor_expr(%struct._node* %arrayidx9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %sub = sub i32 %14, 1
  %idxprom13 = sext i32 %sub to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom13
  %call16 = call i32 @validate_terminal(%struct._node* %arrayidx15, i32 18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %17 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %17 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %18 = load i32, i32* %j, align 4
  %add = add i32 %18, 2
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comp_op(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  %nch = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 310)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  store %struct._node* %arrayidx, %struct._node** %tree.addr, align 8
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 27, label %sw.bb
    i32 22, label %sw.bb
    i32 29, label %sw.bb
    i32 30, label %sw.bb
    i32 28, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then.1, %if.then.1, %if.then.1, %if.then.1, %if.then.1, %if.then.1, %if.then.1
  store i32 1, i32* %res, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then.1
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 1
  %9 = load i8*, i8** %n_str, align 8
  %call3 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0)) #4
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.2
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_str6 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 1
  %11 = load i8*, i8** %n_str6, align 8
  %call7 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0)) #4
  %cmp8 = icmp eq i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.2
  %12 = phi i1 [ true, %sw.bb.2 ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %res, align 4
  %13 = load i32, i32* %res, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %lor.end
  %14 = load %struct._object*, %struct._object** @parser_error, align 8
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_str12 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 1
  %16 = load i8*, i8** %n_str12, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0), i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %lor.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.1
  call void @err_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.14, %sw.bb
  br label %if.end.64

if.else:                                          ; preds = %if.end
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call15 = call i32 @validate_numnodes(%struct._node* %17, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0))
  store i32 %call15, i32* %res, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.63

if.then.18:                                       ; preds = %if.else
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %19, i64 0
  %call21 = call i32 @validate_ntype(%struct._node* %arrayidx20, i32 1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %land.end.56

land.lhs.true:                                    ; preds = %if.then.18
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %21, i64 1
  %call25 = call i32 @validate_ntype(%struct._node* %arrayidx24, i32 1)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs, label %land.end.56

land.rhs:                                         ; preds = %land.lhs.true
  %22 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %23, i64 0
  %n_str29 = getelementptr inbounds %struct._node, %struct._node* %arrayidx28, i32 0, i32 1
  %24 = load i8*, i8** %n_str29, align 8
  %call30 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0)) #4
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %lor.rhs.40

land.lhs.true.33:                                 ; preds = %land.rhs
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %26, i64 1
  %n_str36 = getelementptr inbounds %struct._node, %struct._node* %arrayidx35, i32 0, i32 1
  %27 = load i8*, i8** %n_str36, align 8
  %call37 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0)) #4
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %lor.end.54, label %lor.rhs.40

lor.rhs.40:                                       ; preds = %land.lhs.true.33, %land.rhs
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child41 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child41, align 8
  %arrayidx42 = getelementptr %struct._node, %struct._node* %29, i64 0
  %n_str43 = getelementptr inbounds %struct._node, %struct._node* %arrayidx42, i32 0, i32 1
  %30 = load i8*, i8** %n_str43, align 8
  %call44 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0)) #4
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %land.rhs.47, label %land.end

land.rhs.47:                                      ; preds = %lor.rhs.40
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child48 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child48, align 8
  %arrayidx49 = getelementptr %struct._node, %struct._node* %32, i64 1
  %n_str50 = getelementptr inbounds %struct._node, %struct._node* %arrayidx49, i32 0, i32 1
  %33 = load i8*, i8** %n_str50, align 8
  %call51 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0)) #4
  %cmp52 = icmp eq i32 %call51, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.47, %lor.rhs.40
  %34 = phi i1 [ false, %lor.rhs.40 ], [ %cmp52, %land.rhs.47 ]
  br label %lor.end.54

lor.end.54:                                       ; preds = %land.end, %land.lhs.true.33
  %35 = phi i1 [ true, %land.lhs.true.33 ], [ %34, %land.end ]
  br label %land.end.56

land.end.56:                                      ; preds = %lor.end.54, %land.lhs.true, %if.then.18
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.18 ], [ %35, %lor.end.54 ]
  %land.ext = zext i1 %36 to i32
  store i32 %land.ext, i32* %res, align 4
  %37 = load i32, i32* %res, align 4
  %tobool57 = icmp ne i32 %37, 0
  br i1 %tobool57, label %if.end.62, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %land.end.56
  %call59 = call %struct._object* @PyErr_Occurred()
  %tobool60 = icmp ne %struct._object* %call59, null
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.58
  call void @err_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %land.lhs.true.58, %land.end.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %sw.epilog
  %38 = load i32, i32* %res, align 4
  store i32 %38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_xor_expr(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 313)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_and_expr(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %j, align 4
  %sub = sub i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_terminal(%struct._node* %arrayidx9, i32 32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom13
  %call16 = call i32 @validate_and_expr(%struct._node* %arrayidx15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %17 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %17 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %18 = load i32, i32* %j, align 4
  %add = add i32 %18, 2
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_and_expr(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 314)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_shift_expr(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_terminal(%struct._node* %arrayidx9, i32 19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %14 = load i32, i32* %pos, align 4
  %add = add i32 %14, 1
  %idxprom13 = sext i32 %add to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom13
  %call16 = call i32 @validate_shift_expr(%struct._node* %arrayidx15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %17 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %17 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %18 = load i32, i32* %pos, align 4
  %add20 = add i32 %18, 2
  store i32 %add20, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_shift_expr(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 315)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_chain_two_ops(%struct._node* %1, i32 (%struct._node*)* @validate_arith_expr, i32 33, i32 34)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_chain_two_ops(%struct._node* %tree, i32 (%struct._node*)* %termvalid, i32 %op1, i32 %op2) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %termvalid.addr = alloca i32 (%struct._node*)*, align 8
  %op1.addr = alloca i32, align 4
  %op2.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 (%struct._node*)* %termvalid, i32 (%struct._node*)** %termvalid.addr, align 8
  store i32 %op1, i32* %op1.addr, align 4
  store i32 %op2, i32* %op2.addr, align 4
  store i32 1, i32* %pos, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %and = and i32 %2, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32 (%struct._node*)*, i32 (%struct._node*)** %termvalid.addr, align 8
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call = call i32 %3(%struct._node* %arrayidx)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %land.rhs.2, label %land.end.4

land.rhs.2:                                       ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp3 = icmp slt i32 %8, %9
  br label %land.end.4

land.end.4:                                       ; preds = %land.rhs.2, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs.2 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.4
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx7, i32 0, i32 0
  %14 = load i16, i16* %n_type, align 2
  %conv = sext i16 %14 to i32
  %15 = load i32, i32* %op1.addr, align 4
  %cmp8 = icmp ne i32 %conv, %15
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom10
  %19 = load i32, i32* %op2.addr, align 4
  %call13 = call i32 @validate_ntype(%struct._node* %arrayidx12, i32 %19)
  store i32 %call13, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %20 = load i32, i32* %res, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %21 = load i32 (%struct._node*)*, i32 (%struct._node*)** %termvalid.addr, align 8
  %22 = load i32, i32* %pos, align 4
  %add = add i32 %22, 1
  %idxprom16 = sext i32 %add to i64
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom16
  %call19 = call i32 %21(%struct._node* %arrayidx18)
  store i32 %call19, i32* %res, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %25 = load i32, i32* %pos, align 4
  %add21 = add i32 %25, 2
  store i32 %add21, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.4
  %26 = load i32, i32* %res, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_arith_expr(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 316)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_chain_two_ops(%struct._node* %1, i32 (%struct._node*)* @validate_term, i32 14, i32 15)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_term(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 1, i32* %pos, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 317)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_factor(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx9, i32 0, i32 0
  %14 = load i16, i16* %n_type, align 2
  %conv = sext i16 %14 to i32
  %cmp10 = icmp eq i32 %conv, 16
  br i1 %cmp10, label %land.rhs.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom12
  %n_type15 = getelementptr inbounds %struct._node, %struct._node* %arrayidx14, i32 0, i32 0
  %18 = load i16, i16* %n_type15, align 2
  %conv16 = sext i16 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 17
  br i1 %cmp17, label %land.rhs.35, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom20
  %n_type23 = getelementptr inbounds %struct._node, %struct._node* %arrayidx22, i32 0, i32 0
  %22 = load i16, i16* %n_type23, align 2
  %conv24 = sext i16 %22 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %land.rhs.35, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.19
  %23 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %25, i64 %idxprom28
  %n_type31 = getelementptr inbounds %struct._node, %struct._node* %arrayidx30, i32 0, i32 0
  %26 = load i16, i16* %n_type31, align 2
  %conv32 = sext i16 %26 to i32
  %cmp33 = icmp eq i32 %conv32, 24
  br i1 %cmp33, label %land.rhs.35, label %land.end.41

land.rhs.35:                                      ; preds = %lor.lhs.false.27, %lor.lhs.false.19, %lor.lhs.false, %for.body
  %27 = load i32, i32* %pos, align 4
  %add = add i32 %27, 1
  %idxprom36 = sext i32 %add to i64
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child37 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child37, align 8
  %arrayidx38 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom36
  %call39 = call i32 @validate_factor(%struct._node* %arrayidx38)
  %tobool40 = icmp ne i32 %call39, 0
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.35, %lor.lhs.false.27
  %30 = phi i1 [ false, %lor.lhs.false.27 ], [ %tobool40, %land.rhs.35 ]
  %land.ext42 = zext i1 %30 to i32
  store i32 %land.ext42, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.41
  %31 = load i32, i32* %pos, align 4
  %add43 = add i32 %31, 2
  store i32 %add43, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %32 = load i32, i32* %res, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_factor(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 318)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end.28

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp1 = icmp eq i32 %conv, 14
  br i1 %cmp1, label %land.lhs.true.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %8, i64 0
  %n_type5 = getelementptr inbounds %struct._node, %struct._node* %arrayidx4, i32 0, i32 0
  %9 = load i16, i16* %n_type5, align 2
  %conv6 = sext i16 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 15
  br i1 %cmp7, label %land.lhs.true.16, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %11, i64 0
  %n_type12 = getelementptr inbounds %struct._node, %struct._node* %arrayidx11, i32 0, i32 0
  %12 = load i16, i16* %n_type12, align 2
  %conv13 = sext i16 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 31
  br i1 %cmp14, label %land.lhs.true.16, label %lor.rhs

land.lhs.true.16:                                 ; preds = %lor.lhs.false.9, %lor.lhs.false, %land.lhs.true
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %14, i64 1
  %call19 = call i32 @validate_factor(%struct._node* %arrayidx18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.16, %lor.lhs.false.9, %land.rhs
  %15 = load i32, i32* %nch, align 4
  %cmp21 = icmp eq i32 %15, 1
  br i1 %cmp21, label %land.rhs.23, label %land.end

land.rhs.23:                                      ; preds = %lor.rhs
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child24 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child24, align 8
  %arrayidx25 = getelementptr %struct._node, %struct._node* %17, i64 0
  %call26 = call i32 @validate_power(%struct._node* %arrayidx25)
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.23, %lor.rhs
  %18 = phi i1 [ false, %lor.rhs ], [ %tobool27, %land.rhs.23 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.16
  %19 = phi i1 [ true, %land.lhs.true.16 ], [ %18, %land.end ]
  br label %land.end.28

land.end.28:                                      ; preds = %lor.end, %entry
  %20 = phi i1 [ false, %entry ], [ %19, %lor.end ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %res, align 4
  %21 = load i32, i32* %res, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_power(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 1, i32* %pos, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 319)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_atom(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.lhs.true.4, label %land.end.11

land.lhs.true.4:                                  ; preds = %while.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %land.rhs.6, label %land.end.11

land.rhs.6:                                       ; preds = %land.lhs.true.4
  %10 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx8, i32 0, i32 0
  %13 = load i16, i16* %n_type, align 2
  %conv = sext i16 %13 to i32
  %cmp9 = icmp eq i32 %conv, 322
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.6, %land.lhs.true.4, %while.cond
  %14 = phi i1 [ false, %land.lhs.true.4 ], [ false, %while.cond ], [ %cmp9, %land.rhs.6 ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.11
  %15 = load i32, i32* %pos, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom13
  %call16 = call i32 @validate_trailer(%struct._node* %arrayidx15)
  store i32 %call16, i32* %res, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.11
  %18 = load i32, i32* %res, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.45

land.lhs.true.18:                                 ; preds = %while.end
  %19 = load i32, i32* %pos, align 4
  %20 = load i32, i32* %nch, align 4
  %cmp19 = icmp slt i32 %19, %20
  br i1 %cmp19, label %if.then, label %if.end.45

if.then:                                          ; preds = %land.lhs.true.18
  %21 = load i32, i32* %nch, align 4
  %22 = load i32, i32* %pos, align 4
  %sub = sub i32 %21, %22
  %and = and i32 %sub, 1
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %if.then
  call void @err_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %res, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %land.rhs.25, label %land.end.29

land.rhs.25:                                      ; preds = %for.cond
  %24 = load i32, i32* %pos, align 4
  %25 = load i32, i32* %nch, align 4
  %sub26 = sub i32 %25, 1
  %cmp27 = icmp slt i32 %24, %sub26
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.25, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp27, %land.rhs.25 ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.29
  %27 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom31
  %call34 = call i32 @validate_terminal(%struct._node* %arrayidx33, i32 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.rhs.36, label %land.end.42

land.rhs.36:                                      ; preds = %for.body
  %30 = load i32, i32* %pos, align 4
  %add = add i32 %30, 1
  %idxprom37 = sext i32 %add to i64
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child38 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child38, align 8
  %arrayidx39 = getelementptr %struct._node, %struct._node* %32, i64 %idxprom37
  %call40 = call i32 @validate_factor(%struct._node* %arrayidx39)
  %tobool41 = icmp ne i32 %call40, 0
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.36, %for.body
  %33 = phi i1 [ false, %for.body ], [ %tobool41, %land.rhs.36 ]
  %land.ext43 = zext i1 %33 to i32
  store i32 %land.ext43, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.42
  %34 = load i32, i32* %pos, align 4
  %add44 = add i32 %34, 2
  store i32 %add44, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.29
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %land.lhs.true.18, %while.end
  %35 = load i32, i32* %res, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.23
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_atom(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %pos = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 320)
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %6 = load i32, i32* %nch, align 4
  %add = add i32 %6, 1
  %call1 = call i32 @validate_numnodes(%struct._node* %5, i32 %add, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0))
  store i32 %call1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.90

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %10 = load i16, i16* %n_type, align 2
  %conv = sext i16 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 9, label %sw.bb.30
    i32 25, label %sw.bb.55
    i32 1, label %sw.bb.76
    i32 2, label %sw.bb.76
    i32 51, label %sw.bb.76
    i32 3, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %if.then.3
  %11 = load i32, i32* %nch, align 4
  %cmp4 = icmp sle i32 %11, 3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %12 = load i32, i32* %nch, align 4
  %sub = sub i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %14, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %15 = phi i1 [ false, %sw.bb ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %res, align 4
  %16 = load i32, i32* %res, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.29

land.lhs.true.11:                                 ; preds = %land.end
  %17 = load i32, i32* %nch, align 4
  %cmp12 = icmp eq i32 %17, 3
  br i1 %cmp12, label %if.then.14, label %if.end.29

if.then.14:                                       ; preds = %land.lhs.true.11
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %19, i64 1
  %n_type17 = getelementptr inbounds %struct._node, %struct._node* %arrayidx16, i32 0, i32 0
  %20 = load i16, i16* %n_type17, align 2
  %conv18 = sext i16 %20 to i32
  %cmp19 = icmp eq i32 %conv18, 336
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.14
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %22, i64 1
  %call24 = call i32 @validate_yield_expr(%struct._node* %arrayidx23)
  store i32 %call24, i32* %res, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.then.14
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %24, i64 1
  %call27 = call i32 @validate_testlist_comp(%struct._node* %arrayidx26)
  store i32 %call27, i32* %res, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.11, %land.end
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.3
  %25 = load i32, i32* %nch, align 4
  %cmp31 = icmp eq i32 %25, 2
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %sw.bb.30
  %26 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %27, i64 1
  %call36 = call i32 @validate_ntype(%struct._node* %arrayidx35, i32 10)
  store i32 %call36, i32* %res, align 4
  br label %if.end.54

if.else.37:                                       ; preds = %sw.bb.30
  %28 = load i32, i32* %nch, align 4
  %cmp38 = icmp eq i32 %28, 3
  br i1 %cmp38, label %if.then.40, label %if.else.52

if.then.40:                                       ; preds = %if.else.37
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child41 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child41, align 8
  %arrayidx42 = getelementptr %struct._node, %struct._node* %30, i64 1
  %call43 = call i32 @validate_testlist_comp(%struct._node* %arrayidx42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.rhs.45, label %land.end.50

land.rhs.45:                                      ; preds = %if.then.40
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child46 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child46, align 8
  %arrayidx47 = getelementptr %struct._node, %struct._node* %32, i64 2
  %call48 = call i32 @validate_ntype(%struct._node* %arrayidx47, i32 10)
  %tobool49 = icmp ne i32 %call48, 0
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.45, %if.then.40
  %33 = phi i1 [ false, %if.then.40 ], [ %tobool49, %land.rhs.45 ]
  %land.ext51 = zext i1 %33 to i32
  store i32 %land.ext51, i32* %res, align 4
  br label %if.end.53

if.else.52:                                       ; preds = %if.else.37
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %land.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.33
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.then.3
  %34 = load i32, i32* %nch, align 4
  %cmp56 = icmp sle i32 %34, 3
  br i1 %cmp56, label %land.rhs.58, label %land.end.65

land.rhs.58:                                      ; preds = %sw.bb.55
  %35 = load i32, i32* %nch, align 4
  %sub59 = sub i32 %35, 1
  %idxprom60 = sext i32 %sub59 to i64
  %36 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child61 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 5
  %37 = load %struct._node*, %struct._node** %n_child61, align 8
  %arrayidx62 = getelementptr %struct._node, %struct._node* %37, i64 %idxprom60
  %call63 = call i32 @validate_ntype(%struct._node* %arrayidx62, i32 26)
  %tobool64 = icmp ne i32 %call63, 0
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.58, %sw.bb.55
  %38 = phi i1 [ false, %sw.bb.55 ], [ %tobool64, %land.rhs.58 ]
  %land.ext66 = zext i1 %38 to i32
  store i32 %land.ext66, i32* %res, align 4
  %39 = load i32, i32* %res, align 4
  %tobool67 = icmp ne i32 %39, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.75

land.lhs.true.68:                                 ; preds = %land.end.65
  %40 = load i32, i32* %nch, align 4
  %cmp69 = icmp eq i32 %40, 3
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %land.lhs.true.68
  %41 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child72 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child72, align 8
  %arrayidx73 = getelementptr %struct._node, %struct._node* %42, i64 1
  %call74 = call i32 @validate_dictorsetmaker(%struct._node* %arrayidx73)
  store i32 %call74, i32* %res, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %land.lhs.true.68, %land.end.65
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.then.3, %if.then.3, %if.then.3
  %43 = load i32, i32* %nch, align 4
  %cmp77 = icmp eq i32 %43, 1
  %conv78 = zext i1 %cmp77 to i32
  store i32 %conv78, i32* %res, align 4
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.then.3
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.79
  %44 = load i32, i32* %res, align 4
  %tobool80 = icmp ne i32 %44, 0
  br i1 %tobool80, label %land.rhs.81, label %land.end.84

land.rhs.81:                                      ; preds = %for.cond
  %45 = load i32, i32* %pos, align 4
  %46 = load i32, i32* %nch, align 4
  %cmp82 = icmp slt i32 %45, %46
  br label %land.end.84

land.end.84:                                      ; preds = %land.rhs.81, %for.cond
  %47 = phi i1 [ false, %for.cond ], [ %cmp82, %land.rhs.81 ]
  br i1 %47, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.84
  %48 = load i32, i32* %pos, align 4
  %idxprom86 = sext i32 %48 to i64
  %49 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child87 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child87, align 8
  %arrayidx88 = getelementptr %struct._node, %struct._node* %50, i64 %idxprom86
  %call89 = call i32 @validate_ntype(%struct._node* %arrayidx88, i32 3)
  store i32 %call89, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %pos, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.84
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.3
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %sw.bb.76, %if.end.75, %if.end.54, %if.end.29
  br label %if.end.90

if.end.90:                                        ; preds = %sw.epilog, %if.end
  %52 = load i32, i32* %res, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_trailer(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 322)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp1, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %10 = load i16, i16* %n_type, align 2
  %conv = sext i16 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 9, label %sw.bb.13
    i32 23, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load i32, i32* %nch, align 4
  %sub = sub i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call5 = call i32 @validate_terminal(%struct._node* %arrayidx4, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  store i32 %call5, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %15 = load i32, i32* %nch, align 4
  %cmp7 = icmp eq i32 %15, 3
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call12 = call i32 @validate_arglist(%struct._node* %arrayidx11)
  store i32 %call12, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call14 = call i32 @validate_numnodes(%struct._node* %18, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %land.end.26

land.lhs.true.16:                                 ; preds = %sw.bb.13
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %20, i64 1
  %call19 = call i32 @validate_subscriptlist(%struct._node* %arrayidx18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.26

land.rhs.21:                                      ; preds = %land.lhs.true.16
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %22, i64 2
  %call24 = call i32 @validate_ntype(%struct._node* %arrayidx23, i32 10)
  %tobool25 = icmp ne i32 %call24, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.21, %land.lhs.true.16, %sw.bb.13
  %23 = phi i1 [ false, %land.lhs.true.16 ], [ false, %sw.bb.13 ], [ %tobool25, %land.rhs.21 ]
  %land.ext27 = zext i1 %23 to i32
  store i32 %land.ext27, i32* %res, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then
  %24 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call29 = call i32 @validate_numnodes(%struct._node* %24, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.rhs.31, label %land.end.36

land.rhs.31:                                      ; preds = %sw.bb.28
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %26, i64 1
  %call34 = call i32 @validate_ntype(%struct._node* %arrayidx33, i32 1)
  %tobool35 = icmp ne i32 %call34, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.31, %sw.bb.28
  %27 = phi i1 [ false, %sw.bb.28 ], [ %tobool35, %land.rhs.31 ]
  %land.ext37 = zext i1 %27 to i32
  store i32 %land.ext37, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.end.36, %land.end.26, %if.end
  br label %if.end.39

if.else:                                          ; preds = %land.end
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call38 = call i32 @validate_numnodes(%struct._node* %28, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %sw.epilog
  %29 = load i32, i32* %res, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_yield_expr(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %4, i32 336)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call4 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load i32, i32* %nch, align 4
  %cmp8 = icmp eq i32 %7, 2
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.7
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %9, i64 1
  %call12 = call i32 @validate_yield_arg(%struct._node* %arrayidx11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.6, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_testlist_comp(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  store i32 %2, i32* %ok, align 4
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @err_string(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call = call i32 @validate_test_or_star_expr(%struct._node* %arrayidx)
  store i32 %call, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child2 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child2, align 8
  %arrayidx3 = getelementptr %struct._node, %struct._node* %8, i64 1
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx3, i32 0, i32 0
  %9 = load i16, i16* %n_type, align 2
  %conv = sext i16 %9 to i32
  %cmp4 = icmp eq i32 %conv, 333
  br i1 %cmp4, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call9 = call i32 @validate_comp_for(%struct._node* %arrayidx8)
  store i32 %call9, i32* %ok, align 4
  br label %if.end.41

if.else.10:                                       ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %land.end.23, %if.else.10
  %12 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %nch, align 4
  %14 = load i32, i32* %i, align 4
  %sub = sub i32 %13, %14
  %cmp11 = icmp sge i32 %sub, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom
  %call15 = call i32 @validate_terminal(%struct._node* %arrayidx14, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.rhs.17, label %land.end.23

land.rhs.17:                                      ; preds = %while.body
  %19 = load i32, i32* %i, align 4
  %add = add i32 %19, 1
  %idxprom18 = sext i32 %add to i64
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom18
  %call21 = call i32 @validate_test_or_star_expr(%struct._node* %arrayidx20)
  %tobool22 = icmp ne i32 %call21, 0
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.17, %while.body
  %22 = phi i1 [ false, %while.body ], [ %tobool22, %land.rhs.17 ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %ok, align 4
  %23 = load i32, i32* %i, align 4
  %add24 = add i32 %23, 2
  store i32 %add24, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %ok, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.35

land.lhs.true.26:                                 ; preds = %while.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nch, align 4
  %sub27 = sub i32 %26, 1
  %cmp28 = icmp eq i32 %25, %sub27
  br i1 %cmp28, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %land.lhs.true.26
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom31
  %call34 = call i32 @validate_terminal(%struct._node* %arrayidx33, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  store i32 %call34, i32* %ok, align 4
  br label %if.end.40

if.else.35:                                       ; preds = %land.lhs.true.26, %while.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %nch, align 4
  %cmp36 = icmp ne i32 %30, %31
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.35
  store i32 0, i32* %ok, align 4
  call void @err_string(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.30
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.6
  %32 = load i32, i32* %ok, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_dictorsetmaker(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  store i32 0, i32* %i, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 328)
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub i32 %4, %5
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call2 = call i32 @validate_numnodes(%struct._node* %6, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  %call4 = call i32 @validate_test(%struct._node* %arrayidx)
  store i32 %call4, i32* %res, align 4
  %10 = load i32, i32* %res, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %11 = load i32, i32* %nch, align 4
  %12 = load i32, i32* %i, align 4
  %sub8 = sub i32 %11, %12
  %cmp9 = icmp sge i32 %sub8, 2
  br i1 %cmp9, label %land.lhs.true, label %if.else.100

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %15, i64 %idxprom10
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx12, i32 0, i32 0
  %16 = load i16, i16* %n_type, align 2
  %conv = sext i16 %16 to i32
  %cmp13 = icmp eq i32 %conv, 11
  br i1 %cmp13, label %if.then.15, label %if.else.100

if.then.15:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %inc16 = add i32 %17, 1
  store i32 %inc16, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %19, i64 %idxprom17
  %call20 = call i32 @validate_terminal(%struct._node* %arrayidx19, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.15
  %20 = load i32, i32* %i, align 4
  %inc22 = add i32 %20, 1
  store i32 %inc22, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child24 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child24, align 8
  %arrayidx25 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom23
  %call26 = call i32 @validate_test(%struct._node* %arrayidx25)
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.15
  %23 = phi i1 [ false, %if.then.15 ], [ %tobool27, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %res, align 4
  %24 = load i32, i32* %res, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %land.end
  %25 = load i32, i32* %nch, align 4
  %26 = load i32, i32* %i, align 4
  %sub31 = sub i32 %25, %26
  %cmp32 = icmp sge i32 %sub31, 1
  br i1 %cmp32, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %if.end.30
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child36 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child36, align 8
  %arrayidx37 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom35
  %n_type38 = getelementptr inbounds %struct._node, %struct._node* %arrayidx37, i32 0, i32 0
  %30 = load i16, i16* %n_type38, align 2
  %conv39 = sext i16 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 333
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %land.lhs.true.34
  %31 = load i32, i32* %i, align 4
  %inc43 = add i32 %31, 1
  store i32 %inc43, i32* %i, align 4
  %idxprom44 = sext i32 %31 to i64
  %32 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child45 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child45, align 8
  %arrayidx46 = getelementptr %struct._node, %struct._node* %33, i64 %idxprom44
  %call47 = call i32 @validate_comp_for(%struct._node* %arrayidx46)
  store i32 %call47, i32* %res, align 4
  %34 = load i32, i32* %res, align 4
  %tobool48 = icmp ne i32 %34, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.42
  br label %if.end.99

if.else:                                          ; preds = %land.lhs.true.34, %if.end.30
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.else
  %35 = load i32, i32* %nch, align 4
  %36 = load i32, i32* %i, align 4
  %sub51 = sub i32 %35, %36
  %cmp52 = icmp sge i32 %sub51, 4
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %i, align 4
  %inc54 = add i32 %37, 1
  store i32 %inc54, i32* %i, align 4
  %idxprom55 = sext i32 %37 to i64
  %38 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child56 = getelementptr inbounds %struct._node, %struct._node* %38, i32 0, i32 5
  %39 = load %struct._node*, %struct._node** %n_child56, align 8
  %arrayidx57 = getelementptr %struct._node, %struct._node* %39, i64 %idxprom55
  %call58 = call i32 @validate_terminal(%struct._node* %arrayidx57, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %land.end.81

land.lhs.true.60:                                 ; preds = %while.body
  %40 = load i32, i32* %i, align 4
  %inc61 = add i32 %40, 1
  store i32 %inc61, i32* %i, align 4
  %idxprom62 = sext i32 %40 to i64
  %41 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child63, align 8
  %arrayidx64 = getelementptr %struct._node, %struct._node* %42, i64 %idxprom62
  %call65 = call i32 @validate_test(%struct._node* %arrayidx64)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %land.end.81

land.lhs.true.67:                                 ; preds = %land.lhs.true.60
  %43 = load i32, i32* %i, align 4
  %inc68 = add i32 %43, 1
  store i32 %inc68, i32* %i, align 4
  %idxprom69 = sext i32 %43 to i64
  %44 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child70 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 5
  %45 = load %struct._node*, %struct._node** %n_child70, align 8
  %arrayidx71 = getelementptr %struct._node, %struct._node* %45, i64 %idxprom69
  %call72 = call i32 @validate_terminal(%struct._node* %arrayidx71, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %land.rhs.74, label %land.end.81

land.rhs.74:                                      ; preds = %land.lhs.true.67
  %46 = load i32, i32* %i, align 4
  %inc75 = add i32 %46, 1
  store i32 %inc75, i32* %i, align 4
  %idxprom76 = sext i32 %46 to i64
  %47 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child77 = getelementptr inbounds %struct._node, %struct._node* %47, i32 0, i32 5
  %48 = load %struct._node*, %struct._node** %n_child77, align 8
  %arrayidx78 = getelementptr %struct._node, %struct._node* %48, i64 %idxprom76
  %call79 = call i32 @validate_test(%struct._node* %arrayidx78)
  %tobool80 = icmp ne i32 %call79, 0
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.74, %land.lhs.true.67, %land.lhs.true.60, %while.body
  %49 = phi i1 [ false, %land.lhs.true.67 ], [ false, %land.lhs.true.60 ], [ false, %while.body ], [ %tobool80, %land.rhs.74 ]
  %land.ext82 = zext i1 %49 to i32
  store i32 %land.ext82, i32* %res, align 4
  %50 = load i32, i32* %res, align 4
  %tobool83 = icmp ne i32 %50, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %land.end.81
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %land.end.81
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load i32, i32* %nch, align 4
  %52 = load i32, i32* %i, align 4
  %sub86 = sub i32 %51, %52
  %cmp87 = icmp eq i32 %sub86, 1
  br i1 %cmp87, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %while.end
  %53 = load i32, i32* %i, align 4
  %inc90 = add i32 %53, 1
  store i32 %inc90, i32* %i, align 4
  %idxprom91 = sext i32 %53 to i64
  %54 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child92 = getelementptr inbounds %struct._node, %struct._node* %54, i32 0, i32 5
  %55 = load %struct._node*, %struct._node** %n_child92, align 8
  %arrayidx93 = getelementptr %struct._node, %struct._node* %55, i64 %idxprom91
  %call94 = call i32 @validate_terminal(%struct._node* %arrayidx93, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  store i32 %call94, i32* %res, align 4
  %56 = load i32, i32* %res, align 4
  %tobool95 = icmp ne i32 %56, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.89
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.then.89
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %while.end
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.50
  br label %if.end.160

if.else.100:                                      ; preds = %land.lhs.true, %if.end.7
  %57 = load i32, i32* %nch, align 4
  %58 = load i32, i32* %i, align 4
  %sub101 = sub i32 %57, %58
  %cmp102 = icmp sge i32 %sub101, 1
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.121

land.lhs.true.104:                                ; preds = %if.else.100
  %59 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %59 to i64
  %60 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child106 = getelementptr inbounds %struct._node, %struct._node* %60, i32 0, i32 5
  %61 = load %struct._node*, %struct._node** %n_child106, align 8
  %arrayidx107 = getelementptr %struct._node, %struct._node* %61, i64 %idxprom105
  %n_type108 = getelementptr inbounds %struct._node, %struct._node* %arrayidx107, i32 0, i32 0
  %62 = load i16, i16* %n_type108, align 2
  %conv109 = sext i16 %62 to i32
  %cmp110 = icmp eq i32 %conv109, 333
  br i1 %cmp110, label %if.then.112, label %if.else.121

if.then.112:                                      ; preds = %land.lhs.true.104
  %63 = load i32, i32* %i, align 4
  %inc113 = add i32 %63, 1
  store i32 %inc113, i32* %i, align 4
  %idxprom114 = sext i32 %63 to i64
  %64 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child115 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 5
  %65 = load %struct._node*, %struct._node** %n_child115, align 8
  %arrayidx116 = getelementptr %struct._node, %struct._node* %65, i64 %idxprom114
  %call117 = call i32 @validate_comp_for(%struct._node* %arrayidx116)
  store i32 %call117, i32* %res, align 4
  %66 = load i32, i32* %res, align 4
  %tobool118 = icmp ne i32 %66, 0
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.then.112
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.then.112
  br label %if.end.159

if.else.121:                                      ; preds = %land.lhs.true.104, %if.else.100
  br label %while.cond.122

while.cond.122:                                   ; preds = %if.end.144, %if.else.121
  %67 = load i32, i32* %nch, align 4
  %68 = load i32, i32* %i, align 4
  %sub123 = sub i32 %67, %68
  %cmp124 = icmp sge i32 %sub123, 2
  br i1 %cmp124, label %while.body.126, label %while.end.145

while.body.126:                                   ; preds = %while.cond.122
  %69 = load i32, i32* %i, align 4
  %inc127 = add i32 %69, 1
  store i32 %inc127, i32* %i, align 4
  %idxprom128 = sext i32 %69 to i64
  %70 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child129 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 5
  %71 = load %struct._node*, %struct._node** %n_child129, align 8
  %arrayidx130 = getelementptr %struct._node, %struct._node* %71, i64 %idxprom128
  %call131 = call i32 @validate_terminal(%struct._node* %arrayidx130, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %land.rhs.133, label %land.end.140

land.rhs.133:                                     ; preds = %while.body.126
  %72 = load i32, i32* %i, align 4
  %inc134 = add i32 %72, 1
  store i32 %inc134, i32* %i, align 4
  %idxprom135 = sext i32 %72 to i64
  %73 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child136 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 5
  %74 = load %struct._node*, %struct._node** %n_child136, align 8
  %arrayidx137 = getelementptr %struct._node, %struct._node* %74, i64 %idxprom135
  %call138 = call i32 @validate_test(%struct._node* %arrayidx137)
  %tobool139 = icmp ne i32 %call138, 0
  br label %land.end.140

land.end.140:                                     ; preds = %land.rhs.133, %while.body.126
  %75 = phi i1 [ false, %while.body.126 ], [ %tobool139, %land.rhs.133 ]
  %land.ext141 = zext i1 %75 to i32
  store i32 %land.ext141, i32* %res, align 4
  %76 = load i32, i32* %res, align 4
  %tobool142 = icmp ne i32 %76, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %land.end.140
  store i32 0, i32* %retval
  br label %return

if.end.144:                                       ; preds = %land.end.140
  br label %while.cond.122

while.end.145:                                    ; preds = %while.cond.122
  %77 = load i32, i32* %nch, align 4
  %78 = load i32, i32* %i, align 4
  %sub146 = sub i32 %77, %78
  %cmp147 = icmp eq i32 %sub146, 1
  br i1 %cmp147, label %if.then.149, label %if.end.158

if.then.149:                                      ; preds = %while.end.145
  %79 = load i32, i32* %i, align 4
  %inc150 = add i32 %79, 1
  store i32 %inc150, i32* %i, align 4
  %idxprom151 = sext i32 %79 to i64
  %80 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child152 = getelementptr inbounds %struct._node, %struct._node* %80, i32 0, i32 5
  %81 = load %struct._node*, %struct._node** %n_child152, align 8
  %arrayidx153 = getelementptr %struct._node, %struct._node* %81, i64 %idxprom151
  %call154 = call i32 @validate_terminal(%struct._node* %arrayidx153, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  store i32 %call154, i32* %res, align 4
  %82 = load i32, i32* %res, align 4
  %tobool155 = icmp ne i32 %82, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %if.then.149
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.then.149
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %while.end.145
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.120
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.99
  %83 = load i32, i32* %nch, align 4
  %84 = load i32, i32* %i, align 4
  %sub161 = sub i32 %83, %84
  %cmp162 = icmp sgt i32 %sub161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.160
  call void @err_string(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.165:                                       ; preds = %if.end.160
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.165, %if.then.164, %if.then.156, %if.then.143, %if.then.119, %if.then.96, %if.then.84, %if.then.49, %if.then.29, %if.then.6, %if.then.1, %if.then
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_yield_arg(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 337)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load i32, i32* %nch, align 4
  %sub = sub i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 %idxprom
  %call1 = call i32 @validate_testlist(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %8, i64 0
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.5
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.5
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %10, i64 1
  %call14 = call i32 @validate_test(%struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.17, %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.16, %if.then.10, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_test_or_star_expr(%struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 302
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @validate_test(%struct._node* %2)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %call2 = call i32 @validate_star_expr(%struct._node* %3)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comp_for(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 4
  %call = call i32 @validate_comp_iter(%struct._node* %arrayidx)
  store i32 %call, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %5, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0))
  store i32 %call1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end.20

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %8, i64 0
  %call5 = call i32 @validate_terminal(%struct._node* %arrayidx4, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then.2
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %10, i64 1
  %call9 = call i32 @validate_exprlist(%struct._node* %arrayidx8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %12, i64 2
  %call14 = call i32 @validate_terminal(%struct._node* %arrayidx13, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.11
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %14, i64 3
  %call18 = call i32 @validate_or_test(%struct._node* %arrayidx17)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.11, %land.lhs.true, %if.then.2
  %15 = phi i1 [ false, %land.lhs.true.11 ], [ false, %land.lhs.true ], [ false, %if.then.2 ], [ %tobool19, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %land.end, %if.end
  %16 = load i32, i32* %res, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_star_expr(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 311)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %res, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %3, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call5 = call i32 @validate_ntype(%struct._node* %arrayidx, i32 16)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.4
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %7, i64 1
  %call9 = call i32 @validate_expr(%struct._node* %arrayidx8)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.4
  %8 = phi i1 [ false, %if.end.4 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comp_iter(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 332)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %1, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 333
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %8, i64 0
  %call7 = call i32 @validate_comp_for(%struct._node* %arrayidx6)
  store i32 %call7, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %land.end
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %10, i64 0
  %call10 = call i32 @validate_comp_if(%struct._node* %arrayidx9)
  store i32 %call10, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %res, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_exprlist(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_repeating_list(%struct._node* %0, i32 326, i32 (%struct._node*)* @validate_expr_or_star_expr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_comp_if(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 2
  %call = call i32 @validate_comp_iter(%struct._node* %arrayidx)
  store i32 %call, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %5, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call1, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %8, i64 0
  %call5 = call i32 @validate_terminal(%struct._node* %arrayidx4, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.2
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %10, i64 1
  %call9 = call i32 @validate_test_nocond(%struct._node* %arrayidx8)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.2
  %11 = phi i1 [ false, %if.then.2 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %land.end, %if.end
  %12 = load i32, i32* %res, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_test_nocond(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 303)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %8 = load i16, i16* %n_type, align 2
  %conv = sext i16 %8 to i32
  %cmp2 = icmp eq i32 %conv, 305
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %10, i64 0
  %call6 = call i32 @validate_lambdef_nocond(%struct._node* %arrayidx5)
  store i32 %call6, i32* %res, align 4
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %land.end
  %11 = load i32, i32* %res, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %13, i64 0
  %call11 = call i32 @validate_or_test(%struct._node* %arrayidx10)
  store i32 %call11, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %14 = load i32, i32* %res, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_lambdef_nocond(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 305)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 4
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %7 = load i32, i32* %nch, align 4
  %sub = sub i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %10 = load i32, i32* %nch, align 4
  %sub10 = sub i32 %10, 1
  %idxprom11 = sext i32 %sub10 to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom11
  %call14 = call i32 @validate_test(%struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true.2, %lor.lhs.false, %entry
  %13 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.end
  %15 = load i32, i32* %nch, align 4
  %cmp18 = icmp eq i32 %15, 4
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.17
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call21 = call i32 @validate_varargslist(%struct._node* %arrayidx20)
  store i32 %call21, i32* %res, align 4
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true.17, %land.end
  %18 = load i32, i32* %res, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.end, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.else
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool25 = icmp ne %struct._object* %call24, null
  br i1 %tobool25, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call27 = call i32 @validate_numnodes(%struct._node* %19, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.26, %land.lhs.true.23, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %res, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_expr_or_star_expr(%struct._node* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 312
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i32 @validate_expr(%struct._node* %2)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._node*, %struct._node** %n.addr, align 8
  %call2 = call i32 @validate_star_expr(%struct._node* %3)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_arglist(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  %ch = alloca %struct._node*, align 8
  %sym = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %ok, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %4 = load i32, i32* %nch, align 4
  %add = add i32 %4, 1
  %call = call i32 @validate_numnodes(%struct._node* %3, i32 %add, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %nch, align 4
  %cmp1 = icmp sgt i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.end.22

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nch, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %11 = load i16, i16* %n_type, align 2
  %conv = sext i16 %11 to i32
  %cmp4 = icmp eq i32 %conv, 331
  br i1 %cmp4, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %14, i64 %idxprom7
  store %struct._node* %arrayidx9, %struct._node** %ch, align 8
  %15 = load %struct._node*, %struct._node** %ch, align 8
  %n_nchildren10 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4
  %16 = load i32, i32* %n_nchildren10, align 4
  %cmp11 = icmp eq i32 %16, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.6
  %17 = load %struct._node*, %struct._node** %ch, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %18, i64 1
  %n_type15 = getelementptr inbounds %struct._node, %struct._node* %arrayidx14, i32 0, i32 0
  %19 = load i16, i16* %n_type15, align 2
  %conv16 = sext i16 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 333
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  call void @err_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.121, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.then.6
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end.22
  %21 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i32, i32* %nch, align 4
  %23 = load i32, i32* %i, align 4
  %sub = sub i32 %22, %23
  %cmp23 = icmp sge i32 %sub, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp23, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child26 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child26, align 8
  %arrayidx27 = getelementptr %struct._node, %struct._node* %27, i64 %idxprom25
  %call28 = call i32 @validate_argument(%struct._node* %arrayidx27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.rhs.30, label %land.end.37

land.rhs.30:                                      ; preds = %while.body
  %28 = load i32, i32* %i, align 4
  %add31 = add i32 %28, 1
  %idxprom32 = sext i32 %add31 to i64
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %30, i64 %idxprom32
  %call35 = call i32 @validate_terminal(%struct._node* %arrayidx34, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.30, %while.body
  %31 = phi i1 [ false, %while.body ], [ %tobool36, %land.rhs.30 ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %ok, align 4
  %32 = load i32, i32* %ok, align 4
  %tobool38 = icmp ne i32 %32, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.end.37
  %33 = load i32, i32* %i, align 4
  %add40 = add i32 %33, 2
  store i32 %add40, i32* %i, align 4
  br label %if.end.41

if.else:                                          ; preds = %land.end.37
  call void @PyErr_Clear()
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.39
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 1, i32* %ok, align 4
  %34 = load i32, i32* %nch, align 4
  %35 = load i32, i32* %i, align 4
  %sub42 = sub i32 %34, %35
  %cmp43 = icmp sgt i32 %sub42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.151

if.then.45:                                       ; preds = %while.end
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child47 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 5
  %38 = load %struct._node*, %struct._node** %n_child47, align 8
  %arrayidx48 = getelementptr %struct._node, %struct._node* %38, i64 %idxprom46
  %n_type49 = getelementptr inbounds %struct._node, %struct._node* %arrayidx48, i32 0, i32 0
  %39 = load i16, i16* %n_type49, align 2
  %conv50 = sext i16 %39 to i32
  store i32 %conv50, i32* %sym, align 4
  %40 = load i32, i32* %sym, align 4
  %cmp51 = icmp eq i32 %40, 331
  br i1 %cmp51, label %if.then.53, label %if.else.65

if.then.53:                                       ; preds = %if.then.45
  %41 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %41 to i64
  %42 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child55 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child55, align 8
  %arrayidx56 = getelementptr %struct._node, %struct._node* %43, i64 %idxprom54
  %call57 = call i32 @validate_argument(%struct._node* %arrayidx56)
  store i32 %call57, i32* %ok, align 4
  %44 = load i32, i32* %ok, align 4
  %tobool58 = icmp ne i32 %44, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %if.then.53
  %45 = load i32, i32* %i, align 4
  %add60 = add i32 %45, 1
  %46 = load i32, i32* %nch, align 4
  %cmp61 = icmp ne i32 %add60, %46
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.59
  call void @err_string(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.122, i32 0, i32 0))
  store i32 0, i32* %ok, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.59, %if.then.53
  br label %if.end.150

if.else.65:                                       ; preds = %if.then.45
  %47 = load i32, i32* %sym, align 4
  %cmp66 = icmp eq i32 %47, 16
  br i1 %cmp66, label %if.then.68, label %if.else.123

if.then.68:                                       ; preds = %if.else.65
  %48 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %48 to i64
  %49 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child70 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child70, align 8
  %arrayidx71 = getelementptr %struct._node, %struct._node* %50, i64 %idxprom69
  %call72 = call i32 @validate_terminal(%struct._node* %arrayidx71, i32 16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0))
  store i32 %call72, i32* %ok, align 4
  %51 = load i32, i32* %ok, align 4
  %tobool73 = icmp ne i32 %51, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.84

land.lhs.true.74:                                 ; preds = %if.then.68
  %52 = load i32, i32* %nch, align 4
  %53 = load i32, i32* %i, align 4
  %sub75 = sub i32 %52, %53
  %cmp76 = icmp eq i32 %sub75, 2
  br i1 %cmp76, label %if.then.78, label %if.else.84

if.then.78:                                       ; preds = %land.lhs.true.74
  %54 = load i32, i32* %i, align 4
  %add79 = add i32 %54, 1
  %idxprom80 = sext i32 %add79 to i64
  %55 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child81 = getelementptr inbounds %struct._node, %struct._node* %55, i32 0, i32 5
  %56 = load %struct._node*, %struct._node** %n_child81, align 8
  %arrayidx82 = getelementptr %struct._node, %struct._node* %56, i64 %idxprom80
  %call83 = call i32 @validate_test(%struct._node* %arrayidx82)
  store i32 %call83, i32* %ok, align 4
  br label %if.end.122

if.else.84:                                       ; preds = %land.lhs.true.74, %if.then.68
  %57 = load i32, i32* %ok, align 4
  %tobool85 = icmp ne i32 %57, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.120

land.lhs.true.86:                                 ; preds = %if.else.84
  %58 = load i32, i32* %nch, align 4
  %59 = load i32, i32* %i, align 4
  %sub87 = sub i32 %58, %59
  %cmp88 = icmp eq i32 %sub87, 5
  br i1 %cmp88, label %if.then.90, label %if.else.120

if.then.90:                                       ; preds = %land.lhs.true.86
  %60 = load i32, i32* %i, align 4
  %add91 = add i32 %60, 1
  %idxprom92 = sext i32 %add91 to i64
  %61 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child93 = getelementptr inbounds %struct._node, %struct._node* %61, i32 0, i32 5
  %62 = load %struct._node*, %struct._node** %n_child93, align 8
  %arrayidx94 = getelementptr %struct._node, %struct._node* %62, i64 %idxprom92
  %call95 = call i32 @validate_test(%struct._node* %arrayidx94)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %land.lhs.true.97, label %land.end.118

land.lhs.true.97:                                 ; preds = %if.then.90
  %63 = load i32, i32* %i, align 4
  %add98 = add i32 %63, 2
  %idxprom99 = sext i32 %add98 to i64
  %64 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child100 = getelementptr inbounds %struct._node, %struct._node* %64, i32 0, i32 5
  %65 = load %struct._node*, %struct._node** %n_child100, align 8
  %arrayidx101 = getelementptr %struct._node, %struct._node* %65, i64 %idxprom99
  %call102 = call i32 @validate_terminal(%struct._node* %arrayidx101, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %land.lhs.true.104, label %land.end.118

land.lhs.true.104:                                ; preds = %land.lhs.true.97
  %66 = load i32, i32* %i, align 4
  %add105 = add i32 %66, 3
  %idxprom106 = sext i32 %add105 to i64
  %67 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child107 = getelementptr inbounds %struct._node, %struct._node* %67, i32 0, i32 5
  %68 = load %struct._node*, %struct._node** %n_child107, align 8
  %arrayidx108 = getelementptr %struct._node, %struct._node* %68, i64 %idxprom106
  %call109 = call i32 @validate_terminal(%struct._node* %arrayidx108, i32 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %land.rhs.111, label %land.end.118

land.rhs.111:                                     ; preds = %land.lhs.true.104
  %69 = load i32, i32* %i, align 4
  %add112 = add i32 %69, 4
  %idxprom113 = sext i32 %add112 to i64
  %70 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child114 = getelementptr inbounds %struct._node, %struct._node* %70, i32 0, i32 5
  %71 = load %struct._node*, %struct._node** %n_child114, align 8
  %arrayidx115 = getelementptr %struct._node, %struct._node* %71, i64 %idxprom113
  %call116 = call i32 @validate_test(%struct._node* %arrayidx115)
  %tobool117 = icmp ne i32 %call116, 0
  br label %land.end.118

land.end.118:                                     ; preds = %land.rhs.111, %land.lhs.true.104, %land.lhs.true.97, %if.then.90
  %72 = phi i1 [ false, %land.lhs.true.104 ], [ false, %land.lhs.true.97 ], [ false, %if.then.90 ], [ %tobool117, %land.rhs.111 ]
  %land.ext119 = zext i1 %72 to i32
  store i32 %land.ext119, i32* %ok, align 4
  br label %if.end.121

if.else.120:                                      ; preds = %land.lhs.true.86, %if.else.84
  call void @err_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.123, i32 0, i32 0))
  store i32 0, i32* %ok, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %land.end.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.78
  br label %if.end.149

if.else.123:                                      ; preds = %if.else.65
  %73 = load i32, i32* %sym, align 4
  %cmp124 = icmp eq i32 %73, 35
  br i1 %cmp124, label %if.then.126, label %if.else.147

if.then.126:                                      ; preds = %if.else.123
  %74 = load i32, i32* %nch, align 4
  %75 = load i32, i32* %i, align 4
  %sub127 = sub i32 %74, %75
  %cmp128 = icmp eq i32 %sub127, 2
  br i1 %cmp128, label %if.then.130, label %if.else.145

if.then.130:                                      ; preds = %if.then.126
  %76 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %76 to i64
  %77 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child132 = getelementptr inbounds %struct._node, %struct._node* %77, i32 0, i32 5
  %78 = load %struct._node*, %struct._node** %n_child132, align 8
  %arrayidx133 = getelementptr %struct._node, %struct._node* %78, i64 %idxprom131
  %call134 = call i32 @validate_terminal(%struct._node* %arrayidx133, i32 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %land.rhs.136, label %land.end.143

land.rhs.136:                                     ; preds = %if.then.130
  %79 = load i32, i32* %i, align 4
  %add137 = add i32 %79, 1
  %idxprom138 = sext i32 %add137 to i64
  %80 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child139 = getelementptr inbounds %struct._node, %struct._node* %80, i32 0, i32 5
  %81 = load %struct._node*, %struct._node** %n_child139, align 8
  %arrayidx140 = getelementptr %struct._node, %struct._node* %81, i64 %idxprom138
  %call141 = call i32 @validate_test(%struct._node* %arrayidx140)
  %tobool142 = icmp ne i32 %call141, 0
  br label %land.end.143

land.end.143:                                     ; preds = %land.rhs.136, %if.then.130
  %82 = phi i1 [ false, %if.then.130 ], [ %tobool142, %land.rhs.136 ]
  %land.ext144 = zext i1 %82 to i32
  store i32 %land.ext144, i32* %ok, align 4
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.126
  call void @err_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i32 0, i32 0))
  store i32 0, i32* %ok, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %land.end.143
  br label %if.end.148

if.else.147:                                      ; preds = %if.else.123
  call void @err_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.125, i32 0, i32 0))
  store i32 0, i32* %ok, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.147, %if.end.146
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.122
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.64
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %while.end
  %83 = load i32, i32* %ok, align 4
  store i32 %83, i32* %retval
  br label %return

return:                                           ; preds = %if.end.151, %if.then.19, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_subscriptlist(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_repeating_list(%struct._node* %0, i32 323, i32 (%struct._node*)* @validate_subscript, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_argument(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 331)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %nch, align 4
  %cmp2 = icmp eq i32 %5, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %7 = phi i1 [ false, %entry ], [ %6, %lor.end ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 0
  %call4 = call i32 @validate_test(%struct._node* %arrayidx)
  store i32 %call4, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %11 = load i32, i32* %res, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %nch, align 4
  %cmp6 = icmp eq i32 %12, 2
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %14, i64 1
  %call10 = call i32 @validate_comp_for(%struct._node* %arrayidx9)
  store i32 %call10, i32* %res, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.end
  %15 = load i32, i32* %res, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.26

land.lhs.true.12:                                 ; preds = %if.else
  %16 = load i32, i32* %nch, align 4
  %cmp13 = icmp eq i32 %16, 3
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %18, i64 1
  %call17 = call i32 @validate_terminal(%struct._node* %arrayidx16, i32 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.24

land.rhs.19:                                      ; preds = %if.then.14
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child20 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child20, align 8
  %arrayidx21 = getelementptr %struct._node, %struct._node* %20, i64 2
  %call22 = call i32 @validate_test(%struct._node* %arrayidx21)
  %tobool23 = icmp ne i32 %call22, 0
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.19, %if.then.14
  %21 = phi i1 [ false, %if.then.14 ], [ %tobool23, %land.rhs.19 ]
  %land.ext25 = zext i1 %21 to i32
  store i32 %land.ext25, i32* %res, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %land.end.24, %land.lhs.true.12, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.7
  %22 = load i32, i32* %res, align 4
  ret i32 %22
}

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal i32 @validate_subscript(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %offset = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %rem = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 0, i32* %offset, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 324)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp sle i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end.6, label %if.then

if.then:                                          ; preds = %land.end
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool4 = icmp ne %struct._object* %call3, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  call void @err_string(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.127, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %8, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %9 = load i16, i16* %n_type, align 2
  %conv = sext i16 %9 to i32
  %cmp7 = icmp eq i32 %conv, 23
  br i1 %cmp7, label %if.then.9, label %if.end.29

if.then.9:                                        ; preds = %if.end.6
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call10 = call i32 @validate_numnodes(%struct._node* %10, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %land.end.27

land.lhs.true.12:                                 ; preds = %if.then.9
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %12, i64 0
  %call15 = call i32 @validate_terminal(%struct._node* %arrayidx14, i32 23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %land.end.27

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %14, i64 1
  %call20 = call i32 @validate_terminal(%struct._node* %arrayidx19, i32 23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.27

land.rhs.22:                                      ; preds = %land.lhs.true.17
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %16, i64 2
  %call25 = call i32 @validate_terminal(%struct._node* %arrayidx24, i32 23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.22, %land.lhs.true.17, %land.lhs.true.12, %if.then.9
  %17 = phi i1 [ false, %land.lhs.true.17 ], [ false, %land.lhs.true.12 ], [ false, %if.then.9 ], [ %tobool26, %land.rhs.22 ]
  %land.ext28 = zext i1 %17 to i32
  store i32 %land.ext28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.6
  %18 = load i32, i32* %nch, align 4
  %cmp30 = icmp eq i32 %18, 1
  br i1 %cmp30, label %if.then.32, label %if.end.47

if.then.32:                                       ; preds = %if.end.29
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %20, i64 0
  %n_type35 = getelementptr inbounds %struct._node, %struct._node* %arrayidx34, i32 0, i32 0
  %21 = load i16, i16* %n_type35, align 2
  %conv36 = sext i16 %21 to i32
  %cmp37 = icmp eq i32 %conv36, 302
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.32
  %22 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child40 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child40, align 8
  %arrayidx41 = getelementptr %struct._node, %struct._node* %23, i64 0
  %call42 = call i32 @validate_test(%struct._node* %arrayidx41)
  store i32 %call42, i32* %res, align 4
  br label %if.end.46

if.else:                                          ; preds = %if.then.32
  %24 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child43 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child43, align 8
  %arrayidx44 = getelementptr %struct._node, %struct._node* %25, i64 0
  %call45 = call i32 @validate_terminal(%struct._node* %arrayidx44, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  store i32 %call45, i32* %res, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.39
  %26 = load i32, i32* %res, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.29
  %27 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child48 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  %28 = load %struct._node*, %struct._node** %n_child48, align 8
  %arrayidx49 = getelementptr %struct._node, %struct._node* %28, i64 0
  %n_type50 = getelementptr inbounds %struct._node, %struct._node* %arrayidx49, i32 0, i32 0
  %29 = load i16, i16* %n_type50, align 2
  %conv51 = sext i16 %29 to i32
  %cmp52 = icmp ne i32 %conv51, 11
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %30 = load i32, i32* %nch, align 4
  %cmp54 = icmp eq i32 %30, 4
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %lor.lhs.false, %if.end.47
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child57, align 8
  %arrayidx58 = getelementptr %struct._node, %struct._node* %32, i64 0
  %call59 = call i32 @validate_test(%struct._node* %arrayidx58)
  store i32 %call59, i32* %res, align 4
  store i32 1, i32* %offset, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %lor.lhs.false
  %33 = load i32, i32* %res, align 4
  %tobool61 = icmp ne i32 %33, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.60
  %34 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %35, i32 0, i32 5
  %36 = load %struct._node*, %struct._node** %n_child63, align 8
  %arrayidx64 = getelementptr %struct._node, %struct._node* %36, i64 %idxprom
  %call65 = call i32 @validate_terminal(%struct._node* %arrayidx64, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  store i32 %call65, i32* %res, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.60
  %37 = load i32, i32* %res, align 4
  %tobool67 = icmp ne i32 %37, 0
  br i1 %tobool67, label %if.then.68, label %if.end.95

if.then.68:                                       ; preds = %if.end.66
  %38 = load i32, i32* %nch, align 4
  %39 = load i32, i32* %offset, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* %offset, align 4
  %sub = sub i32 %38, %inc
  store i32 %sub, i32* %rem, align 4
  %40 = load i32, i32* %rem, align 4
  %tobool69 = icmp ne i32 %40, 0
  br i1 %tobool69, label %if.then.70, label %if.end.94

if.then.70:                                       ; preds = %if.then.68
  %41 = load i32, i32* %offset, align 4
  %idxprom71 = sext i32 %41 to i64
  %42 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child72 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child72, align 8
  %arrayidx73 = getelementptr %struct._node, %struct._node* %43, i64 %idxprom71
  %n_type74 = getelementptr inbounds %struct._node, %struct._node* %arrayidx73, i32 0, i32 0
  %44 = load i16, i16* %n_type74, align 2
  %conv75 = sext i16 %44 to i32
  %cmp76 = icmp eq i32 %conv75, 302
  br i1 %cmp76, label %if.then.78, label %if.end.84

if.then.78:                                       ; preds = %if.then.70
  %45 = load i32, i32* %offset, align 4
  %idxprom79 = sext i32 %45 to i64
  %46 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child80 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 5
  %47 = load %struct._node*, %struct._node** %n_child80, align 8
  %arrayidx81 = getelementptr %struct._node, %struct._node* %47, i64 %idxprom79
  %call82 = call i32 @validate_test(%struct._node* %arrayidx81)
  store i32 %call82, i32* %res, align 4
  %48 = load i32, i32* %offset, align 4
  %inc83 = add i32 %48, 1
  store i32 %inc83, i32* %offset, align 4
  %49 = load i32, i32* %rem, align 4
  %dec = add i32 %49, -1
  store i32 %dec, i32* %rem, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.78, %if.then.70
  %50 = load i32, i32* %res, align 4
  %tobool85 = icmp ne i32 %50, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.93

land.lhs.true.86:                                 ; preds = %if.end.84
  %51 = load i32, i32* %rem, align 4
  %tobool87 = icmp ne i32 %51, 0
  br i1 %tobool87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %land.lhs.true.86
  %52 = load i32, i32* %offset, align 4
  %idxprom89 = sext i32 %52 to i64
  %53 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child90 = getelementptr inbounds %struct._node, %struct._node* %53, i32 0, i32 5
  %54 = load %struct._node*, %struct._node** %n_child90, align 8
  %arrayidx91 = getelementptr %struct._node, %struct._node* %54, i64 %idxprom89
  %call92 = call i32 @validate_sliceop(%struct._node* %arrayidx91)
  store i32 %call92, i32* %res, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.84
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.68
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.66
  %55 = load i32, i32* %res, align 4
  store i32 %55, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.end.46, %land.end.27, %if.end
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_sliceop(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_numnodes(%struct._node* %3, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_ntype(%struct._node* %4, i32 325)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %5 = phi i1 [ false, %lor.lhs.false ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call6 = call i32 @validate_numnodes(%struct._node* %7, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0))
  store i32 %call6, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %8 = load i32, i32* %res, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 0
  %call9 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  store i32 %call9, i32* %res, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %11 = load i32, i32* %res, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %if.end.10
  %12 = load i32, i32* %nch, align 4
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true.12
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %14, i64 1
  %call17 = call i32 @validate_test(%struct._node* %arrayidx16)
  store i32 %call17, i32* %res, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true.12, %if.end.10
  %15 = load i32, i32* %res, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 268)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %1, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.end
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  store %struct._node* %arrayidx, %struct._node** %tree.addr, align 8
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  %cmp = icmp eq i32 %conv, 269
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call6 = call i32 @validate_simple_stmt(%struct._node* %8)
  store i32 %call6, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call7 = call i32 @validate_compound_stmt(%struct._node* %9)
  store i32 %call7, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.end
  %10 = load i32, i32* %res, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_simple_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 269)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 2
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call2 = call i32 @validate_small_stmt(%struct._node* %arrayidx)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.1
  %6 = load i32, i32* %nch, align 4
  %sub = sub i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %8, i64 %idxprom
  %call6 = call i32 @validate_terminal(%struct._node* %arrayidx5, i32 4, i8* null)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1, %land.lhs.true, %entry
  %9 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %res, align 4
  %10 = load i32, i32* %nch, align 4
  %cmp8 = icmp slt i32 %10, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call9 = call i32 @validate_numnodes(%struct._node* %11, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.138, i32 0, i32 0))
  store i32 %call9, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %12 = load i32, i32* %nch, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %nch, align 4
  %13 = load i32, i32* %res, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %if.end
  %14 = load i32, i32* %nch, align 4
  %and = and i32 %14, 1
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true.11
  %15 = load i32, i32* %nch, align 4
  %dec14 = add i32 %15, -1
  store i32 %dec14, i32* %nch, align 4
  %idxprom15 = sext i32 %dec14 to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom15
  %call18 = call i32 @validate_terminal(%struct._node* %arrayidx17, i32 13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0))
  store i32 %call18, i32* %res, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.end
  %18 = load i32, i32* %res, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.43

land.lhs.true.21:                                 ; preds = %if.end.19
  %19 = load i32, i32* %nch, align 4
  %cmp22 = icmp sgt i32 %19, 2
  br i1 %cmp22, label %if.then.23, label %if.end.43

if.then.23:                                       ; preds = %land.lhs.true.21
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %20 = load i32, i32* %res, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %land.rhs.25, label %land.end.27

land.rhs.25:                                      ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nch, align 4
  %cmp26 = icmp slt i32 %21, %22
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.25, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp26, %land.rhs.25 ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.27
  %24 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child30 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child30, align 8
  %arrayidx31 = getelementptr %struct._node, %struct._node* %26, i64 %idxprom29
  %call32 = call i32 @validate_terminal(%struct._node* %arrayidx31, i32 13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.rhs.34, label %land.end.40

land.rhs.34:                                      ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %add = add i32 %27, 1
  %idxprom35 = sext i32 %add to i64
  %28 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child36 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 5
  %29 = load %struct._node*, %struct._node** %n_child36, align 8
  %arrayidx37 = getelementptr %struct._node, %struct._node* %29, i64 %idxprom35
  %call38 = call i32 @validate_small_stmt(%struct._node* %arrayidx37)
  %tobool39 = icmp ne i32 %call38, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.34, %for.body
  %30 = phi i1 [ false, %for.body ], [ %tobool39, %land.rhs.34 ]
  %land.ext41 = zext i1 %30 to i32
  store i32 %land.ext41, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.40
  %31 = load i32, i32* %i, align 4
  %add42 = add i32 %31, 2
  store i32 %add42, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.27
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %land.lhs.true.21, %if.end.19
  %32 = load i32, i32* %res, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_compound_stmt(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %res = alloca i32, align 4
  %ntype = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 293)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %1, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.199, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.end
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  store %struct._node* %arrayidx, %struct._node** %tree.addr, align 8
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 0
  %7 = load i16, i16* %n_type, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %ntype, align 4
  %8 = load i32, i32* %ntype, align 4
  %cmp = icmp eq i32 %8, 294
  br i1 %cmp, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %ntype, align 4
  %cmp5 = icmp eq i32 %9, 295
  br i1 %cmp5, label %if.then.25, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %ntype, align 4
  %cmp8 = icmp eq i32 %10, 296
  br i1 %cmp8, label %if.then.25, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %11 = load i32, i32* %ntype, align 4
  %cmp11 = icmp eq i32 %11, 297
  br i1 %cmp11, label %if.then.25, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %ntype, align 4
  %cmp14 = icmp eq i32 %12, 298
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %13 = load i32, i32* %ntype, align 4
  %cmp17 = icmp eq i32 %13, 262
  br i1 %cmp17, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %14 = load i32, i32* %ntype, align 4
  %cmp20 = icmp eq i32 %14, 329
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %15 = load i32, i32* %ntype, align 4
  %cmp23 = icmp eq i32 %15, 261
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %if.end
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call26 = call i32 @validate_node(%struct._node* %16)
  store i32 %call26, i32* %res, align 4
  br label %if.end.30

if.else:                                          ; preds = %lor.lhs.false.22
  store i32 0, i32* %res, align 4
  %17 = load %struct._object*, %struct._object** @parser_error, align 8
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type27 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 0
  %19 = load i16, i16* %n_type27, align 2
  %conv28 = sext i16 %19 to i32
  %call29 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.200, i32 0, i32 0), i32 %conv28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.25
  %20 = load i32, i32* %res, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_small_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %ntype = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_numnodes(%struct._node* %2, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0))
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %ntype, align 4
  %7 = load i32, i32* %ntype, align 4
  %cmp = icmp eq i32 %7, 271
  br i1 %cmp, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %ntype, align 4
  %cmp2 = icmp eq i32 %8, 274
  br i1 %cmp2, label %if.then.22, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %ntype, align 4
  %cmp5 = icmp eq i32 %9, 275
  br i1 %cmp5, label %if.then.22, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %10 = load i32, i32* %ntype, align 4
  %cmp8 = icmp eq i32 %10, 276
  br i1 %cmp8, label %if.then.22, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %11 = load i32, i32* %ntype, align 4
  %cmp11 = icmp eq i32 %11, 282
  br i1 %cmp11, label %if.then.22, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %ntype, align 4
  %cmp14 = icmp eq i32 %12, 290
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %13 = load i32, i32* %ntype, align 4
  %cmp17 = icmp eq i32 %13, 291
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %14 = load i32, i32* %ntype, align 4
  %cmp20 = icmp eq i32 %14, 292
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %if.then
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %16, i64 0
  %call25 = call i32 @validate_node(%struct._node* %arrayidx24)
  store i32 %call25, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.19
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  br label %if.end.36

if.else.26:                                       ; preds = %entry
  %17 = load i32, i32* %nch, align 4
  %cmp27 = icmp eq i32 %17, 1
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.else.26
  store i32 0, i32* %res, align 4
  %18 = load %struct._object*, %struct._object** @parser_error, align 8
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child30 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child30, align 8
  %arrayidx31 = getelementptr %struct._node, %struct._node* %20, i64 0
  %n_type32 = getelementptr inbounds %struct._node, %struct._node* %arrayidx31, i32 0, i32 0
  %21 = load i16, i16* %n_type32, align 2
  %conv33 = sext i16 %21 to i32
  %call34 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.142, i32 0, i32 0), i32 %conv33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.else.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  %22 = load i32, i32* %res, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_node(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %next = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 0, i32* %nch, align 4
  store i32 1, i32* %res, align 4
  store %struct._node* null, %struct._node** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %cmp = icmp ne %struct._node* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 4
  %4 = load i32, i32* %n_nchildren, align 4
  store i32 %4, i32* %nch, align 4
  store %struct._node* null, %struct._node** %next, align 8
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 262, label %sw.bb
    i32 298, label %sw.bb.1
    i32 329, label %sw.bb.3
    i32 261, label %sw.bb.5
    i32 268, label %sw.bb.7
    i32 270, label %sw.bb.9
    i32 276, label %sw.bb.11
    i32 280, label %sw.bb.53
    i32 269, label %sw.bb.55
    i32 293, label %sw.bb.57
    i32 271, label %sw.bb.59
    i32 274, label %sw.bb.61
    i32 275, label %sw.bb.63
    i32 277, label %sw.bb.73
    i32 278, label %sw.bb.83
    i32 279, label %sw.bb.93
    i32 281, label %sw.bb.95
    i32 282, label %sw.bb.97
    i32 283, label %sw.bb.99
    i32 284, label %sw.bb.101
    i32 290, label %sw.bb.103
    i32 291, label %sw.bb.105
    i32 292, label %sw.bb.107
    i32 294, label %sw.bb.109
    i32 295, label %sw.bb.111
    i32 296, label %sw.bb.113
    i32 297, label %sw.bb.115
    i32 301, label %sw.bb.117
    i32 327, label %sw.bb.119
    i32 336, label %sw.bb.121
    i32 302, label %sw.bb.123
    i32 307, label %sw.bb.125
    i32 308, label %sw.bb.127
    i32 309, label %sw.bb.129
    i32 326, label %sw.bb.131
    i32 310, label %sw.bb.133
    i32 312, label %sw.bb.135
    i32 313, label %sw.bb.137
    i32 314, label %sw.bb.139
    i32 315, label %sw.bb.141
    i32 316, label %sw.bb.143
    i32 317, label %sw.bb.145
    i32 318, label %sw.bb.147
    i32 319, label %sw.bb.149
    i32 320, label %sw.bb.151
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_funcdef(%struct._node* %7)
  store i32 %call, i32* %res, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call2 = call i32 @validate_with_stmt(%struct._node* %8)
  store i32 %call2, i32* %res, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call4 = call i32 @validate_class(%struct._node* %9)
  store i32 %call4, i32* %res, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call6 = call i32 @validate_decorated(%struct._node* %10)
  store i32 %call6, i32* %res, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call8 = call i32 @validate_stmt(%struct._node* %11)
  store i32 %call8, i32* %res, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call10 = call i32 @validate_small_stmt(%struct._node* %12)
  store i32 %call10, i32* %res, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call12 = call i32 @validate_numnodes(%struct._node* %13, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.rhs.14, label %land.end.45

land.rhs.14:                                      ; preds = %sw.bb.11
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %15, i64 0
  %n_type15 = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %16 = load i16, i16* %n_type15, align 2
  %conv16 = sext i16 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 277
  br i1 %cmp17, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs.14
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %18, i64 0
  %n_type21 = getelementptr inbounds %struct._node, %struct._node* %arrayidx20, i32 0, i32 0
  %19 = load i16, i16* %n_type21, align 2
  %conv22 = sext i16 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 278
  br i1 %cmp23, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child26 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child26, align 8
  %arrayidx27 = getelementptr %struct._node, %struct._node* %21, i64 0
  %n_type28 = getelementptr inbounds %struct._node, %struct._node* %arrayidx27, i32 0, i32 0
  %22 = load i16, i16* %n_type28, align 2
  %conv29 = sext i16 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 280
  br i1 %cmp30, label %lor.end, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.25
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %24, i64 0
  %n_type35 = getelementptr inbounds %struct._node, %struct._node* %arrayidx34, i32 0, i32 0
  %25 = load i16, i16* %n_type35, align 2
  %conv36 = sext i16 %25 to i32
  %cmp37 = icmp eq i32 %conv36, 279
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.32
  %26 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child39 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child39, align 8
  %arrayidx40 = getelementptr %struct._node, %struct._node* %27, i64 0
  %n_type41 = getelementptr inbounds %struct._node, %struct._node* %arrayidx40, i32 0, i32 0
  %28 = load i16, i16* %n_type41, align 2
  %conv42 = sext i16 %28 to i32
  %cmp43 = icmp eq i32 %conv42, 281
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.32, %lor.lhs.false.25, %lor.lhs.false, %land.rhs.14
  %29 = phi i1 [ true, %lor.lhs.false.32 ], [ true, %lor.lhs.false.25 ], [ true, %lor.lhs.false ], [ true, %land.rhs.14 ], [ %cmp43, %lor.rhs ]
  br label %land.end.45

land.end.45:                                      ; preds = %lor.end, %sw.bb.11
  %30 = phi i1 [ false, %sw.bb.11 ], [ %29, %lor.end ]
  %land.ext = zext i1 %30 to i32
  store i32 %land.ext, i32* %res, align 4
  %31 = load i32, i32* %res, align 4
  %tobool46 = icmp ne i32 %31, 0
  br i1 %tobool46, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.45
  %32 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child47 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child47, align 8
  %arrayidx48 = getelementptr %struct._node, %struct._node* %33, i64 0
  store %struct._node* %arrayidx48, %struct._node** %next, align 8
  br label %if.end.52

if.else:                                          ; preds = %land.end.45
  %34 = load i32, i32* %nch, align 4
  %cmp49 = icmp eq i32 %34, 1
  br i1 %cmp49, label %if.then.51, label %if.end

if.then.51:                                       ; preds = %if.else
  call void @err_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.144, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.51, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.body
  %35 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call54 = call i32 @validate_yield_stmt(%struct._node* %35)
  store i32 %call54, i32* %res, align 4
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.body
  %36 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call56 = call i32 @validate_simple_stmt(%struct._node* %36)
  store i32 %call56, i32* %res, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %while.body
  %37 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call58 = call i32 @validate_compound_stmt(%struct._node* %37)
  store i32 %call58, i32* %res, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %while.body
  %38 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call60 = call i32 @validate_expr_stmt(%struct._node* %38)
  store i32 %call60, i32* %res, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %while.body
  %39 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call62 = call i32 @validate_del_stmt(%struct._node* %39)
  store i32 %call62, i32* %res, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %while.body
  %40 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call64 = call i32 @validate_numnodes(%struct._node* %40, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0))
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.rhs.66, label %land.end.71

land.rhs.66:                                      ; preds = %sw.bb.63
  %41 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child67 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child67, align 8
  %arrayidx68 = getelementptr %struct._node, %struct._node* %42, i64 0
  %call69 = call i32 @validate_terminal(%struct._node* %arrayidx68, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0))
  %tobool70 = icmp ne i32 %call69, 0
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.66, %sw.bb.63
  %43 = phi i1 [ false, %sw.bb.63 ], [ %tobool70, %land.rhs.66 ]
  %land.ext72 = zext i1 %43 to i32
  store i32 %land.ext72, i32* %res, align 4
  br label %sw.epilog

sw.bb.73:                                         ; preds = %while.body
  %44 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call74 = call i32 @validate_numnodes(%struct._node* %44, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0))
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.rhs.76, label %land.end.81

land.rhs.76:                                      ; preds = %sw.bb.73
  %45 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child77 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 5
  %46 = load %struct._node*, %struct._node** %n_child77, align 8
  %arrayidx78 = getelementptr %struct._node, %struct._node* %46, i64 0
  %call79 = call i32 @validate_terminal(%struct._node* %arrayidx78, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0))
  %tobool80 = icmp ne i32 %call79, 0
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.76, %sw.bb.73
  %47 = phi i1 [ false, %sw.bb.73 ], [ %tobool80, %land.rhs.76 ]
  %land.ext82 = zext i1 %47 to i32
  store i32 %land.ext82, i32* %res, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.body
  %48 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call84 = call i32 @validate_numnodes(%struct._node* %48, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0))
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.rhs.86, label %land.end.91

land.rhs.86:                                      ; preds = %sw.bb.83
  %49 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child87 = getelementptr inbounds %struct._node, %struct._node* %49, i32 0, i32 5
  %50 = load %struct._node*, %struct._node** %n_child87, align 8
  %arrayidx88 = getelementptr %struct._node, %struct._node* %50, i64 0
  %call89 = call i32 @validate_terminal(%struct._node* %arrayidx88, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0))
  %tobool90 = icmp ne i32 %call89, 0
  br label %land.end.91

land.end.91:                                      ; preds = %land.rhs.86, %sw.bb.83
  %51 = phi i1 [ false, %sw.bb.83 ], [ %tobool90, %land.rhs.86 ]
  %land.ext92 = zext i1 %51 to i32
  store i32 %land.ext92, i32* %res, align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %while.body
  %52 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call94 = call i32 @validate_return_stmt(%struct._node* %52)
  store i32 %call94, i32* %res, align 4
  br label %sw.epilog

sw.bb.95:                                         ; preds = %while.body
  %53 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call96 = call i32 @validate_raise_stmt(%struct._node* %53)
  store i32 %call96, i32* %res, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %while.body
  %54 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call98 = call i32 @validate_import_stmt(%struct._node* %54)
  store i32 %call98, i32* %res, align 4
  br label %sw.epilog

sw.bb.99:                                         ; preds = %while.body
  %55 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call100 = call i32 @validate_import_name(%struct._node* %55)
  store i32 %call100, i32* %res, align 4
  br label %sw.epilog

sw.bb.101:                                        ; preds = %while.body
  %56 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call102 = call i32 @validate_import_from(%struct._node* %56)
  store i32 %call102, i32* %res, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.body
  %57 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call104 = call i32 @validate_global_stmt(%struct._node* %57)
  store i32 %call104, i32* %res, align 4
  br label %sw.epilog

sw.bb.105:                                        ; preds = %while.body
  %58 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call106 = call i32 @validate_nonlocal_stmt(%struct._node* %58)
  store i32 %call106, i32* %res, align 4
  br label %sw.epilog

sw.bb.107:                                        ; preds = %while.body
  %59 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call108 = call i32 @validate_assert_stmt(%struct._node* %59)
  store i32 %call108, i32* %res, align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %while.body
  %60 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call110 = call i32 @validate_if(%struct._node* %60)
  store i32 %call110, i32* %res, align 4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %while.body
  %61 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call112 = call i32 @validate_while(%struct._node* %61)
  store i32 %call112, i32* %res, align 4
  br label %sw.epilog

sw.bb.113:                                        ; preds = %while.body
  %62 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call114 = call i32 @validate_for(%struct._node* %62)
  store i32 %call114, i32* %res, align 4
  br label %sw.epilog

sw.bb.115:                                        ; preds = %while.body
  %63 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call116 = call i32 @validate_try(%struct._node* %63)
  store i32 %call116, i32* %res, align 4
  br label %sw.epilog

sw.bb.117:                                        ; preds = %while.body
  %64 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call118 = call i32 @validate_suite(%struct._node* %64)
  store i32 %call118, i32* %res, align 4
  br label %sw.epilog

sw.bb.119:                                        ; preds = %while.body
  %65 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call120 = call i32 @validate_testlist(%struct._node* %65)
  store i32 %call120, i32* %res, align 4
  br label %sw.epilog

sw.bb.121:                                        ; preds = %while.body
  %66 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call122 = call i32 @validate_yield_expr(%struct._node* %66)
  store i32 %call122, i32* %res, align 4
  br label %sw.epilog

sw.bb.123:                                        ; preds = %while.body
  %67 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call124 = call i32 @validate_test(%struct._node* %67)
  store i32 %call124, i32* %res, align 4
  br label %sw.epilog

sw.bb.125:                                        ; preds = %while.body
  %68 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call126 = call i32 @validate_and_test(%struct._node* %68)
  store i32 %call126, i32* %res, align 4
  br label %sw.epilog

sw.bb.127:                                        ; preds = %while.body
  %69 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call128 = call i32 @validate_not_test(%struct._node* %69)
  store i32 %call128, i32* %res, align 4
  br label %sw.epilog

sw.bb.129:                                        ; preds = %while.body
  %70 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call130 = call i32 @validate_comparison(%struct._node* %70)
  store i32 %call130, i32* %res, align 4
  br label %sw.epilog

sw.bb.131:                                        ; preds = %while.body
  %71 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call132 = call i32 @validate_exprlist(%struct._node* %71)
  store i32 %call132, i32* %res, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %while.body
  %72 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call134 = call i32 @validate_comp_op(%struct._node* %72)
  store i32 %call134, i32* %res, align 4
  br label %sw.epilog

sw.bb.135:                                        ; preds = %while.body
  %73 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call136 = call i32 @validate_expr(%struct._node* %73)
  store i32 %call136, i32* %res, align 4
  br label %sw.epilog

sw.bb.137:                                        ; preds = %while.body
  %74 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call138 = call i32 @validate_xor_expr(%struct._node* %74)
  store i32 %call138, i32* %res, align 4
  br label %sw.epilog

sw.bb.139:                                        ; preds = %while.body
  %75 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call140 = call i32 @validate_and_expr(%struct._node* %75)
  store i32 %call140, i32* %res, align 4
  br label %sw.epilog

sw.bb.141:                                        ; preds = %while.body
  %76 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call142 = call i32 @validate_shift_expr(%struct._node* %76)
  store i32 %call142, i32* %res, align 4
  br label %sw.epilog

sw.bb.143:                                        ; preds = %while.body
  %77 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call144 = call i32 @validate_arith_expr(%struct._node* %77)
  store i32 %call144, i32* %res, align 4
  br label %sw.epilog

sw.bb.145:                                        ; preds = %while.body
  %78 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call146 = call i32 @validate_term(%struct._node* %78)
  store i32 %call146, i32* %res, align 4
  br label %sw.epilog

sw.bb.147:                                        ; preds = %while.body
  %79 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call148 = call i32 @validate_factor(%struct._node* %79)
  store i32 %call148, i32* %res, align 4
  br label %sw.epilog

sw.bb.149:                                        ; preds = %while.body
  %80 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call150 = call i32 @validate_power(%struct._node* %80)
  store i32 %call150, i32* %res, align 4
  br label %sw.epilog

sw.bb.151:                                        ; preds = %while.body
  %81 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call152 = call i32 @validate_atom(%struct._node* %81)
  store i32 %call152, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @err_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.148, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.151, %sw.bb.149, %sw.bb.147, %sw.bb.145, %sw.bb.143, %sw.bb.141, %sw.bb.139, %sw.bb.137, %sw.bb.135, %sw.bb.133, %sw.bb.131, %sw.bb.129, %sw.bb.127, %sw.bb.125, %sw.bb.123, %sw.bb.121, %sw.bb.119, %sw.bb.117, %sw.bb.115, %sw.bb.113, %sw.bb.111, %sw.bb.109, %sw.bb.107, %sw.bb.105, %sw.bb.103, %sw.bb.101, %sw.bb.99, %sw.bb.97, %sw.bb.95, %sw.bb.93, %land.end.91, %land.end.81, %land.end.71, %sw.bb.61, %sw.bb.59, %sw.bb.57, %sw.bb.55, %sw.bb.53, %if.end.52, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %82 = load %struct._node*, %struct._node** %next, align 8
  store %struct._node* %82, %struct._node** %tree.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %83 = load i32, i32* %res, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_funcdef(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 262)
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call2 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then.1
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %8, i64 1
  %call6 = call i32 @validate_ntype(%struct._node* %arrayidx5, i32 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %10, i64 2
  %call11 = call i32 @validate_parameters(%struct._node* %arrayidx10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %land.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %12, i64 3
  %call16 = call i32 @validate_terminal(%struct._node* %arrayidx15, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.13
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %14, i64 4
  %call20 = call i32 @validate_suite(%struct._node* %arrayidx19)
  %tobool21 = icmp ne i32 %call20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true, %if.then.1
  %15 = phi i1 [ false, %land.lhs.true.13 ], [ false, %land.lhs.true.8 ], [ false, %land.lhs.true ], [ false, %if.then.1 ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %if.end.61

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %nch, align 4
  %cmp22 = icmp eq i32 %16, 7
  br i1 %cmp22, label %if.then.23, label %if.else.60

if.then.23:                                       ; preds = %if.else
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child24 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child24, align 8
  %arrayidx25 = getelementptr %struct._node, %struct._node* %18, i64 0
  %call26 = call i32 @validate_terminal(%struct._node* %arrayidx25, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0))
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %land.end.58

land.lhs.true.28:                                 ; preds = %if.then.23
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %20, i64 1
  %call31 = call i32 @validate_ntype(%struct._node* %arrayidx30, i32 1)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %land.end.58

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %22, i64 2
  %call36 = call i32 @validate_parameters(%struct._node* %arrayidx35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %land.end.58

land.lhs.true.38:                                 ; preds = %land.lhs.true.33
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child39 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child39, align 8
  %arrayidx40 = getelementptr %struct._node, %struct._node* %24, i64 3
  %call41 = call i32 @validate_terminal(%struct._node* %arrayidx40, i32 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %land.end.58

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child44 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child44, align 8
  %arrayidx45 = getelementptr %struct._node, %struct._node* %26, i64 4
  %call46 = call i32 @validate_test(%struct._node* %arrayidx45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %land.end.58

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %27 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child49 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  %28 = load %struct._node*, %struct._node** %n_child49, align 8
  %arrayidx50 = getelementptr %struct._node, %struct._node* %28, i64 5
  %call51 = call i32 @validate_terminal(%struct._node* %arrayidx50, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.rhs.53, label %land.end.58

land.rhs.53:                                      ; preds = %land.lhs.true.48
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child54 = getelementptr inbounds %struct._node, %struct._node* %29, i32 0, i32 5
  %30 = load %struct._node*, %struct._node** %n_child54, align 8
  %arrayidx55 = getelementptr %struct._node, %struct._node* %30, i64 6
  %call56 = call i32 @validate_suite(%struct._node* %arrayidx55)
  %tobool57 = icmp ne i32 %call56, 0
  br label %land.end.58

land.end.58:                                      ; preds = %land.rhs.53, %land.lhs.true.48, %land.lhs.true.43, %land.lhs.true.38, %land.lhs.true.33, %land.lhs.true.28, %if.then.23
  %31 = phi i1 [ false, %land.lhs.true.48 ], [ false, %land.lhs.true.43 ], [ false, %land.lhs.true.38 ], [ false, %land.lhs.true.33 ], [ false, %land.lhs.true.28 ], [ false, %if.then.23 ], [ %tobool57, %land.rhs.53 ]
  %land.ext59 = zext i1 %31 to i32
  store i32 %land.ext59, i32* %res, align 4
  br label %if.end

if.else.60:                                       ; preds = %if.else
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.151, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.60, %land.end.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end, %land.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %entry
  %32 = load i32, i32* %res, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_with_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 298)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call2 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.1
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren5 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  %7 = load i32, i32* %n_nchildren5, align 4
  %add = add i32 %7, -2
  %idxprom = sext i32 %add to i64
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren10 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 4
  %11 = load i32, i32* %n_nchildren10, align 4
  %add11 = add i32 %11, -1
  %idxprom12 = sext i32 %add11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom12
  %call15 = call i32 @validate_suite(%struct._node* %arrayidx14)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true.1, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %ok, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %15 = load i32, i32* %ok, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %land.rhs.18, label %land.end.20

land.rhs.18:                                      ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %nch, align 4
  %sub = sub i32 %17, 2
  %cmp19 = icmp slt i32 %16, %sub
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.18, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs.18 ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.20
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom22
  %call25 = call i32 @validate_with_item(%struct._node* %arrayidx24)
  store i32 %call25, i32* %ok, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %add26 = add i32 %22, 2
  store i32 %add26, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.20
  %23 = load i32, i32* %ok, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_class(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 329)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 6
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %nch, align 4
  %cmp2 = icmp eq i32 %5, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %7 = phi i1 [ false, %entry ], [ %6, %lor.end ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 0
  %call4 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %land.end.22

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %12, i64 1
  %call8 = call i32 @validate_ntype(%struct._node* %arrayidx7, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %land.end.22

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %nch, align 4
  %sub = sub i32 %13, 2
  %idxprom = sext i32 %sub to i64
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %15, i64 %idxprom
  %call13 = call i32 @validate_terminal(%struct._node* %arrayidx12, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs.15, label %land.end.22

land.rhs.15:                                      ; preds = %land.lhs.true.10
  %16 = load i32, i32* %nch, align 4
  %sub16 = sub i32 %16, 1
  %idxprom17 = sext i32 %sub16 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child18 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child18, align 8
  %arrayidx19 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom17
  %call20 = call i32 @validate_suite(%struct._node* %arrayidx19)
  %tobool21 = icmp ne i32 %call20, 0
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.15, %land.lhs.true.10, %land.lhs.true, %if.then
  %19 = phi i1 [ false, %land.lhs.true.10 ], [ false, %land.lhs.true ], [ false, %if.then ], [ %tobool21, %land.rhs.15 ]
  %land.ext23 = zext i1 %19 to i32
  store i32 %land.ext23, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %land.end
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call24 = call i32 @validate_numnodes(%struct._node* %20, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end.22
  %21 = load i32, i32* %res, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.then.26, label %if.end.61

if.then.26:                                       ; preds = %if.end
  %22 = load i32, i32* %nch, align 4
  %cmp27 = icmp eq i32 %22, 7
  br i1 %cmp27, label %if.then.28, label %if.else.45

if.then.28:                                       ; preds = %if.then.26
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %24, i64 2
  %call31 = call i32 @validate_terminal(%struct._node* %arrayidx30, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %land.end.43

land.lhs.true.33:                                 ; preds = %if.then.28
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %26, i64 3
  %call36 = call i32 @validate_arglist(%struct._node* %arrayidx35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.rhs.38, label %land.end.43

land.rhs.38:                                      ; preds = %land.lhs.true.33
  %27 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child39 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  %28 = load %struct._node*, %struct._node** %n_child39, align 8
  %arrayidx40 = getelementptr %struct._node, %struct._node* %28, i64 4
  %call41 = call i32 @validate_terminal(%struct._node* %arrayidx40, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.38, %land.lhs.true.33, %if.then.28
  %29 = phi i1 [ false, %land.lhs.true.33 ], [ false, %if.then.28 ], [ %tobool42, %land.rhs.38 ]
  %land.ext44 = zext i1 %29 to i32
  store i32 %land.ext44, i32* %res, align 4
  br label %if.end.60

if.else.45:                                       ; preds = %if.then.26
  %30 = load i32, i32* %nch, align 4
  %cmp46 = icmp eq i32 %30, 6
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %if.else.45
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child48 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child48, align 8
  %arrayidx49 = getelementptr %struct._node, %struct._node* %32, i64 2
  %call50 = call i32 @validate_terminal(%struct._node* %arrayidx49, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.rhs.52, label %land.end.57

land.rhs.52:                                      ; preds = %if.then.47
  %33 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child53 = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 5
  %34 = load %struct._node*, %struct._node** %n_child53, align 8
  %arrayidx54 = getelementptr %struct._node, %struct._node* %34, i64 3
  %call55 = call i32 @validate_terminal(%struct._node* %arrayidx54, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.52, %if.then.47
  %35 = phi i1 [ false, %if.then.47 ], [ %tobool56, %land.rhs.52 ]
  %land.ext58 = zext i1 %35 to i32
  store i32 %land.ext58, i32* %res, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %land.end.57, %if.else.45
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.end.43
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %36 = load i32, i32* %res, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_decorated(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 261)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren1 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren1, align 4
  %add = add i32 %5, -2
  %idxprom = sext i32 %add to i64
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 %idxprom
  %call2 = call i32 @validate_decorators(%struct._node* %arrayidx)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %ok, align 4
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren4 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 4
  %10 = load i32, i32* %n_nchildren4, align 4
  %add5 = add i32 %10, -1
  %idxprom6 = sext i32 %add5 to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom6
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx8, i32 0, i32 0
  %13 = load i16, i16* %n_type, align 2
  %conv = sext i16 %13 to i32
  %cmp9 = icmp eq i32 %conv, 262
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %14 = load i32, i32* %ok, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.20

land.rhs.12:                                      ; preds = %if.then
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren13 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4
  %16 = load i32, i32* %n_nchildren13, align 4
  %add14 = add i32 %16, -1
  %idxprom15 = sext i32 %add14 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom15
  %call18 = call i32 @validate_funcdef(%struct._node* %arrayidx17)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.12, %if.then
  %19 = phi i1 [ false, %if.then ], [ %tobool19, %land.rhs.12 ]
  %land.ext21 = zext i1 %19 to i32
  store i32 %land.ext21, i32* %ok, align 4
  br label %if.end

if.else:                                          ; preds = %land.end
  %20 = load i32, i32* %ok, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %land.rhs.23, label %land.end.31

land.rhs.23:                                      ; preds = %if.else
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren24 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 4
  %22 = load i32, i32* %n_nchildren24, align 4
  %add25 = add i32 %22, -1
  %idxprom26 = sext i32 %add25 to i64
  %23 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5
  %24 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %24, i64 %idxprom26
  %call29 = call i32 @validate_class(%struct._node* %arrayidx28)
  %tobool30 = icmp ne i32 %call29, 0
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.23, %if.else
  %25 = phi i1 [ false, %if.else ], [ %tobool30, %land.rhs.23 ]
  %land.ext32 = zext i1 %25 to i32
  store i32 %land.ext32, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.31, %land.end.20
  %26 = load i32, i32* %ok, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_yield_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 280)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %1, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  %call3 = call i32 @validate_yield_expr(%struct._node* %arrayidx)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_expr_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 271)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_testlist_star_expr(%struct._node* %arrayidx)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.end
  %8 = load i32, i32* %nch, align 4
  %cmp5 = icmp eq i32 %8, 3
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %10, i64 1
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx8, i32 0, i32 0
  %11 = load i16, i16* %n_type, align 2
  %conv = sext i16 %11 to i32
  %cmp9 = icmp eq i32 %conv, 273
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %13, i64 1
  %call13 = call i32 @validate_numnodes(%struct._node* %arrayidx12, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs.15, label %land.end.20

land.rhs.15:                                      ; preds = %if.then
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %15, i64 2
  %call18 = call i32 @validate_yield_or_testlist(%struct._node* %arrayidx17, i32 0)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.15, %if.then
  %16 = phi i1 [ false, %if.then ], [ %tobool19, %land.rhs.15 ]
  %land.ext21 = zext i1 %16 to i32
  store i32 %land.ext21, i32* %res, align 4
  %17 = load i32, i32* %res, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.then.23, label %if.end.75

if.then.23:                                       ; preds = %land.end.20
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child24 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child24, align 8
  %arrayidx25 = getelementptr %struct._node, %struct._node* %19, i64 1
  %n_child26 = getelementptr inbounds %struct._node, %struct._node* %arrayidx25, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child26, align 8
  %arrayidx27 = getelementptr %struct._node, %struct._node* %20, i64 0
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx27, i32 0, i32 1
  %21 = load i8*, i8** %n_str, align 8
  store i8* %21, i8** %s, align 8
  %22 = load i8*, i8** %s, align 8
  %call28 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0)) #4
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.23
  %23 = load i8*, i8** %s, align 8
  %call31 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0)) #4
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %lor.end, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %24 = load i8*, i8** %s, align 8
  %call35 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0)) #4
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %lor.end, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %25 = load i8*, i8** %s, align 8
  %call39 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0)) #4
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %lor.end, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %26 = load i8*, i8** %s, align 8
  %call43 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0)) #4
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %lor.end, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %27 = load i8*, i8** %s, align 8
  %call47 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0)) #4
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %lor.end, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %28 = load i8*, i8** %s, align 8
  %call51 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0)) #4
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %lor.end, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.50
  %29 = load i8*, i8** %s, align 8
  %call55 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0)) #4
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %lor.end, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %30 = load i8*, i8** %s, align 8
  %call59 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0)) #4
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %lor.end, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58
  %31 = load i8*, i8** %s, align 8
  %call63 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i32 0, i32 0)) #4
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %lor.end, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %32 = load i8*, i8** %s, align 8
  %call67 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0)) #4
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.66
  %33 = load i8*, i8** %s, align 8
  %call70 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0)) #4
  %cmp71 = icmp eq i32 %call70, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.66, %lor.lhs.false.62, %lor.lhs.false.58, %lor.lhs.false.54, %lor.lhs.false.50, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %lor.lhs.false, %if.then.23
  %34 = phi i1 [ true, %lor.lhs.false.66 ], [ true, %lor.lhs.false.62 ], [ true, %lor.lhs.false.58 ], [ true, %lor.lhs.false.54 ], [ true, %lor.lhs.false.50 ], [ true, %lor.lhs.false.46 ], [ true, %lor.lhs.false.42 ], [ true, %lor.lhs.false.38 ], [ true, %lor.lhs.false.34 ], [ true, %lor.lhs.false ], [ true, %if.then.23 ], [ %cmp71, %lor.rhs ]
  %lor.ext = zext i1 %34 to i32
  store i32 %lor.ext, i32* %res, align 4
  %35 = load i32, i32* %res, align 4
  %tobool73 = icmp ne i32 %35, 0
  br i1 %tobool73, label %if.end, label %if.then.74

if.then.74:                                       ; preds = %lor.end
  call void @err_string(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.172, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.74, %lor.end
  br label %if.end.75

if.end.75:                                        ; preds = %if.end, %land.end.20
  br label %if.end.95

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true.4, %land.end
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %36 = load i32, i32* %res, align 4
  %tobool76 = icmp ne i32 %36, 0
  br i1 %tobool76, label %land.rhs.77, label %land.end.80

land.rhs.77:                                      ; preds = %for.cond
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %nch, align 4
  %cmp78 = icmp slt i32 %37, %38
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.77, %for.cond
  %39 = phi i1 [ false, %for.cond ], [ %cmp78, %land.rhs.77 ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.80
  %40 = load i32, i32* %j, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child82 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  %42 = load %struct._node*, %struct._node** %n_child82, align 8
  %arrayidx83 = getelementptr %struct._node, %struct._node* %42, i64 %idxprom
  %call84 = call i32 @validate_terminal(%struct._node* %arrayidx83, i32 22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0))
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.rhs.86, label %land.end.92

land.rhs.86:                                      ; preds = %for.body
  %43 = load i32, i32* %j, align 4
  %add = add i32 %43, 1
  %idxprom87 = sext i32 %add to i64
  %44 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child88 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 5
  %45 = load %struct._node*, %struct._node** %n_child88, align 8
  %arrayidx89 = getelementptr %struct._node, %struct._node* %45, i64 %idxprom87
  %call90 = call i32 @validate_yield_or_testlist(%struct._node* %arrayidx89, i32 1)
  %tobool91 = icmp ne i32 %call90, 0
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.86, %for.body
  %46 = phi i1 [ false, %for.body ], [ %tobool91, %land.rhs.86 ]
  %land.ext93 = zext i1 %46 to i32
  store i32 %land.ext93, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.92
  %47 = load i32, i32* %j, align 4
  %add94 = add i32 %47, 2
  store i32 %add94, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.80
  br label %if.end.95

if.end.95:                                        ; preds = %for.end, %if.end.75
  %48 = load i32, i32* %res, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_del_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_numnodes(%struct._node* %0, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 5
  %2 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 0
  %call1 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child3, align 8
  %arrayidx4 = getelementptr %struct._node, %struct._node* %4, i64 1
  %call5 = call i32 @validate_exprlist(%struct._node* %arrayidx4)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_return_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 279)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call2 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.end
  %9 = load i32, i32* %nch, align 4
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call9 = call i32 @validate_testlist(%struct._node* %arrayidx8)
  store i32 %call9, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.end
  %12 = load i32, i32* %res, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_raise_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 281)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %nch, align 4
  %cmp2 = icmp eq i32 %5, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %7 = phi i1 [ false, %entry ], [ %6, %lor.end ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call6 = call i32 @validate_numnodes(%struct._node* %9, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %10 = load i32, i32* %res, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.34

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %12, i64 0
  %call9 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0))
  store i32 %call9, i32* %res, align 4
  %13 = load i32, i32* %res, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.17

land.lhs.true.11:                                 ; preds = %if.then.8
  %14 = load i32, i32* %nch, align 4
  %cmp12 = icmp sge i32 %14, 2
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true.11
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 1
  %call16 = call i32 @validate_test(%struct._node* %arrayidx15)
  store i32 %call16, i32* %res, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.then.8
  %17 = load i32, i32* %res, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.33

land.lhs.true.19:                                 ; preds = %if.end.17
  %18 = load i32, i32* %nch, align 4
  %cmp20 = icmp eq i32 %18, 4
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %land.lhs.true.19
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %20, i64 2
  %call24 = call i32 @validate_terminal(%struct._node* %arrayidx23, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.rhs.26, label %land.end.31

land.rhs.26:                                      ; preds = %if.then.21
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %22, i64 3
  %call29 = call i32 @validate_test(%struct._node* %arrayidx28)
  %tobool30 = icmp ne i32 %call29, 0
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.26, %if.then.21
  %23 = phi i1 [ false, %if.then.21 ], [ %tobool30, %land.rhs.26 ]
  %land.ext32 = zext i1 %23 to i32
  store i32 %land.ext32, i32* %res, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %land.end.31, %land.lhs.true.19, %if.end.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %24 = load i32, i32* %res, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_import_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %ntype = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_numnodes(%struct._node* %2, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.177, i32 0, i32 0))
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %ntype, align 4
  %7 = load i32, i32* %ntype, align 4
  %cmp = icmp eq i32 %7, 283
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %ntype, align 4
  %cmp2 = icmp eq i32 %8, 284
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %10, i64 0
  %call7 = call i32 @validate_node(%struct._node* %arrayidx6)
  store i32 %call7, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.178, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.18

if.else.8:                                        ; preds = %entry
  %11 = load i32, i32* %nch, align 4
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.else.8
  store i32 0, i32* %res, align 4
  %12 = load %struct._object*, %struct._object** @parser_error, align 8
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %14, i64 0
  %n_type14 = getelementptr inbounds %struct._node, %struct._node* %arrayidx13, i32 0, i32 0
  %15 = load i16, i16* %n_type14, align 2
  %conv15 = sext i16 %15 to i32
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.179, i32 0, i32 0), i32 %conv15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %if.else.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %16 = load i32, i32* %res, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_import_name(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %0, i32 283)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call1 = call i32 @validate_numnodes(%struct._node* %1, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.180, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  %call4 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %5, i64 1
  %call8 = call i32 @validate_dotted_as_names(%struct._node* %arrayidx7)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_import_from(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %ndots = alloca i32, align 4
  %havename = alloca i32, align 4
  %offset = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @count_from_dots(%struct._node* %2)
  store i32 %call, i32* %ndots, align 4
  %3 = load i32, i32* %ndots, align 4
  %add = add i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 289
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %havename, align 4
  %7 = load i32, i32* %ndots, align 4
  %8 = load i32, i32* %havename, align 4
  %add2 = add i32 %7, %8
  store i32 %add2, i32* %offset, align 4
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call3 = call i32 @validate_ntype(%struct._node* %9, i32 284)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %offset, align 4
  %cmp4 = icmp sge i32 %10, 1
  br i1 %cmp4, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %nch, align 4
  %12 = load i32, i32* %offset, align 4
  %add7 = add i32 3, %12
  %cmp8 = icmp sge i32 %11, %add7
  br i1 %cmp8, label %land.lhs.true.10, label %land.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %14, i64 0
  %call13 = call i32 @validate_terminal(%struct._node* %arrayidx12, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %land.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %15 = load i32, i32* %havename, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %16 = load i32, i32* %ndots, align 4
  %add17 = add i32 %16, 1
  %idxprom18 = sext i32 %add17 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child19 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child19, align 8
  %arrayidx20 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom18
  %call21 = call i32 @validate_dotted_name(%struct._node* %arrayidx20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true.15
  %19 = load i32, i32* %offset, align 4
  %add23 = add i32 %19, 1
  %idxprom24 = sext i32 %add23 to i64
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %21, i64 %idxprom24
  %call27 = call i32 @validate_terminal(%struct._node* %arrayidx26, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %entry
  %22 = phi i1 [ false, %lor.lhs.false ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool28, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %res, align 4
  %23 = load i32, i32* %res, align 4
  %tobool29 = icmp ne i32 %23, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.end
  %24 = load i32, i32* %offset, align 4
  %add31 = add i32 %24, 2
  %idxprom32 = sext i32 %add31 to i64
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child33 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child33, align 8
  %arrayidx34 = getelementptr %struct._node, %struct._node* %26, i64 %idxprom32
  %n_type35 = getelementptr inbounds %struct._node, %struct._node* %arrayidx34, i32 0, i32 0
  %27 = load i16, i16* %n_type35, align 2
  %conv36 = sext i16 %27 to i32
  %cmp37 = icmp eq i32 %conv36, 7
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.30
  %28 = load i32, i32* %nch, align 4
  %29 = load i32, i32* %offset, align 4
  %add39 = add i32 %29, 5
  %cmp40 = icmp eq i32 %28, %add39
  br i1 %cmp40, label %land.lhs.true.42, label %land.end.63

land.lhs.true.42:                                 ; preds = %if.then
  %30 = load i32, i32* %offset, align 4
  %add43 = add i32 %30, 2
  %idxprom44 = sext i32 %add43 to i64
  %31 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child45 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5
  %32 = load %struct._node*, %struct._node** %n_child45, align 8
  %arrayidx46 = getelementptr %struct._node, %struct._node* %32, i64 %idxprom44
  %call47 = call i32 @validate_terminal(%struct._node* %arrayidx46, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.49, label %land.end.63

land.lhs.true.49:                                 ; preds = %land.lhs.true.42
  %33 = load i32, i32* %offset, align 4
  %add50 = add i32 %33, 3
  %idxprom51 = sext i32 %add50 to i64
  %34 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child52 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5
  %35 = load %struct._node*, %struct._node** %n_child52, align 8
  %arrayidx53 = getelementptr %struct._node, %struct._node* %35, i64 %idxprom51
  %call54 = call i32 @validate_import_as_names(%struct._node* %arrayidx53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.rhs.56, label %land.end.63

land.rhs.56:                                      ; preds = %land.lhs.true.49
  %36 = load i32, i32* %offset, align 4
  %add57 = add i32 %36, 4
  %idxprom58 = sext i32 %add57 to i64
  %37 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child59 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 5
  %38 = load %struct._node*, %struct._node** %n_child59, align 8
  %arrayidx60 = getelementptr %struct._node, %struct._node* %38, i64 %idxprom58
  %call61 = call i32 @validate_terminal(%struct._node* %arrayidx60, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool62 = icmp ne i32 %call61, 0
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.56, %land.lhs.true.49, %land.lhs.true.42, %if.then
  %39 = phi i1 [ false, %land.lhs.true.49 ], [ false, %land.lhs.true.42 ], [ false, %if.then ], [ %tobool62, %land.rhs.56 ]
  %land.ext64 = zext i1 %39 to i32
  store i32 %land.ext64, i32* %res, align 4
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true.30, %land.end
  %40 = load i32, i32* %res, align 4
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end

land.lhs.true.66:                                 ; preds = %if.else
  %41 = load i32, i32* %offset, align 4
  %add67 = add i32 %41, 2
  %idxprom68 = sext i32 %add67 to i64
  %42 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child69 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child69, align 8
  %arrayidx70 = getelementptr %struct._node, %struct._node* %43, i64 %idxprom68
  %n_type71 = getelementptr inbounds %struct._node, %struct._node* %arrayidx70, i32 0, i32 0
  %44 = load i16, i16* %n_type71, align 2
  %conv72 = sext i16 %44 to i32
  %cmp73 = icmp ne i32 %conv72, 16
  br i1 %cmp73, label %if.then.75, label %if.end

if.then.75:                                       ; preds = %land.lhs.true.66
  %45 = load i32, i32* %offset, align 4
  %add76 = add i32 %45, 2
  %idxprom77 = sext i32 %add76 to i64
  %46 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child78 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 5
  %47 = load %struct._node*, %struct._node** %n_child78, align 8
  %arrayidx79 = getelementptr %struct._node, %struct._node* %47, i64 %idxprom77
  %call80 = call i32 @validate_import_as_names(%struct._node* %arrayidx79)
  store i32 %call80, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.75, %land.lhs.true.66, %if.else
  br label %if.end.81

if.end.81:                                        ; preds = %if.end, %land.end.63
  %48 = load i32, i32* %res, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_global_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 290)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp sge i32 %4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  call void @err_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.184, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 0
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %if.then.7
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call13 = call i32 @validate_ntype(%struct._node* %arrayidx12, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.10, %if.then.7
  %12 = phi i1 [ false, %if.then.7 ], [ %tobool14, %land.rhs.10 ]
  %land.ext16 = zext i1 %12 to i32
  store i32 %land.ext16, i32* %res, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %land.end.15, %if.end
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %13 = load i32, i32* %res, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.21

land.rhs.19:                                      ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %nch, align 4
  %cmp20 = icmp slt i32 %14, %15
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.19, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs.19 ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.21
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %19, i64 %idxprom
  %call25 = call i32 @validate_terminal(%struct._node* %arrayidx24, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs.27, label %land.end.33

land.rhs.27:                                      ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %add = add i32 %20, 1
  %idxprom28 = sext i32 %add to i64
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom28
  %call31 = call i32 @validate_ntype(%struct._node* %arrayidx30, i32 1)
  %tobool32 = icmp ne i32 %call31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.27, %for.body
  %23 = phi i1 [ false, %for.body ], [ %tobool32, %land.rhs.27 ]
  %land.ext34 = zext i1 %23 to i32
  store i32 %land.ext34, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.33
  %24 = load i32, i32* %j, align 4
  %add35 = add i32 %24, 2
  store i32 %add35, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.21
  %25 = load i32, i32* %res, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_nonlocal_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %j = alloca i32, align 4
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 291)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp sge i32 %4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  call void @err_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.186, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 0
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.187, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %if.then.7
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call13 = call i32 @validate_ntype(%struct._node* %arrayidx12, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.10, %if.then.7
  %12 = phi i1 [ false, %if.then.7 ], [ %tobool14, %land.rhs.10 ]
  %land.ext16 = zext i1 %12 to i32
  store i32 %land.ext16, i32* %res, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %land.end.15, %if.end
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %13 = load i32, i32* %res, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.21

land.rhs.19:                                      ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %nch, align 4
  %cmp20 = icmp slt i32 %14, %15
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.19, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs.19 ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.21
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %19, i64 %idxprom
  %call25 = call i32 @validate_terminal(%struct._node* %arrayidx24, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs.27, label %land.end.33

land.rhs.27:                                      ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %add = add i32 %20, 1
  %idxprom28 = sext i32 %add to i64
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child29 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child29, align 8
  %arrayidx30 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom28
  %call31 = call i32 @validate_ntype(%struct._node* %arrayidx30, i32 1)
  %tobool32 = icmp ne i32 %call31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.27, %for.body
  %23 = phi i1 [ false, %for.body ], [ %tobool32, %land.rhs.27 ]
  %land.ext34 = zext i1 %23 to i32
  store i32 %land.ext34, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.33
  %24 = load i32, i32* %j, align 4
  %add35 = add i32 %24, 2
  store i32 %add35, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.21
  %25 = load i32, i32* %res, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_assert_stmt(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 292)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 4
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %8, i64 1
  %call7 = call i32 @validate_test(%struct._node* %arrayidx6)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %lor.lhs.false, %entry
  %9 = phi i1 [ false, %land.lhs.true.2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %res, align 4
  %10 = load i32, i32* %res, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.end
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.10
  call void @err_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.189, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.end
  %11 = load i32, i32* %res, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.28

land.lhs.true.14:                                 ; preds = %if.end
  %12 = load i32, i32* %nch, align 4
  %cmp15 = icmp sgt i32 %12, 2
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %land.lhs.true.14
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %14, i64 2
  %call19 = call i32 @validate_terminal(%struct._node* %arrayidx18, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.26

land.rhs.21:                                      ; preds = %if.then.16
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %16, i64 3
  %call24 = call i32 @validate_test(%struct._node* %arrayidx23)
  %tobool25 = icmp ne i32 %call24, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.21, %if.then.16
  %17 = phi i1 [ false, %if.then.16 ], [ %tobool25, %land.rhs.21 ]
  %land.ext27 = zext i1 %17 to i32
  store i32 %land.ext27, i32* %res, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %land.end.26, %land.lhs.true.14, %if.end
  %18 = load i32, i32* %res, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_if(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 294)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 4
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call2 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.1
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %7, i64 1
  %call7 = call i32 @validate_test(%struct._node* %arrayidx6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.4
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child10 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child10, align 8
  %arrayidx11 = getelementptr %struct._node, %struct._node* %9, i64 2
  %call12 = call i32 @validate_terminal(%struct._node* %arrayidx11, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %11, i64 3
  %call16 = call i32 @validate_suite(%struct._node* %arrayidx15)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true.4, %land.lhs.true.1, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool17, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %res, align 4
  %13 = load i32, i32* %res, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.end
  %14 = load i32, i32* %nch, align 4
  %rem = srem i32 %14, 4
  %cmp20 = icmp eq i32 %rem, 3
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.19
  %15 = load i32, i32* %nch, align 4
  %sub = sub i32 %15, 3
  %idxprom = sext i32 %sub to i64
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %17, i64 %idxprom
  %call23 = call i32 @validate_terminal(%struct._node* %arrayidx22, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %land.end.39

land.lhs.true.25:                                 ; preds = %if.then
  %18 = load i32, i32* %nch, align 4
  %sub26 = sub i32 %18, 2
  %idxprom27 = sext i32 %sub26 to i64
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child28 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child28, align 8
  %arrayidx29 = getelementptr %struct._node, %struct._node* %20, i64 %idxprom27
  %call30 = call i32 @validate_terminal(%struct._node* %arrayidx29, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.rhs.32, label %land.end.39

land.rhs.32:                                      ; preds = %land.lhs.true.25
  %21 = load i32, i32* %nch, align 4
  %sub33 = sub i32 %21, 1
  %idxprom34 = sext i32 %sub33 to i64
  %22 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child35 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child35, align 8
  %arrayidx36 = getelementptr %struct._node, %struct._node* %23, i64 %idxprom34
  %call37 = call i32 @validate_suite(%struct._node* %arrayidx36)
  %tobool38 = icmp ne i32 %call37, 0
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.32, %land.lhs.true.25, %if.then
  %24 = phi i1 [ false, %land.lhs.true.25 ], [ false, %if.then ], [ %tobool38, %land.rhs.32 ]
  %land.ext40 = zext i1 %24 to i32
  store i32 %land.ext40, i32* %res, align 4
  %25 = load i32, i32* %nch, align 4
  %sub41 = sub i32 %25, 3
  store i32 %sub41, i32* %nch, align 4
  br label %if.end.48

if.else:                                          ; preds = %land.lhs.true.19, %land.end
  %26 = load i32, i32* %res, align 4
  %tobool42 = icmp ne i32 %26, 0
  br i1 %tobool42, label %if.end, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %if.else
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool45 = icmp ne %struct._object* %call44, null
  br i1 %tobool45, label %if.end, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.43
  %27 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call47 = call i32 @validate_numnodes(%struct._node* %27, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.46, %land.lhs.true.43, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %land.end.39
  %28 = load i32, i32* %nch, align 4
  %rem49 = srem i32 %28, 4
  %cmp50 = icmp ne i32 %rem49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.end.48
  %29 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call52 = call i32 @validate_numnodes(%struct._node* %29, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0))
  store i32 %call52, i32* %res, align 4
  br label %if.end.92

if.else.53:                                       ; preds = %if.end.48
  %30 = load i32, i32* %res, align 4
  %tobool54 = icmp ne i32 %30, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.91

land.lhs.true.55:                                 ; preds = %if.else.53
  %31 = load i32, i32* %nch, align 4
  %cmp56 = icmp sgt i32 %31, 4
  br i1 %cmp56, label %if.then.57, label %if.end.91

if.then.57:                                       ; preds = %land.lhs.true.55
  store i32 4, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %land.end.88, %if.then.57
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %nch, align 4
  %cmp58 = icmp slt i32 %32, %33
  br i1 %cmp58, label %land.rhs.59, label %land.end.61

land.rhs.59:                                      ; preds = %while.cond
  %34 = load i32, i32* %res, align 4
  %tobool60 = icmp ne i32 %34, 0
  br label %land.end.61

land.end.61:                                      ; preds = %land.rhs.59, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %tobool60, %land.rhs.59 ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.61
  %36 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %36 to i64
  %37 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child64 = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 5
  %38 = load %struct._node*, %struct._node** %n_child64, align 8
  %arrayidx65 = getelementptr %struct._node, %struct._node* %38, i64 %idxprom63
  %call66 = call i32 @validate_terminal(%struct._node* %arrayidx65, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0))
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %land.lhs.true.68, label %land.end.88

land.lhs.true.68:                                 ; preds = %while.body
  %39 = load i32, i32* %j, align 4
  %add = add i32 %39, 2
  %idxprom69 = sext i32 %add to i64
  %40 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child70 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 5
  %41 = load %struct._node*, %struct._node** %n_child70, align 8
  %arrayidx71 = getelementptr %struct._node, %struct._node* %41, i64 %idxprom69
  %call72 = call i32 @validate_terminal(%struct._node* %arrayidx71, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %land.lhs.true.74, label %land.end.88

land.lhs.true.74:                                 ; preds = %land.lhs.true.68
  %42 = load i32, i32* %j, align 4
  %add75 = add i32 %42, 1
  %idxprom76 = sext i32 %add75 to i64
  %43 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child77 = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 5
  %44 = load %struct._node*, %struct._node** %n_child77, align 8
  %arrayidx78 = getelementptr %struct._node, %struct._node* %44, i64 %idxprom76
  %call79 = call i32 @validate_test(%struct._node* %arrayidx78)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %land.rhs.81, label %land.end.88

land.rhs.81:                                      ; preds = %land.lhs.true.74
  %45 = load i32, i32* %j, align 4
  %add82 = add i32 %45, 3
  %idxprom83 = sext i32 %add82 to i64
  %46 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child84 = getelementptr inbounds %struct._node, %struct._node* %46, i32 0, i32 5
  %47 = load %struct._node*, %struct._node** %n_child84, align 8
  %arrayidx85 = getelementptr %struct._node, %struct._node* %47, i64 %idxprom83
  %call86 = call i32 @validate_suite(%struct._node* %arrayidx85)
  %tobool87 = icmp ne i32 %call86, 0
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.81, %land.lhs.true.74, %land.lhs.true.68, %while.body
  %48 = phi i1 [ false, %land.lhs.true.74 ], [ false, %land.lhs.true.68 ], [ false, %while.body ], [ %tobool87, %land.rhs.81 ]
  %land.ext89 = zext i1 %48 to i32
  store i32 %land.ext89, i32* %res, align 4
  %49 = load i32, i32* %j, align 4
  %add90 = add i32 %49, 4
  store i32 %add90, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.61
  br label %if.end.91

if.end.91:                                        ; preds = %while.end, %land.lhs.true.55, %if.else.53
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.51
  %50 = load i32, i32* %res, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_while(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 295)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %land.lhs.true.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 7
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %8, i64 1
  %call8 = call i32 @validate_test(%struct._node* %arrayidx7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %land.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %10, i64 2
  %call13 = call i32 @validate_terminal(%struct._node* %arrayidx12, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.10
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %12, i64 3
  %call17 = call i32 @validate_suite(%struct._node* %arrayidx16)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true.2, %lor.lhs.false, %entry
  %13 = phi i1 [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool18, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %land.end
  %15 = load i32, i32* %nch, align 4
  %cmp21 = icmp eq i32 %15, 7
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.20
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %17, i64 4
  %call24 = call i32 @validate_terminal(%struct._node* %arrayidx23, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %land.end.36

land.lhs.true.26:                                 ; preds = %if.then
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child27 = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5
  %19 = load %struct._node*, %struct._node** %n_child27, align 8
  %arrayidx28 = getelementptr %struct._node, %struct._node* %19, i64 5
  %call29 = call i32 @validate_terminal(%struct._node* %arrayidx28, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.rhs.31, label %land.end.36

land.rhs.31:                                      ; preds = %land.lhs.true.26
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %21, i64 6
  %call34 = call i32 @validate_suite(%struct._node* %arrayidx33)
  %tobool35 = icmp ne i32 %call34, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.31, %land.lhs.true.26, %if.then
  %22 = phi i1 [ false, %land.lhs.true.26 ], [ false, %if.then ], [ %tobool35, %land.rhs.31 ]
  %land.ext37 = zext i1 %22 to i32
  store i32 %land.ext37, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.36, %land.lhs.true.20, %land.end
  %23 = load i32, i32* %res, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_for(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 296)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %land.lhs.true.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 9
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %8, i64 1
  %call8 = call i32 @validate_exprlist(%struct._node* %arrayidx7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %land.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %10, i64 2
  %call13 = call i32 @validate_terminal(%struct._node* %arrayidx12, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %land.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %12, i64 3
  %call18 = call i32 @validate_testlist(%struct._node* %arrayidx17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %land.end

land.lhs.true.20:                                 ; preds = %land.lhs.true.15
  %13 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 5
  %14 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %14, i64 4
  %call23 = call i32 @validate_terminal(%struct._node* %arrayidx22, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.20
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child25 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child25, align 8
  %arrayidx26 = getelementptr %struct._node, %struct._node* %16, i64 5
  %call27 = call i32 @validate_suite(%struct._node* %arrayidx26)
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.20, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true.2, %lor.lhs.false, %entry
  %17 = phi i1 [ false, %land.lhs.true.20 ], [ false, %land.lhs.true.15 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.2 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool28, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %res, align 4
  %18 = load i32, i32* %res, align 4
  %tobool29 = icmp ne i32 %18, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %land.end
  %19 = load i32, i32* %nch, align 4
  %cmp31 = icmp eq i32 %19, 9
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.30
  %20 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child32 = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 5
  %21 = load %struct._node*, %struct._node** %n_child32, align 8
  %arrayidx33 = getelementptr %struct._node, %struct._node* %21, i64 6
  %call34 = call i32 @validate_terminal(%struct._node* %arrayidx33, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %land.end.46

land.lhs.true.36:                                 ; preds = %if.then
  %22 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child37 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 5
  %23 = load %struct._node*, %struct._node** %n_child37, align 8
  %arrayidx38 = getelementptr %struct._node, %struct._node* %23, i64 7
  %call39 = call i32 @validate_terminal(%struct._node* %arrayidx38, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.rhs.41, label %land.end.46

land.rhs.41:                                      ; preds = %land.lhs.true.36
  %24 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child42 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 5
  %25 = load %struct._node*, %struct._node** %n_child42, align 8
  %arrayidx43 = getelementptr %struct._node, %struct._node* %25, i64 8
  %call44 = call i32 @validate_suite(%struct._node* %arrayidx43)
  %tobool45 = icmp ne i32 %call44, 0
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.41, %land.lhs.true.36, %if.then
  %26 = phi i1 [ false, %land.lhs.true.36 ], [ false, %if.then ], [ %tobool45, %land.rhs.41 ]
  %land.ext47 = zext i1 %26 to i32
  store i32 %land.ext47, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.46, %land.lhs.true.30, %land.end
  %27 = load i32, i32* %res, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_try(%struct._node* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %pos = alloca i32, align 4
  %res = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  store i32 3, i32* %pos, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 297)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %rem = srem i32 %4, 3
  %cmp1 = icmp eq i32 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %7 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %8, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %land.end.27

land.lhs.true.5:                                  ; preds = %if.then
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %10, i64 1
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %land.end.27

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child11 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child11, align 8
  %arrayidx12 = getelementptr %struct._node, %struct._node* %12, i64 2
  %call13 = call i32 @validate_suite(%struct._node* %arrayidx12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %land.end.27

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %13 = load i32, i32* %nch, align 4
  %sub = sub i32 %13, 2
  %idxprom = sext i32 %sub to i64
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %15, i64 %idxprom
  %call18 = call i32 @validate_terminal(%struct._node* %arrayidx17, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs.20, label %land.end.27

land.rhs.20:                                      ; preds = %land.lhs.true.15
  %16 = load i32, i32* %nch, align 4
  %sub21 = sub i32 %16, 1
  %idxprom22 = sext i32 %sub21 to i64
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child23 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child23, align 8
  %arrayidx24 = getelementptr %struct._node, %struct._node* %18, i64 %idxprom22
  %call25 = call i32 @validate_suite(%struct._node* %arrayidx24)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.20, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true.5, %if.then
  %19 = phi i1 [ false, %land.lhs.true.15 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.5 ], [ false, %if.then ], [ %tobool26, %land.rhs.20 ]
  %land.ext28 = zext i1 %19 to i32
  store i32 %land.ext28, i32* %res, align 4
  br label %if.end.45

if.else:                                          ; preds = %land.end
  %call29 = call %struct._object* @PyErr_Occurred()
  %tobool30 = icmp ne %struct._object* %call29, null
  br i1 %tobool30, label %if.end.44, label %if.then.31

if.then.31:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), i8** %name, align 8
  %20 = load i32, i32* %nch, align 4
  %sub32 = sub i32 %20, 3
  %idxprom33 = sext i32 %sub32 to i64
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child34 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child34, align 8
  %arrayidx35 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom33
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx35, i32 0, i32 0
  %23 = load i16, i16* %n_type, align 2
  %conv = sext i16 %23 to i32
  %cmp36 = icmp ne i32 %conv, 300
  br i1 %cmp36, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then.31
  %24 = load i32, i32* %nch, align 4
  %sub39 = sub i32 %24, 3
  %idxprom40 = sext i32 %sub39 to i64
  %25 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child41 = getelementptr inbounds %struct._node, %struct._node* %25, i32 0, i32 5
  %26 = load %struct._node*, %struct._node** %n_child41, align 8
  %arrayidx42 = getelementptr %struct._node, %struct._node* %26, i64 %idxprom40
  %n_str = getelementptr inbounds %struct._node, %struct._node* %arrayidx42, i32 0, i32 1
  %27 = load i8*, i8** %n_str, align 8
  store i8* %27, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.38, %if.then.31
  %28 = load %struct._object*, %struct._object** @parser_error, align 8
  %29 = load i8*, i8** %name, align 8
  %call43 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.194, i32 0, i32 0), i8* %29)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.end.27
  %30 = load i32, i32* %res, align 4
  %tobool46 = icmp ne i32 %30, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.78

land.lhs.true.47:                                 ; preds = %if.end.45
  %31 = load i32, i32* %pos, align 4
  %idxprom48 = sext i32 %31 to i64
  %32 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child49 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 5
  %33 = load %struct._node*, %struct._node** %n_child49, align 8
  %arrayidx50 = getelementptr %struct._node, %struct._node* %33, i64 %idxprom48
  %n_type51 = getelementptr inbounds %struct._node, %struct._node* %arrayidx50, i32 0, i32 0
  %34 = load i16, i16* %n_type51, align 2
  %conv52 = sext i16 %34 to i32
  %cmp53 = icmp eq i32 %conv52, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.78

land.lhs.true.55:                                 ; preds = %land.lhs.true.47
  %35 = load i32, i32* %pos, align 4
  %idxprom56 = sext i32 %35 to i64
  %36 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %36, i32 0, i32 5
  %37 = load %struct._node*, %struct._node** %n_child57, align 8
  %arrayidx58 = getelementptr %struct._node, %struct._node* %37, i64 %idxprom56
  %n_str59 = getelementptr inbounds %struct._node, %struct._node* %arrayidx58, i32 0, i32 1
  %38 = load i8*, i8** %n_str59, align 8
  %call60 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0)) #4
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.78

if.then.63:                                       ; preds = %land.lhs.true.55
  %39 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call64 = call i32 @validate_numnodes(%struct._node* %39, i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i32 0, i32 0))
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %land.end.76

land.lhs.true.66:                                 ; preds = %if.then.63
  %40 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child67 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 5
  %41 = load %struct._node*, %struct._node** %n_child67, align 8
  %arrayidx68 = getelementptr %struct._node, %struct._node* %41, i64 4
  %call69 = call i32 @validate_terminal(%struct._node* %arrayidx68, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.rhs.71, label %land.end.76

land.rhs.71:                                      ; preds = %land.lhs.true.66
  %42 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child72 = getelementptr inbounds %struct._node, %struct._node* %42, i32 0, i32 5
  %43 = load %struct._node*, %struct._node** %n_child72, align 8
  %arrayidx73 = getelementptr %struct._node, %struct._node* %43, i64 5
  %call74 = call i32 @validate_suite(%struct._node* %arrayidx73)
  %tobool75 = icmp ne i32 %call74, 0
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.71, %land.lhs.true.66, %if.then.63
  %44 = phi i1 [ false, %land.lhs.true.66 ], [ false, %if.then.63 ], [ %tobool75, %land.rhs.71 ]
  %land.ext77 = zext i1 %44 to i32
  store i32 %land.ext77, i32* %res, align 4
  %45 = load i32, i32* %res, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.78:                                        ; preds = %land.lhs.true.55, %land.lhs.true.47, %if.end.45
  br label %while.cond

while.cond:                                       ; preds = %land.end.111, %if.end.78
  %46 = load i32, i32* %res, align 4
  %tobool79 = icmp ne i32 %46, 0
  br i1 %tobool79, label %land.lhs.true.80, label %land.end.91

land.lhs.true.80:                                 ; preds = %while.cond
  %47 = load i32, i32* %pos, align 4
  %48 = load i32, i32* %nch, align 4
  %cmp81 = icmp slt i32 %47, %48
  br i1 %cmp81, label %land.rhs.83, label %land.end.91

land.rhs.83:                                      ; preds = %land.lhs.true.80
  %49 = load i32, i32* %pos, align 4
  %idxprom84 = sext i32 %49 to i64
  %50 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child85 = getelementptr inbounds %struct._node, %struct._node* %50, i32 0, i32 5
  %51 = load %struct._node*, %struct._node** %n_child85, align 8
  %arrayidx86 = getelementptr %struct._node, %struct._node* %51, i64 %idxprom84
  %n_type87 = getelementptr inbounds %struct._node, %struct._node* %arrayidx86, i32 0, i32 0
  %52 = load i16, i16* %n_type87, align 2
  %conv88 = sext i16 %52 to i32
  %cmp89 = icmp eq i32 %conv88, 300
  br label %land.end.91

land.end.91:                                      ; preds = %land.rhs.83, %land.lhs.true.80, %while.cond
  %53 = phi i1 [ false, %land.lhs.true.80 ], [ false, %while.cond ], [ %cmp89, %land.rhs.83 ]
  br i1 %53, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.91
  %54 = load i32, i32* %pos, align 4
  %idxprom93 = sext i32 %54 to i64
  %55 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child94 = getelementptr inbounds %struct._node, %struct._node* %55, i32 0, i32 5
  %56 = load %struct._node*, %struct._node** %n_child94, align 8
  %arrayidx95 = getelementptr %struct._node, %struct._node* %56, i64 %idxprom93
  %call96 = call i32 @validate_except_clause(%struct._node* %arrayidx95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %land.lhs.true.98, label %land.end.111

land.lhs.true.98:                                 ; preds = %while.body
  %57 = load i32, i32* %pos, align 4
  %add = add i32 %57, 1
  %idxprom99 = sext i32 %add to i64
  %58 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child100 = getelementptr inbounds %struct._node, %struct._node* %58, i32 0, i32 5
  %59 = load %struct._node*, %struct._node** %n_child100, align 8
  %arrayidx101 = getelementptr %struct._node, %struct._node* %59, i64 %idxprom99
  %call102 = call i32 @validate_terminal(%struct._node* %arrayidx101, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %land.rhs.104, label %land.end.111

land.rhs.104:                                     ; preds = %land.lhs.true.98
  %60 = load i32, i32* %pos, align 4
  %add105 = add i32 %60, 2
  %idxprom106 = sext i32 %add105 to i64
  %61 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child107 = getelementptr inbounds %struct._node, %struct._node* %61, i32 0, i32 5
  %62 = load %struct._node*, %struct._node** %n_child107, align 8
  %arrayidx108 = getelementptr %struct._node, %struct._node* %62, i64 %idxprom106
  %call109 = call i32 @validate_suite(%struct._node* %arrayidx108)
  %tobool110 = icmp ne i32 %call109, 0
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.104, %land.lhs.true.98, %while.body
  %63 = phi i1 [ false, %land.lhs.true.98 ], [ false, %while.body ], [ %tobool110, %land.rhs.104 ]
  %land.ext112 = zext i1 %63 to i32
  store i32 %land.ext112, i32* %res, align 4
  %64 = load i32, i32* %pos, align 4
  %add113 = add i32 %64, 3
  store i32 %add113, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.91
  %65 = load i32, i32* %res, align 4
  %tobool114 = icmp ne i32 %65, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.151

land.lhs.true.115:                                ; preds = %while.end
  %66 = load i32, i32* %pos, align 4
  %67 = load i32, i32* %nch, align 4
  %cmp116 = icmp slt i32 %66, %67
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.151

land.lhs.true.118:                                ; preds = %land.lhs.true.115
  %68 = load i32, i32* %pos, align 4
  %idxprom119 = sext i32 %68 to i64
  %69 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child120 = getelementptr inbounds %struct._node, %struct._node* %69, i32 0, i32 5
  %70 = load %struct._node*, %struct._node** %n_child120, align 8
  %arrayidx121 = getelementptr %struct._node, %struct._node* %70, i64 %idxprom119
  %n_type122 = getelementptr inbounds %struct._node, %struct._node* %arrayidx121, i32 0, i32 0
  %71 = load i16, i16* %n_type122, align 2
  %conv123 = sext i16 %71 to i32
  %cmp124 = icmp eq i32 %conv123, 1
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.151

land.lhs.true.126:                                ; preds = %land.lhs.true.118
  %72 = load i32, i32* %pos, align 4
  %idxprom127 = sext i32 %72 to i64
  %73 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child128 = getelementptr inbounds %struct._node, %struct._node* %73, i32 0, i32 5
  %74 = load %struct._node*, %struct._node** %n_child128, align 8
  %arrayidx129 = getelementptr %struct._node, %struct._node* %74, i64 %idxprom127
  %n_str130 = getelementptr inbounds %struct._node, %struct._node* %arrayidx129, i32 0, i32 1
  %75 = load i8*, i8** %n_str130, align 8
  %call131 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)) #4
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %land.lhs.true.126
  %76 = load i32, i32* %pos, align 4
  %add135 = add i32 %76, 1
  %idxprom136 = sext i32 %add135 to i64
  %77 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child137 = getelementptr inbounds %struct._node, %struct._node* %77, i32 0, i32 5
  %78 = load %struct._node*, %struct._node** %n_child137, align 8
  %arrayidx138 = getelementptr %struct._node, %struct._node* %78, i64 %idxprom136
  %call139 = call i32 @validate_terminal(%struct._node* %arrayidx138, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %land.rhs.141, label %land.end.148

land.rhs.141:                                     ; preds = %if.then.134
  %79 = load i32, i32* %pos, align 4
  %add142 = add i32 %79, 2
  %idxprom143 = sext i32 %add142 to i64
  %80 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child144 = getelementptr inbounds %struct._node, %struct._node* %80, i32 0, i32 5
  %81 = load %struct._node*, %struct._node** %n_child144, align 8
  %arrayidx145 = getelementptr %struct._node, %struct._node* %81, i64 %idxprom143
  %call146 = call i32 @validate_suite(%struct._node* %arrayidx145)
  %tobool147 = icmp ne i32 %call146, 0
  br label %land.end.148

land.end.148:                                     ; preds = %land.rhs.141, %if.then.134
  %82 = phi i1 [ false, %if.then.134 ], [ %tobool147, %land.rhs.141 ]
  %land.ext149 = zext i1 %82 to i32
  store i32 %land.ext149, i32* %res, align 4
  %83 = load i32, i32* %pos, align 4
  %add150 = add i32 %83, 3
  store i32 %add150, i32* %pos, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %land.end.148, %land.lhs.true.126, %land.lhs.true.118, %land.lhs.true.115, %while.end
  %84 = load i32, i32* %res, align 4
  %tobool152 = icmp ne i32 %84, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.182

land.lhs.true.153:                                ; preds = %if.end.151
  %85 = load i32, i32* %pos, align 4
  %86 = load i32, i32* %nch, align 4
  %cmp154 = icmp slt i32 %85, %86
  br i1 %cmp154, label %if.then.156, label %if.end.182

if.then.156:                                      ; preds = %land.lhs.true.153
  %87 = load i32, i32* %pos, align 4
  %idxprom157 = sext i32 %87 to i64
  %88 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child158 = getelementptr inbounds %struct._node, %struct._node* %88, i32 0, i32 5
  %89 = load %struct._node*, %struct._node** %n_child158, align 8
  %arrayidx159 = getelementptr %struct._node, %struct._node* %89, i64 %idxprom157
  %call160 = call i32 @validate_terminal(%struct._node* %arrayidx159, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0))
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %land.lhs.true.162, label %land.end.180

land.lhs.true.162:                                ; preds = %if.then.156
  %90 = load %struct._node*, %struct._node** %tree.addr, align 8
  %91 = load i32, i32* %pos, align 4
  %add163 = add i32 %91, 3
  %call164 = call i32 @validate_numnodes(%struct._node* %90, i32 %add163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.197, i32 0, i32 0))
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %land.lhs.true.166, label %land.end.180

land.lhs.true.166:                                ; preds = %land.lhs.true.162
  %92 = load i32, i32* %pos, align 4
  %add167 = add i32 %92, 1
  %idxprom168 = sext i32 %add167 to i64
  %93 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child169 = getelementptr inbounds %struct._node, %struct._node* %93, i32 0, i32 5
  %94 = load %struct._node*, %struct._node** %n_child169, align 8
  %arrayidx170 = getelementptr %struct._node, %struct._node* %94, i64 %idxprom168
  %call171 = call i32 @validate_terminal(%struct._node* %arrayidx170, i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %land.rhs.173, label %land.end.180

land.rhs.173:                                     ; preds = %land.lhs.true.166
  %95 = load i32, i32* %pos, align 4
  %add174 = add i32 %95, 2
  %idxprom175 = sext i32 %add174 to i64
  %96 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child176 = getelementptr inbounds %struct._node, %struct._node* %96, i32 0, i32 5
  %97 = load %struct._node*, %struct._node** %n_child176, align 8
  %arrayidx177 = getelementptr %struct._node, %struct._node* %97, i64 %idxprom175
  %call178 = call i32 @validate_suite(%struct._node* %arrayidx177)
  %tobool179 = icmp ne i32 %call178, 0
  br label %land.end.180

land.end.180:                                     ; preds = %land.rhs.173, %land.lhs.true.166, %land.lhs.true.162, %if.then.156
  %98 = phi i1 [ false, %land.lhs.true.166 ], [ false, %land.lhs.true.162 ], [ false, %if.then.156 ], [ %tobool179, %land.rhs.173 ]
  %land.ext181 = zext i1 %98 to i32
  store i32 %land.ext181, i32* %res, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %land.end.180, %land.lhs.true.153, %if.end.151
  %99 = load i32, i32* %res, align 4
  store i32 %99, i32* %retval
  br label %return

return:                                           ; preds = %if.end.182, %land.end.76
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_suite(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 301)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp sge i32 %4, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp1, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %8 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 0
  %call4 = call i32 @validate_simple_stmt(%struct._node* %arrayidx)
  store i32 %call4, i32* %res, align 4
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %land.end
  %11 = load i32, i32* %res, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.46

if.then.6:                                        ; preds = %if.else
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %13, i64 0
  %call9 = call i32 @validate_terminal(%struct._node* %arrayidx8, i32 4, i8* null)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %land.end.26

land.lhs.true.11:                                 ; preds = %if.then.6
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %15, i64 1
  %call14 = call i32 @validate_terminal(%struct._node* %arrayidx13, i32 5, i8* null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %land.end.26

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child17 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child17, align 8
  %arrayidx18 = getelementptr %struct._node, %struct._node* %17, i64 2
  %call19 = call i32 @validate_stmt(%struct._node* %arrayidx18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.26

land.rhs.21:                                      ; preds = %land.lhs.true.16
  %18 = load i32, i32* %nch, align 4
  %sub = sub i32 %18, 1
  %idxprom = sext i32 %sub to i64
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child22 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child22, align 8
  %arrayidx23 = getelementptr %struct._node, %struct._node* %20, i64 %idxprom
  %call24 = call i32 @validate_terminal(%struct._node* %arrayidx23, i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.198, i32 0, i32 0))
  %tobool25 = icmp ne i32 %call24, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.21, %land.lhs.true.16, %land.lhs.true.11, %if.then.6
  %21 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.11 ], [ false, %if.then.6 ], [ %tobool25, %land.rhs.21 ]
  %land.ext27 = zext i1 %21 to i32
  store i32 %land.ext27, i32* %res, align 4
  %22 = load i32, i32* %res, align 4
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.41

land.lhs.true.29:                                 ; preds = %land.end.26
  %23 = load i32, i32* %nch, align 4
  %cmp30 = icmp sgt i32 %23, 4
  br i1 %cmp30, label %if.then.31, label %if.else.41

if.then.31:                                       ; preds = %land.lhs.true.29
  store i32 3, i32* %i, align 4
  %24 = load i32, i32* %nch, align 4
  %dec = add i32 %24, -1
  store i32 %dec, i32* %nch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %25 = load i32, i32* %res, align 4
  %tobool32 = icmp ne i32 %25, 0
  br i1 %tobool32, label %land.rhs.33, label %land.end.35

land.rhs.33:                                      ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nch, align 4
  %cmp34 = icmp slt i32 %26, %27
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.33, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp34, %land.rhs.33 ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.35
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child38 = getelementptr inbounds %struct._node, %struct._node* %30, i32 0, i32 5
  %31 = load %struct._node*, %struct._node** %n_child38, align 8
  %arrayidx39 = getelementptr %struct._node, %struct._node* %31, i64 %idxprom37
  %call40 = call i32 @validate_stmt(%struct._node* %arrayidx39)
  store i32 %call40, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.35
  br label %if.end.45

if.else.41:                                       ; preds = %land.lhs.true.29, %land.end.26
  %33 = load i32, i32* %nch, align 4
  %cmp42 = icmp slt i32 %33, 4
  br i1 %cmp42, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else.41
  %34 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call44 = call i32 @validate_numnodes(%struct._node* %34, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0))
  store i32 %call44, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %for.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %35 = load i32, i32* %res, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_parameters(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 263)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp1, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 0
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs.5, label %land.end.10

land.rhs.5:                                       ; preds = %if.then
  %10 = load i32, i32* %nch, align 4
  %sub = sub i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end.10

land.end.10:                                      ; preds = %land.rhs.5, %if.then
  %13 = phi i1 [ false, %if.then ], [ %tobool9, %land.rhs.5 ]
  %land.ext11 = zext i1 %13 to i32
  store i32 %land.ext11, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end.10
  %15 = load i32, i32* %nch, align 4
  %cmp13 = icmp eq i32 %15, 3
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %16 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child15 = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 5
  %17 = load %struct._node*, %struct._node** %n_child15, align 8
  %arrayidx16 = getelementptr %struct._node, %struct._node* %17, i64 1
  %call17 = call i32 @validate_varargslist(%struct._node* %arrayidx16)
  store i32 %call17, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %land.end.10
  br label %if.end.19

if.else:                                          ; preds = %land.end
  %18 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call18 = call i32 @validate_numnodes(%struct._node* %18, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_with_item(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 299)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call2 = call i32 @validate_test(%struct._node* %arrayidx)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %entry
  %7 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %ok, align 4
  %8 = load i32, i32* %ok, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.end
  %9 = load i32, i32* %nch, align 4
  %cmp6 = icmp eq i32 %9, 3
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child7 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child7, align 8
  %arrayidx8 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call9 = call i32 @validate_terminal(%struct._node* %arrayidx8, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.rhs.11, label %land.end.16

land.rhs.11:                                      ; preds = %if.then
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %13, i64 2
  %call14 = call i32 @validate_expr(%struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.11, %if.then
  %14 = phi i1 [ false, %if.then ], [ %tobool15, %land.rhs.11 ]
  %land.ext17 = zext i1 %14 to i32
  store i32 %land.ext17, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.16, %land.lhs.true.5, %land.end
  %15 = load i32, i32* %ok, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_decorators(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 260)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp sge i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %ok, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %5 = load i32, i32* %ok, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.rhs.2, label %land.end.4

land.rhs.2:                                       ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nch, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end.4

land.end.4:                                       ; preds = %land.rhs.2, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs.2 ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %11, i64 %idxprom
  %call6 = call i32 @validate_decorator(%struct._node* %arrayidx)
  store i32 %call6, i32* %ok, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.4
  %13 = load i32, i32* %ok, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_decorator(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %ok = alloca i32, align 4
  %nch = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 259)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 5
  br i1 %cmp1, label %land.lhs.true.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %5, 6
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %lor.lhs.false.2, %lor.lhs.false, %land.lhs.true
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %call5 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %9, i64 1
  %call10 = call i32 @validate_dotted_name(%struct._node* %arrayidx9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.7
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren12 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 4
  %11 = load i32, i32* %n_nchildren12, align 4
  %add = add i32 %11, -1
  %idxprom = sext i32 %add to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call15 = call i32 @validate_terminal(%struct._node* %arrayidx14, i32 4, i8* null)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.7, %land.lhs.true.4, %lor.lhs.false.2, %entry
  %14 = phi i1 [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.4 ], [ false, %lor.lhs.false.2 ], [ false, %entry ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %ok, align 4
  %15 = load i32, i32* %ok, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.41

land.lhs.true.18:                                 ; preds = %land.end
  %16 = load i32, i32* %nch, align 4
  %cmp19 = icmp ne i32 %16, 3
  br i1 %cmp19, label %if.then, label %if.end.41

if.then:                                          ; preds = %land.lhs.true.18
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child20 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child20, align 8
  %arrayidx21 = getelementptr %struct._node, %struct._node* %18, i64 2
  %call22 = call i32 @validate_terminal(%struct._node* %arrayidx21, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.rhs.24, label %land.end.32

land.rhs.24:                                      ; preds = %if.then
  %19 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren25 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 4
  %20 = load i32, i32* %n_nchildren25, align 4
  %add26 = add i32 %20, -2
  %idxprom27 = sext i32 %add26 to i64
  %21 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child28 = getelementptr inbounds %struct._node, %struct._node* %21, i32 0, i32 5
  %22 = load %struct._node*, %struct._node** %n_child28, align 8
  %arrayidx29 = getelementptr %struct._node, %struct._node* %22, i64 %idxprom27
  %call30 = call i32 @validate_terminal(%struct._node* %arrayidx29, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.24, %if.then
  %23 = phi i1 [ false, %if.then ], [ %tobool31, %land.rhs.24 ]
  %land.ext33 = zext i1 %23 to i32
  store i32 %land.ext33, i32* %ok, align 4
  %24 = load i32, i32* %ok, align 4
  %tobool34 = icmp ne i32 %24, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %land.end.32
  %25 = load i32, i32* %nch, align 4
  %cmp36 = icmp eq i32 %25, 6
  br i1 %cmp36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %land.lhs.true.35
  %26 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child38 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 5
  %27 = load %struct._node*, %struct._node** %n_child38, align 8
  %arrayidx39 = getelementptr %struct._node, %struct._node* %27, i64 3
  %call40 = call i32 @validate_arglist(%struct._node* %arrayidx39)
  store i32 %call40, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.37, %land.lhs.true.35, %land.end.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %land.lhs.true.18, %land.end
  %28 = load i32, i32* %ok, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_dotted_name(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 289)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 0
  %call1 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* null)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %7 = load i32, i32* %res, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nch, align 4
  %cmp5 = icmp slt i32 %8, %9
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.6
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom
  %call10 = call i32 @validate_terminal(%struct._node* %arrayidx9, i32 23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %add = add i32 %14, 1
  %idxprom13 = sext i32 %add to i64
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child14 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child14, align 8
  %arrayidx15 = getelementptr %struct._node, %struct._node* %16, i64 %idxprom13
  %call16 = call i32 @validate_terminal(%struct._node* %arrayidx15, i32 1, i8* null)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.12, %for.body
  %17 = phi i1 [ false, %for.body ], [ %tobool17, %land.rhs.12 ]
  %land.ext19 = zext i1 %17 to i32
  store i32 %land.ext19, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.18
  %18 = load i32, i32* %i, align 4
  %add20 = add i32 %18, 2
  store i32 %add20, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.6
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_testlist_star_expr(%struct._node* %tl) #0 {
entry:
  %tl.addr = alloca %struct._node*, align 8
  store %struct._node* %tl, %struct._node** %tl.addr, align 8
  %0 = load %struct._node*, %struct._node** %tl.addr, align 8
  %call = call i32 @validate_repeating_list(%struct._node* %0, i32 272, i32 (%struct._node*)* @validate_test_or_star_expr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_yield_or_testlist(%struct._node* %tree, i32 %tse) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct._node*, align 8
  %tse.addr = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 %tse, i32* %tse.addr, align 4
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 0
  %1 = load i16, i16* %n_type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 336
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_yield_expr(%struct._node* %2)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %tse.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call3 = call i32 @validate_testlist_star_expr(%struct._node* %4)
  store i32 %call3, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call5 = call i32 @validate_testlist(%struct._node* %5)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.else.4, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_dotted_as_names(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %and = and i32 %2, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 5
  %4 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %4, i64 0
  %call = call i32 @validate_dotted_as_name(%struct._node* %arrayidx)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %res, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %6 = load i32, i32* %res, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %land.rhs.2, label %land.end.4

land.rhs.2:                                       ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nch, align 4
  %cmp3 = icmp slt i32 %7, %8
  br label %land.end.4

land.end.4:                                       ; preds = %land.rhs.2, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs.2 ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.4
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child6 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child6, align 8
  %arrayidx7 = getelementptr %struct._node, %struct._node* %12, i64 %idxprom
  %call8 = call i32 @validate_terminal(%struct._node* %arrayidx7, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.16

land.rhs.10:                                      ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %add = add i32 %13, 1
  %idxprom11 = sext i32 %add to i64
  %14 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child12 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 5
  %15 = load %struct._node*, %struct._node** %n_child12, align 8
  %arrayidx13 = getelementptr %struct._node, %struct._node* %15, i64 %idxprom11
  %call14 = call i32 @validate_dotted_as_name(%struct._node* %arrayidx13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.10, %for.body
  %16 = phi i1 [ false, %for.body ], [ %tobool15, %land.rhs.10 ]
  %land.ext17 = zext i1 %16 to i32
  store i32 %land.ext17, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.16
  %17 = load i32, i32* %i, align 4
  %add18 = add i32 %17, 2
  store i32 %add18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.4
  %18 = load i32, i32* %res, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_dotted_as_name(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 286)
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call2 = call i32 @validate_dotted_name(%struct._node* %arrayidx)
  store i32 %call2, i32* %res, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %9, i64 0
  %call7 = call i32 @validate_dotted_name(%struct._node* %arrayidx6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then.4
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call11 = call i32 @validate_terminal(%struct._node* %arrayidx10, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %13, i64 2
  %call15 = call i32 @validate_terminal(%struct._node* %arrayidx14, i32 1, i8* null)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then.4
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.4 ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %if.end

if.else.17:                                       ; preds = %if.else
  store i32 0, i32* %res, align 4
  call void @err_string(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.182, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.17, %land.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.1
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %15 = load i32, i32* %res, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @count_from_dots(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4
  %2 = load i32, i32* %n_nchildren, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  %n_type = getelementptr inbounds %struct._node, %struct._node* %arrayidx, i32 0, i32 0
  %6 = load i16, i16* %n_type, align 2
  %conv = sext i16 %6 to i32
  %cmp1 = icmp ne i32 %conv, 23
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child4 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child4, align 8
  %arrayidx5 = getelementptr %struct._node, %struct._node* %9, i64 %idxprom3
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %arrayidx5, i32 0, i32 0
  %10 = load i16, i16* %n_type6, align 2
  %conv7 = sext i16 %10 to i32
  %cmp8 = icmp ne i32 %conv7, 51
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %i, align 4
  %sub = sub i32 %12, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_import_as_names(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 5
  %3 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %3, i64 0
  %call = call i32 @validate_import_as_name(%struct._node* %arrayidx)
  store i32 %call, i32* %res, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add = add i32 %5, 1
  %6 = load i32, i32* %nch, align 4
  %cmp = icmp slt i32 %add, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5
  %10 = load %struct._node*, %struct._node** %n_child1, align 8
  %arrayidx2 = getelementptr %struct._node, %struct._node* %10, i64 %idxprom
  %call3 = call i32 @validate_terminal(%struct._node* %arrayidx2, i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs.5, label %land.end.12

land.rhs.5:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %add6 = add i32 %11, 1
  %idxprom7 = sext i32 %add6 to i64
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child8 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child8, align 8
  %arrayidx9 = getelementptr %struct._node, %struct._node* %13, i64 %idxprom7
  %call10 = call i32 @validate_import_as_name(%struct._node* %arrayidx9)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.5, %for.body
  %14 = phi i1 [ false, %for.body ], [ %tobool11, %land.rhs.5 ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.12
  %15 = load i32, i32* %i, align 4
  %add13 = add i32 %15, 2
  store i32 %add13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load i32, i32* %res, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_import_as_name(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 285)
  store i32 %call, i32* %ok, align 4
  %3 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5
  %6 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 0
  %call2 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* null)
  store i32 %call2, i32* %ok, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child5 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child5, align 8
  %arrayidx6 = getelementptr %struct._node, %struct._node* %9, i64 0
  %call7 = call i32 @validate_terminal(%struct._node* %arrayidx6, i32 1, i8* null)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then.4
  %10 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %10, i32 0, i32 5
  %11 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %11, i64 1
  %call11 = call i32 @validate_terminal(%struct._node* %arrayidx10, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child13 = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 5
  %13 = load %struct._node*, %struct._node** %n_child13, align 8
  %arrayidx14 = getelementptr %struct._node, %struct._node* %13, i64 2
  %call15 = call i32 @validate_terminal(%struct._node* %arrayidx14, i32 1, i8* null)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then.4
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.4 ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %ok, align 4
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call18 = call i32 @validate_numnodes(%struct._node* %15, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.183, i32 0, i32 0))
  store i32 %call18, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.17, %land.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.1
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %16 = load i32, i32* %ok, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_except_clause(%struct._node* %tree) #0 {
entry:
  %tree.addr = alloca %struct._node*, align 8
  %nch = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._node* %tree, %struct._node** %tree.addr, align 8
  %0 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load %struct._node*, %struct._node** %tree.addr, align 8
  %call = call i32 @validate_ntype(%struct._node* %2, i32 300)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %nch, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %land.rhs, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %nch, align 4
  %cmp3 = icmp eq i32 %5, 4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.2, %lor.lhs.false, %land.lhs.true
  %6 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 0
  %call4 = call i32 @validate_terminal(%struct._node* %arrayidx, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.2, %entry
  %8 = phi i1 [ false, %lor.lhs.false.2 ], [ false, %entry ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %res, align 4
  %9 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.end
  %10 = load i32, i32* %nch, align 4
  %cmp8 = icmp sgt i32 %10, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %11 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child9 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 5
  %12 = load %struct._node*, %struct._node** %n_child9, align 8
  %arrayidx10 = getelementptr %struct._node, %struct._node* %12, i64 1
  %call11 = call i32 @validate_test(%struct._node* %arrayidx10)
  store i32 %call11, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.end
  %13 = load i32, i32* %res, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.27

land.lhs.true.13:                                 ; preds = %if.end
  %14 = load i32, i32* %nch, align 4
  %cmp14 = icmp eq i32 %14, 4
  br i1 %cmp14, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %land.lhs.true.13
  %15 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child16 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 5
  %16 = load %struct._node*, %struct._node** %n_child16, align 8
  %arrayidx17 = getelementptr %struct._node, %struct._node* %16, i64 2
  %call18 = call i32 @validate_terminal(%struct._node* %arrayidx17, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs.20, label %land.end.25

land.rhs.20:                                      ; preds = %if.then.15
  %17 = load %struct._node*, %struct._node** %tree.addr, align 8
  %n_child21 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 5
  %18 = load %struct._node*, %struct._node** %n_child21, align 8
  %arrayidx22 = getelementptr %struct._node, %struct._node* %18, i64 3
  %call23 = call i32 @validate_ntype(%struct._node* %arrayidx22, i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.20, %if.then.15
  %19 = phi i1 [ false, %if.then.15 ], [ %tobool24, %land.rhs.20 ]
  %land.ext26 = zext i1 %19 to i32
  store i32 %land.ext26, i32* %res, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %land.end.25, %land.lhs.true.13, %if.end
  %20 = load i32, i32* %res, align 4
  ret i32 %20
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyDict_New() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
