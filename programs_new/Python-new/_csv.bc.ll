; ModuleID = 'programs_new/Python-new/_csv.bc.ll'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.StyleDesc = type { i32, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._csvstate = type { %struct._object*, %struct._object*, i64 }
%struct.DialectObj = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, i32, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.ReaderObj = type { %struct._object, %struct._object*, %struct.DialectObj*, %struct._object*, i32, i32*, i64, i64, i32, i64 }
%struct.WriterObj = type { %struct._object, %struct._object*, %struct.DialectObj*, i32*, i64, i64, i32 }

@Dialect_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.DialectObj*)* @Dialect_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @Dialect_Type_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @Dialect_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @Dialect_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dialect_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@Reader_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i64 88, i64 0, void (%struct._object*)* bitcast (void (%struct.ReaderObj*)* @Reader_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @Reader_Type_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.ReaderObj*, i32 (%struct._object*, i8*)*, i8*)* @Reader_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.ReaderObj*)* @Reader_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.ReaderObj*)* @Reader_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([1 x %struct.PyMethodDef], [1 x %struct.PyMethodDef]* @Reader_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @Reader_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@Writer_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.WriterObj*)* @Writer_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @Writer_Type_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.WriterObj*, i32 (%struct._object*, i8*)*, i8*)* @Writer_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.WriterObj*)* @Writer_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @Writer_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @Writer_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_csvmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2580 x i8], [2580 x i8]* @csv_module_doc, i32 0, i32 0), i64 24, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @csv_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @_csv_traverse, i32 (%struct._object*)* @_csv_clear, void (i8*)* @_csv_free }, align 8
@.str = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_dialects\00", align 1
@quote_styles = internal global [5 x %struct.StyleDesc] [%struct.StyleDesc { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0) }, %struct.StyleDesc { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0) }, %struct.StyleDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0) }, %struct.StyleDesc { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0) }, %struct.StyleDesc zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"Dialect\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"_csv.Error\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"_csv.Dialect\00", align 1
@Dialect_Type_doc = internal global [75 x i8] c"CSV dialect\0A\0AThe Dialect type records CSV parsing and generation options.\0A\00", align 16
@Dialect_memberlist = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 1, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 1, i64 52, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@Dialect_getsetlist = internal global [6 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.DialectObj*)* @Dialect_get_delimiter to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.DialectObj*)* @Dialect_get_escapechar to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.DialectObj*)* @Dialect_get_lineterminator to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.DialectObj*)* @Dialect_get_quotechar to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.DialectObj*)* @Dialect_get_quoting to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"skipinitialspace\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"doublequote\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"escapechar\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"lineterminator\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"quotechar\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"quoting\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"|OOOOOOOOO\00", align 1
@dialect_kws = internal global [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.16 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.17 = private unnamed_addr constant [42 x i8] c"\22delimiter\22 must be an 1-character string\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"quotechar must be set if quoting enabled\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"lineterminator must be set\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dialect\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"unknown dialect\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"\22%s\22 must be string, not %.200s\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\22%s\22 must be an 1-character string\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"\22%s\22 must be a string\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.25 = private unnamed_addr constant [24 x i8] c"\22%s\22 must be an integer\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [30 x i8] c"integer out of range for \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"bad \22quoting\22 value\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"_csv.reader\00", align 1
@Reader_Type_doc = internal global [96 x i8] c"CSV reader\0A\0AReader objects are responsible for reading and parsing tabular data\0Ain CSV format.\0A\00", align 16
@Reader_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@Reader_memberlist = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 12, i64 80, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [23 x i8] c"unexpected end of data\00", align 1
@.str.30 = private unnamed_addr constant [81 x i8] c"iterator should return strings, not %.200s (did you open the file in text mode?)\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"line contains NULL byte\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"'%c' expected after '%c'\00", align 1
@.str.33 = private unnamed_addr constant [100 x i8] c"new-line character seen in unquoted field - do you need to open the file in universal-newline mode?\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"field larger than field limit (%ld)\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"line_num\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"_csv.writer\00", align 1
@Writer_Type_doc = internal global [107 x i8] c"CSV writer\0A\0AWriter objects are responsible for generating tabular data\0Ain CSV format from sequence input.\0A\00", align 16
@Writer_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.WriterObj*, %struct._object*)* @csv_writerow to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @csv_writerow_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.WriterObj*, %struct._object*)* @csv_writerows to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @csv_writerows_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@Writer_memberlist = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [9 x i8] c"writerow\00", align 1
@csv_writerow_doc = internal global [130 x i8] c"writerow(sequence)\0A\0AConstruct and write a CSV record from a sequence of fields.  Non-string\0Aelements will be converted to string.\00", align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"writerows\00", align 1
@csv_writerows_doc = internal global [141 x i8] c"writerows(sequence of sequences)\0A\0AConstruct and write a series of sequences to a csv file.  Non-string\0Aelements will be converted to string.\00", align 16
@.str.39 = private unnamed_addr constant [18 x i8] c"sequence expected\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"need to escape, but no escapechar set\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"single empty field record must be quoted\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"writerows() argument must be iterable\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"_csv\00", align 1
@csv_module_doc = internal global [2580 x i8] c"CSV parsing and writing.\0A\0AThis module provides classes that assist in the reading and writing\0Aof Comma Separated Value (CSV) files, and implements the interface\0Adescribed by PEP 305.  Although many CSV files are simple to parse,\0Athe format is not formally defined by a stable specification and\0Ais subtle enough that parsing lines of a CSV file with something\0Alike line.split(\22,\22) is bound to fail.  The module supports three\0Abasic APIs: reading, writing, and registration of dialects.\0A\0A\0ADIALECT REGISTRATION:\0A\0AReaders and writers support a dialect argument, which is a convenient\0Ahandle on a group of settings.  When the dialect argument is a string,\0Ait identifies one of the dialects previously registered with the module.\0AIf it is a class or instance, the attributes of the argument are used as\0Athe settings for the reader or writer:\0A\0A    class excel:\0A        delimiter = ','\0A        quotechar = '\22'\0A        escapechar = None\0A        doublequote = True\0A        skipinitialspace = False\0A        lineterminator = '\5Cr\5Cn'\0A        quoting = QUOTE_MINIMAL\0A\0ASETTINGS:\0A\0A    * quotechar - specifies a one-character string to use as the \0A        quoting character.  It defaults to '\22'.\0A    * delimiter - specifies a one-character string to use as the \0A        field separator.  It defaults to ','.\0A    * skipinitialspace - specifies how to interpret whitespace which\0A        immediately follows a delimiter.  It defaults to False, which\0A        means that whitespace immediately following a delimiter is part\0A        of the following field.\0A    * lineterminator -  specifies the character sequence which should \0A        terminate rows.\0A    * quoting - controls when quotes should be generated by the writer.\0A        It can take on any of the following module constants:\0A\0A        csv.QUOTE_MINIMAL means only when required, for example, when a\0A            field contains either the quotechar or the delimiter\0A        csv.QUOTE_ALL means that quotes are always placed around fields.\0A        csv.QUOTE_NONNUMERIC means that quotes are always placed around\0A            fields which do not parse as integers or floating point\0A            numbers.\0A        csv.QUOTE_NONE means that quotes are never placed around fields.\0A    * escapechar - specifies a one-character string used to escape \0A        the delimiter when quoting is set to QUOTE_NONE.\0A    * doublequote - controls the handling of quotes inside fields.  When\0A        True, two consecutive quotes are interpreted as one during read,\0A        and when writing, each quote character embedded in the data is\0A        written as two quotes\0A\00", align 16
@csv_methods = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_reader to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([555 x i8], [555 x i8]* @csv_reader_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_writer to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([389 x i8], [389 x i8]* @csv_writer_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @csv_list_dialects, i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @csv_list_dialects_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_register_dialect to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @csv_register_dialect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @csv_unregister_dialect, i32 8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @csv_unregister_dialect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @csv_get_dialect, i32 8, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @csv_get_dialect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @csv_field_size_limit, i32 1, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @csv_field_size_limit_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"reader\00", align 1
@csv_reader_doc = internal global [555 x i8] c"    csv_reader = reader(iterable [, dialect='excel']\0A                        [optional keyword args])\0A    for row in csv_reader:\0A        process(row)\0A\0AThe \22iterable\22 argument can be any object that returns a line\0Aof input for each iteration, such as a file object or a list.  The\0Aoptional \22dialect\22 parameter is discussed below.  The function\0Aalso accepts optional keyword arguments which override settings\0Aprovided by the dialect.\0A\0AThe returned object is an iterator.  Each iteration returns a row\0Aof the CSV file (which can span multiple input lines):\0A\00", align 16
@.str.45 = private unnamed_addr constant [7 x i8] c"writer\00", align 1
@csv_writer_doc = internal global [389 x i8] c"    csv_writer = csv.writer(fileobj [, dialect='excel']\0A                            [optional keyword args])\0A    for row in sequence:\0A        csv_writer.writerow(row)\0A\0A    [or]\0A\0A    csv_writer = csv.writer(fileobj [, dialect='excel']\0A                            [optional keyword args])\0A    csv_writer.writerows(rows)\0A\0AThe \22fileobj\22 argument can be any object that supports the file API.\0A\00", align 16
@.str.46 = private unnamed_addr constant [14 x i8] c"list_dialects\00", align 1
@csv_list_dialects_doc = internal global [73 x i8] c"Return a list of all know dialect names.\0A    names = csv.list_dialects()\00", align 16
@.str.47 = private unnamed_addr constant [17 x i8] c"register_dialect\00", align 1
@csv_register_dialect_doc = internal global [106 x i8] c"Create a mapping from a string name to a dialect class.\0A    dialect = csv.register_dialect(name, dialect)\00", align 16
@.str.48 = private unnamed_addr constant [19 x i8] c"unregister_dialect\00", align 1
@csv_unregister_dialect_doc = internal global [96 x i8] c"Delete the name/dialect mapping associated with a string name.\0A    csv.unregister_dialect(name)\00", align 16
@.str.49 = private unnamed_addr constant [12 x i8] c"get_dialect\00", align 1
@csv_get_dialect_doc = internal global [86 x i8] c"Return the dialect instance associated with name.\0A    dialect = csv.get_dialect(name)\00", align 16
@.str.50 = private unnamed_addr constant [17 x i8] c"field_size_limit\00", align 1
@csv_field_size_limit_doc = internal global [165 x i8] c"Sets an upper limit on parsed fields.\0A    csv.field_size_limit([limit])\0A\0AReturns old limit. If limit is not given, no new limit is set and\0Athe old limit is returned\00", align 16
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"argument 1 must be an iterator\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@csv_writer.PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), %struct._object* null }, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"argument 1 must have a \22write\22 method\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"dialect name must be a string\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"limit must be an integer\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"QUOTE_MINIMAL\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"QUOTE_ALL\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"QUOTE_NONNUMERIC\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"QUOTE_NONE\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__csv() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %style = alloca %struct.StyleDesc*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %module to i8*, !dbg !1199
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1199
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !477, metadata !1200), !dbg !1201
  %1 = bitcast %struct.StyleDesc** %style to i8*, !dbg !1202
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.StyleDesc** %style, metadata !478, metadata !1200), !dbg !1203
  %call = call i32 @PyType_Ready(%struct._typeobject* @Dialect_Type), !dbg !1204
  %cmp = icmp slt i32 %call, 0, !dbg !1206
  br i1 %cmp, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1208
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1208

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @Reader_Type), !dbg !1209
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1211
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1212

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1213

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @Writer_Type), !dbg !1214
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1216
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1217

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1218
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1218

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_csvmodule, i32 1013), !dbg !1219
  store %struct._object* %call9, %struct._object** %module, align 8, !dbg !1220, !tbaa !1221
  %2 = load %struct._object*, %struct._object** %module, align 8, !dbg !1225, !tbaa !1221
  %cmp10 = icmp eq %struct._object* %2, null, !dbg !1227
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1228

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval, !dbg !1229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1229

if.end.12:                                        ; preds = %if.end.8
  %3 = load %struct._object*, %struct._object** %module, align 8, !dbg !1230, !tbaa !1221
  %call13 = call i32 @PyModule_AddStringConstant(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1232
  %cmp14 = icmp eq i32 %call13, -1, !dbg !1233
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1234

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval, !dbg !1235
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1235

if.end.16:                                        ; preds = %if.end.12
  %4 = load %struct._object*, %struct._object** %module, align 8, !dbg !1236, !tbaa !1221
  %call17 = call i8* @PyModule_GetState(%struct._object* %4), !dbg !1237
  %5 = bitcast i8* %call17 to %struct._csvstate*, !dbg !1238
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %5, i32 0, i32 2, !dbg !1239
  store i64 131072, i64* %field_limit, align 8, !dbg !1240, !tbaa !1241
  %call18 = call %struct._object* @PyDict_New(), !dbg !1244
  %6 = load %struct._object*, %struct._object** %module, align 8, !dbg !1245, !tbaa !1221
  %call19 = call i8* @PyModule_GetState(%struct._object* %6), !dbg !1246
  %7 = bitcast i8* %call19 to %struct._csvstate*, !dbg !1247
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %7, i32 0, i32 1, !dbg !1248
  store %struct._object* %call18, %struct._object** %dialects, align 8, !dbg !1249, !tbaa !1250
  %8 = load %struct._object*, %struct._object** %module, align 8, !dbg !1251, !tbaa !1221
  %call20 = call i8* @PyModule_GetState(%struct._object* %8), !dbg !1253
  %9 = bitcast i8* %call20 to %struct._csvstate*, !dbg !1254
  %dialects21 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %9, i32 0, i32 1, !dbg !1255
  %10 = load %struct._object*, %struct._object** %dialects21, align 8, !dbg !1255, !tbaa !1250
  %cmp22 = icmp eq %struct._object* %10, null, !dbg !1256
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !1257

if.then.23:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !1258
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1258

if.end.24:                                        ; preds = %if.end.16
  %11 = load %struct._object*, %struct._object** %module, align 8, !dbg !1259, !tbaa !1221
  %call25 = call i8* @PyModule_GetState(%struct._object* %11), !dbg !1260
  %12 = bitcast i8* %call25 to %struct._csvstate*, !dbg !1261
  %dialects26 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %12, i32 0, i32 1, !dbg !1262
  %13 = load %struct._object*, %struct._object** %dialects26, align 8, !dbg !1262, !tbaa !1250
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1263
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1264, !tbaa !1265
  %inc = add i64 %14, 1, !dbg !1264
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1264, !tbaa !1265
  %15 = load %struct._object*, %struct._object** %module, align 8, !dbg !1267, !tbaa !1221
  %16 = load %struct._object*, %struct._object** %module, align 8, !dbg !1269, !tbaa !1221
  %call27 = call i8* @PyModule_GetState(%struct._object* %16), !dbg !1270
  %17 = bitcast i8* %call27 to %struct._csvstate*, !dbg !1271
  %dialects28 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %17, i32 0, i32 1, !dbg !1272
  %18 = load %struct._object*, %struct._object** %dialects28, align 8, !dbg !1272, !tbaa !1250
  %call29 = call i32 @PyModule_AddObject(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* %18), !dbg !1273
  %tobool = icmp ne i32 %call29, 0, !dbg !1273
  br i1 %tobool, label %if.then.30, label %if.end.31, !dbg !1274

if.then.30:                                       ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval, !dbg !1275
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1275

if.end.31:                                        ; preds = %if.end.24
  store %struct.StyleDesc* getelementptr inbounds ([5 x %struct.StyleDesc], [5 x %struct.StyleDesc]* @quote_styles, i32 0, i32 0), %struct.StyleDesc** %style, align 8, !dbg !1276, !tbaa !1221
  br label %for.cond, !dbg !1278

for.cond:                                         ; preds = %for.inc, %if.end.31
  %19 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8, !dbg !1279, !tbaa !1221
  %name = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %19, i32 0, i32 1, !dbg !1283
  %20 = load i8*, i8** %name, align 8, !dbg !1283, !tbaa !1284
  %tobool32 = icmp ne i8* %20, null, !dbg !1286
  br i1 %tobool32, label %for.body, label %for.end, !dbg !1286

for.body:                                         ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %module, align 8, !dbg !1287, !tbaa !1221
  %22 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8, !dbg !1290, !tbaa !1221
  %name33 = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %22, i32 0, i32 1, !dbg !1291
  %23 = load i8*, i8** %name33, align 8, !dbg !1291, !tbaa !1284
  %24 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8, !dbg !1292, !tbaa !1221
  %style34 = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %24, i32 0, i32 0, !dbg !1293
  %25 = load i32, i32* %style34, align 4, !dbg !1293, !tbaa !1294
  %conv = zext i32 %25 to i64, !dbg !1292
  %call35 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* %23, i64 %conv), !dbg !1295
  %cmp36 = icmp eq i32 %call35, -1, !dbg !1296
  br i1 %cmp36, label %if.then.38, label %if.end.39, !dbg !1297

if.then.38:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval, !dbg !1298
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1298

if.end.39:                                        ; preds = %for.body
  br label %for.inc, !dbg !1299

for.inc:                                          ; preds = %if.end.39
  %26 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8, !dbg !1300, !tbaa !1221
  %incdec.ptr = getelementptr %struct.StyleDesc, %struct.StyleDesc* %26, i32 1, !dbg !1300
  store %struct.StyleDesc* %incdec.ptr, %struct.StyleDesc** %style, align 8, !dbg !1300, !tbaa !1221
  br label %for.cond, !dbg !1301

for.end:                                          ; preds = %for.cond
  %27 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1302, !tbaa !1265
  %inc40 = add i64 %27, 1, !dbg !1302
  store i64 %inc40, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1302, !tbaa !1265
  %28 = load %struct._object*, %struct._object** %module, align 8, !dbg !1303, !tbaa !1221
  %call41 = call i32 @PyModule_AddObject(%struct._object* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0)), !dbg !1305
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1305
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !1306

if.then.43:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !1307
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1307

if.end.44:                                        ; preds = %for.end
  %call45 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !1308
  %29 = load %struct._object*, %struct._object** %module, align 8, !dbg !1309, !tbaa !1221
  %call46 = call i8* @PyModule_GetState(%struct._object* %29), !dbg !1310
  %30 = bitcast i8* %call46 to %struct._csvstate*, !dbg !1311
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %30, i32 0, i32 0, !dbg !1312
  store %struct._object* %call45, %struct._object** %error_obj, align 8, !dbg !1313, !tbaa !1314
  %31 = load %struct._object*, %struct._object** %module, align 8, !dbg !1315, !tbaa !1221
  %call47 = call i8* @PyModule_GetState(%struct._object* %31), !dbg !1317
  %32 = bitcast i8* %call47 to %struct._csvstate*, !dbg !1318
  %error_obj48 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %32, i32 0, i32 0, !dbg !1319
  %33 = load %struct._object*, %struct._object** %error_obj48, align 8, !dbg !1319, !tbaa !1314
  %cmp49 = icmp eq %struct._object* %33, null, !dbg !1320
  br i1 %cmp49, label %if.then.51, label %if.end.52, !dbg !1321

if.then.51:                                       ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval, !dbg !1322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1322

if.end.52:                                        ; preds = %if.end.44
  %34 = load %struct._object*, %struct._object** %module, align 8, !dbg !1323, !tbaa !1221
  %call53 = call i8* @PyModule_GetState(%struct._object* %34), !dbg !1324
  %35 = bitcast i8* %call53 to %struct._csvstate*, !dbg !1325
  %error_obj54 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %35, i32 0, i32 0, !dbg !1326
  %36 = load %struct._object*, %struct._object** %error_obj54, align 8, !dbg !1326, !tbaa !1314
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1327
  %37 = load i64, i64* %ob_refcnt55, align 8, !dbg !1328, !tbaa !1265
  %inc56 = add i64 %37, 1, !dbg !1328
  store i64 %inc56, i64* %ob_refcnt55, align 8, !dbg !1328, !tbaa !1265
  %38 = load %struct._object*, %struct._object** %module, align 8, !dbg !1329, !tbaa !1221
  %39 = load %struct._object*, %struct._object** %module, align 8, !dbg !1330, !tbaa !1221
  %call57 = call i8* @PyModule_GetState(%struct._object* %39), !dbg !1331
  %40 = bitcast i8* %call57 to %struct._csvstate*, !dbg !1332
  %error_obj58 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %40, i32 0, i32 0, !dbg !1333
  %41 = load %struct._object*, %struct._object** %error_obj58, align 8, !dbg !1333, !tbaa !1314
  %call59 = call i32 @PyModule_AddObject(%struct._object* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* %41), !dbg !1334
  %42 = load %struct._object*, %struct._object** %module, align 8, !dbg !1335, !tbaa !1221
  store %struct._object* %42, %struct._object** %retval, !dbg !1336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1336

cleanup:                                          ; preds = %if.end.52, %if.then.51, %if.then.43, %if.then.38, %if.then.30, %if.then.23, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %43 = bitcast %struct.StyleDesc** %style to i8*, !dbg !1337
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1337
  %44 = bitcast %struct._object** %module to i8*, !dbg !1337
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1337
  %45 = load %struct._object*, %struct._object** %retval, !dbg !1337
  ret %struct._object* %45, !dbg !1337
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #3

declare i8* @PyModule_GetState(%struct._object*) #3

declare %struct._object* @PyDict_New() #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @Dialect_dealloc(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !490, metadata !1200), !dbg !1338
  br label %do.body, !dbg !1339

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1340
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1340
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !491, metadata !1200), !dbg !1342
  %1 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !1343, !tbaa !1221
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %1, i32 0, i32 6, !dbg !1344
  %2 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !1344, !tbaa !1345
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1342, !tbaa !1221
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1348, !tbaa !1221
  %cmp = icmp ne %struct._object* %3, null, !dbg !1349
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1350

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1351

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1353
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !493, metadata !1200), !dbg !1355
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1356, !tbaa !1221
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !1355, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1357, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1359
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1360, !tbaa !1265
  %dec = add i64 %7, -1, !dbg !1360
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1360, !tbaa !1265
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1361
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1362

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1363

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1365, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1367
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1367, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !1369
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1369, !tbaa !1370
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1373, !tbaa !1221
  call void %10(%struct._object* %11), !dbg !1374
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1375
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1375
  br label %do.cond, !dbg !1377

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1378

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1380

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1382
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1382
  br label %do.end.6, !dbg !1385

do.end.6:                                         ; preds = %if.end.4
  %14 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !1386, !tbaa !1221
  %15 = bitcast %struct.DialectObj* %14 to %struct._object*, !dbg !1387
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1388
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1388, !tbaa !1368
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 38, !dbg !1389
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1389, !tbaa !1390
  %18 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !1391, !tbaa !1221
  %19 = bitcast %struct.DialectObj* %18 to %struct._object*, !dbg !1392
  %20 = bitcast %struct._object* %19 to i8*, !dbg !1392
  call void %17(i8* %20), !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dialect_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %self = alloca %struct.DialectObj*, align 8
  %ret = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %delimiter = alloca %struct._object*, align 8
  %doublequote = alloca %struct._object*, align 8
  %escapechar = alloca %struct._object*, align 8
  %lineterminator = alloca %struct._object*, align 8
  %quotechar = alloca %struct._object*, align 8
  %quoting = alloca %struct._object*, align 8
  %skipinitialspace = alloca %struct._object*, align 8
  %strict = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp58 = alloca %struct._object*, align 8
  %_py_xincref_tmp67 = alloca %struct._object*, align 8
  %_py_xincref_tmp76 = alloca %struct._object*, align 8
  %_py_xincref_tmp85 = alloca %struct._object*, align 8
  %_py_xincref_tmp94 = alloca %struct._object*, align 8
  %_py_xincref_tmp103 = alloca %struct._object*, align 8
  %_py_xincref_tmp112 = alloca %struct._object*, align 8
  %_py_xdecref_tmp224 = alloca %struct._object*, align 8
  %_py_decref_tmp228 = alloca %struct._object*, align 8
  %_py_xdecref_tmp243 = alloca %struct._object*, align 8
  %_py_decref_tmp247 = alloca %struct._object*, align 8
  %_py_xdecref_tmp262 = alloca %struct._object*, align 8
  %_py_decref_tmp266 = alloca %struct._object*, align 8
  %_py_xdecref_tmp281 = alloca %struct._object*, align 8
  %_py_decref_tmp285 = alloca %struct._object*, align 8
  %_py_xdecref_tmp300 = alloca %struct._object*, align 8
  %_py_decref_tmp304 = alloca %struct._object*, align 8
  %_py_xdecref_tmp319 = alloca %struct._object*, align 8
  %_py_decref_tmp323 = alloca %struct._object*, align 8
  %_py_xdecref_tmp338 = alloca %struct._object*, align 8
  %_py_decref_tmp342 = alloca %struct._object*, align 8
  %_py_xdecref_tmp357 = alloca %struct._object*, align 8
  %_py_decref_tmp361 = alloca %struct._object*, align 8
  %_py_xdecref_tmp376 = alloca %struct._object*, align 8
  %_py_decref_tmp380 = alloca %struct._object*, align 8
  %_py_xdecref_tmp395 = alloca %struct._object*, align 8
  %_py_decref_tmp399 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !529, metadata !1200), !dbg !1395
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !530, metadata !1200), !dbg !1396
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !531, metadata !1200), !dbg !1397
  %0 = bitcast %struct.DialectObj** %self to i8*, !dbg !1398
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1398
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self, metadata !532, metadata !1200), !dbg !1399
  %1 = bitcast %struct._object** %ret to i8*, !dbg !1400
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1400
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !533, metadata !1200), !dbg !1401
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !1401, !tbaa !1221
  %2 = bitcast %struct._object** %dialect to i8*, !dbg !1402
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1402
  call void @llvm.dbg.declare(metadata %struct._object** %dialect, metadata !534, metadata !1200), !dbg !1403
  store %struct._object* null, %struct._object** %dialect, align 8, !dbg !1403, !tbaa !1221
  %3 = bitcast %struct._object** %delimiter to i8*, !dbg !1404
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1404
  call void @llvm.dbg.declare(metadata %struct._object** %delimiter, metadata !535, metadata !1200), !dbg !1405
  store %struct._object* null, %struct._object** %delimiter, align 8, !dbg !1405, !tbaa !1221
  %4 = bitcast %struct._object** %doublequote to i8*, !dbg !1406
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1406
  call void @llvm.dbg.declare(metadata %struct._object** %doublequote, metadata !536, metadata !1200), !dbg !1407
  store %struct._object* null, %struct._object** %doublequote, align 8, !dbg !1407, !tbaa !1221
  %5 = bitcast %struct._object** %escapechar to i8*, !dbg !1408
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1408
  call void @llvm.dbg.declare(metadata %struct._object** %escapechar, metadata !537, metadata !1200), !dbg !1409
  store %struct._object* null, %struct._object** %escapechar, align 8, !dbg !1409, !tbaa !1221
  %6 = bitcast %struct._object** %lineterminator to i8*, !dbg !1410
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1410
  call void @llvm.dbg.declare(metadata %struct._object** %lineterminator, metadata !538, metadata !1200), !dbg !1411
  store %struct._object* null, %struct._object** %lineterminator, align 8, !dbg !1411, !tbaa !1221
  %7 = bitcast %struct._object** %quotechar to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1412
  call void @llvm.dbg.declare(metadata %struct._object** %quotechar, metadata !539, metadata !1200), !dbg !1413
  store %struct._object* null, %struct._object** %quotechar, align 8, !dbg !1413, !tbaa !1221
  %8 = bitcast %struct._object** %quoting to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct._object** %quoting, metadata !540, metadata !1200), !dbg !1415
  store %struct._object* null, %struct._object** %quoting, align 8, !dbg !1415, !tbaa !1221
  %9 = bitcast %struct._object** %skipinitialspace to i8*, !dbg !1416
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1416
  call void @llvm.dbg.declare(metadata %struct._object** %skipinitialspace, metadata !541, metadata !1200), !dbg !1417
  store %struct._object* null, %struct._object** %skipinitialspace, align 8, !dbg !1417, !tbaa !1221
  %10 = bitcast %struct._object** %strict to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._object** %strict, metadata !542, metadata !1200), !dbg !1419
  store %struct._object* null, %struct._object** %strict, align 8, !dbg !1419, !tbaa !1221
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1420, !tbaa !1221
  %12 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1422, !tbaa !1221
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %11, %struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @dialect_kws, i32 0, i32 0), %struct._object** %dialect, %struct._object** %delimiter, %struct._object** %doublequote, %struct._object** %escapechar, %struct._object** %lineterminator, %struct._object** %quotechar, %struct._object** %quoting, %struct._object** %skipinitialspace, %struct._object** %strict), !dbg !1423
  %tobool = icmp ne i32 %call, 0, !dbg !1423
  br i1 %tobool, label %if.end, label %if.then, !dbg !1424

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1425
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1425

if.end:                                           ; preds = %entry
  %13 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1426, !tbaa !1221
  %cmp = icmp ne %struct._object* %13, null, !dbg !1428
  br i1 %cmp, label %if.then.1, label %if.end.31, !dbg !1429

if.then.1:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1430, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1433
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1433, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19, !dbg !1434
  %16 = load i64, i64* %tp_flags, align 8, !dbg !1434, !tbaa !1435
  %and = and i64 %16, 268435456, !dbg !1436
  %cmp2 = icmp ne i64 %and, 0, !dbg !1437
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1438

if.then.3:                                        ; preds = %if.then.1
  %17 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1439, !tbaa !1221
  %call4 = call %struct._object* @get_dialect_from_registry(%struct._object* %17), !dbg !1441
  store %struct._object* %call4, %struct._object** %dialect, align 8, !dbg !1442, !tbaa !1221
  %18 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1443, !tbaa !1221
  %cmp5 = icmp eq %struct._object* %18, null, !dbg !1445
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1446

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1447

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8, !dbg !1448

if.else:                                          ; preds = %if.then.1
  %19 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1449, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !1450
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !1451, !tbaa !1265
  %inc = add i64 %20, 1, !dbg !1451
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1451, !tbaa !1265
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end.7
  %21 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1452, !tbaa !1221
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1454
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !1454, !tbaa !1368
  %cmp10 = icmp eq %struct._typeobject* %22, @Dialect_Type, !dbg !1455
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false, !dbg !1456

lor.lhs.false:                                    ; preds = %if.end.8
  %23 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1457, !tbaa !1221
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1459
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1459, !tbaa !1368
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %24, %struct._typeobject* @Dialect_Type), !dbg !1460
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1460
  br i1 %tobool13, label %land.lhs.true, label %if.end.30, !dbg !1461

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.8
  %25 = load %struct._object*, %struct._object** %delimiter, align 8, !dbg !1462, !tbaa !1221
  %cmp14 = icmp eq %struct._object* %25, null, !dbg !1463
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.30, !dbg !1464

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %doublequote, align 8, !dbg !1465, !tbaa !1221
  %cmp16 = icmp eq %struct._object* %26, null, !dbg !1466
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.30, !dbg !1467

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %27 = load %struct._object*, %struct._object** %escapechar, align 8, !dbg !1468, !tbaa !1221
  %cmp18 = icmp eq %struct._object* %27, null, !dbg !1469
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.30, !dbg !1470

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %28 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !1471, !tbaa !1221
  %cmp20 = icmp eq %struct._object* %28, null, !dbg !1472
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30, !dbg !1473

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %29 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !1474, !tbaa !1221
  %cmp22 = icmp eq %struct._object* %29, null, !dbg !1475
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.30, !dbg !1476

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %30 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !1477, !tbaa !1221
  %cmp24 = icmp eq %struct._object* %30, null, !dbg !1478
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.30, !dbg !1479

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %31 = load %struct._object*, %struct._object** %skipinitialspace, align 8, !dbg !1480, !tbaa !1221
  %cmp26 = icmp eq %struct._object* %31, null, !dbg !1481
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.30, !dbg !1482

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %32 = load %struct._object*, %struct._object** %strict, align 8, !dbg !1483, !tbaa !1221
  %cmp28 = icmp eq %struct._object* %32, null, !dbg !1484
  br i1 %cmp28, label %if.then.29, label %if.end.30, !dbg !1485

if.then.29:                                       ; preds = %land.lhs.true.27
  %33 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1486, !tbaa !1221
  store %struct._object* %33, %struct._object** %retval, !dbg !1487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1487

if.end.30:                                        ; preds = %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %lor.lhs.false
  br label %if.end.31, !dbg !1488

if.end.31:                                        ; preds = %if.end.30, %if.end
  %34 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1489, !tbaa !1221
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 36, !dbg !1490
  %35 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1490, !tbaa !1491
  %36 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1492, !tbaa !1221
  %call32 = call %struct._object* %35(%struct._typeobject* %36, i64 0), !dbg !1489
  %37 = bitcast %struct._object* %call32 to %struct.DialectObj*, !dbg !1493
  store %struct.DialectObj* %37, %struct.DialectObj** %self, align 8, !dbg !1494, !tbaa !1221
  %38 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1495, !tbaa !1221
  %cmp33 = icmp eq %struct.DialectObj* %38, null, !dbg !1496
  br i1 %cmp33, label %if.then.34, label %if.end.47, !dbg !1497

if.then.34:                                       ; preds = %if.end.31
  br label %do.body, !dbg !1498

do.body:                                          ; preds = %if.then.34
  %39 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1499
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !543, metadata !1200), !dbg !1501
  %40 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1502, !tbaa !1221
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1501, !tbaa !1221
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1503, !tbaa !1221
  %cmp35 = icmp ne %struct._object* %41, null, !dbg !1504
  br i1 %cmp35, label %if.then.36, label %if.end.44, !dbg !1505

if.then.36:                                       ; preds = %do.body
  br label %do.body.37, !dbg !1506

do.body.37:                                       ; preds = %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1508
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !1508
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !547, metadata !1200), !dbg !1510
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1511, !tbaa !1221
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !1510, !tbaa !1221
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1512, !tbaa !1221
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !1514
  %45 = load i64, i64* %ob_refcnt38, align 8, !dbg !1515, !tbaa !1265
  %dec = add i64 %45, -1, !dbg !1515
  store i64 %dec, i64* %ob_refcnt38, align 8, !dbg !1515, !tbaa !1265
  %cmp39 = icmp ne i64 %dec, 0, !dbg !1516
  br i1 %cmp39, label %if.then.40, label %if.else.41, !dbg !1517

if.then.40:                                       ; preds = %do.body.37
  br label %if.end.43, !dbg !1518

if.else.41:                                       ; preds = %do.body.37
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1520, !tbaa !1221
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !1522
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1522, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !1523
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1523, !tbaa !1370
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1524, !tbaa !1221
  call void %48(%struct._object* %49), !dbg !1525
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1526
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1526
  br label %do.cond, !dbg !1528

do.cond:                                          ; preds = %if.end.43
  br label %do.end, !dbg !1529

do.end:                                           ; preds = %do.cond
  br label %if.end.44, !dbg !1531

if.end.44:                                        ; preds = %do.end, %do.body
  %51 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1533
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1533
  br label %do.cond.45, !dbg !1536

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1537

do.end.46:                                        ; preds = %do.cond.45
  store %struct._object* null, %struct._object** %retval, !dbg !1539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1539

if.end.47:                                        ; preds = %if.end.31
  %52 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1540, !tbaa !1221
  %lineterminator48 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %52, i32 0, i32 6, !dbg !1541
  store %struct._object* null, %struct._object** %lineterminator48, align 8, !dbg !1542, !tbaa !1345
  br label %do.body.49, !dbg !1543

do.body.49:                                       ; preds = %if.end.47
  %53 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1544
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !1544
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !550, metadata !1200), !dbg !1546
  %54 = load %struct._object*, %struct._object** %delimiter, align 8, !dbg !1547, !tbaa !1221
  store %struct._object* %54, %struct._object** %_py_xincref_tmp, align 8, !dbg !1546, !tbaa !1221
  %55 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1548, !tbaa !1221
  %cmp50 = icmp ne %struct._object* %55, null, !dbg !1550
  br i1 %cmp50, label %if.then.51, label %if.end.54, !dbg !1551

if.then.51:                                       ; preds = %do.body.49
  %56 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1552, !tbaa !1221
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1554
  %57 = load i64, i64* %ob_refcnt52, align 8, !dbg !1555, !tbaa !1265
  %inc53 = add i64 %57, 1, !dbg !1555
  store i64 %inc53, i64* %ob_refcnt52, align 8, !dbg !1555, !tbaa !1265
  br label %if.end.54, !dbg !1556

if.end.54:                                        ; preds = %if.then.51, %do.body.49
  %58 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1557
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !1557
  br label %do.cond.55, !dbg !1560

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !1561

do.end.56:                                        ; preds = %do.cond.55
  br label %do.body.57, !dbg !1563

do.body.57:                                       ; preds = %do.end.56
  %59 = bitcast %struct._object** %_py_xincref_tmp58 to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !1564
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp58, metadata !552, metadata !1200), !dbg !1566
  %60 = load %struct._object*, %struct._object** %doublequote, align 8, !dbg !1567, !tbaa !1221
  store %struct._object* %60, %struct._object** %_py_xincref_tmp58, align 8, !dbg !1566, !tbaa !1221
  %61 = load %struct._object*, %struct._object** %_py_xincref_tmp58, align 8, !dbg !1568, !tbaa !1221
  %cmp59 = icmp ne %struct._object* %61, null, !dbg !1570
  br i1 %cmp59, label %if.then.60, label %if.end.63, !dbg !1571

if.then.60:                                       ; preds = %do.body.57
  %62 = load %struct._object*, %struct._object** %_py_xincref_tmp58, align 8, !dbg !1572, !tbaa !1221
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !1574
  %63 = load i64, i64* %ob_refcnt61, align 8, !dbg !1575, !tbaa !1265
  %inc62 = add i64 %63, 1, !dbg !1575
  store i64 %inc62, i64* %ob_refcnt61, align 8, !dbg !1575, !tbaa !1265
  br label %if.end.63, !dbg !1576

if.end.63:                                        ; preds = %if.then.60, %do.body.57
  %64 = bitcast %struct._object** %_py_xincref_tmp58 to i8*, !dbg !1577
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !1577
  br label %do.cond.64, !dbg !1578

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !1579

do.end.65:                                        ; preds = %do.cond.64
  br label %do.body.66, !dbg !1581

do.body.66:                                       ; preds = %do.end.65
  %65 = bitcast %struct._object** %_py_xincref_tmp67 to i8*, !dbg !1582
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !1582
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp67, metadata !554, metadata !1200), !dbg !1584
  %66 = load %struct._object*, %struct._object** %escapechar, align 8, !dbg !1585, !tbaa !1221
  store %struct._object* %66, %struct._object** %_py_xincref_tmp67, align 8, !dbg !1584, !tbaa !1221
  %67 = load %struct._object*, %struct._object** %_py_xincref_tmp67, align 8, !dbg !1586, !tbaa !1221
  %cmp68 = icmp ne %struct._object* %67, null, !dbg !1588
  br i1 %cmp68, label %if.then.69, label %if.end.72, !dbg !1589

if.then.69:                                       ; preds = %do.body.66
  %68 = load %struct._object*, %struct._object** %_py_xincref_tmp67, align 8, !dbg !1590, !tbaa !1221
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !1592
  %69 = load i64, i64* %ob_refcnt70, align 8, !dbg !1593, !tbaa !1265
  %inc71 = add i64 %69, 1, !dbg !1593
  store i64 %inc71, i64* %ob_refcnt70, align 8, !dbg !1593, !tbaa !1265
  br label %if.end.72, !dbg !1594

if.end.72:                                        ; preds = %if.then.69, %do.body.66
  %70 = bitcast %struct._object** %_py_xincref_tmp67 to i8*, !dbg !1595
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !1595
  br label %do.cond.73, !dbg !1596

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !1597

do.end.74:                                        ; preds = %do.cond.73
  br label %do.body.75, !dbg !1599

do.body.75:                                       ; preds = %do.end.74
  %71 = bitcast %struct._object** %_py_xincref_tmp76 to i8*, !dbg !1600
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !1600
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp76, metadata !556, metadata !1200), !dbg !1602
  %72 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !1603, !tbaa !1221
  store %struct._object* %72, %struct._object** %_py_xincref_tmp76, align 8, !dbg !1602, !tbaa !1221
  %73 = load %struct._object*, %struct._object** %_py_xincref_tmp76, align 8, !dbg !1604, !tbaa !1221
  %cmp77 = icmp ne %struct._object* %73, null, !dbg !1606
  br i1 %cmp77, label %if.then.78, label %if.end.81, !dbg !1607

if.then.78:                                       ; preds = %do.body.75
  %74 = load %struct._object*, %struct._object** %_py_xincref_tmp76, align 8, !dbg !1608, !tbaa !1221
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !1610
  %75 = load i64, i64* %ob_refcnt79, align 8, !dbg !1611, !tbaa !1265
  %inc80 = add i64 %75, 1, !dbg !1611
  store i64 %inc80, i64* %ob_refcnt79, align 8, !dbg !1611, !tbaa !1265
  br label %if.end.81, !dbg !1612

if.end.81:                                        ; preds = %if.then.78, %do.body.75
  %76 = bitcast %struct._object** %_py_xincref_tmp76 to i8*, !dbg !1613
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1613
  br label %do.cond.82, !dbg !1614

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !1615

do.end.83:                                        ; preds = %do.cond.82
  br label %do.body.84, !dbg !1617

do.body.84:                                       ; preds = %do.end.83
  %77 = bitcast %struct._object** %_py_xincref_tmp85 to i8*, !dbg !1618
  call void @llvm.lifetime.start(i64 8, i8* %77) #1, !dbg !1618
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp85, metadata !558, metadata !1200), !dbg !1620
  %78 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !1621, !tbaa !1221
  store %struct._object* %78, %struct._object** %_py_xincref_tmp85, align 8, !dbg !1620, !tbaa !1221
  %79 = load %struct._object*, %struct._object** %_py_xincref_tmp85, align 8, !dbg !1622, !tbaa !1221
  %cmp86 = icmp ne %struct._object* %79, null, !dbg !1624
  br i1 %cmp86, label %if.then.87, label %if.end.90, !dbg !1625

if.then.87:                                       ; preds = %do.body.84
  %80 = load %struct._object*, %struct._object** %_py_xincref_tmp85, align 8, !dbg !1626, !tbaa !1221
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0, !dbg !1628
  %81 = load i64, i64* %ob_refcnt88, align 8, !dbg !1629, !tbaa !1265
  %inc89 = add i64 %81, 1, !dbg !1629
  store i64 %inc89, i64* %ob_refcnt88, align 8, !dbg !1629, !tbaa !1265
  br label %if.end.90, !dbg !1630

if.end.90:                                        ; preds = %if.then.87, %do.body.84
  %82 = bitcast %struct._object** %_py_xincref_tmp85 to i8*, !dbg !1631
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !1631
  br label %do.cond.91, !dbg !1632

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !1633

do.end.92:                                        ; preds = %do.cond.91
  br label %do.body.93, !dbg !1635

do.body.93:                                       ; preds = %do.end.92
  %83 = bitcast %struct._object** %_py_xincref_tmp94 to i8*, !dbg !1636
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !1636
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp94, metadata !560, metadata !1200), !dbg !1638
  %84 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !1639, !tbaa !1221
  store %struct._object* %84, %struct._object** %_py_xincref_tmp94, align 8, !dbg !1638, !tbaa !1221
  %85 = load %struct._object*, %struct._object** %_py_xincref_tmp94, align 8, !dbg !1640, !tbaa !1221
  %cmp95 = icmp ne %struct._object* %85, null, !dbg !1642
  br i1 %cmp95, label %if.then.96, label %if.end.99, !dbg !1643

if.then.96:                                       ; preds = %do.body.93
  %86 = load %struct._object*, %struct._object** %_py_xincref_tmp94, align 8, !dbg !1644, !tbaa !1221
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !1646
  %87 = load i64, i64* %ob_refcnt97, align 8, !dbg !1647, !tbaa !1265
  %inc98 = add i64 %87, 1, !dbg !1647
  store i64 %inc98, i64* %ob_refcnt97, align 8, !dbg !1647, !tbaa !1265
  br label %if.end.99, !dbg !1648

if.end.99:                                        ; preds = %if.then.96, %do.body.93
  %88 = bitcast %struct._object** %_py_xincref_tmp94 to i8*, !dbg !1649
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !1649
  br label %do.cond.100, !dbg !1650

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101, !dbg !1651

do.end.101:                                       ; preds = %do.cond.100
  br label %do.body.102, !dbg !1653

do.body.102:                                      ; preds = %do.end.101
  %89 = bitcast %struct._object** %_py_xincref_tmp103 to i8*, !dbg !1654
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !1654
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp103, metadata !562, metadata !1200), !dbg !1656
  %90 = load %struct._object*, %struct._object** %skipinitialspace, align 8, !dbg !1657, !tbaa !1221
  store %struct._object* %90, %struct._object** %_py_xincref_tmp103, align 8, !dbg !1656, !tbaa !1221
  %91 = load %struct._object*, %struct._object** %_py_xincref_tmp103, align 8, !dbg !1658, !tbaa !1221
  %cmp104 = icmp ne %struct._object* %91, null, !dbg !1660
  br i1 %cmp104, label %if.then.105, label %if.end.108, !dbg !1661

if.then.105:                                      ; preds = %do.body.102
  %92 = load %struct._object*, %struct._object** %_py_xincref_tmp103, align 8, !dbg !1662, !tbaa !1221
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0, !dbg !1664
  %93 = load i64, i64* %ob_refcnt106, align 8, !dbg !1665, !tbaa !1265
  %inc107 = add i64 %93, 1, !dbg !1665
  store i64 %inc107, i64* %ob_refcnt106, align 8, !dbg !1665, !tbaa !1265
  br label %if.end.108, !dbg !1666

if.end.108:                                       ; preds = %if.then.105, %do.body.102
  %94 = bitcast %struct._object** %_py_xincref_tmp103 to i8*, !dbg !1667
  call void @llvm.lifetime.end(i64 8, i8* %94) #1, !dbg !1667
  br label %do.cond.109, !dbg !1668

do.cond.109:                                      ; preds = %if.end.108
  br label %do.end.110, !dbg !1669

do.end.110:                                       ; preds = %do.cond.109
  br label %do.body.111, !dbg !1671

do.body.111:                                      ; preds = %do.end.110
  %95 = bitcast %struct._object** %_py_xincref_tmp112 to i8*, !dbg !1672
  call void @llvm.lifetime.start(i64 8, i8* %95) #1, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp112, metadata !564, metadata !1200), !dbg !1674
  %96 = load %struct._object*, %struct._object** %strict, align 8, !dbg !1675, !tbaa !1221
  store %struct._object* %96, %struct._object** %_py_xincref_tmp112, align 8, !dbg !1674, !tbaa !1221
  %97 = load %struct._object*, %struct._object** %_py_xincref_tmp112, align 8, !dbg !1676, !tbaa !1221
  %cmp113 = icmp ne %struct._object* %97, null, !dbg !1678
  br i1 %cmp113, label %if.then.114, label %if.end.117, !dbg !1679

if.then.114:                                      ; preds = %do.body.111
  %98 = load %struct._object*, %struct._object** %_py_xincref_tmp112, align 8, !dbg !1680, !tbaa !1221
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0, !dbg !1682
  %99 = load i64, i64* %ob_refcnt115, align 8, !dbg !1683, !tbaa !1265
  %inc116 = add i64 %99, 1, !dbg !1683
  store i64 %inc116, i64* %ob_refcnt115, align 8, !dbg !1683, !tbaa !1265
  br label %if.end.117, !dbg !1684

if.end.117:                                       ; preds = %if.then.114, %do.body.111
  %100 = bitcast %struct._object** %_py_xincref_tmp112 to i8*, !dbg !1685
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !1685
  br label %do.cond.118, !dbg !1686

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119, !dbg !1687

do.end.119:                                       ; preds = %do.cond.118
  %101 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1689, !tbaa !1221
  %cmp120 = icmp ne %struct._object* %101, null, !dbg !1691
  br i1 %cmp120, label %if.then.121, label %if.end.154, !dbg !1692

if.then.121:                                      ; preds = %do.end.119
  %102 = load %struct._object*, %struct._object** %delimiter, align 8, !dbg !1693, !tbaa !1221
  %cmp122 = icmp eq %struct._object* %102, null, !dbg !1696
  br i1 %cmp122, label %if.then.123, label %if.end.125, !dbg !1697

if.then.123:                                      ; preds = %if.then.121
  %103 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1698, !tbaa !1221
  %call124 = call %struct._object* @PyObject_GetAttrString(%struct._object* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)), !dbg !1700
  store %struct._object* %call124, %struct._object** %delimiter, align 8, !dbg !1701, !tbaa !1221
  br label %if.end.125, !dbg !1702

if.end.125:                                       ; preds = %if.then.123, %if.then.121
  %104 = load %struct._object*, %struct._object** %doublequote, align 8, !dbg !1703, !tbaa !1221
  %cmp126 = icmp eq %struct._object* %104, null, !dbg !1705
  br i1 %cmp126, label %if.then.127, label %if.end.129, !dbg !1706

if.then.127:                                      ; preds = %if.end.125
  %105 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1707, !tbaa !1221
  %call128 = call %struct._object* @PyObject_GetAttrString(%struct._object* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !1709
  store %struct._object* %call128, %struct._object** %doublequote, align 8, !dbg !1710, !tbaa !1221
  br label %if.end.129, !dbg !1711

if.end.129:                                       ; preds = %if.then.127, %if.end.125
  %106 = load %struct._object*, %struct._object** %escapechar, align 8, !dbg !1712, !tbaa !1221
  %cmp130 = icmp eq %struct._object* %106, null, !dbg !1714
  br i1 %cmp130, label %if.then.131, label %if.end.133, !dbg !1715

if.then.131:                                      ; preds = %if.end.129
  %107 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1716, !tbaa !1221
  %call132 = call %struct._object* @PyObject_GetAttrString(%struct._object* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)), !dbg !1718
  store %struct._object* %call132, %struct._object** %escapechar, align 8, !dbg !1719, !tbaa !1221
  br label %if.end.133, !dbg !1720

if.end.133:                                       ; preds = %if.then.131, %if.end.129
  %108 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !1721, !tbaa !1221
  %cmp134 = icmp eq %struct._object* %108, null, !dbg !1723
  br i1 %cmp134, label %if.then.135, label %if.end.137, !dbg !1724

if.then.135:                                      ; preds = %if.end.133
  %109 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1725, !tbaa !1221
  %call136 = call %struct._object* @PyObject_GetAttrString(%struct._object* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !1727
  store %struct._object* %call136, %struct._object** %lineterminator, align 8, !dbg !1728, !tbaa !1221
  br label %if.end.137, !dbg !1729

if.end.137:                                       ; preds = %if.then.135, %if.end.133
  %110 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !1730, !tbaa !1221
  %cmp138 = icmp eq %struct._object* %110, null, !dbg !1732
  br i1 %cmp138, label %if.then.139, label %if.end.141, !dbg !1733

if.then.139:                                      ; preds = %if.end.137
  %111 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1734, !tbaa !1221
  %call140 = call %struct._object* @PyObject_GetAttrString(%struct._object* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)), !dbg !1736
  store %struct._object* %call140, %struct._object** %quotechar, align 8, !dbg !1737, !tbaa !1221
  br label %if.end.141, !dbg !1738

if.end.141:                                       ; preds = %if.then.139, %if.end.137
  %112 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !1739, !tbaa !1221
  %cmp142 = icmp eq %struct._object* %112, null, !dbg !1741
  br i1 %cmp142, label %if.then.143, label %if.end.145, !dbg !1742

if.then.143:                                      ; preds = %if.end.141
  %113 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1743, !tbaa !1221
  %call144 = call %struct._object* @PyObject_GetAttrString(%struct._object* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)), !dbg !1745
  store %struct._object* %call144, %struct._object** %quoting, align 8, !dbg !1746, !tbaa !1221
  br label %if.end.145, !dbg !1747

if.end.145:                                       ; preds = %if.then.143, %if.end.141
  %114 = load %struct._object*, %struct._object** %skipinitialspace, align 8, !dbg !1748, !tbaa !1221
  %cmp146 = icmp eq %struct._object* %114, null, !dbg !1750
  br i1 %cmp146, label %if.then.147, label %if.end.149, !dbg !1751

if.then.147:                                      ; preds = %if.end.145
  %115 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1752, !tbaa !1221
  %call148 = call %struct._object* @PyObject_GetAttrString(%struct._object* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)), !dbg !1754
  store %struct._object* %call148, %struct._object** %skipinitialspace, align 8, !dbg !1755, !tbaa !1221
  br label %if.end.149, !dbg !1756

if.end.149:                                       ; preds = %if.then.147, %if.end.145
  %116 = load %struct._object*, %struct._object** %strict, align 8, !dbg !1757, !tbaa !1221
  %cmp150 = icmp eq %struct._object* %116, null, !dbg !1759
  br i1 %cmp150, label %if.then.151, label %if.end.153, !dbg !1760

if.then.151:                                      ; preds = %if.end.149
  %117 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1761, !tbaa !1221
  %call152 = call %struct._object* @PyObject_GetAttrString(%struct._object* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1763
  store %struct._object* %call152, %struct._object** %strict, align 8, !dbg !1764, !tbaa !1221
  br label %if.end.153, !dbg !1765

if.end.153:                                       ; preds = %if.then.151, %if.end.149
  call void @PyErr_Clear(), !dbg !1766
  br label %if.end.154, !dbg !1767

if.end.154:                                       ; preds = %if.end.153, %do.end.119
  %118 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1768, !tbaa !1221
  %delimiter155 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %118, i32 0, i32 2, !dbg !1770
  %119 = load %struct._object*, %struct._object** %delimiter, align 8, !dbg !1771, !tbaa !1221
  %call156 = call i32 @_set_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %delimiter155, %struct._object* %119, i32 44), !dbg !1772
  %tobool157 = icmp ne i32 %call156, 0, !dbg !1772
  br i1 %tobool157, label %if.then.158, label %if.end.159, !dbg !1773

if.then.158:                                      ; preds = %if.end.154
  br label %err, !dbg !1774

if.end.159:                                       ; preds = %if.end.154
  %120 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1776, !tbaa !1221
  %doublequote160 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %120, i32 0, i32 1, !dbg !1778
  %121 = load %struct._object*, %struct._object** %doublequote, align 8, !dbg !1779, !tbaa !1221
  %call161 = call i32 @_set_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32* %doublequote160, %struct._object* %121, i32 1), !dbg !1780
  %tobool162 = icmp ne i32 %call161, 0, !dbg !1780
  br i1 %tobool162, label %if.then.163, label %if.end.164, !dbg !1781

if.then.163:                                      ; preds = %if.end.159
  br label %err, !dbg !1782

if.end.164:                                       ; preds = %if.end.159
  %122 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1784, !tbaa !1221
  %escapechar165 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %122, i32 0, i32 4, !dbg !1786
  %123 = load %struct._object*, %struct._object** %escapechar, align 8, !dbg !1787, !tbaa !1221
  %call166 = call i32 @_set_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32* %escapechar165, %struct._object* %123, i32 0), !dbg !1788
  %tobool167 = icmp ne i32 %call166, 0, !dbg !1788
  br i1 %tobool167, label %if.then.168, label %if.end.169, !dbg !1789

if.then.168:                                      ; preds = %if.end.164
  br label %err, !dbg !1790

if.end.169:                                       ; preds = %if.end.164
  %124 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1792, !tbaa !1221
  %lineterminator170 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %124, i32 0, i32 6, !dbg !1794
  %125 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !1795, !tbaa !1221
  %call171 = call i32 @_set_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._object** %lineterminator170, %struct._object* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)), !dbg !1796
  %tobool172 = icmp ne i32 %call171, 0, !dbg !1796
  br i1 %tobool172, label %if.then.173, label %if.end.174, !dbg !1797

if.then.173:                                      ; preds = %if.end.169
  br label %err, !dbg !1798

if.end.174:                                       ; preds = %if.end.169
  %126 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1800, !tbaa !1221
  %quotechar175 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %126, i32 0, i32 3, !dbg !1802
  %127 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !1803, !tbaa !1221
  %call176 = call i32 @_set_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32* %quotechar175, %struct._object* %127, i32 34), !dbg !1804
  %tobool177 = icmp ne i32 %call176, 0, !dbg !1804
  br i1 %tobool177, label %if.then.178, label %if.end.179, !dbg !1805

if.then.178:                                      ; preds = %if.end.174
  br label %err, !dbg !1806

if.end.179:                                       ; preds = %if.end.174
  %128 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1808, !tbaa !1221
  %quoting180 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %128, i32 0, i32 7, !dbg !1810
  %129 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !1811, !tbaa !1221
  %call181 = call i32 @_set_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32* %quoting180, %struct._object* %129, i32 0), !dbg !1812
  %tobool182 = icmp ne i32 %call181, 0, !dbg !1812
  br i1 %tobool182, label %if.then.183, label %if.end.184, !dbg !1813

if.then.183:                                      ; preds = %if.end.179
  br label %err, !dbg !1814

if.end.184:                                       ; preds = %if.end.179
  %130 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1816, !tbaa !1221
  %skipinitialspace185 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %130, i32 0, i32 5, !dbg !1818
  %131 = load %struct._object*, %struct._object** %skipinitialspace, align 8, !dbg !1819, !tbaa !1221
  %call186 = call i32 @_set_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32* %skipinitialspace185, %struct._object* %131, i32 0), !dbg !1820
  %tobool187 = icmp ne i32 %call186, 0, !dbg !1820
  br i1 %tobool187, label %if.then.188, label %if.end.189, !dbg !1821

if.then.188:                                      ; preds = %if.end.184
  br label %err, !dbg !1822

if.end.189:                                       ; preds = %if.end.184
  %132 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1824, !tbaa !1221
  %strict190 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %132, i32 0, i32 8, !dbg !1826
  %133 = load %struct._object*, %struct._object** %strict, align 8, !dbg !1827, !tbaa !1221
  %call191 = call i32 @_set_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32* %strict190, %struct._object* %133, i32 0), !dbg !1828
  %tobool192 = icmp ne i32 %call191, 0, !dbg !1828
  br i1 %tobool192, label %if.then.193, label %if.end.194, !dbg !1829

if.then.193:                                      ; preds = %if.end.189
  br label %err, !dbg !1830

if.end.194:                                       ; preds = %if.end.189
  %134 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1832, !tbaa !1221
  %quoting195 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %134, i32 0, i32 7, !dbg !1834
  %135 = load i32, i32* %quoting195, align 4, !dbg !1834, !tbaa !1835
  %call196 = call i32 @dialect_check_quoting(i32 %135), !dbg !1836
  %tobool197 = icmp ne i32 %call196, 0, !dbg !1836
  br i1 %tobool197, label %if.then.198, label %if.end.199, !dbg !1837

if.then.198:                                      ; preds = %if.end.194
  br label %err, !dbg !1838

if.end.199:                                       ; preds = %if.end.194
  %136 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1839, !tbaa !1221
  %delimiter200 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %136, i32 0, i32 2, !dbg !1841
  %137 = load i32, i32* %delimiter200, align 4, !dbg !1841, !tbaa !1842
  %cmp201 = icmp eq i32 %137, 0, !dbg !1843
  br i1 %cmp201, label %if.then.202, label %if.end.203, !dbg !1844

if.then.202:                                      ; preds = %if.end.199
  %138 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1845, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0)), !dbg !1847
  br label %err, !dbg !1848

if.end.203:                                       ; preds = %if.end.199
  %139 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !1849, !tbaa !1221
  %cmp204 = icmp eq %struct._object* %139, @_Py_NoneStruct, !dbg !1851
  br i1 %cmp204, label %land.lhs.true.205, label %if.end.209, !dbg !1852

land.lhs.true.205:                                ; preds = %if.end.203
  %140 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !1853, !tbaa !1221
  %cmp206 = icmp eq %struct._object* %140, null, !dbg !1855
  br i1 %cmp206, label %if.then.207, label %if.end.209, !dbg !1856

if.then.207:                                      ; preds = %land.lhs.true.205
  %141 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1857, !tbaa !1221
  %quoting208 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %141, i32 0, i32 7, !dbg !1858
  store i32 3, i32* %quoting208, align 4, !dbg !1859, !tbaa !1835
  br label %if.end.209, !dbg !1857

if.end.209:                                       ; preds = %if.then.207, %land.lhs.true.205, %if.end.203
  %142 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1860, !tbaa !1221
  %quoting210 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %142, i32 0, i32 7, !dbg !1862
  %143 = load i32, i32* %quoting210, align 4, !dbg !1862, !tbaa !1835
  %cmp211 = icmp ne i32 %143, 3, !dbg !1863
  br i1 %cmp211, label %land.lhs.true.212, label %if.end.216, !dbg !1864

land.lhs.true.212:                                ; preds = %if.end.209
  %144 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1865, !tbaa !1221
  %quotechar213 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %144, i32 0, i32 3, !dbg !1867
  %145 = load i32, i32* %quotechar213, align 4, !dbg !1867, !tbaa !1868
  %cmp214 = icmp eq i32 %145, 0, !dbg !1869
  br i1 %cmp214, label %if.then.215, label %if.end.216, !dbg !1870

if.then.215:                                      ; preds = %land.lhs.true.212
  %146 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1871, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0)), !dbg !1873
  br label %err, !dbg !1874

if.end.216:                                       ; preds = %land.lhs.true.212, %if.end.209
  %147 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1875, !tbaa !1221
  %lineterminator217 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %147, i32 0, i32 6, !dbg !1877
  %148 = load %struct._object*, %struct._object** %lineterminator217, align 8, !dbg !1877, !tbaa !1345
  %cmp218 = icmp eq %struct._object* %148, null, !dbg !1878
  br i1 %cmp218, label %if.then.219, label %if.end.220, !dbg !1879

if.then.219:                                      ; preds = %if.end.216
  %149 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1880, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0)), !dbg !1882
  br label %err, !dbg !1883

if.end.220:                                       ; preds = %if.end.216
  %150 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1884, !tbaa !1221
  %151 = bitcast %struct.DialectObj* %150 to %struct._object*, !dbg !1885
  store %struct._object* %151, %struct._object** %ret, align 8, !dbg !1886, !tbaa !1221
  %152 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1887, !tbaa !1221
  %153 = bitcast %struct.DialectObj* %152 to %struct._object*, !dbg !1888
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0, !dbg !1889
  %154 = load i64, i64* %ob_refcnt221, align 8, !dbg !1890, !tbaa !1265
  %inc222 = add i64 %154, 1, !dbg !1890
  store i64 %inc222, i64* %ob_refcnt221, align 8, !dbg !1890, !tbaa !1265
  br label %err, !dbg !1891

err:                                              ; preds = %if.end.220, %if.then.219, %if.then.215, %if.then.202, %if.then.198, %if.then.193, %if.then.188, %if.then.183, %if.then.178, %if.then.173, %if.then.168, %if.then.163, %if.then.158
  br label %do.body.223, !dbg !1892

do.body.223:                                      ; preds = %err
  %155 = bitcast %struct._object** %_py_xdecref_tmp224 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %155) #1, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp224, metadata !566, metadata !1200), !dbg !1895
  %156 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8, !dbg !1896, !tbaa !1221
  %157 = bitcast %struct.DialectObj* %156 to %struct._object*, !dbg !1897
  store %struct._object* %157, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !1895, !tbaa !1221
  %158 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !1898, !tbaa !1221
  %cmp225 = icmp ne %struct._object* %158, null, !dbg !1899
  br i1 %cmp225, label %if.then.226, label %if.end.239, !dbg !1900

if.then.226:                                      ; preds = %do.body.223
  br label %do.body.227, !dbg !1901

do.body.227:                                      ; preds = %if.then.226
  %159 = bitcast %struct._object** %_py_decref_tmp228 to i8*, !dbg !1903
  call void @llvm.lifetime.start(i64 8, i8* %159) #1, !dbg !1903
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp228, metadata !568, metadata !1200), !dbg !1905
  %160 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8, !dbg !1906, !tbaa !1221
  store %struct._object* %160, %struct._object** %_py_decref_tmp228, align 8, !dbg !1905, !tbaa !1221
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8, !dbg !1907, !tbaa !1221
  %ob_refcnt229 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0, !dbg !1909
  %162 = load i64, i64* %ob_refcnt229, align 8, !dbg !1910, !tbaa !1265
  %dec230 = add i64 %162, -1, !dbg !1910
  store i64 %dec230, i64* %ob_refcnt229, align 8, !dbg !1910, !tbaa !1265
  %cmp231 = icmp ne i64 %dec230, 0, !dbg !1911
  br i1 %cmp231, label %if.then.232, label %if.else.233, !dbg !1912

if.then.232:                                      ; preds = %do.body.227
  br label %if.end.236, !dbg !1913

if.else.233:                                      ; preds = %do.body.227
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8, !dbg !1915, !tbaa !1221
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1, !dbg !1917
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8, !dbg !1917, !tbaa !1368
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4, !dbg !1918
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !1918, !tbaa !1370
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8, !dbg !1919, !tbaa !1221
  call void %165(%struct._object* %166), !dbg !1920
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.then.232
  %167 = bitcast %struct._object** %_py_decref_tmp228 to i8*, !dbg !1921
  call void @llvm.lifetime.end(i64 8, i8* %167) #1, !dbg !1921
  br label %do.cond.237, !dbg !1923

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238, !dbg !1924

do.end.238:                                       ; preds = %do.cond.237
  br label %if.end.239, !dbg !1926

if.end.239:                                       ; preds = %do.end.238, %do.body.223
  %168 = bitcast %struct._object** %_py_xdecref_tmp224 to i8*, !dbg !1928
  call void @llvm.lifetime.end(i64 8, i8* %168) #1, !dbg !1928
  br label %do.cond.240, !dbg !1930

do.cond.240:                                      ; preds = %if.end.239
  br label %do.end.241, !dbg !1931

do.end.241:                                       ; preds = %do.cond.240
  br label %do.body.242, !dbg !1933

do.body.242:                                      ; preds = %do.end.241
  %169 = bitcast %struct._object** %_py_xdecref_tmp243 to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %169) #1, !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp243, metadata !571, metadata !1200), !dbg !1936
  %170 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !1937, !tbaa !1221
  store %struct._object* %170, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !1936, !tbaa !1221
  %171 = load %struct._object*, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !1938, !tbaa !1221
  %cmp244 = icmp ne %struct._object* %171, null, !dbg !1939
  br i1 %cmp244, label %if.then.245, label %if.end.258, !dbg !1940

if.then.245:                                      ; preds = %do.body.242
  br label %do.body.246, !dbg !1941

do.body.246:                                      ; preds = %if.then.245
  %172 = bitcast %struct._object** %_py_decref_tmp247 to i8*, !dbg !1943
  call void @llvm.lifetime.start(i64 8, i8* %172) #1, !dbg !1943
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp247, metadata !573, metadata !1200), !dbg !1945
  %173 = load %struct._object*, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !1946, !tbaa !1221
  store %struct._object* %173, %struct._object** %_py_decref_tmp247, align 8, !dbg !1945, !tbaa !1221
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1947, !tbaa !1221
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 0, !dbg !1949
  %175 = load i64, i64* %ob_refcnt248, align 8, !dbg !1950, !tbaa !1265
  %dec249 = add i64 %175, -1, !dbg !1950
  store i64 %dec249, i64* %ob_refcnt248, align 8, !dbg !1950, !tbaa !1265
  %cmp250 = icmp ne i64 %dec249, 0, !dbg !1951
  br i1 %cmp250, label %if.then.251, label %if.else.252, !dbg !1952

if.then.251:                                      ; preds = %do.body.246
  br label %if.end.255, !dbg !1953

if.else.252:                                      ; preds = %do.body.246
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1955, !tbaa !1221
  %ob_type253 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 1, !dbg !1957
  %177 = load %struct._typeobject*, %struct._typeobject** %ob_type253, align 8, !dbg !1957, !tbaa !1368
  %tp_dealloc254 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %177, i32 0, i32 4, !dbg !1958
  %178 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc254, align 8, !dbg !1958, !tbaa !1370
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8, !dbg !1959, !tbaa !1221
  call void %178(%struct._object* %179), !dbg !1960
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.252, %if.then.251
  %180 = bitcast %struct._object** %_py_decref_tmp247 to i8*, !dbg !1961
  call void @llvm.lifetime.end(i64 8, i8* %180) #1, !dbg !1961
  br label %do.cond.256, !dbg !1963

do.cond.256:                                      ; preds = %if.end.255
  br label %do.end.257, !dbg !1964

do.end.257:                                       ; preds = %do.cond.256
  br label %if.end.258, !dbg !1966

if.end.258:                                       ; preds = %do.end.257, %do.body.242
  %181 = bitcast %struct._object** %_py_xdecref_tmp243 to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %181) #1, !dbg !1968
  br label %do.cond.259, !dbg !1969

do.cond.259:                                      ; preds = %if.end.258
  br label %do.end.260, !dbg !1970

do.end.260:                                       ; preds = %do.cond.259
  br label %do.body.261, !dbg !1972

do.body.261:                                      ; preds = %do.end.260
  %182 = bitcast %struct._object** %_py_xdecref_tmp262 to i8*, !dbg !1973
  call void @llvm.lifetime.start(i64 8, i8* %182) #1, !dbg !1973
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp262, metadata !576, metadata !1200), !dbg !1975
  %183 = load %struct._object*, %struct._object** %delimiter, align 8, !dbg !1976, !tbaa !1221
  store %struct._object* %183, %struct._object** %_py_xdecref_tmp262, align 8, !dbg !1975, !tbaa !1221
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp262, align 8, !dbg !1977, !tbaa !1221
  %cmp263 = icmp ne %struct._object* %184, null, !dbg !1978
  br i1 %cmp263, label %if.then.264, label %if.end.277, !dbg !1979

if.then.264:                                      ; preds = %do.body.261
  br label %do.body.265, !dbg !1980

do.body.265:                                      ; preds = %if.then.264
  %185 = bitcast %struct._object** %_py_decref_tmp266 to i8*, !dbg !1982
  call void @llvm.lifetime.start(i64 8, i8* %185) #1, !dbg !1982
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp266, metadata !578, metadata !1200), !dbg !1984
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp262, align 8, !dbg !1985, !tbaa !1221
  store %struct._object* %186, %struct._object** %_py_decref_tmp266, align 8, !dbg !1984, !tbaa !1221
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8, !dbg !1986, !tbaa !1221
  %ob_refcnt267 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0, !dbg !1988
  %188 = load i64, i64* %ob_refcnt267, align 8, !dbg !1989, !tbaa !1265
  %dec268 = add i64 %188, -1, !dbg !1989
  store i64 %dec268, i64* %ob_refcnt267, align 8, !dbg !1989, !tbaa !1265
  %cmp269 = icmp ne i64 %dec268, 0, !dbg !1990
  br i1 %cmp269, label %if.then.270, label %if.else.271, !dbg !1991

if.then.270:                                      ; preds = %do.body.265
  br label %if.end.274, !dbg !1992

if.else.271:                                      ; preds = %do.body.265
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8, !dbg !1994, !tbaa !1221
  %ob_type272 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1, !dbg !1996
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type272, align 8, !dbg !1996, !tbaa !1368
  %tp_dealloc273 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4, !dbg !1997
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc273, align 8, !dbg !1997, !tbaa !1370
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8, !dbg !1998, !tbaa !1221
  call void %191(%struct._object* %192), !dbg !1999
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.271, %if.then.270
  %193 = bitcast %struct._object** %_py_decref_tmp266 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 8, i8* %193) #1, !dbg !2000
  br label %do.cond.275, !dbg !2002

do.cond.275:                                      ; preds = %if.end.274
  br label %do.end.276, !dbg !2003

do.end.276:                                       ; preds = %do.cond.275
  br label %if.end.277, !dbg !2005

if.end.277:                                       ; preds = %do.end.276, %do.body.261
  %194 = bitcast %struct._object** %_py_xdecref_tmp262 to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %194) #1, !dbg !2007
  br label %do.cond.278, !dbg !2008

do.cond.278:                                      ; preds = %if.end.277
  br label %do.end.279, !dbg !2009

do.end.279:                                       ; preds = %do.cond.278
  br label %do.body.280, !dbg !2011

do.body.280:                                      ; preds = %do.end.279
  %195 = bitcast %struct._object** %_py_xdecref_tmp281 to i8*, !dbg !2012
  call void @llvm.lifetime.start(i64 8, i8* %195) #1, !dbg !2012
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp281, metadata !581, metadata !1200), !dbg !2014
  %196 = load %struct._object*, %struct._object** %doublequote, align 8, !dbg !2015, !tbaa !1221
  store %struct._object* %196, %struct._object** %_py_xdecref_tmp281, align 8, !dbg !2014, !tbaa !1221
  %197 = load %struct._object*, %struct._object** %_py_xdecref_tmp281, align 8, !dbg !2016, !tbaa !1221
  %cmp282 = icmp ne %struct._object* %197, null, !dbg !2017
  br i1 %cmp282, label %if.then.283, label %if.end.296, !dbg !2018

if.then.283:                                      ; preds = %do.body.280
  br label %do.body.284, !dbg !2019

do.body.284:                                      ; preds = %if.then.283
  %198 = bitcast %struct._object** %_py_decref_tmp285 to i8*, !dbg !2021
  call void @llvm.lifetime.start(i64 8, i8* %198) #1, !dbg !2021
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp285, metadata !583, metadata !1200), !dbg !2023
  %199 = load %struct._object*, %struct._object** %_py_xdecref_tmp281, align 8, !dbg !2024, !tbaa !1221
  store %struct._object* %199, %struct._object** %_py_decref_tmp285, align 8, !dbg !2023, !tbaa !1221
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !2025, !tbaa !1221
  %ob_refcnt286 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 0, !dbg !2027
  %201 = load i64, i64* %ob_refcnt286, align 8, !dbg !2028, !tbaa !1265
  %dec287 = add i64 %201, -1, !dbg !2028
  store i64 %dec287, i64* %ob_refcnt286, align 8, !dbg !2028, !tbaa !1265
  %cmp288 = icmp ne i64 %dec287, 0, !dbg !2029
  br i1 %cmp288, label %if.then.289, label %if.else.290, !dbg !2030

if.then.289:                                      ; preds = %do.body.284
  br label %if.end.293, !dbg !2031

if.else.290:                                      ; preds = %do.body.284
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !2033, !tbaa !1221
  %ob_type291 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 1, !dbg !2035
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type291, align 8, !dbg !2035, !tbaa !1368
  %tp_dealloc292 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i32 0, i32 4, !dbg !2036
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc292, align 8, !dbg !2036, !tbaa !1370
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp285, align 8, !dbg !2037, !tbaa !1221
  call void %204(%struct._object* %205), !dbg !2038
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.290, %if.then.289
  %206 = bitcast %struct._object** %_py_decref_tmp285 to i8*, !dbg !2039
  call void @llvm.lifetime.end(i64 8, i8* %206) #1, !dbg !2039
  br label %do.cond.294, !dbg !2041

do.cond.294:                                      ; preds = %if.end.293
  br label %do.end.295, !dbg !2042

do.end.295:                                       ; preds = %do.cond.294
  br label %if.end.296, !dbg !2044

if.end.296:                                       ; preds = %do.end.295, %do.body.280
  %207 = bitcast %struct._object** %_py_xdecref_tmp281 to i8*, !dbg !2046
  call void @llvm.lifetime.end(i64 8, i8* %207) #1, !dbg !2046
  br label %do.cond.297, !dbg !2047

do.cond.297:                                      ; preds = %if.end.296
  br label %do.end.298, !dbg !2048

do.end.298:                                       ; preds = %do.cond.297
  br label %do.body.299, !dbg !2050

do.body.299:                                      ; preds = %do.end.298
  %208 = bitcast %struct._object** %_py_xdecref_tmp300 to i8*, !dbg !2051
  call void @llvm.lifetime.start(i64 8, i8* %208) #1, !dbg !2051
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp300, metadata !586, metadata !1200), !dbg !2053
  %209 = load %struct._object*, %struct._object** %escapechar, align 8, !dbg !2054, !tbaa !1221
  store %struct._object* %209, %struct._object** %_py_xdecref_tmp300, align 8, !dbg !2053, !tbaa !1221
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8, !dbg !2055, !tbaa !1221
  %cmp301 = icmp ne %struct._object* %210, null, !dbg !2056
  br i1 %cmp301, label %if.then.302, label %if.end.315, !dbg !2057

if.then.302:                                      ; preds = %do.body.299
  br label %do.body.303, !dbg !2058

do.body.303:                                      ; preds = %if.then.302
  %211 = bitcast %struct._object** %_py_decref_tmp304 to i8*, !dbg !2060
  call void @llvm.lifetime.start(i64 8, i8* %211) #1, !dbg !2060
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp304, metadata !588, metadata !1200), !dbg !2062
  %212 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8, !dbg !2063, !tbaa !1221
  store %struct._object* %212, %struct._object** %_py_decref_tmp304, align 8, !dbg !2062, !tbaa !1221
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8, !dbg !2064, !tbaa !1221
  %ob_refcnt305 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 0, !dbg !2066
  %214 = load i64, i64* %ob_refcnt305, align 8, !dbg !2067, !tbaa !1265
  %dec306 = add i64 %214, -1, !dbg !2067
  store i64 %dec306, i64* %ob_refcnt305, align 8, !dbg !2067, !tbaa !1265
  %cmp307 = icmp ne i64 %dec306, 0, !dbg !2068
  br i1 %cmp307, label %if.then.308, label %if.else.309, !dbg !2069

if.then.308:                                      ; preds = %do.body.303
  br label %if.end.312, !dbg !2070

if.else.309:                                      ; preds = %do.body.303
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8, !dbg !2072, !tbaa !1221
  %ob_type310 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 1, !dbg !2074
  %216 = load %struct._typeobject*, %struct._typeobject** %ob_type310, align 8, !dbg !2074, !tbaa !1368
  %tp_dealloc311 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %216, i32 0, i32 4, !dbg !2075
  %217 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc311, align 8, !dbg !2075, !tbaa !1370
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8, !dbg !2076, !tbaa !1221
  call void %217(%struct._object* %218), !dbg !2077
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.309, %if.then.308
  %219 = bitcast %struct._object** %_py_decref_tmp304 to i8*, !dbg !2078
  call void @llvm.lifetime.end(i64 8, i8* %219) #1, !dbg !2078
  br label %do.cond.313, !dbg !2080

do.cond.313:                                      ; preds = %if.end.312
  br label %do.end.314, !dbg !2081

do.end.314:                                       ; preds = %do.cond.313
  br label %if.end.315, !dbg !2083

if.end.315:                                       ; preds = %do.end.314, %do.body.299
  %220 = bitcast %struct._object** %_py_xdecref_tmp300 to i8*, !dbg !2085
  call void @llvm.lifetime.end(i64 8, i8* %220) #1, !dbg !2085
  br label %do.cond.316, !dbg !2086

do.cond.316:                                      ; preds = %if.end.315
  br label %do.end.317, !dbg !2087

do.end.317:                                       ; preds = %do.cond.316
  br label %do.body.318, !dbg !2089

do.body.318:                                      ; preds = %do.end.317
  %221 = bitcast %struct._object** %_py_xdecref_tmp319 to i8*, !dbg !2090
  call void @llvm.lifetime.start(i64 8, i8* %221) #1, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp319, metadata !591, metadata !1200), !dbg !2092
  %222 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !2093, !tbaa !1221
  store %struct._object* %222, %struct._object** %_py_xdecref_tmp319, align 8, !dbg !2092, !tbaa !1221
  %223 = load %struct._object*, %struct._object** %_py_xdecref_tmp319, align 8, !dbg !2094, !tbaa !1221
  %cmp320 = icmp ne %struct._object* %223, null, !dbg !2095
  br i1 %cmp320, label %if.then.321, label %if.end.334, !dbg !2096

if.then.321:                                      ; preds = %do.body.318
  br label %do.body.322, !dbg !2097

do.body.322:                                      ; preds = %if.then.321
  %224 = bitcast %struct._object** %_py_decref_tmp323 to i8*, !dbg !2099
  call void @llvm.lifetime.start(i64 8, i8* %224) #1, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp323, metadata !593, metadata !1200), !dbg !2101
  %225 = load %struct._object*, %struct._object** %_py_xdecref_tmp319, align 8, !dbg !2102, !tbaa !1221
  store %struct._object* %225, %struct._object** %_py_decref_tmp323, align 8, !dbg !2101, !tbaa !1221
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp323, align 8, !dbg !2103, !tbaa !1221
  %ob_refcnt324 = getelementptr inbounds %struct._object, %struct._object* %226, i32 0, i32 0, !dbg !2105
  %227 = load i64, i64* %ob_refcnt324, align 8, !dbg !2106, !tbaa !1265
  %dec325 = add i64 %227, -1, !dbg !2106
  store i64 %dec325, i64* %ob_refcnt324, align 8, !dbg !2106, !tbaa !1265
  %cmp326 = icmp ne i64 %dec325, 0, !dbg !2107
  br i1 %cmp326, label %if.then.327, label %if.else.328, !dbg !2108

if.then.327:                                      ; preds = %do.body.322
  br label %if.end.331, !dbg !2109

if.else.328:                                      ; preds = %do.body.322
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp323, align 8, !dbg !2111, !tbaa !1221
  %ob_type329 = getelementptr inbounds %struct._object, %struct._object* %228, i32 0, i32 1, !dbg !2113
  %229 = load %struct._typeobject*, %struct._typeobject** %ob_type329, align 8, !dbg !2113, !tbaa !1368
  %tp_dealloc330 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %229, i32 0, i32 4, !dbg !2114
  %230 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc330, align 8, !dbg !2114, !tbaa !1370
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp323, align 8, !dbg !2115, !tbaa !1221
  call void %230(%struct._object* %231), !dbg !2116
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.328, %if.then.327
  %232 = bitcast %struct._object** %_py_decref_tmp323 to i8*, !dbg !2117
  call void @llvm.lifetime.end(i64 8, i8* %232) #1, !dbg !2117
  br label %do.cond.332, !dbg !2119

do.cond.332:                                      ; preds = %if.end.331
  br label %do.end.333, !dbg !2120

do.end.333:                                       ; preds = %do.cond.332
  br label %if.end.334, !dbg !2122

if.end.334:                                       ; preds = %do.end.333, %do.body.318
  %233 = bitcast %struct._object** %_py_xdecref_tmp319 to i8*, !dbg !2124
  call void @llvm.lifetime.end(i64 8, i8* %233) #1, !dbg !2124
  br label %do.cond.335, !dbg !2125

do.cond.335:                                      ; preds = %if.end.334
  br label %do.end.336, !dbg !2126

do.end.336:                                       ; preds = %do.cond.335
  br label %do.body.337, !dbg !2128

do.body.337:                                      ; preds = %do.end.336
  %234 = bitcast %struct._object** %_py_xdecref_tmp338 to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %234) #1, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp338, metadata !596, metadata !1200), !dbg !2131
  %235 = load %struct._object*, %struct._object** %quotechar, align 8, !dbg !2132, !tbaa !1221
  store %struct._object* %235, %struct._object** %_py_xdecref_tmp338, align 8, !dbg !2131, !tbaa !1221
  %236 = load %struct._object*, %struct._object** %_py_xdecref_tmp338, align 8, !dbg !2133, !tbaa !1221
  %cmp339 = icmp ne %struct._object* %236, null, !dbg !2134
  br i1 %cmp339, label %if.then.340, label %if.end.353, !dbg !2135

if.then.340:                                      ; preds = %do.body.337
  br label %do.body.341, !dbg !2136

do.body.341:                                      ; preds = %if.then.340
  %237 = bitcast %struct._object** %_py_decref_tmp342 to i8*, !dbg !2138
  call void @llvm.lifetime.start(i64 8, i8* %237) #1, !dbg !2138
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp342, metadata !598, metadata !1200), !dbg !2140
  %238 = load %struct._object*, %struct._object** %_py_xdecref_tmp338, align 8, !dbg !2141, !tbaa !1221
  store %struct._object* %238, %struct._object** %_py_decref_tmp342, align 8, !dbg !2140, !tbaa !1221
  %239 = load %struct._object*, %struct._object** %_py_decref_tmp342, align 8, !dbg !2142, !tbaa !1221
  %ob_refcnt343 = getelementptr inbounds %struct._object, %struct._object* %239, i32 0, i32 0, !dbg !2144
  %240 = load i64, i64* %ob_refcnt343, align 8, !dbg !2145, !tbaa !1265
  %dec344 = add i64 %240, -1, !dbg !2145
  store i64 %dec344, i64* %ob_refcnt343, align 8, !dbg !2145, !tbaa !1265
  %cmp345 = icmp ne i64 %dec344, 0, !dbg !2146
  br i1 %cmp345, label %if.then.346, label %if.else.347, !dbg !2147

if.then.346:                                      ; preds = %do.body.341
  br label %if.end.350, !dbg !2148

if.else.347:                                      ; preds = %do.body.341
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp342, align 8, !dbg !2150, !tbaa !1221
  %ob_type348 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 1, !dbg !2152
  %242 = load %struct._typeobject*, %struct._typeobject** %ob_type348, align 8, !dbg !2152, !tbaa !1368
  %tp_dealloc349 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %242, i32 0, i32 4, !dbg !2153
  %243 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc349, align 8, !dbg !2153, !tbaa !1370
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp342, align 8, !dbg !2154, !tbaa !1221
  call void %243(%struct._object* %244), !dbg !2155
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.347, %if.then.346
  %245 = bitcast %struct._object** %_py_decref_tmp342 to i8*, !dbg !2156
  call void @llvm.lifetime.end(i64 8, i8* %245) #1, !dbg !2156
  br label %do.cond.351, !dbg !2158

do.cond.351:                                      ; preds = %if.end.350
  br label %do.end.352, !dbg !2159

do.end.352:                                       ; preds = %do.cond.351
  br label %if.end.353, !dbg !2161

if.end.353:                                       ; preds = %do.end.352, %do.body.337
  %246 = bitcast %struct._object** %_py_xdecref_tmp338 to i8*, !dbg !2163
  call void @llvm.lifetime.end(i64 8, i8* %246) #1, !dbg !2163
  br label %do.cond.354, !dbg !2164

do.cond.354:                                      ; preds = %if.end.353
  br label %do.end.355, !dbg !2165

do.end.355:                                       ; preds = %do.cond.354
  br label %do.body.356, !dbg !2167

do.body.356:                                      ; preds = %do.end.355
  %247 = bitcast %struct._object** %_py_xdecref_tmp357 to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 8, i8* %247) #1, !dbg !2168
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp357, metadata !601, metadata !1200), !dbg !2170
  %248 = load %struct._object*, %struct._object** %quoting, align 8, !dbg !2171, !tbaa !1221
  store %struct._object* %248, %struct._object** %_py_xdecref_tmp357, align 8, !dbg !2170, !tbaa !1221
  %249 = load %struct._object*, %struct._object** %_py_xdecref_tmp357, align 8, !dbg !2172, !tbaa !1221
  %cmp358 = icmp ne %struct._object* %249, null, !dbg !2173
  br i1 %cmp358, label %if.then.359, label %if.end.372, !dbg !2174

if.then.359:                                      ; preds = %do.body.356
  br label %do.body.360, !dbg !2175

do.body.360:                                      ; preds = %if.then.359
  %250 = bitcast %struct._object** %_py_decref_tmp361 to i8*, !dbg !2177
  call void @llvm.lifetime.start(i64 8, i8* %250) #1, !dbg !2177
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp361, metadata !603, metadata !1200), !dbg !2179
  %251 = load %struct._object*, %struct._object** %_py_xdecref_tmp357, align 8, !dbg !2180, !tbaa !1221
  store %struct._object* %251, %struct._object** %_py_decref_tmp361, align 8, !dbg !2179, !tbaa !1221
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8, !dbg !2181, !tbaa !1221
  %ob_refcnt362 = getelementptr inbounds %struct._object, %struct._object* %252, i32 0, i32 0, !dbg !2183
  %253 = load i64, i64* %ob_refcnt362, align 8, !dbg !2184, !tbaa !1265
  %dec363 = add i64 %253, -1, !dbg !2184
  store i64 %dec363, i64* %ob_refcnt362, align 8, !dbg !2184, !tbaa !1265
  %cmp364 = icmp ne i64 %dec363, 0, !dbg !2185
  br i1 %cmp364, label %if.then.365, label %if.else.366, !dbg !2186

if.then.365:                                      ; preds = %do.body.360
  br label %if.end.369, !dbg !2187

if.else.366:                                      ; preds = %do.body.360
  %254 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8, !dbg !2189, !tbaa !1221
  %ob_type367 = getelementptr inbounds %struct._object, %struct._object* %254, i32 0, i32 1, !dbg !2191
  %255 = load %struct._typeobject*, %struct._typeobject** %ob_type367, align 8, !dbg !2191, !tbaa !1368
  %tp_dealloc368 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %255, i32 0, i32 4, !dbg !2192
  %256 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc368, align 8, !dbg !2192, !tbaa !1370
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8, !dbg !2193, !tbaa !1221
  call void %256(%struct._object* %257), !dbg !2194
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.366, %if.then.365
  %258 = bitcast %struct._object** %_py_decref_tmp361 to i8*, !dbg !2195
  call void @llvm.lifetime.end(i64 8, i8* %258) #1, !dbg !2195
  br label %do.cond.370, !dbg !2197

do.cond.370:                                      ; preds = %if.end.369
  br label %do.end.371, !dbg !2198

do.end.371:                                       ; preds = %do.cond.370
  br label %if.end.372, !dbg !2200

if.end.372:                                       ; preds = %do.end.371, %do.body.356
  %259 = bitcast %struct._object** %_py_xdecref_tmp357 to i8*, !dbg !2202
  call void @llvm.lifetime.end(i64 8, i8* %259) #1, !dbg !2202
  br label %do.cond.373, !dbg !2203

do.cond.373:                                      ; preds = %if.end.372
  br label %do.end.374, !dbg !2204

do.end.374:                                       ; preds = %do.cond.373
  br label %do.body.375, !dbg !2206

do.body.375:                                      ; preds = %do.end.374
  %260 = bitcast %struct._object** %_py_xdecref_tmp376 to i8*, !dbg !2207
  call void @llvm.lifetime.start(i64 8, i8* %260) #1, !dbg !2207
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp376, metadata !606, metadata !1200), !dbg !2209
  %261 = load %struct._object*, %struct._object** %skipinitialspace, align 8, !dbg !2210, !tbaa !1221
  store %struct._object* %261, %struct._object** %_py_xdecref_tmp376, align 8, !dbg !2209, !tbaa !1221
  %262 = load %struct._object*, %struct._object** %_py_xdecref_tmp376, align 8, !dbg !2211, !tbaa !1221
  %cmp377 = icmp ne %struct._object* %262, null, !dbg !2212
  br i1 %cmp377, label %if.then.378, label %if.end.391, !dbg !2213

if.then.378:                                      ; preds = %do.body.375
  br label %do.body.379, !dbg !2214

do.body.379:                                      ; preds = %if.then.378
  %263 = bitcast %struct._object** %_py_decref_tmp380 to i8*, !dbg !2216
  call void @llvm.lifetime.start(i64 8, i8* %263) #1, !dbg !2216
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp380, metadata !608, metadata !1200), !dbg !2218
  %264 = load %struct._object*, %struct._object** %_py_xdecref_tmp376, align 8, !dbg !2219, !tbaa !1221
  store %struct._object* %264, %struct._object** %_py_decref_tmp380, align 8, !dbg !2218, !tbaa !1221
  %265 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8, !dbg !2220, !tbaa !1221
  %ob_refcnt381 = getelementptr inbounds %struct._object, %struct._object* %265, i32 0, i32 0, !dbg !2222
  %266 = load i64, i64* %ob_refcnt381, align 8, !dbg !2223, !tbaa !1265
  %dec382 = add i64 %266, -1, !dbg !2223
  store i64 %dec382, i64* %ob_refcnt381, align 8, !dbg !2223, !tbaa !1265
  %cmp383 = icmp ne i64 %dec382, 0, !dbg !2224
  br i1 %cmp383, label %if.then.384, label %if.else.385, !dbg !2225

if.then.384:                                      ; preds = %do.body.379
  br label %if.end.388, !dbg !2226

if.else.385:                                      ; preds = %do.body.379
  %267 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8, !dbg !2228, !tbaa !1221
  %ob_type386 = getelementptr inbounds %struct._object, %struct._object* %267, i32 0, i32 1, !dbg !2230
  %268 = load %struct._typeobject*, %struct._typeobject** %ob_type386, align 8, !dbg !2230, !tbaa !1368
  %tp_dealloc387 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %268, i32 0, i32 4, !dbg !2231
  %269 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc387, align 8, !dbg !2231, !tbaa !1370
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8, !dbg !2232, !tbaa !1221
  call void %269(%struct._object* %270), !dbg !2233
  br label %if.end.388

if.end.388:                                       ; preds = %if.else.385, %if.then.384
  %271 = bitcast %struct._object** %_py_decref_tmp380 to i8*, !dbg !2234
  call void @llvm.lifetime.end(i64 8, i8* %271) #1, !dbg !2234
  br label %do.cond.389, !dbg !2236

do.cond.389:                                      ; preds = %if.end.388
  br label %do.end.390, !dbg !2237

do.end.390:                                       ; preds = %do.cond.389
  br label %if.end.391, !dbg !2239

if.end.391:                                       ; preds = %do.end.390, %do.body.375
  %272 = bitcast %struct._object** %_py_xdecref_tmp376 to i8*, !dbg !2241
  call void @llvm.lifetime.end(i64 8, i8* %272) #1, !dbg !2241
  br label %do.cond.392, !dbg !2242

do.cond.392:                                      ; preds = %if.end.391
  br label %do.end.393, !dbg !2243

do.end.393:                                       ; preds = %do.cond.392
  br label %do.body.394, !dbg !2245

do.body.394:                                      ; preds = %do.end.393
  %273 = bitcast %struct._object** %_py_xdecref_tmp395 to i8*, !dbg !2246
  call void @llvm.lifetime.start(i64 8, i8* %273) #1, !dbg !2246
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp395, metadata !611, metadata !1200), !dbg !2248
  %274 = load %struct._object*, %struct._object** %strict, align 8, !dbg !2249, !tbaa !1221
  store %struct._object* %274, %struct._object** %_py_xdecref_tmp395, align 8, !dbg !2248, !tbaa !1221
  %275 = load %struct._object*, %struct._object** %_py_xdecref_tmp395, align 8, !dbg !2250, !tbaa !1221
  %cmp396 = icmp ne %struct._object* %275, null, !dbg !2251
  br i1 %cmp396, label %if.then.397, label %if.end.410, !dbg !2252

if.then.397:                                      ; preds = %do.body.394
  br label %do.body.398, !dbg !2253

do.body.398:                                      ; preds = %if.then.397
  %276 = bitcast %struct._object** %_py_decref_tmp399 to i8*, !dbg !2255
  call void @llvm.lifetime.start(i64 8, i8* %276) #1, !dbg !2255
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp399, metadata !613, metadata !1200), !dbg !2257
  %277 = load %struct._object*, %struct._object** %_py_xdecref_tmp395, align 8, !dbg !2258, !tbaa !1221
  store %struct._object* %277, %struct._object** %_py_decref_tmp399, align 8, !dbg !2257, !tbaa !1221
  %278 = load %struct._object*, %struct._object** %_py_decref_tmp399, align 8, !dbg !2259, !tbaa !1221
  %ob_refcnt400 = getelementptr inbounds %struct._object, %struct._object* %278, i32 0, i32 0, !dbg !2261
  %279 = load i64, i64* %ob_refcnt400, align 8, !dbg !2262, !tbaa !1265
  %dec401 = add i64 %279, -1, !dbg !2262
  store i64 %dec401, i64* %ob_refcnt400, align 8, !dbg !2262, !tbaa !1265
  %cmp402 = icmp ne i64 %dec401, 0, !dbg !2263
  br i1 %cmp402, label %if.then.403, label %if.else.404, !dbg !2264

if.then.403:                                      ; preds = %do.body.398
  br label %if.end.407, !dbg !2265

if.else.404:                                      ; preds = %do.body.398
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp399, align 8, !dbg !2267, !tbaa !1221
  %ob_type405 = getelementptr inbounds %struct._object, %struct._object* %280, i32 0, i32 1, !dbg !2269
  %281 = load %struct._typeobject*, %struct._typeobject** %ob_type405, align 8, !dbg !2269, !tbaa !1368
  %tp_dealloc406 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %281, i32 0, i32 4, !dbg !2270
  %282 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc406, align 8, !dbg !2270, !tbaa !1370
  %283 = load %struct._object*, %struct._object** %_py_decref_tmp399, align 8, !dbg !2271, !tbaa !1221
  call void %282(%struct._object* %283), !dbg !2272
  br label %if.end.407

if.end.407:                                       ; preds = %if.else.404, %if.then.403
  %284 = bitcast %struct._object** %_py_decref_tmp399 to i8*, !dbg !2273
  call void @llvm.lifetime.end(i64 8, i8* %284) #1, !dbg !2273
  br label %do.cond.408, !dbg !2275

do.cond.408:                                      ; preds = %if.end.407
  br label %do.end.409, !dbg !2276

do.end.409:                                       ; preds = %do.cond.408
  br label %if.end.410, !dbg !2278

if.end.410:                                       ; preds = %do.end.409, %do.body.394
  %285 = bitcast %struct._object** %_py_xdecref_tmp395 to i8*, !dbg !2280
  call void @llvm.lifetime.end(i64 8, i8* %285) #1, !dbg !2280
  br label %do.cond.411, !dbg !2281

do.cond.411:                                      ; preds = %if.end.410
  br label %do.end.412, !dbg !2282

do.end.412:                                       ; preds = %do.cond.411
  %286 = load %struct._object*, %struct._object** %ret, align 8, !dbg !2284, !tbaa !1221
  store %struct._object* %286, %struct._object** %retval, !dbg !2285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2285

cleanup:                                          ; preds = %do.end.412, %do.end.46, %if.then.29, %if.then.6, %if.then
  %287 = bitcast %struct._object** %strict to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %287) #1, !dbg !2286
  %288 = bitcast %struct._object** %skipinitialspace to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %288) #1, !dbg !2286
  %289 = bitcast %struct._object** %quoting to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %289) #1, !dbg !2286
  %290 = bitcast %struct._object** %quotechar to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %290) #1, !dbg !2286
  %291 = bitcast %struct._object** %lineterminator to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %291) #1, !dbg !2286
  %292 = bitcast %struct._object** %escapechar to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %292) #1, !dbg !2286
  %293 = bitcast %struct._object** %doublequote to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %293) #1, !dbg !2286
  %294 = bitcast %struct._object** %delimiter to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %294) #1, !dbg !2286
  %295 = bitcast %struct._object** %dialect to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %295) #1, !dbg !2286
  %296 = bitcast %struct._object** %ret to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %296) #1, !dbg !2286
  %297 = bitcast %struct.DialectObj** %self to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %297) #1, !dbg !2286
  %298 = load %struct._object*, %struct._object** %retval, !dbg !2286
  ret %struct._object* %298, !dbg !2286
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_delimiter(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !500, metadata !1200), !dbg !2287
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !2288, !tbaa !1221
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 2, !dbg !2289
  %1 = load i32, i32* %delimiter, align 4, !dbg !2289, !tbaa !1842
  %call = call %struct._object* @get_nullchar_as_None(i32 %1), !dbg !2290
  ret %struct._object* %call, !dbg !2291
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_escapechar(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !508, metadata !1200), !dbg !2292
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !2293, !tbaa !1221
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 4, !dbg !2294
  %1 = load i32, i32* %escapechar, align 4, !dbg !2294, !tbaa !2295
  %call = call %struct._object* @get_nullchar_as_None(i32 %1), !dbg !2296
  ret %struct._object* %call, !dbg !2297
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_lineterminator(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !511, metadata !1200), !dbg !2298
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !2299, !tbaa !1221
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 6, !dbg !2300
  %1 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !2300, !tbaa !1345
  %call = call %struct._object* @get_string(%struct._object* %1), !dbg !2301
  ret %struct._object* %call, !dbg !2302
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_quotechar(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !519, metadata !1200), !dbg !2303
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !2304, !tbaa !1221
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 3, !dbg !2305
  %1 = load i32, i32* %quotechar, align 4, !dbg !2305, !tbaa !1868
  %call = call %struct._object* @get_nullchar_as_None(i32 %1), !dbg !2306
  ret %struct._object* %call, !dbg !2307
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_quoting(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %self.addr, metadata !522, metadata !1200), !dbg !2308
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8, !dbg !2309, !tbaa !1221
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 7, !dbg !2310
  %1 = load i32, i32* %quoting, align 4, !dbg !2310, !tbaa !1835
  %conv = sext i32 %1 to i64, !dbg !2309
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2311
  ret %struct._object* %call, !dbg !2312
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_nullchar_as_None(i32 %c) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !505, metadata !1200), !dbg !2314
  %0 = load i32, i32* %c.addr, align 4, !dbg !2315, !tbaa !2313
  %cmp = icmp eq i32 %0, 0, !dbg !2317
  br i1 %cmp, label %if.then, label %if.else, !dbg !2318

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2319, !tbaa !1265
  %inc = add i64 %1, 1, !dbg !2319
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2319, !tbaa !1265
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2321
  br label %return, !dbg !2321

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !2322, !tbaa !2313
  %call = call %struct._object* @PyUnicode_FromOrdinal(i32 %2), !dbg !2323
  store %struct._object* %call, %struct._object** %retval, !dbg !2324
  br label %return, !dbg !2324

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !2325
  ret %struct._object* %3, !dbg !2325
}

declare %struct._object* @PyUnicode_FromOrdinal(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_string(%struct._object* %str) #0 {
entry:
  %str.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %str, %struct._object** %str.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %str.addr, metadata !514, metadata !1200), !dbg !2326
  br label %do.body, !dbg !2327

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2328
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2328
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !515, metadata !1200), !dbg !2330
  %1 = load %struct._object*, %struct._object** %str.addr, align 8, !dbg !2331, !tbaa !1221
  store %struct._object* %1, %struct._object** %_py_xincref_tmp, align 8, !dbg !2330, !tbaa !1221
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2332, !tbaa !1221
  %cmp = icmp ne %struct._object* %2, null, !dbg !2334
  br i1 %cmp, label %if.then, label %if.end, !dbg !2335

if.then:                                          ; preds = %do.body
  %3 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2336, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !2338
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2339, !tbaa !1265
  %inc = add i64 %4, 1, !dbg !2339
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2339, !tbaa !1265
  br label %if.end, !dbg !2340

if.end:                                           ; preds = %if.then, %do.body
  %5 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !2341
  br label %do.end, !dbg !2344

do.end:                                           ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str.addr, align 8, !dbg !2345, !tbaa !1221
  ret %struct._object* %6, !dbg !2346
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_dialect_from_registry(%struct._object* %name_obj) #0 {
entry:
  %name_obj.addr = alloca %struct._object*, align 8
  %dialect_obj = alloca %struct._object*, align 8
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %name_obj.addr, metadata !618, metadata !1200), !dbg !2347
  %0 = bitcast %struct._object** %dialect_obj to i8*, !dbg !2348
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2348
  call void @llvm.dbg.declare(metadata %struct._object** %dialect_obj, metadata !619, metadata !1200), !dbg !2349
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !2350
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !2351
  %1 = bitcast i8* %call1 to %struct._csvstate*, !dbg !2352
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %1, i32 0, i32 1, !dbg !2353
  %2 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !2353, !tbaa !1250
  %3 = load %struct._object*, %struct._object** %name_obj.addr, align 8, !dbg !2354, !tbaa !1221
  %call2 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3), !dbg !2355
  store %struct._object* %call2, %struct._object** %dialect_obj, align 8, !dbg !2356, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %dialect_obj, align 8, !dbg !2357, !tbaa !1221
  %cmp = icmp eq %struct._object* %4, null, !dbg !2359
  br i1 %cmp, label %if.then, label %if.else, !dbg !2360

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_Occurred(), !dbg !2361
  %tobool = icmp ne %struct._object* %call3, null, !dbg !2361
  br i1 %tobool, label %if.end, label %if.then.4, !dbg !2364

if.then.4:                                        ; preds = %if.then
  %call5 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !2365
  %call6 = call i8* @PyModule_GetState(%struct._object* %call5), !dbg !2366
  %5 = bitcast i8* %call6 to %struct._csvstate*, !dbg !2367
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %5, i32 0, i32 0, !dbg !2368
  %6 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !2368, !tbaa !1314
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)), !dbg !2369
  br label %if.end, !dbg !2369

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.8, !dbg !2370

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %dialect_obj, align 8, !dbg !2371, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2372
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2373, !tbaa !1265
  %inc = add i64 %8, 1, !dbg !2373
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2373, !tbaa !1265
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %9 = load %struct._object*, %struct._object** %dialect_obj, align 8, !dbg !2374, !tbaa !1221
  %10 = bitcast %struct._object** %dialect_obj to i8*, !dbg !2375
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2375
  ret %struct._object* %9, !dbg !2376
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare void @PyErr_Clear() #3

; Function Attrs: nounwind uwtable
define internal i32 @_set_char(i8* %name, i32* %target, %struct._object* %src, i32 %dflt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %target.addr = alloca i32*, align 8
  %src.addr = alloca %struct._object*, align 8
  %dflt.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !624, metadata !1200), !dbg !2377
  store i32* %target, i32** %target.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32** %target.addr, metadata !625, metadata !1200), !dbg !2378
  store %struct._object* %src, %struct._object** %src.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %src.addr, metadata !626, metadata !1200), !dbg !2379
  store i32 %dflt, i32* %dflt.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %dflt.addr, metadata !627, metadata !1200), !dbg !2380
  %0 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2381, !tbaa !1221
  %cmp = icmp eq %struct._object* %0, null, !dbg !2382
  br i1 %cmp, label %if.then, label %if.else, !dbg !2383

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4, !dbg !2384, !tbaa !2313
  %2 = load i32*, i32** %target.addr, align 8, !dbg !2385, !tbaa !1221
  store i32 %1, i32* %2, align 4, !dbg !2386, !tbaa !2313
  br label %if.end.91, !dbg !2387

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %target.addr, align 8, !dbg !2388, !tbaa !1221
  store i32 0, i32* %3, align 4, !dbg !2389, !tbaa !2313
  %4 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2390, !tbaa !1221
  %cmp1 = icmp ne %struct._object* %4, @_Py_NoneStruct, !dbg !2391
  br i1 %cmp1, label %if.then.2, label %if.end.90, !dbg !2392

if.then.2:                                        ; preds = %if.else
  %5 = bitcast i64* %len to i8*, !dbg !2393
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2393
  call void @llvm.dbg.declare(metadata i64* %len, metadata !628, metadata !1200), !dbg !2394
  %6 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2395, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2397
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2397, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19, !dbg !2398
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2398, !tbaa !1435
  %and = and i64 %8, 268435456, !dbg !2399
  %cmp3 = icmp ne i64 %and, 0, !dbg !2400
  br i1 %cmp3, label %if.end, label %if.then.4, !dbg !2401

if.then.4:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2402, !tbaa !1221
  %10 = load i8*, i8** %name.addr, align 8, !dbg !2404, !tbaa !1221
  %11 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2405, !tbaa !1221
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2406
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2406, !tbaa !1368
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1, !dbg !2407
  %13 = load i8*, i8** %tp_name, align 8, !dbg !2407, !tbaa !2408
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* %10, i8* %13), !dbg !2409
  store i32 -1, i32* %retval, !dbg !2410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2410

if.end:                                           ; preds = %if.then.2
  %14 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2411, !tbaa !1221
  %call6 = call i64 @PyUnicode_GetLength(%struct._object* %14), !dbg !2412
  store i64 %call6, i64* %len, align 8, !dbg !2413, !tbaa !2414
  %15 = load i64, i64* %len, align 8, !dbg !2415, !tbaa !2414
  %cmp7 = icmp sgt i64 %15, 1, !dbg !2417
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !2418

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2419, !tbaa !1221
  %17 = load i8*, i8** %name.addr, align 8, !dbg !2421, !tbaa !1221
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* %17), !dbg !2422
  store i32 -1, i32* %retval, !dbg !2423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2423

if.end.10:                                        ; preds = %if.end
  %18 = load i64, i64* %len, align 8, !dbg !2424, !tbaa !2414
  %cmp11 = icmp sgt i64 %18, 0, !dbg !2426
  br i1 %cmp11, label %if.then.12, label %if.end.89, !dbg !2427

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2428, !tbaa !1221
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*, !dbg !2429
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 3, !dbg !2430
  %21 = bitcast %struct.anon* %state to i32*, !dbg !2431
  %bf.load = load i32, i32* %21, align 4, !dbg !2431
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2431
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2431
  %cmp13 = icmp eq i32 %bf.clear, 1, !dbg !2432
  br i1 %cmp13, label %cond.true, label %cond.false.29, !dbg !2433

cond.true:                                        ; preds = %if.then.12
  %22 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2434, !tbaa !1221
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*, !dbg !2436
  %state14 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3, !dbg !2437
  %24 = bitcast %struct.anon* %state14 to i32*, !dbg !2438
  %bf.load15 = load i32, i32* %24, align 4, !dbg !2438
  %bf.lshr16 = lshr i32 %bf.load15, 5, !dbg !2438
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !2438
  %tobool = icmp ne i32 %bf.clear17, 0, !dbg !2439
  br i1 %tobool, label %cond.true.18, label %cond.false.26, !dbg !2439

cond.true.18:                                     ; preds = %cond.true
  %25 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2440, !tbaa !1221
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !2442
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3, !dbg !2443
  %27 = bitcast %struct.anon* %state19 to i32*, !dbg !2444
  %bf.load20 = load i32, i32* %27, align 4, !dbg !2444
  %bf.lshr21 = lshr i32 %bf.load20, 6, !dbg !2444
  %bf.clear22 = and i32 %bf.lshr21, 1, !dbg !2444
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !2445
  br i1 %tobool23, label %cond.true.24, label %cond.false, !dbg !2445

cond.true.24:                                     ; preds = %cond.true.18
  %28 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2446, !tbaa !1221
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*, !dbg !2448
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i64 1, !dbg !2449
  %30 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !2450
  br label %cond.end, !dbg !2445

cond.false:                                       ; preds = %cond.true.18
  %31 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2451, !tbaa !1221
  %32 = bitcast %struct._object* %31 to %struct.PyCompactUnicodeObject*, !dbg !2453
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %32, i64 1, !dbg !2454
  %33 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*, !dbg !2455
  br label %cond.end, !dbg !2445

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %30, %cond.true.24 ], [ %33, %cond.false ], !dbg !2445
  br label %cond.end.27, !dbg !2456

cond.false.26:                                    ; preds = %cond.true
  %34 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2459, !tbaa !1221
  %35 = bitcast %struct._object* %34 to %struct.PyUnicodeObject*, !dbg !2461
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %35, i32 0, i32 1, !dbg !2462
  %any = bitcast %union.anon* %data to i8**, !dbg !2463
  %36 = load i8*, i8** %any, align 8, !dbg !2463, !tbaa !1221
  br label %cond.end.27, !dbg !2439

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %36, %cond.false.26 ], !dbg !2439
  %arrayidx = getelementptr i8, i8* %cond28, i64 0, !dbg !2464
  %37 = load i8, i8* %arrayidx, align 1, !dbg !2464, !tbaa !2467
  %conv = zext i8 %37 to i32, !dbg !2464
  br label %cond.end.87, !dbg !2433

cond.false.29:                                    ; preds = %if.then.12
  %38 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2468, !tbaa !1221
  %39 = bitcast %struct._object* %38 to %struct.PyASCIIObject*, !dbg !2470
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %39, i32 0, i32 3, !dbg !2471
  %40 = bitcast %struct.anon* %state30 to i32*, !dbg !2472
  %bf.load31 = load i32, i32* %40, align 4, !dbg !2472
  %bf.lshr32 = lshr i32 %bf.load31, 2, !dbg !2472
  %bf.clear33 = and i32 %bf.lshr32, 7, !dbg !2472
  %cmp34 = icmp eq i32 %bf.clear33, 2, !dbg !2473
  br i1 %cmp34, label %cond.true.36, label %cond.false.61, !dbg !2474

cond.true.36:                                     ; preds = %cond.false.29
  %41 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2475, !tbaa !1221
  %42 = bitcast %struct._object* %41 to %struct.PyASCIIObject*, !dbg !2477
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %42, i32 0, i32 3, !dbg !2478
  %43 = bitcast %struct.anon* %state37 to i32*, !dbg !2479
  %bf.load38 = load i32, i32* %43, align 4, !dbg !2479
  %bf.lshr39 = lshr i32 %bf.load38, 5, !dbg !2479
  %bf.clear40 = and i32 %bf.lshr39, 1, !dbg !2479
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !2480
  br i1 %tobool41, label %cond.true.42, label %cond.false.54, !dbg !2480

cond.true.42:                                     ; preds = %cond.true.36
  %44 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2481, !tbaa !1221
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*, !dbg !2483
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3, !dbg !2484
  %46 = bitcast %struct.anon* %state43 to i32*, !dbg !2485
  %bf.load44 = load i32, i32* %46, align 4, !dbg !2485
  %bf.lshr45 = lshr i32 %bf.load44, 6, !dbg !2485
  %bf.clear46 = and i32 %bf.lshr45, 1, !dbg !2485
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !2486
  br i1 %tobool47, label %cond.true.48, label %cond.false.50, !dbg !2486

cond.true.48:                                     ; preds = %cond.true.42
  %47 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2487, !tbaa !1221
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*, !dbg !2489
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i64 1, !dbg !2490
  %49 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*, !dbg !2491
  br label %cond.end.52, !dbg !2486

cond.false.50:                                    ; preds = %cond.true.42
  %50 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2492, !tbaa !1221
  %51 = bitcast %struct._object* %50 to %struct.PyCompactUnicodeObject*, !dbg !2494
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %51, i64 1, !dbg !2495
  %52 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*, !dbg !2496
  br label %cond.end.52, !dbg !2486

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %49, %cond.true.48 ], [ %52, %cond.false.50 ], !dbg !2486
  br label %cond.end.57, !dbg !2497

cond.false.54:                                    ; preds = %cond.true.36
  %53 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2500, !tbaa !1221
  %54 = bitcast %struct._object* %53 to %struct.PyUnicodeObject*, !dbg !2502
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %54, i32 0, i32 1, !dbg !2503
  %any56 = bitcast %union.anon* %data55 to i8**, !dbg !2504
  %55 = load i8*, i8** %any56, align 8, !dbg !2504, !tbaa !1221
  br label %cond.end.57, !dbg !2480

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %55, %cond.false.54 ], !dbg !2480
  %56 = bitcast i8* %cond58 to i16*, !dbg !2505
  %arrayidx59 = getelementptr i16, i16* %56, i64 0, !dbg !2508
  %57 = load i16, i16* %arrayidx59, align 2, !dbg !2508, !tbaa !2509
  %conv60 = zext i16 %57 to i32, !dbg !2508
  br label %cond.end.85, !dbg !2474

cond.false.61:                                    ; preds = %cond.false.29
  %58 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2511, !tbaa !1221
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*, !dbg !2513
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 3, !dbg !2514
  %60 = bitcast %struct.anon* %state62 to i32*, !dbg !2515
  %bf.load63 = load i32, i32* %60, align 4, !dbg !2515
  %bf.lshr64 = lshr i32 %bf.load63, 5, !dbg !2515
  %bf.clear65 = and i32 %bf.lshr64, 1, !dbg !2515
  %tobool66 = icmp ne i32 %bf.clear65, 0, !dbg !2516
  br i1 %tobool66, label %cond.true.67, label %cond.false.79, !dbg !2516

cond.true.67:                                     ; preds = %cond.false.61
  %61 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2517, !tbaa !1221
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*, !dbg !2519
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i32 0, i32 3, !dbg !2520
  %63 = bitcast %struct.anon* %state68 to i32*, !dbg !2521
  %bf.load69 = load i32, i32* %63, align 4, !dbg !2521
  %bf.lshr70 = lshr i32 %bf.load69, 6, !dbg !2521
  %bf.clear71 = and i32 %bf.lshr70, 1, !dbg !2521
  %tobool72 = icmp ne i32 %bf.clear71, 0, !dbg !2522
  br i1 %tobool72, label %cond.true.73, label %cond.false.75, !dbg !2522

cond.true.73:                                     ; preds = %cond.true.67
  %64 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2523, !tbaa !1221
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*, !dbg !2525
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i64 1, !dbg !2526
  %66 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*, !dbg !2527
  br label %cond.end.77, !dbg !2522

cond.false.75:                                    ; preds = %cond.true.67
  %67 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2528, !tbaa !1221
  %68 = bitcast %struct._object* %67 to %struct.PyCompactUnicodeObject*, !dbg !2530
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %68, i64 1, !dbg !2531
  %69 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*, !dbg !2532
  br label %cond.end.77, !dbg !2522

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %66, %cond.true.73 ], [ %69, %cond.false.75 ], !dbg !2522
  br label %cond.end.82, !dbg !2533

cond.false.79:                                    ; preds = %cond.false.61
  %70 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2536, !tbaa !1221
  %71 = bitcast %struct._object* %70 to %struct.PyUnicodeObject*, !dbg !2538
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %71, i32 0, i32 1, !dbg !2539
  %any81 = bitcast %union.anon* %data80 to i8**, !dbg !2540
  %72 = load i8*, i8** %any81, align 8, !dbg !2540, !tbaa !1221
  br label %cond.end.82, !dbg !2516

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %72, %cond.false.79 ], !dbg !2516
  %73 = bitcast i8* %cond83 to i32*, !dbg !2541
  %arrayidx84 = getelementptr i32, i32* %73, i64 0, !dbg !2544
  %74 = load i32, i32* %arrayidx84, align 4, !dbg !2544, !tbaa !2313
  br label %cond.end.85, !dbg !2474

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %74, %cond.end.82 ], !dbg !2474
  br label %cond.end.87, !dbg !2545

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ], !dbg !2433
  %75 = load i32*, i32** %target.addr, align 8, !dbg !2548, !tbaa !1221
  store i32 %cond88, i32* %75, align 4, !dbg !2551, !tbaa !2313
  br label %if.end.89, !dbg !2552

if.end.89:                                        ; preds = %cond.end.87, %if.end.10
  store i32 0, i32* %cleanup.dest.slot, !dbg !2553
  br label %cleanup, !dbg !2553

cleanup:                                          ; preds = %if.end.89, %if.then.8, %if.then.4
  %76 = bitcast i64* %len to i8*, !dbg !2554
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !2554
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.90, !dbg !2556

if.end.90:                                        ; preds = %cleanup.cont, %if.else
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then
  store i32 0, i32* %retval, !dbg !2557
  br label %return, !dbg !2557

return:                                           ; preds = %LeafBlock, %if.end.91
  %77 = load i32, i32* %retval, !dbg !2558
  ret i32 %77, !dbg !2558
}

; Function Attrs: nounwind uwtable
define internal i32 @_set_bool(i8* %name, i32* %target, %struct._object* %src, i32 %dflt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %target.addr = alloca i32*, align 8
  %src.addr = alloca %struct._object*, align 8
  %dflt.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !638, metadata !1200), !dbg !2559
  store i32* %target, i32** %target.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32** %target.addr, metadata !639, metadata !1200), !dbg !2560
  store %struct._object* %src, %struct._object** %src.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %src.addr, metadata !640, metadata !1200), !dbg !2561
  store i32 %dflt, i32* %dflt.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %dflt.addr, metadata !641, metadata !1200), !dbg !2562
  %0 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2563, !tbaa !1221
  %cmp = icmp eq %struct._object* %0, null, !dbg !2564
  br i1 %cmp, label %if.then, label %if.else, !dbg !2565

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4, !dbg !2566, !tbaa !2313
  %2 = load i32*, i32** %target.addr, align 8, !dbg !2567, !tbaa !1221
  store i32 %1, i32* %2, align 4, !dbg !2568, !tbaa !2313
  br label %if.end.3, !dbg !2569

if.else:                                          ; preds = %entry
  %3 = bitcast i32* %b to i8*, !dbg !2570
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2570
  call void @llvm.dbg.declare(metadata i32* %b, metadata !642, metadata !1200), !dbg !2571
  %4 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2572, !tbaa !1221
  %call = call i32 @PyObject_IsTrue(%struct._object* %4), !dbg !2573
  store i32 %call, i32* %b, align 4, !dbg !2571, !tbaa !2313
  %5 = load i32, i32* %b, align 4, !dbg !2574, !tbaa !2313
  %cmp1 = icmp slt i32 %5, 0, !dbg !2576
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2577

if.then.2:                                        ; preds = %if.else
  store i32 -1, i32* %retval, !dbg !2578
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2578

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* %b, align 4, !dbg !2579, !tbaa !2313
  %7 = load i32*, i32** %target.addr, align 8, !dbg !2580, !tbaa !1221
  store i32 %6, i32* %7, align 4, !dbg !2581, !tbaa !2313
  store i32 0, i32* %cleanup.dest.slot, !dbg !2582
  br label %cleanup, !dbg !2582

cleanup:                                          ; preds = %if.end, %if.then.2
  %8 = bitcast i32* %b to i8*, !dbg !2583
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !2583
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.3

if.end.3:                                         ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval, !dbg !2585
  br label %return, !dbg !2585

return:                                           ; preds = %LeafBlock, %if.end.3
  %9 = load i32, i32* %retval, !dbg !2586
  ret i32 %9, !dbg !2586
}

; Function Attrs: nounwind uwtable
define internal i32 @_set_str(i8* %name, %struct._object** %target, %struct._object* %src, i8* %dflt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %target.addr = alloca %struct._object**, align 8
  %src.addr = alloca %struct._object*, align 8
  %dflt.addr = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !650, metadata !1200), !dbg !2587
  store %struct._object** %target, %struct._object*** %target.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object*** %target.addr, metadata !651, metadata !1200), !dbg !2588
  store %struct._object* %src, %struct._object** %src.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %src.addr, metadata !652, metadata !1200), !dbg !2589
  store i8* %dflt, i8** %dflt.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %dflt.addr, metadata !653, metadata !1200), !dbg !2590
  %0 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2591, !tbaa !1221
  %cmp = icmp eq %struct._object* %0, null, !dbg !2592
  br i1 %cmp, label %if.then, label %if.else, !dbg !2593

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dflt.addr, align 8, !dbg !2594, !tbaa !1221
  %2 = load i8*, i8** %dflt.addr, align 8, !dbg !2595, !tbaa !1221
  %call = call i64 @strlen(i8* %2) #5, !dbg !2596
  %call1 = call %struct._object* @PyUnicode_DecodeASCII(i8* %1, i64 %call, i8* null), !dbg !2597
  %3 = load %struct._object**, %struct._object*** %target.addr, align 8, !dbg !2598, !tbaa !1221
  store %struct._object* %call1, %struct._object** %3, align 8, !dbg !2599, !tbaa !1221
  br label %if.end.26, !dbg !2600

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2601, !tbaa !1221
  %cmp2 = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !2602
  br i1 %cmp2, label %if.then.3, label %if.else.4, !dbg !2603

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object**, %struct._object*** %target.addr, align 8, !dbg !2604, !tbaa !1221
  store %struct._object* null, %struct._object** %5, align 8, !dbg !2605, !tbaa !1221
  br label %if.end.25, !dbg !2606

if.else.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2607, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2608
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2608, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19, !dbg !2609
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2609, !tbaa !1435
  %and = and i64 %8, 268435456, !dbg !2610
  %cmp5 = icmp ne i64 %and, 0, !dbg !2611
  br i1 %cmp5, label %if.else.8, label %if.then.6, !dbg !2612

if.then.6:                                        ; preds = %if.else.4
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2613, !tbaa !1221
  %10 = load i8*, i8** %name.addr, align 8, !dbg !2615, !tbaa !1221
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* %10), !dbg !2616
  store i32 -1, i32* %retval, !dbg !2617
  br label %return, !dbg !2617

if.else.8:                                        ; preds = %if.else.4
  %11 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2618, !tbaa !1221
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*, !dbg !2620
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3, !dbg !2621
  %13 = bitcast %struct.anon* %state to i32*, !dbg !2622
  %bf.load = load i32, i32* %13, align 4, !dbg !2622
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2622
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2622
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2623
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2623

cond.true:                                        ; preds = %if.else.8
  br label %cond.end, !dbg !2624

cond.false:                                       ; preds = %if.else.8
  %14 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2626, !tbaa !1221
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %14), !dbg !2628
  br label %cond.end, !dbg !2623

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ], !dbg !2623
  %cmp10 = icmp eq i32 %cond, -1, !dbg !2629
  br i1 %cmp10, label %if.then.11, label %if.end, !dbg !2632

if.then.11:                                       ; preds = %cond.end
  store i32 -1, i32* %retval, !dbg !2633
  br label %return, !dbg !2633

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !2634

do.body:                                          ; preds = %if.end
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2635
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !654, metadata !1200), !dbg !2637
  %16 = load %struct._object**, %struct._object*** %target.addr, align 8, !dbg !2638, !tbaa !1221
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !2639, !tbaa !1221
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2637, !tbaa !1221
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2640, !tbaa !1221
  %cmp12 = icmp ne %struct._object* %18, null, !dbg !2641
  br i1 %cmp12, label %if.then.13, label %if.end.20, !dbg !2642

if.then.13:                                       ; preds = %do.body
  br label %do.body.14, !dbg !2643

do.body.14:                                       ; preds = %if.then.13
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2645
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !2645
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !661, metadata !1200), !dbg !2647
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2648, !tbaa !1221
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !2647, !tbaa !1221
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2649, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2651
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !2652, !tbaa !1265
  %dec = add i64 %22, -1, !dbg !2652
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2652, !tbaa !1265
  %cmp15 = icmp ne i64 %dec, 0, !dbg !2653
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !2654

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.19, !dbg !2655

if.else.17:                                       ; preds = %do.body.14
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2657, !tbaa !1221
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2659
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !2659, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2660
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2660, !tbaa !1370
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2661, !tbaa !1221
  call void %25(%struct._object* %26), !dbg !2662
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2663
  br label %do.cond, !dbg !2665

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !2666

do.end:                                           ; preds = %do.cond
  br label %if.end.20, !dbg !2668

if.end.20:                                        ; preds = %do.end, %do.body
  %28 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2670
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2670
  br label %do.end.22, !dbg !2673

do.end.22:                                        ; preds = %if.end.20
  %29 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2674, !tbaa !1221
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2675
  %30 = load i64, i64* %ob_refcnt23, align 8, !dbg !2676, !tbaa !1265
  %inc = add i64 %30, 1, !dbg !2676
  store i64 %inc, i64* %ob_refcnt23, align 8, !dbg !2676, !tbaa !1265
  %31 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2677, !tbaa !1221
  %32 = load %struct._object**, %struct._object*** %target.addr, align 8, !dbg !2678, !tbaa !1221
  store %struct._object* %31, %struct._object** %32, align 8, !dbg !2679, !tbaa !1221
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.3
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  store i32 0, i32* %retval, !dbg !2680
  br label %return, !dbg !2680

return:                                           ; preds = %if.end.26, %if.then.11, %if.then.6
  %33 = load i32, i32* %retval, !dbg !2681
  ret i32 %33, !dbg !2681
}

; Function Attrs: nounwind uwtable
define internal i32 @_set_int(i8* %name, i32* %target, %struct._object* %src, i32 %dflt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %target.addr = alloca i32*, align 8
  %src.addr = alloca %struct._object*, align 8
  %dflt.addr = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !666, metadata !1200), !dbg !2682
  store i32* %target, i32** %target.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32** %target.addr, metadata !667, metadata !1200), !dbg !2683
  store %struct._object* %src, %struct._object** %src.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %src.addr, metadata !668, metadata !1200), !dbg !2684
  store i32 %dflt, i32* %dflt.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %dflt.addr, metadata !669, metadata !1200), !dbg !2685
  %0 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2686, !tbaa !1221
  %cmp = icmp eq %struct._object* %0, null, !dbg !2687
  br i1 %cmp, label %if.then, label %if.else, !dbg !2688

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4, !dbg !2689, !tbaa !2313
  %2 = load i32*, i32** %target.addr, align 8, !dbg !2690, !tbaa !1221
  store i32 %1, i32* %2, align 4, !dbg !2691, !tbaa !2313
  br label %if.end.13, !dbg !2692

if.else:                                          ; preds = %entry
  %3 = bitcast i64* %value to i8*, !dbg !2693
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2693
  call void @llvm.dbg.declare(metadata i64* %value, metadata !670, metadata !1200), !dbg !2694
  %4 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2695, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2697
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2697, !tbaa !1368
  %cmp1 = icmp eq %struct._typeobject* %5, @PyLong_Type, !dbg !2698
  br i1 %cmp1, label %if.end, label %if.then.2, !dbg !2699

if.then.2:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2700, !tbaa !1221
  %7 = load i8*, i8** %name.addr, align 8, !dbg !2702, !tbaa !1221
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* %7), !dbg !2703
  store i32 -1, i32* %retval, !dbg !2704
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2704

if.end:                                           ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %src.addr, align 8, !dbg !2705, !tbaa !1221
  %call3 = call i64 @PyLong_AsLong(%struct._object* %8), !dbg !2706
  store i64 %call3, i64* %value, align 8, !dbg !2707, !tbaa !2414
  %9 = load i64, i64* %value, align 8, !dbg !2708, !tbaa !2414
  %cmp4 = icmp eq i64 %9, -1, !dbg !2710
  br i1 %cmp4, label %land.lhs.true, label %if.end.7, !dbg !2711

land.lhs.true:                                    ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !2712
  %tobool = icmp ne %struct._object* %call5, null, !dbg !2712
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !2714

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !2715
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2715

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load i64, i64* %value, align 8, !dbg !2716, !tbaa !2414
  %cmp8 = icmp sgt i64 %10, 2147483647, !dbg !2718
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false, !dbg !2719

lor.lhs.false:                                    ; preds = %if.end.7
  %11 = load i64, i64* %value, align 8, !dbg !2720, !tbaa !2414
  %cmp9 = icmp slt i64 %11, -2147483648, !dbg !2722
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !2723

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2724, !tbaa !1221
  %13 = load i8*, i8** %name.addr, align 8, !dbg !2726, !tbaa !1221
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %13), !dbg !2727
  store i32 -1, i32* %retval, !dbg !2728
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2728

if.end.12:                                        ; preds = %lor.lhs.false
  %14 = load i64, i64* %value, align 8, !dbg !2729, !tbaa !2414
  %conv = trunc i64 %14 to i32, !dbg !2730
  %15 = load i32*, i32** %target.addr, align 8, !dbg !2731, !tbaa !1221
  store i32 %conv, i32* %15, align 4, !dbg !2732, !tbaa !2313
  store i32 0, i32* %cleanup.dest.slot, !dbg !2733
  br label %cleanup, !dbg !2733

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.6, %if.then.2
  %16 = bitcast i64* %value to i8*, !dbg !2734
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2734
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.13

if.end.13:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval, !dbg !2736
  br label %return, !dbg !2736

return:                                           ; preds = %LeafBlock, %if.end.13
  %17 = load i32, i32* %retval, !dbg !2737
  ret i32 %17, !dbg !2737
}

; Function Attrs: nounwind uwtable
define internal i32 @dialect_check_quoting(i32 %quoting) #0 {
entry:
  %retval = alloca i32, align 4
  %quoting.addr = alloca i32, align 4
  %qs = alloca %struct.StyleDesc*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %quoting, i32* %quoting.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %quoting.addr, metadata !677, metadata !1200), !dbg !2738
  %0 = bitcast %struct.StyleDesc** %qs to i8*, !dbg !2739
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2739
  call void @llvm.dbg.declare(metadata %struct.StyleDesc** %qs, metadata !678, metadata !1200), !dbg !2740
  store %struct.StyleDesc* getelementptr inbounds ([5 x %struct.StyleDesc], [5 x %struct.StyleDesc]* @quote_styles, i32 0, i32 0), %struct.StyleDesc** %qs, align 8, !dbg !2741, !tbaa !1221
  br label %for.cond, !dbg !2743

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8, !dbg !2744, !tbaa !1221
  %name = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %1, i32 0, i32 1, !dbg !2748
  %2 = load i8*, i8** %name, align 8, !dbg !2748, !tbaa !1284
  %tobool = icmp ne i8* %2, null, !dbg !2749
  br i1 %tobool, label %for.body, label %for.end, !dbg !2749

for.body:                                         ; preds = %for.cond
  %3 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8, !dbg !2750, !tbaa !1221
  %style = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %3, i32 0, i32 0, !dbg !2753
  %4 = load i32, i32* %style, align 4, !dbg !2753, !tbaa !1294
  %5 = load i32, i32* %quoting.addr, align 4, !dbg !2754, !tbaa !2313
  %cmp = icmp eq i32 %4, %5, !dbg !2755
  br i1 %cmp, label %if.then, label %if.end, !dbg !2756

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, !dbg !2757
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2757

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2758

for.inc:                                          ; preds = %if.end
  %6 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8, !dbg !2759, !tbaa !1221
  %incdec.ptr = getelementptr %struct.StyleDesc, %struct.StyleDesc* %6, i32 1, !dbg !2759
  store %struct.StyleDesc* %incdec.ptr, %struct.StyleDesc** %qs, align 8, !dbg !2759, !tbaa !1221
  br label %for.cond, !dbg !2760

for.end:                                          ; preds = %for.cond
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2761, !tbaa !1221
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)), !dbg !2762
  store i32 -1, i32* %retval, !dbg !2763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2763

cleanup:                                          ; preds = %for.end, %if.then
  %8 = bitcast %struct.StyleDesc** %qs to i8*, !dbg !2764
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2764
  %9 = load i32, i32* %retval, !dbg !2764
  ret i32 %9, !dbg !2764
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i64 @PyUnicode_GetLength(%struct._object*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @Reader_dealloc(%struct.ReaderObj* %self) #0 {
entry:
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !683, metadata !1200), !dbg !2765
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2766, !tbaa !1221
  %1 = bitcast %struct.ReaderObj* %0 to i8*, !dbg !2766
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !2767
  br label %do.body, !dbg !2768

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2769
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2769
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !684, metadata !1200), !dbg !2771
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2772, !tbaa !1221
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 2, !dbg !2773
  %4 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !2773, !tbaa !2774
  %5 = bitcast %struct.DialectObj* %4 to %struct._object*, !dbg !2776
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2771, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2777, !tbaa !1221
  %cmp = icmp ne %struct._object* %6, null, !dbg !2778
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !2779

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !2780

do.body.1:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2782
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2782
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !686, metadata !1200), !dbg !2784
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2785, !tbaa !1221
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2784, !tbaa !1221
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2786, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2788
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2789, !tbaa !1265
  %dec = add i64 %10, -1, !dbg !2789
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2789, !tbaa !1265
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2790
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2791

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !2792

if.else:                                          ; preds = %do.body.1
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2794, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2796
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2796, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2797
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2797, !tbaa !1370
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2798, !tbaa !1221
  call void %13(%struct._object* %14), !dbg !2799
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2800
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2800
  br label %do.cond, !dbg !2802

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2803

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !2805

if.end.4:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2807
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2807
  br label %do.end.6, !dbg !2810

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !2811

do.body.7:                                        ; preds = %do.end.6
  %17 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !2812
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2812
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !689, metadata !1200), !dbg !2814
  %18 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2815, !tbaa !1221
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %18, i32 0, i32 1, !dbg !2816
  %19 = load %struct._object*, %struct._object** %input_iter, align 8, !dbg !2816, !tbaa !2817
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !2814, !tbaa !1221
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !2818, !tbaa !1221
  %cmp9 = icmp ne %struct._object* %20, null, !dbg !2819
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !2820

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !2821

do.body.11:                                       ; preds = %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !2823
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2823
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !691, metadata !1200), !dbg !2825
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !2826, !tbaa !1221
  store %struct._object* %22, %struct._object** %_py_decref_tmp12, align 8, !dbg !2825, !tbaa !1221
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !2827, !tbaa !1221
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !2829
  %24 = load i64, i64* %ob_refcnt13, align 8, !dbg !2830, !tbaa !1265
  %dec14 = add i64 %24, -1, !dbg !2830
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !2830, !tbaa !1265
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !2831
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !2832

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !2833

if.else.17:                                       ; preds = %do.body.11
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !2835, !tbaa !1221
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !2837
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !2837, !tbaa !1368
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !2838
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !2838, !tbaa !1370
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !2839, !tbaa !1221
  call void %27(%struct._object* %28), !dbg !2840
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %29 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !2841
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2841
  br label %do.cond.21, !dbg !2843

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !2844

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !2846

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %30 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !2848
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2848
  br label %do.end.25, !dbg !2849

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !2850

do.body.26:                                       ; preds = %do.end.25
  %31 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !2851
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !694, metadata !1200), !dbg !2853
  %32 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2854, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %32, i32 0, i32 3, !dbg !2855
  %33 = load %struct._object*, %struct._object** %fields, align 8, !dbg !2855, !tbaa !2856
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !2853, !tbaa !1221
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !2857, !tbaa !1221
  %cmp28 = icmp ne %struct._object* %34, null, !dbg !2858
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !2859

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !2860

do.body.30:                                       ; preds = %if.then.29
  %35 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2862
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !2862
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !696, metadata !1200), !dbg !2864
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !2865, !tbaa !1221
  store %struct._object* %36, %struct._object** %_py_decref_tmp31, align 8, !dbg !2864, !tbaa !1221
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2866, !tbaa !1221
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2868
  %38 = load i64, i64* %ob_refcnt32, align 8, !dbg !2869, !tbaa !1265
  %dec33 = add i64 %38, -1, !dbg !2869
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2869, !tbaa !1265
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !2870
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !2871

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !2872

if.else.36:                                       ; preds = %do.body.30
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2874, !tbaa !1221
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2876
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !2876, !tbaa !1368
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2877
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2877, !tbaa !1370
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !2878, !tbaa !1221
  call void %41(%struct._object* %42), !dbg !2879
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %43 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !2880
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2880
  br label %do.cond.40, !dbg !2882

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !2883

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !2885

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %44 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !2887
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2887
  br label %do.end.44, !dbg !2888

do.end.44:                                        ; preds = %if.end.42
  %45 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2889, !tbaa !1221
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %45, i32 0, i32 5, !dbg !2891
  %46 = load i32*, i32** %field, align 8, !dbg !2891, !tbaa !2892
  %cmp45 = icmp ne i32* %46, null, !dbg !2893
  br i1 %cmp45, label %if.then.46, label %if.end.48, !dbg !2894

if.then.46:                                       ; preds = %do.end.44
  %47 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2895, !tbaa !1221
  %field47 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %47, i32 0, i32 5, !dbg !2896
  %48 = load i32*, i32** %field47, align 8, !dbg !2896, !tbaa !2892
  %49 = bitcast i32* %48 to i8*, !dbg !2895
  call void @PyMem_Free(i8* %49), !dbg !2897
  br label %if.end.48, !dbg !2897

if.end.48:                                        ; preds = %if.then.46, %do.end.44
  %50 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2898, !tbaa !1221
  %51 = bitcast %struct.ReaderObj* %50 to i8*, !dbg !2898
  call void @PyObject_GC_Del(i8* %51), !dbg !2899
  ret void, !dbg !2900
}

; Function Attrs: nounwind uwtable
define internal i32 @Reader_traverse(%struct.ReaderObj* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret22 = alloca i32, align 4
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !703, metadata !1200), !dbg !2901
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !704, metadata !1200), !dbg !2902
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !705, metadata !1200), !dbg !2903
  br label %do.body, !dbg !2904

do.body:                                          ; preds = %entry
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2905, !tbaa !1221
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 2, !dbg !2907
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !2907, !tbaa !2774
  %tobool = icmp ne %struct.DialectObj* %1, null, !dbg !2908
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2909

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2910
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !706, metadata !1200), !dbg !2912
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2913, !tbaa !1221
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2914, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %4, i32 0, i32 2, !dbg !2915
  %5 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8, !dbg !2915, !tbaa !2774
  %6 = bitcast %struct.DialectObj* %5 to %struct._object*, !dbg !2916
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !2917, !tbaa !1221
  %call = call i32 %3(%struct._object* %6, i8* %7), !dbg !2913
  store i32 %call, i32* %vret, align 4, !dbg !2912, !tbaa !2313
  %8 = load i32, i32* %vret, align 4, !dbg !2918, !tbaa !2313
  %tobool2 = icmp ne i32 %8, 0, !dbg !2918
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2920

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4, !dbg !2921, !tbaa !2313
  store i32 %9, i32* %retval, !dbg !2923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2923

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2924
  br label %cleanup, !dbg !2924

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast i32* %vret to i8*, !dbg !2926
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !2926
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !2929

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2930

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !2933

do.body.5:                                        ; preds = %do.end
  %11 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2934, !tbaa !1221
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %11, i32 0, i32 1, !dbg !2936
  %12 = load %struct._object*, %struct._object** %input_iter, align 8, !dbg !2936, !tbaa !2817
  %tobool6 = icmp ne %struct._object* %12, null, !dbg !2937
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !2938

if.then.7:                                        ; preds = %do.body.5
  %13 = bitcast i32* %vret8 to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !2939
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !710, metadata !1200), !dbg !2941
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2942, !tbaa !1221
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2943, !tbaa !1221
  %input_iter9 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 1, !dbg !2944
  %16 = load %struct._object*, %struct._object** %input_iter9, align 8, !dbg !2944, !tbaa !2817
  %17 = load i8*, i8** %arg.addr, align 8, !dbg !2945, !tbaa !1221
  %call10 = call i32 %14(%struct._object* %16, i8* %17), !dbg !2942
  store i32 %call10, i32* %vret8, align 4, !dbg !2941, !tbaa !2313
  %18 = load i32, i32* %vret8, align 4, !dbg !2946, !tbaa !2313
  %tobool11 = icmp ne i32 %18, 0, !dbg !2946
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2948

if.then.12:                                       ; preds = %if.then.7
  %19 = load i32, i32* %vret8, align 4, !dbg !2949, !tbaa !2313
  store i32 %19, i32* %retval, !dbg !2951
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !2951

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !2952
  br label %cleanup.14, !dbg !2952

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %20 = bitcast i32* %vret8 to i8*, !dbg !2954
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !2954
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.14
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.15, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.16

cleanup.cont.16:                                  ; preds = %NewDefault.1
  br label %if.end.17, !dbg !2957

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !2958

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19, !dbg !2961

do.body.19:                                       ; preds = %do.end.18
  %21 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2962, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %21, i32 0, i32 3, !dbg !2964
  %22 = load %struct._object*, %struct._object** %fields, align 8, !dbg !2964, !tbaa !2856
  %tobool20 = icmp ne %struct._object* %22, null, !dbg !2965
  br i1 %tobool20, label %if.then.21, label %if.end.31, !dbg !2966

if.then.21:                                       ; preds = %do.body.19
  %23 = bitcast i32* %vret22 to i8*, !dbg !2967
  call void @llvm.lifetime.start(i64 4, i8* %23) #1, !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %vret22, metadata !714, metadata !1200), !dbg !2969
  %24 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2970, !tbaa !1221
  %25 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2971, !tbaa !1221
  %fields23 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %25, i32 0, i32 3, !dbg !2972
  %26 = load %struct._object*, %struct._object** %fields23, align 8, !dbg !2972, !tbaa !2856
  %27 = load i8*, i8** %arg.addr, align 8, !dbg !2973, !tbaa !1221
  %call24 = call i32 %24(%struct._object* %26, i8* %27), !dbg !2970
  store i32 %call24, i32* %vret22, align 4, !dbg !2969, !tbaa !2313
  %28 = load i32, i32* %vret22, align 4, !dbg !2974, !tbaa !2313
  %tobool25 = icmp ne i32 %28, 0, !dbg !2974
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !2976

if.then.26:                                       ; preds = %if.then.21
  %29 = load i32, i32* %vret22, align 4, !dbg !2977, !tbaa !2313
  store i32 %29, i32* %retval, !dbg !2979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28, !dbg !2979

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot, !dbg !2980
  br label %cleanup.28, !dbg !2980

cleanup.28:                                       ; preds = %if.end.27, %if.then.26
  %30 = bitcast i32* %vret22 to i8*, !dbg !2982
  call void @llvm.lifetime.end(i64 4, i8* %30) #1, !dbg !2982
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.28
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.29, 1
  br i1 %SwitchLeaf6, label %return, label %NewDefault.4

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.cont.30

cleanup.cont.30:                                  ; preds = %NewDefault.4
  br label %if.end.31, !dbg !2985

if.end.31:                                        ; preds = %cleanup.cont.30, %do.body.19
  br label %do.end.32, !dbg !2986

do.end.32:                                        ; preds = %if.end.31
  store i32 0, i32* %retval, !dbg !2989
  br label %return, !dbg !2989

return:                                           ; preds = %LeafBlock.5, %LeafBlock.2, %LeafBlock, %do.end.32
  %31 = load i32, i32* %retval, !dbg !2990
  ret i32 %31, !dbg !2990
}

; Function Attrs: nounwind uwtable
define internal i32 @Reader_clear(%struct.ReaderObj* %self) #0 {
entry:
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !722, metadata !1200), !dbg !2991
  br label %do.body, !dbg !2992

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2993
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2993
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !723, metadata !1200), !dbg !2995
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !2996, !tbaa !1221
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %1, i32 0, i32 2, !dbg !2997
  %2 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !2997, !tbaa !2774
  %3 = bitcast %struct.DialectObj* %2 to %struct._object*, !dbg !2998
  store %struct._object* %3, %struct._object** %_py_tmp, align 8, !dbg !2995, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2999, !tbaa !1221
  %cmp = icmp ne %struct._object* %4, null, !dbg !3000
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3001

if.then:                                          ; preds = %do.body
  %5 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3002, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %5, i32 0, i32 2, !dbg !3004
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8, !dbg !3005, !tbaa !2774
  br label %do.body.2, !dbg !3006

do.body.2:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3007
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !725, metadata !1200), !dbg !3009
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3010, !tbaa !1221
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !3009, !tbaa !1221
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3011, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3013
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3014, !tbaa !1265
  %dec = add i64 %9, -1, !dbg !3014
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3014, !tbaa !1265
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3015
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3016

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !3017

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3019, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3021
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3021, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !3022
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3022, !tbaa !1370
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3023, !tbaa !1221
  call void %12(%struct._object* %13), !dbg !3024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3025
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3025
  br label %do.cond, !dbg !3027

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3028

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3030

if.end.5:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3032
  br label %do.end.7, !dbg !3035

do.end.7:                                         ; preds = %if.end.5
  br label %do.body.8, !dbg !3036

do.body.8:                                        ; preds = %do.end.7
  %16 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3037
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !3037
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !729, metadata !1200), !dbg !3039
  %17 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3040, !tbaa !1221
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %17, i32 0, i32 1, !dbg !3041
  %18 = load %struct._object*, %struct._object** %input_iter, align 8, !dbg !3041, !tbaa !2817
  store %struct._object* %18, %struct._object** %_py_tmp9, align 8, !dbg !3039, !tbaa !1221
  %19 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3042, !tbaa !1221
  %cmp10 = icmp ne %struct._object* %19, null, !dbg !3043
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !3044

if.then.11:                                       ; preds = %do.body.8
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3045, !tbaa !1221
  %input_iter12 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %20, i32 0, i32 1, !dbg !3047
  store %struct._object* null, %struct._object** %input_iter12, align 8, !dbg !3048, !tbaa !2817
  br label %do.body.13, !dbg !3049

do.body.13:                                       ; preds = %if.then.11
  %21 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3050
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !3050
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !731, metadata !1200), !dbg !3052
  %22 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !3053, !tbaa !1221
  store %struct._object* %22, %struct._object** %_py_decref_tmp14, align 8, !dbg !3052, !tbaa !1221
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3054, !tbaa !1221
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !3056
  %24 = load i64, i64* %ob_refcnt15, align 8, !dbg !3057, !tbaa !1265
  %dec16 = add i64 %24, -1, !dbg !3057
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !3057, !tbaa !1265
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !3058
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3059

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !3060

if.else.19:                                       ; preds = %do.body.13
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3062, !tbaa !1221
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !3064
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !3064, !tbaa !1368
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !3065
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !3065, !tbaa !1370
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3066, !tbaa !1221
  call void %27(%struct._object* %28), !dbg !3067
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %29 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3068
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3068
  br label %do.cond.23, !dbg !3070

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3071

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !3073

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %30 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !3075
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !3075
  br label %do.end.27, !dbg !3076

do.end.27:                                        ; preds = %if.end.25
  br label %do.body.28, !dbg !3077

do.body.28:                                       ; preds = %do.end.27
  %31 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !3078
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !3078
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp29, metadata !735, metadata !1200), !dbg !3080
  %32 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3081, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %32, i32 0, i32 3, !dbg !3082
  %33 = load %struct._object*, %struct._object** %fields, align 8, !dbg !3082, !tbaa !2856
  store %struct._object* %33, %struct._object** %_py_tmp29, align 8, !dbg !3080, !tbaa !1221
  %34 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !3083, !tbaa !1221
  %cmp30 = icmp ne %struct._object* %34, null, !dbg !3084
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !3085

if.then.31:                                       ; preds = %do.body.28
  %35 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3086, !tbaa !1221
  %fields32 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %35, i32 0, i32 3, !dbg !3088
  store %struct._object* null, %struct._object** %fields32, align 8, !dbg !3089, !tbaa !2856
  br label %do.body.33, !dbg !3090

do.body.33:                                       ; preds = %if.then.31
  %36 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3091
  call void @llvm.lifetime.start(i64 8, i8* %36) #1, !dbg !3091
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !737, metadata !1200), !dbg !3093
  %37 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !3094, !tbaa !1221
  store %struct._object* %37, %struct._object** %_py_decref_tmp34, align 8, !dbg !3093, !tbaa !1221
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3095, !tbaa !1221
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !3097
  %39 = load i64, i64* %ob_refcnt35, align 8, !dbg !3098, !tbaa !1265
  %dec36 = add i64 %39, -1, !dbg !3098
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !3098, !tbaa !1265
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !3099
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !3100

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !3101

if.else.39:                                       ; preds = %do.body.33
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3103, !tbaa !1221
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !3105
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !3105, !tbaa !1368
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !3106
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !3106, !tbaa !1370
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3107, !tbaa !1221
  call void %42(%struct._object* %43), !dbg !3108
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %44 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3109
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3109
  br label %do.cond.43, !dbg !3111

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !3112

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !3114

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %45 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !3116
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3116
  br label %do.end.47, !dbg !3117

do.end.47:                                        ; preds = %if.end.45
  ret i32 0, !dbg !3118
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @Reader_iternext(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.ReaderObj*, align 8
  %fields = alloca %struct._object*, align 8
  %c = alloca i32, align 4
  %pos = alloca i64, align 8
  %linelen = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %lineobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !745, metadata !1200), !dbg !3119
  %0 = bitcast %struct._object** %fields to i8*, !dbg !3120
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3120
  call void @llvm.dbg.declare(metadata %struct._object** %fields, metadata !746, metadata !1200), !dbg !3121
  store %struct._object* null, %struct._object** %fields, align 8, !dbg !3121, !tbaa !1221
  %1 = bitcast i32* %c to i8*, !dbg !3122
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3122
  call void @llvm.dbg.declare(metadata i32* %c, metadata !747, metadata !1200), !dbg !3123
  %2 = bitcast i64* %pos to i8*, !dbg !3124
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3124
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !748, metadata !1200), !dbg !3125
  %3 = bitcast i64* %linelen to i8*, !dbg !3124
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3124
  call void @llvm.dbg.declare(metadata i64* %linelen, metadata !749, metadata !1200), !dbg !3126
  %4 = bitcast i32* %kind to i8*, !dbg !3127
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3127
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !750, metadata !1200), !dbg !3128
  %5 = bitcast i8** %data to i8*, !dbg !3129
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3129
  call void @llvm.dbg.declare(metadata i8** %data, metadata !751, metadata !1200), !dbg !3130
  %6 = bitcast %struct._object** %lineobj to i8*, !dbg !3131
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3131
  call void @llvm.dbg.declare(metadata %struct._object** %lineobj, metadata !752, metadata !1200), !dbg !3132
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3133, !tbaa !1221
  %call = call i32 @parse_reset(%struct.ReaderObj* %7), !dbg !3135
  %cmp = icmp slt i32 %call, 0, !dbg !3136
  br i1 %cmp, label %if.then, label %if.end, !dbg !3137

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3138

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3139

do.body:                                          ; preds = %do.cond.149, %if.end
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3140, !tbaa !1221
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 1, !dbg !3141
  %9 = load %struct._object*, %struct._object** %input_iter, align 8, !dbg !3141, !tbaa !2817
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %9), !dbg !3142
  store %struct._object* %call1, %struct._object** %lineobj, align 8, !dbg !3143, !tbaa !1221
  %10 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3144, !tbaa !1221
  %cmp2 = icmp eq %struct._object* %10, null, !dbg !3146
  br i1 %cmp2, label %if.then.3, label %if.end.18, !dbg !3147

if.then.3:                                        ; preds = %do.body
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3148
  %tobool = icmp ne %struct._object* %call4, null, !dbg !3148
  br i1 %tobool, label %if.end.17, label %land.lhs.true, !dbg !3151

land.lhs.true:                                    ; preds = %if.then.3
  %11 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3152, !tbaa !1221
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %11, i32 0, i32 7, !dbg !3154
  %12 = load i64, i64* %field_len, align 8, !dbg !3154, !tbaa !3155
  %cmp5 = icmp ne i64 %12, 0, !dbg !3156
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false, !dbg !3157

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3158, !tbaa !1221
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %13, i32 0, i32 4, !dbg !3159
  %14 = load i32, i32* %state, align 4, !dbg !3159, !tbaa !3160
  %cmp6 = icmp eq i32 %14, 4, !dbg !3161
  br i1 %cmp6, label %if.then.7, label %if.end.17, !dbg !3162

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3163, !tbaa !1221
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 2, !dbg !3166
  %16 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3166, !tbaa !2774
  %strict = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %16, i32 0, i32 8, !dbg !3167
  %17 = load i32, i32* %strict, align 4, !dbg !3167, !tbaa !3168
  %tobool8 = icmp ne i32 %17, 0, !dbg !3163
  br i1 %tobool8, label %if.then.9, label %if.else, !dbg !3169

if.then.9:                                        ; preds = %if.then.7
  %call10 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !3170
  %call11 = call i8* @PyModule_GetState(%struct._object* %call10), !dbg !3171
  %18 = bitcast i8* %call11 to %struct._csvstate*, !dbg !3172
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %18, i32 0, i32 0, !dbg !3173
  %19 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !3173, !tbaa !1314
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0)), !dbg !3174
  br label %if.end.16, !dbg !3174

if.else:                                          ; preds = %if.then.7
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3175, !tbaa !1221
  %call12 = call i32 @parse_save_field(%struct.ReaderObj* %20), !dbg !3177
  %cmp13 = icmp sge i32 %call12, 0, !dbg !3178
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !3179

if.then.14:                                       ; preds = %if.else
  br label %do.end.153, !dbg !3180

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  br label %if.end.17, !dbg !3181

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false, %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !3182
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3182

if.end.18:                                        ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3183, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !3184
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3184, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19, !dbg !3185
  %23 = load i64, i64* %tp_flags, align 8, !dbg !3185, !tbaa !1435
  %and = and i64 %23, 268435456, !dbg !3186
  %cmp19 = icmp ne i64 %and, 0, !dbg !3187
  br i1 %cmp19, label %if.end.32, label %if.then.20, !dbg !3188

if.then.20:                                       ; preds = %if.end.18
  %call21 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !3189
  %call22 = call i8* @PyModule_GetState(%struct._object* %call21), !dbg !3190
  %24 = bitcast i8* %call22 to %struct._csvstate*, !dbg !3191
  %error_obj23 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %24, i32 0, i32 0, !dbg !3192
  %25 = load %struct._object*, %struct._object** %error_obj23, align 8, !dbg !3192, !tbaa !1314
  %26 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3193, !tbaa !1221
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !3194
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !3194, !tbaa !1368
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 1, !dbg !3195
  %28 = load i8*, i8** %tp_name, align 8, !dbg !3195, !tbaa !2408
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0), i8* %28), !dbg !3196
  br label %do.body.26, !dbg !3197

do.body.26:                                       ; preds = %if.then.20
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3198
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !3198
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !753, metadata !1200), !dbg !3200
  %30 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3201, !tbaa !1221
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !3200, !tbaa !1221
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3202, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !3204
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !3205, !tbaa !1265
  %dec = add i64 %32, -1, !dbg !3205
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3205, !tbaa !1265
  %cmp27 = icmp ne i64 %dec, 0, !dbg !3206
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !3207

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.31, !dbg !3208

if.else.29:                                       ; preds = %do.body.26
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3210, !tbaa !1221
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !3212
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !3212, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !3213
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3213, !tbaa !1370
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3214, !tbaa !1221
  call void %35(%struct._object* %36), !dbg !3215
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3216
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3216
  br label %do.cond, !dbg !3218

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !3219

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3221

if.end.32:                                        ; preds = %if.end.18
  %38 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3222, !tbaa !1221
  %39 = bitcast %struct._object* %38 to %struct.PyASCIIObject*, !dbg !3223
  %state33 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %39, i32 0, i32 3, !dbg !3224
  %40 = bitcast %struct.anon* %state33 to i32*, !dbg !3225
  %bf.load = load i32, i32* %40, align 4, !dbg !3225
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3225
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3225
  %tobool34 = icmp ne i32 %bf.clear, 0, !dbg !3226
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !3226

cond.true:                                        ; preds = %if.end.32
  br label %cond.end, !dbg !3227

cond.false:                                       ; preds = %if.end.32
  %41 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3229, !tbaa !1221
  %call35 = call i32 @_PyUnicode_Ready(%struct._object* %41), !dbg !3231
  br label %cond.end, !dbg !3226

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call35, %cond.false ], !dbg !3226
  %cmp36 = icmp eq i32 %cond, -1, !dbg !3232
  br i1 %cmp36, label %if.then.37, label %if.end.50, !dbg !3235

if.then.37:                                       ; preds = %cond.end
  br label %do.body.38, !dbg !3236

do.body.38:                                       ; preds = %if.then.37
  %42 = bitcast %struct._object** %_py_decref_tmp39 to i8*, !dbg !3237
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !3237
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp39, metadata !758, metadata !1200), !dbg !3239
  %43 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3240, !tbaa !1221
  store %struct._object* %43, %struct._object** %_py_decref_tmp39, align 8, !dbg !3239, !tbaa !1221
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !3241, !tbaa !1221
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !3243
  %45 = load i64, i64* %ob_refcnt40, align 8, !dbg !3244, !tbaa !1265
  %dec41 = add i64 %45, -1, !dbg !3244
  store i64 %dec41, i64* %ob_refcnt40, align 8, !dbg !3244, !tbaa !1265
  %cmp42 = icmp ne i64 %dec41, 0, !dbg !3245
  br i1 %cmp42, label %if.then.43, label %if.else.44, !dbg !3246

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47, !dbg !3247

if.else.44:                                       ; preds = %do.body.38
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !3249, !tbaa !1221
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !3251
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !3251, !tbaa !1368
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !3252
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8, !dbg !3252, !tbaa !1370
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !3253, !tbaa !1221
  call void %48(%struct._object* %49), !dbg !3254
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  %50 = bitcast %struct._object** %_py_decref_tmp39 to i8*, !dbg !3255
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !3255
  br label %do.cond.48, !dbg !3257

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49, !dbg !3258

do.end.49:                                        ; preds = %do.cond.48
  store %struct._object* null, %struct._object** %retval, !dbg !3260
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3260

if.end.50:                                        ; preds = %cond.end
  %51 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3261, !tbaa !1221
  %line_num = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %51, i32 0, i32 9, !dbg !3262
  %52 = load i64, i64* %line_num, align 8, !dbg !3263, !tbaa !3264
  %inc = add i64 %52, 1, !dbg !3263
  store i64 %inc, i64* %line_num, align 8, !dbg !3263, !tbaa !3264
  %53 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3265, !tbaa !1221
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*, !dbg !3266
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3, !dbg !3267
  %55 = bitcast %struct.anon* %state51 to i32*, !dbg !3268
  %bf.load52 = load i32, i32* %55, align 4, !dbg !3268
  %bf.lshr53 = lshr i32 %bf.load52, 2, !dbg !3268
  %bf.clear54 = and i32 %bf.lshr53, 7, !dbg !3268
  store i32 %bf.clear54, i32* %kind, align 4, !dbg !3269, !tbaa !2313
  %56 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3270, !tbaa !1221
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*, !dbg !3271
  %state55 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3, !dbg !3272
  %58 = bitcast %struct.anon* %state55 to i32*, !dbg !3273
  %bf.load56 = load i32, i32* %58, align 4, !dbg !3273
  %bf.lshr57 = lshr i32 %bf.load56, 5, !dbg !3273
  %bf.clear58 = and i32 %bf.lshr57, 1, !dbg !3273
  %tobool59 = icmp ne i32 %bf.clear58, 0, !dbg !3274
  br i1 %tobool59, label %cond.true.60, label %cond.false.71, !dbg !3274

cond.true.60:                                     ; preds = %if.end.50
  %59 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3275, !tbaa !1221
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*, !dbg !3277
  %state61 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3, !dbg !3278
  %61 = bitcast %struct.anon* %state61 to i32*, !dbg !3279
  %bf.load62 = load i32, i32* %61, align 4, !dbg !3279
  %bf.lshr63 = lshr i32 %bf.load62, 6, !dbg !3279
  %bf.clear64 = and i32 %bf.lshr63, 1, !dbg !3279
  %tobool65 = icmp ne i32 %bf.clear64, 0, !dbg !3280
  br i1 %tobool65, label %cond.true.66, label %cond.false.67, !dbg !3280

cond.true.66:                                     ; preds = %cond.true.60
  %62 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3281, !tbaa !1221
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*, !dbg !3283
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i64 1, !dbg !3284
  %64 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !3285
  br label %cond.end.69, !dbg !3280

cond.false.67:                                    ; preds = %cond.true.60
  %65 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3286, !tbaa !1221
  %66 = bitcast %struct._object* %65 to %struct.PyCompactUnicodeObject*, !dbg !3288
  %add.ptr68 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %66, i64 1, !dbg !3289
  %67 = bitcast %struct.PyCompactUnicodeObject* %add.ptr68 to i8*, !dbg !3290
  br label %cond.end.69, !dbg !3280

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.66
  %cond70 = phi i8* [ %64, %cond.true.66 ], [ %67, %cond.false.67 ], !dbg !3280
  br label %cond.end.73, !dbg !3291

cond.false.71:                                    ; preds = %if.end.50
  %68 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3294, !tbaa !1221
  %69 = bitcast %struct._object* %68 to %struct.PyUnicodeObject*, !dbg !3296
  %data72 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %69, i32 0, i32 1, !dbg !3297
  %any = bitcast %union.anon* %data72 to i8**, !dbg !3298
  %70 = load i8*, i8** %any, align 8, !dbg !3298, !tbaa !1221
  br label %cond.end.73, !dbg !3274

cond.end.73:                                      ; preds = %cond.false.71, %cond.end.69
  %cond74 = phi i8* [ %cond70, %cond.end.69 ], [ %70, %cond.false.71 ], !dbg !3274
  store i8* %cond74, i8** %data, align 8, !dbg !3299, !tbaa !1221
  store i64 0, i64* %pos, align 8, !dbg !3302, !tbaa !2414
  %71 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3303, !tbaa !1221
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*, !dbg !3304
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 1, !dbg !3305
  %73 = load i64, i64* %length, align 8, !dbg !3305, !tbaa !3306
  store i64 %73, i64* %linelen, align 8, !dbg !3309, !tbaa !2414
  br label %while.cond, !dbg !3310

while.cond:                                       ; preds = %if.end.129, %cond.end.73
  %74 = load i64, i64* %linelen, align 8, !dbg !3311, !tbaa !2414
  %dec75 = add i64 %74, -1, !dbg !3311
  store i64 %dec75, i64* %linelen, align 8, !dbg !3311, !tbaa !2414
  %tobool76 = icmp ne i64 %74, 0, !dbg !3310
  br i1 %tobool76, label %while.body, label %while.end, !dbg !3310

while.body:                                       ; preds = %while.cond
  %75 = load i32, i32* %kind, align 4, !dbg !3313, !tbaa !2313
  %cmp77 = icmp eq i32 %75, 1, !dbg !3314
  br i1 %cmp77, label %cond.true.78, label %cond.false.79, !dbg !3315

cond.true.78:                                     ; preds = %while.body
  %76 = load i64, i64* %pos, align 8, !dbg !3316, !tbaa !2414
  %77 = load i8*, i8** %data, align 8, !dbg !3318, !tbaa !1221
  %arrayidx = getelementptr i8, i8* %77, i64 %76, !dbg !3319
  %78 = load i8, i8* %arrayidx, align 1, !dbg !3319, !tbaa !2467
  %conv = zext i8 %78 to i32, !dbg !3319
  br label %cond.end.89, !dbg !3315

cond.false.79:                                    ; preds = %while.body
  %79 = load i32, i32* %kind, align 4, !dbg !3320, !tbaa !2313
  %cmp80 = icmp eq i32 %79, 2, !dbg !3322
  br i1 %cmp80, label %cond.true.82, label %cond.false.85, !dbg !3323

cond.true.82:                                     ; preds = %cond.false.79
  %80 = load i64, i64* %pos, align 8, !dbg !3324, !tbaa !2414
  %81 = load i8*, i8** %data, align 8, !dbg !3326, !tbaa !1221
  %82 = bitcast i8* %81 to i16*, !dbg !3327
  %arrayidx83 = getelementptr i16, i16* %82, i64 %80, !dbg !3328
  %83 = load i16, i16* %arrayidx83, align 2, !dbg !3328, !tbaa !2509
  %conv84 = zext i16 %83 to i32, !dbg !3328
  br label %cond.end.87, !dbg !3323

cond.false.85:                                    ; preds = %cond.false.79
  %84 = load i64, i64* %pos, align 8, !dbg !3329, !tbaa !2414
  %85 = load i8*, i8** %data, align 8, !dbg !3331, !tbaa !1221
  %86 = bitcast i8* %85 to i32*, !dbg !3332
  %arrayidx86 = getelementptr i32, i32* %86, i64 %84, !dbg !3333
  %87 = load i32, i32* %arrayidx86, align 4, !dbg !3333, !tbaa !2313
  br label %cond.end.87, !dbg !3323

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.82
  %cond88 = phi i32 [ %conv84, %cond.true.82 ], [ %87, %cond.false.85 ], !dbg !3323
  br label %cond.end.89, !dbg !3334

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.78
  %cond90 = phi i32 [ %conv, %cond.true.78 ], [ %cond88, %cond.end.87 ], !dbg !3315
  store i32 %cond90, i32* %c, align 4, !dbg !3337, !tbaa !2313
  %88 = load i32, i32* %c, align 4, !dbg !3340, !tbaa !2313
  %cmp91 = icmp eq i32 %88, 0, !dbg !3341
  br i1 %cmp91, label %if.then.93, label %if.end.111, !dbg !3342

if.then.93:                                       ; preds = %cond.end.89
  br label %do.body.94, !dbg !3343

do.body.94:                                       ; preds = %if.then.93
  %89 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !3344
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp95, metadata !762, metadata !1200), !dbg !3346
  %90 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3347, !tbaa !1221
  store %struct._object* %90, %struct._object** %_py_decref_tmp95, align 8, !dbg !3346, !tbaa !1221
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !3348, !tbaa !1221
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !3350
  %92 = load i64, i64* %ob_refcnt96, align 8, !dbg !3351, !tbaa !1265
  %dec97 = add i64 %92, -1, !dbg !3351
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !3351, !tbaa !1265
  %cmp98 = icmp ne i64 %dec97, 0, !dbg !3352
  br i1 %cmp98, label %if.then.100, label %if.else.101, !dbg !3353

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104, !dbg !3354

if.else.101:                                      ; preds = %do.body.94
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !3356, !tbaa !1221
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !3358
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !3358, !tbaa !1368
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !3359
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !3359, !tbaa !1370
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !3360, !tbaa !1221
  call void %95(%struct._object* %96), !dbg !3361
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %97 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !3362
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !3362
  br label %do.cond.105, !dbg !3364

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !3365

do.end.106:                                       ; preds = %do.cond.105
  %call107 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !3367
  %call108 = call i8* @PyModule_GetState(%struct._object* %call107), !dbg !3368
  %98 = bitcast i8* %call108 to %struct._csvstate*, !dbg !3369
  %error_obj109 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %98, i32 0, i32 0, !dbg !3370
  %99 = load %struct._object*, %struct._object** %error_obj109, align 8, !dbg !3370, !tbaa !1314
  %call110 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0)), !dbg !3371
  br label %err, !dbg !3372

if.end.111:                                       ; preds = %cond.end.89
  %100 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3373, !tbaa !1221
  %101 = load i32, i32* %c, align 4, !dbg !3374, !tbaa !2313
  %call112 = call i32 @parse_process_char(%struct.ReaderObj* %100, i32 %101), !dbg !3375
  %cmp113 = icmp slt i32 %call112, 0, !dbg !3376
  br i1 %cmp113, label %if.then.115, label %if.end.129, !dbg !3377

if.then.115:                                      ; preds = %if.end.111
  br label %do.body.116, !dbg !3378

do.body.116:                                      ; preds = %if.then.115
  %102 = bitcast %struct._object** %_py_decref_tmp117 to i8*, !dbg !3379
  call void @llvm.lifetime.start(i64 8, i8* %102) #1, !dbg !3379
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp117, metadata !767, metadata !1200), !dbg !3381
  %103 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3382, !tbaa !1221
  store %struct._object* %103, %struct._object** %_py_decref_tmp117, align 8, !dbg !3381, !tbaa !1221
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !3383, !tbaa !1221
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !3385
  %105 = load i64, i64* %ob_refcnt118, align 8, !dbg !3386, !tbaa !1265
  %dec119 = add i64 %105, -1, !dbg !3386
  store i64 %dec119, i64* %ob_refcnt118, align 8, !dbg !3386, !tbaa !1265
  %cmp120 = icmp ne i64 %dec119, 0, !dbg !3387
  br i1 %cmp120, label %if.then.122, label %if.else.123, !dbg !3388

if.then.122:                                      ; preds = %do.body.116
  br label %if.end.126, !dbg !3389

if.else.123:                                      ; preds = %do.body.116
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !3391, !tbaa !1221
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !3393
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !3393, !tbaa !1368
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !3394
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !3394, !tbaa !1370
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8, !dbg !3395, !tbaa !1221
  call void %108(%struct._object* %109), !dbg !3396
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  %110 = bitcast %struct._object** %_py_decref_tmp117 to i8*, !dbg !3397
  call void @llvm.lifetime.end(i64 8, i8* %110) #1, !dbg !3397
  br label %do.cond.127, !dbg !3399

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !3400

do.end.128:                                       ; preds = %do.cond.127
  br label %err, !dbg !3402

if.end.129:                                       ; preds = %if.end.111
  %111 = load i64, i64* %pos, align 8, !dbg !3403, !tbaa !2414
  %inc130 = add i64 %111, 1, !dbg !3403
  store i64 %inc130, i64* %pos, align 8, !dbg !3403, !tbaa !2414
  br label %while.cond, !dbg !3310

while.end:                                        ; preds = %while.cond
  br label %do.body.131, !dbg !3404

do.body.131:                                      ; preds = %while.end
  %112 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !3405
  call void @llvm.lifetime.start(i64 8, i8* %112) #1, !dbg !3405
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp132, metadata !771, metadata !1200), !dbg !3407
  %113 = load %struct._object*, %struct._object** %lineobj, align 8, !dbg !3408, !tbaa !1221
  store %struct._object* %113, %struct._object** %_py_decref_tmp132, align 8, !dbg !3407, !tbaa !1221
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !3409, !tbaa !1221
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0, !dbg !3411
  %115 = load i64, i64* %ob_refcnt133, align 8, !dbg !3412, !tbaa !1265
  %dec134 = add i64 %115, -1, !dbg !3412
  store i64 %dec134, i64* %ob_refcnt133, align 8, !dbg !3412, !tbaa !1265
  %cmp135 = icmp ne i64 %dec134, 0, !dbg !3413
  br i1 %cmp135, label %if.then.137, label %if.else.138, !dbg !3414

if.then.137:                                      ; preds = %do.body.131
  br label %if.end.141, !dbg !3415

if.else.138:                                      ; preds = %do.body.131
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !3417, !tbaa !1221
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !3419
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8, !dbg !3419, !tbaa !1368
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4, !dbg !3420
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8, !dbg !3420, !tbaa !1370
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !3421, !tbaa !1221
  call void %118(%struct._object* %119), !dbg !3422
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  %120 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !3423
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !3423
  br label %do.cond.142, !dbg !3424

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143, !dbg !3425

do.end.143:                                       ; preds = %do.cond.142
  %121 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3427, !tbaa !1221
  %call144 = call i32 @parse_process_char(%struct.ReaderObj* %121, i32 0), !dbg !3429
  %cmp145 = icmp slt i32 %call144, 0, !dbg !3430
  br i1 %cmp145, label %if.then.147, label %if.end.148, !dbg !3431

if.then.147:                                      ; preds = %do.end.143
  br label %err, !dbg !3432

if.end.148:                                       ; preds = %do.end.143
  br label %do.cond.149, !dbg !3433

do.cond.149:                                      ; preds = %if.end.148
  %122 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3434, !tbaa !1221
  %state150 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %122, i32 0, i32 4, !dbg !3436
  %123 = load i32, i32* %state150, align 4, !dbg !3436, !tbaa !3160
  %cmp151 = icmp ne i32 %123, 0, !dbg !3437
  br i1 %cmp151, label %do.body, label %do.end.153, !dbg !3433

do.end.153:                                       ; preds = %do.cond.149, %if.then.14
  %124 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3438, !tbaa !1221
  %fields154 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %124, i32 0, i32 3, !dbg !3439
  %125 = load %struct._object*, %struct._object** %fields154, align 8, !dbg !3439, !tbaa !2856
  store %struct._object* %125, %struct._object** %fields, align 8, !dbg !3440, !tbaa !1221
  %126 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3441, !tbaa !1221
  %fields155 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %126, i32 0, i32 3, !dbg !3442
  store %struct._object* null, %struct._object** %fields155, align 8, !dbg !3443, !tbaa !2856
  br label %err, !dbg !3441

err:                                              ; preds = %do.end.153, %if.then.147, %do.end.128, %do.end.106
  %127 = load %struct._object*, %struct._object** %fields, align 8, !dbg !3444, !tbaa !1221
  store %struct._object* %127, %struct._object** %retval, !dbg !3445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3445

cleanup:                                          ; preds = %err, %do.end.49, %do.end, %if.end.17, %if.then
  %128 = bitcast %struct._object** %lineobj to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 8, i8* %128) #1, !dbg !3446
  %129 = bitcast i8** %data to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 8, i8* %129) #1, !dbg !3446
  %130 = bitcast i32* %kind to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 4, i8* %130) #1, !dbg !3446
  %131 = bitcast i64* %linelen to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !3446
  %132 = bitcast i64* %pos to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !3446
  %133 = bitcast i32* %c to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 4, i8* %133) #1, !dbg !3446
  %134 = bitcast %struct._object** %fields to i8*, !dbg !3446
  call void @llvm.lifetime.end(i64 8, i8* %134) #1, !dbg !3446
  %135 = load %struct._object*, %struct._object** %retval, !dbg !3446
  ret %struct._object* %135, !dbg !3446
}

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @PyMem_Free(i8*) #3

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_reset(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !775, metadata !1200), !dbg !3447
  br label %do.body, !dbg !3448

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3449
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !776, metadata !1200), !dbg !3451
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3452, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %1, i32 0, i32 3, !dbg !3453
  %2 = load %struct._object*, %struct._object** %fields, align 8, !dbg !3453, !tbaa !2856
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3451, !tbaa !1221
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3454, !tbaa !1221
  %cmp = icmp ne %struct._object* %3, null, !dbg !3455
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !3456

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !3457

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3459
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !778, metadata !1200), !dbg !3461
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3462, !tbaa !1221
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !3461, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3463, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3465
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3466, !tbaa !1265
  %dec = add i64 %7, -1, !dbg !3466
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3466, !tbaa !1265
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3467
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3468

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !3469

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3471, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !3473
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3473, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !3474
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3474, !tbaa !1370
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3475, !tbaa !1221
  call void %10(%struct._object* %11), !dbg !3476
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3477
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !3477
  br label %do.cond, !dbg !3479

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3480

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !3482

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3484
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3484
  br label %do.end.6, !dbg !3487

do.end.6:                                         ; preds = %if.end.4
  %call = call %struct._object* @PyList_New(i64 0), !dbg !3488
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3489, !tbaa !1221
  %fields7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 3, !dbg !3490
  store %struct._object* %call, %struct._object** %fields7, align 8, !dbg !3491, !tbaa !2856
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3492, !tbaa !1221
  %fields8 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 3, !dbg !3494
  %16 = load %struct._object*, %struct._object** %fields8, align 8, !dbg !3494, !tbaa !2856
  %cmp9 = icmp eq %struct._object* %16, null, !dbg !3495
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !3496

if.then.10:                                       ; preds = %do.end.6
  store i32 -1, i32* %retval, !dbg !3497
  br label %return, !dbg !3497

if.end.11:                                        ; preds = %do.end.6
  %17 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3498, !tbaa !1221
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %17, i32 0, i32 7, !dbg !3499
  store i64 0, i64* %field_len, align 8, !dbg !3500, !tbaa !3155
  %18 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3501, !tbaa !1221
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %18, i32 0, i32 4, !dbg !3502
  store i32 0, i32* %state, align 4, !dbg !3503, !tbaa !3160
  %19 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3504, !tbaa !1221
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %19, i32 0, i32 8, !dbg !3505
  store i32 0, i32* %numeric_field, align 4, !dbg !3506, !tbaa !3507
  store i32 0, i32* %retval, !dbg !3508
  br label %return, !dbg !3508

return:                                           ; preds = %if.end.11, %if.then.10
  %20 = load i32, i32* %retval, !dbg !3509
  ret i32 %20, !dbg !3509
}

declare %struct._object* @PyIter_Next(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_save_field(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %field = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !783, metadata !1200), !dbg !3510
  %0 = bitcast %struct._object** %field to i8*, !dbg !3511
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3511
  call void @llvm.dbg.declare(metadata %struct._object** %field, metadata !784, metadata !1200), !dbg !3512
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3513, !tbaa !1221
  %field1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %1, i32 0, i32 5, !dbg !3514
  %2 = load i32*, i32** %field1, align 8, !dbg !3514, !tbaa !2892
  %3 = bitcast i32* %2 to i8*, !dbg !3515
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3516, !tbaa !1221
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %4, i32 0, i32 7, !dbg !3517
  %5 = load i64, i64* %field_len, align 8, !dbg !3517, !tbaa !3155
  %call = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %3, i64 %5), !dbg !3518
  store %struct._object* %call, %struct._object** %field, align 8, !dbg !3519, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %field, align 8, !dbg !3520, !tbaa !1221
  %cmp = icmp eq %struct._object* %6, null, !dbg !3522
  br i1 %cmp, label %if.then, label %if.end, !dbg !3523

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3524
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44, !dbg !3524

if.end:                                           ; preds = %entry
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3525, !tbaa !1221
  %field_len2 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %7, i32 0, i32 7, !dbg !3526
  store i64 0, i64* %field_len2, align 8, !dbg !3527, !tbaa !3155
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3528, !tbaa !1221
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 8, !dbg !3529
  %9 = load i32, i32* %numeric_field, align 4, !dbg !3529, !tbaa !3507
  %tobool = icmp ne i32 %9, 0, !dbg !3528
  br i1 %tobool, label %if.then.3, label %if.end.13, !dbg !3530

if.then.3:                                        ; preds = %if.end
  %10 = bitcast %struct._object** %tmp to i8*, !dbg !3531
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3531
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !785, metadata !1200), !dbg !3532
  %11 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3533, !tbaa !1221
  %numeric_field4 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %11, i32 0, i32 8, !dbg !3534
  store i32 0, i32* %numeric_field4, align 4, !dbg !3535, !tbaa !3507
  %12 = load %struct._object*, %struct._object** %field, align 8, !dbg !3536, !tbaa !1221
  %call5 = call %struct._object* @PyNumber_Float(%struct._object* %12), !dbg !3537
  store %struct._object* %call5, %struct._object** %tmp, align 8, !dbg !3538, !tbaa !1221
  br label %do.body, !dbg !3539

do.body:                                          ; preds = %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3540
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !3540
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !788, metadata !1200), !dbg !3542
  %14 = load %struct._object*, %struct._object** %field, align 8, !dbg !3543, !tbaa !1221
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !3542, !tbaa !1221
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3544, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3546
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3547, !tbaa !1265
  %dec = add i64 %16, -1, !dbg !3547
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3547, !tbaa !1265
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3548
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !3549

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3550

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3552, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3554
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3554, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !3555
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3555, !tbaa !1370
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3556, !tbaa !1221
  call void %19(%struct._object* %20), !dbg !3557
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3558
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3558
  br label %do.cond, !dbg !3560

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3561

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3563, !tbaa !1221
  %cmp10 = icmp eq %struct._object* %22, null, !dbg !3565
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !3566

if.then.11:                                       ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !3567
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3567

if.end.12:                                        ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3568, !tbaa !1221
  store %struct._object* %23, %struct._object** %field, align 8, !dbg !3569, !tbaa !1221
  store i32 0, i32* %cleanup.dest.slot, !dbg !3570
  br label %cleanup, !dbg !3570

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %24 = bitcast %struct._object** %tmp to i8*, !dbg !3571
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3571
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.13, !dbg !3573

if.end.13:                                        ; preds = %cleanup.cont, %if.end
  %25 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3574, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %25, i32 0, i32 3, !dbg !3575
  %26 = load %struct._object*, %struct._object** %fields, align 8, !dbg !3575, !tbaa !2856
  %27 = load %struct._object*, %struct._object** %field, align 8, !dbg !3576, !tbaa !1221
  %call14 = call i32 @PyList_Append(%struct._object* %26, %struct._object* %27), !dbg !3577
  %cmp15 = icmp slt i32 %call14, 0, !dbg !3578
  br i1 %cmp15, label %if.then.16, label %if.end.30, !dbg !3579

if.then.16:                                       ; preds = %if.end.13
  br label %do.body.17, !dbg !3580

do.body.17:                                       ; preds = %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3581
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !3581
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !790, metadata !1200), !dbg !3583
  %29 = load %struct._object*, %struct._object** %field, align 8, !dbg !3584, !tbaa !1221
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !3583, !tbaa !1221
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3585, !tbaa !1221
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !3587
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !3588, !tbaa !1265
  %dec21 = add i64 %31, -1, !dbg !3588
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !3588, !tbaa !1265
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !3589
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3590

if.then.23:                                       ; preds = %do.body.17
  br label %if.end.27, !dbg !3591

if.else.24:                                       ; preds = %do.body.17
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3593, !tbaa !1221
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !3595
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !3595, !tbaa !1368
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !3596
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !3596, !tbaa !1370
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3597, !tbaa !1221
  call void %34(%struct._object* %35), !dbg !3598
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3599
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3599
  br label %do.cond.28, !dbg !3601

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !3602

do.end.29:                                        ; preds = %do.cond.28
  store i32 -1, i32* %retval, !dbg !3604
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44, !dbg !3604

if.end.30:                                        ; preds = %if.end.13
  br label %do.body.31, !dbg !3605

do.body.31:                                       ; preds = %if.end.30
  %37 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !3606
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !3606
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !794, metadata !1200), !dbg !3608
  %38 = load %struct._object*, %struct._object** %field, align 8, !dbg !3609, !tbaa !1221
  store %struct._object* %38, %struct._object** %_py_decref_tmp33, align 8, !dbg !3608, !tbaa !1221
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !3610, !tbaa !1221
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !3612
  %40 = load i64, i64* %ob_refcnt34, align 8, !dbg !3613, !tbaa !1265
  %dec35 = add i64 %40, -1, !dbg !3613
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !3613, !tbaa !1265
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !3614
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !3615

if.then.37:                                       ; preds = %do.body.31
  br label %if.end.41, !dbg !3616

if.else.38:                                       ; preds = %do.body.31
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !3618, !tbaa !1221
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !3620
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !3620, !tbaa !1368
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !3621
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !3621, !tbaa !1370
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !3622, !tbaa !1221
  call void %43(%struct._object* %44), !dbg !3623
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %45 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !3624
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3624
  br label %do.cond.42, !dbg !3626

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !3627

do.end.43:                                        ; preds = %do.cond.42
  store i32 0, i32* %retval, !dbg !3629
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44, !dbg !3629

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.44

cleanup.44:                                       ; preds = %NewDefault, %do.end.43, %do.end.29, %if.then
  %46 = bitcast %struct._object** %field to i8*, !dbg !3630
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3630
  %47 = load i32, i32* %retval, !dbg !3630
  ret i32 %47, !dbg !3630
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_process_char(%struct.ReaderObj* %self, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %c.addr = alloca i32, align 4
  %dialect = alloca %struct.DialectObj*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !800, metadata !1200), !dbg !3631
  store i32 %c, i32* %c.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !801, metadata !1200), !dbg !3632
  %0 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !3633
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3633
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %dialect, metadata !802, metadata !1200), !dbg !3634
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3635, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %1, i32 0, i32 2, !dbg !3636
  %2 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8, !dbg !3636, !tbaa !2774
  store %struct.DialectObj* %2, %struct.DialectObj** %dialect, align 8, !dbg !3634, !tbaa !1221
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3637, !tbaa !1221
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 4, !dbg !3638
  %4 = load i32, i32* %state, align 4, !dbg !3638, !tbaa !3160
  br label %NodeBlock.15

NodeBlock.15:                                     ; preds = %entry
  %Pivot.16 = icmp slt i32 %4, 4
  br i1 %Pivot.16, label %NodeBlock.3, label %NodeBlock.13

NodeBlock.13:                                     ; preds = %NodeBlock.15
  %Pivot.14 = icmp slt i32 %4, 6
  br i1 %Pivot.14, label %NodeBlock.5, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %4, 7
  br i1 %Pivot.12, label %sw.bb.152, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %4, 8
  br i1 %Pivot.10, label %sw.bb.205, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock.9
  %SwitchLeaf8 = icmp eq i32 %4, 8
  br i1 %SwitchLeaf8, label %sw.bb.74, label %NewDefault

NodeBlock.5:                                      ; preds = %NodeBlock.13
  %Pivot.6 = icmp slt i32 %4, 5
  br i1 %Pivot.6, label %sw.bb.114, label %sw.bb.143

NodeBlock.3:                                      ; preds = %NodeBlock.15
  %Pivot.4 = icmp slt i32 %4, 2
  br i1 %Pivot.4, label %NodeBlock, label %NodeBlock.1

NodeBlock.1:                                      ; preds = %NodeBlock.3
  %Pivot.2 = icmp slt i32 %4, 3
  br i1 %Pivot.2, label %sw.bb.55, label %sw.bb.78

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %4, 1
  br i1 %Pivot, label %LeafBlock, label %sw.bb.8

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %4, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %5 = load i32, i32* %c.addr, align 4, !dbg !3639, !tbaa !2313
  %cmp = icmp eq i32 %5, 0, !dbg !3642
  br i1 %cmp, label %if.then, label %if.else, !dbg !3643

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !3644

if.else:                                          ; preds = %sw.bb
  %6 = load i32, i32* %c.addr, align 4, !dbg !3645, !tbaa !2313
  %cmp2 = icmp eq i32 %6, 10, !dbg !3647
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false, !dbg !3648

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i32, i32* %c.addr, align 4, !dbg !3649, !tbaa !2313
  %cmp3 = icmp eq i32 %7, 13, !dbg !3651
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3652

if.then.4:                                        ; preds = %lor.lhs.false, %if.else
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3653, !tbaa !1221
  %state5 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 4, !dbg !3655
  store i32 7, i32* %state5, align 4, !dbg !3656, !tbaa !3160
  br label %sw.epilog, !dbg !3657

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3658, !tbaa !1221
  %state7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %9, i32 0, i32 4, !dbg !3659
  store i32 1, i32* %state7, align 4, !dbg !3660, !tbaa !3160
  br label %sw.bb.8, !dbg !3658

sw.bb.8:                                          ; preds = %NodeBlock, %if.end.6
  %10 = load i32, i32* %c.addr, align 4, !dbg !3661, !tbaa !2313
  %cmp9 = icmp eq i32 %10, 10, !dbg !3663
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10, !dbg !3664

lor.lhs.false.10:                                 ; preds = %sw.bb.8
  %11 = load i32, i32* %c.addr, align 4, !dbg !3665, !tbaa !2313
  %cmp11 = icmp eq i32 %11, 13, !dbg !3667
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12, !dbg !3668

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %c.addr, align 4, !dbg !3669, !tbaa !2313
  %cmp13 = icmp eq i32 %12, 0, !dbg !3671
  br i1 %cmp13, label %if.then.14, label %if.else.20, !dbg !3672

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %sw.bb.8
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3673, !tbaa !1221
  %call = call i32 @parse_save_field(%struct.ReaderObj* %13), !dbg !3676
  %cmp15 = icmp slt i32 %call, 0, !dbg !3677
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !3678

if.then.16:                                       ; preds = %if.then.14
  store i32 -1, i32* %retval, !dbg !3679
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3679

if.end.17:                                        ; preds = %if.then.14
  %14 = load i32, i32* %c.addr, align 4, !dbg !3680, !tbaa !2313
  %cmp18 = icmp eq i32 %14, 0, !dbg !3681
  %cond = select i1 %cmp18, i32 0, i32 7, !dbg !3680
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3682, !tbaa !1221
  %state19 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 4, !dbg !3683
  store i32 %cond, i32* %state19, align 4, !dbg !3684, !tbaa !3160
  br label %if.end.54, !dbg !3685

if.else.20:                                       ; preds = %lor.lhs.false.12
  %16 = load i32, i32* %c.addr, align 4, !dbg !3686, !tbaa !2313
  %17 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3688, !tbaa !1221
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %17, i32 0, i32 3, !dbg !3689
  %18 = load i32, i32* %quotechar, align 4, !dbg !3689, !tbaa !1868
  %cmp21 = icmp eq i32 %16, %18, !dbg !3690
  br i1 %cmp21, label %land.lhs.true, label %if.else.25, !dbg !3691

land.lhs.true:                                    ; preds = %if.else.20
  %19 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3692, !tbaa !1221
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %19, i32 0, i32 7, !dbg !3693
  %20 = load i32, i32* %quoting, align 4, !dbg !3693, !tbaa !1835
  %cmp22 = icmp ne i32 %20, 3, !dbg !3694
  br i1 %cmp22, label %if.then.23, label %if.else.25, !dbg !3695

if.then.23:                                       ; preds = %land.lhs.true
  %21 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3696, !tbaa !1221
  %state24 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %21, i32 0, i32 4, !dbg !3698
  store i32 4, i32* %state24, align 4, !dbg !3699, !tbaa !3160
  br label %if.end.53, !dbg !3700

if.else.25:                                       ; preds = %land.lhs.true, %if.else.20
  %22 = load i32, i32* %c.addr, align 4, !dbg !3701, !tbaa !2313
  %23 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3703, !tbaa !1221
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %23, i32 0, i32 4, !dbg !3704
  %24 = load i32, i32* %escapechar, align 4, !dbg !3704, !tbaa !2295
  %cmp26 = icmp eq i32 %22, %24, !dbg !3705
  br i1 %cmp26, label %if.then.27, label %if.else.29, !dbg !3706

if.then.27:                                       ; preds = %if.else.25
  %25 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3707, !tbaa !1221
  %state28 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %25, i32 0, i32 4, !dbg !3709
  store i32 2, i32* %state28, align 4, !dbg !3710, !tbaa !3160
  br label %if.end.52, !dbg !3711

if.else.29:                                       ; preds = %if.else.25
  %26 = load i32, i32* %c.addr, align 4, !dbg !3712, !tbaa !2313
  %cmp30 = icmp eq i32 %26, 32, !dbg !3714
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.33, !dbg !3715

land.lhs.true.31:                                 ; preds = %if.else.29
  %27 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3716, !tbaa !1221
  %skipinitialspace = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %27, i32 0, i32 5, !dbg !3718
  %28 = load i32, i32* %skipinitialspace, align 4, !dbg !3718, !tbaa !3719
  %tobool = icmp ne i32 %28, 0, !dbg !3720
  br i1 %tobool, label %if.then.32, label %if.else.33, !dbg !3721

if.then.32:                                       ; preds = %land.lhs.true.31
  br label %if.end.51, !dbg !3722

if.else.33:                                       ; preds = %land.lhs.true.31, %if.else.29
  %29 = load i32, i32* %c.addr, align 4, !dbg !3724, !tbaa !2313
  %30 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3726, !tbaa !1221
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %30, i32 0, i32 2, !dbg !3727
  %31 = load i32, i32* %delimiter, align 4, !dbg !3727, !tbaa !1842
  %cmp34 = icmp eq i32 %29, %31, !dbg !3728
  br i1 %cmp34, label %if.then.35, label %if.else.40, !dbg !3729

if.then.35:                                       ; preds = %if.else.33
  %32 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3730, !tbaa !1221
  %call36 = call i32 @parse_save_field(%struct.ReaderObj* %32), !dbg !3733
  %cmp37 = icmp slt i32 %call36, 0, !dbg !3734
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !3735

if.then.38:                                       ; preds = %if.then.35
  store i32 -1, i32* %retval, !dbg !3736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3736

if.end.39:                                        ; preds = %if.then.35
  br label %if.end.50, !dbg !3737

if.else.40:                                       ; preds = %if.else.33
  %33 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3738, !tbaa !1221
  %quoting41 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %33, i32 0, i32 7, !dbg !3741
  %34 = load i32, i32* %quoting41, align 4, !dbg !3741, !tbaa !1835
  %cmp42 = icmp eq i32 %34, 2, !dbg !3742
  br i1 %cmp42, label %if.then.43, label %if.end.44, !dbg !3743

if.then.43:                                       ; preds = %if.else.40
  %35 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3744, !tbaa !1221
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %35, i32 0, i32 8, !dbg !3745
  store i32 1, i32* %numeric_field, align 4, !dbg !3746, !tbaa !3507
  br label %if.end.44, !dbg !3744

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  %36 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3747, !tbaa !1221
  %37 = load i32, i32* %c.addr, align 4, !dbg !3749, !tbaa !2313
  %call45 = call i32 @parse_add_char(%struct.ReaderObj* %36, i32 %37), !dbg !3750
  %cmp46 = icmp slt i32 %call45, 0, !dbg !3751
  br i1 %cmp46, label %if.then.47, label %if.end.48, !dbg !3752

if.then.47:                                       ; preds = %if.end.44
  store i32 -1, i32* %retval, !dbg !3753
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3753

if.end.48:                                        ; preds = %if.end.44
  %38 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3754, !tbaa !1221
  %state49 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %38, i32 0, i32 4, !dbg !3755
  store i32 3, i32* %state49, align 4, !dbg !3756, !tbaa !3160
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.48, %if.end.39
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.27
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.23
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.17
  br label %sw.epilog, !dbg !3757

sw.bb.55:                                         ; preds = %NodeBlock.1
  %39 = load i32, i32* %c.addr, align 4, !dbg !3758, !tbaa !2313
  %cmp56 = icmp eq i32 %39, 10, !dbg !3760
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57, !dbg !3761

lor.lhs.false.57:                                 ; preds = %sw.bb.55
  %40 = load i32, i32* %c.addr, align 4, !dbg !3762, !tbaa !2313
  %cmp58 = icmp eq i32 %40, 13, !dbg !3764
  br i1 %cmp58, label %if.then.59, label %if.end.65, !dbg !3765

if.then.59:                                       ; preds = %lor.lhs.false.57, %sw.bb.55
  %41 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3766, !tbaa !1221
  %42 = load i32, i32* %c.addr, align 4, !dbg !3769, !tbaa !2313
  %call60 = call i32 @parse_add_char(%struct.ReaderObj* %41, i32 %42), !dbg !3770
  %cmp61 = icmp slt i32 %call60, 0, !dbg !3771
  br i1 %cmp61, label %if.then.62, label %if.end.63, !dbg !3772

if.then.62:                                       ; preds = %if.then.59
  store i32 -1, i32* %retval, !dbg !3773
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3773

if.end.63:                                        ; preds = %if.then.59
  %43 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3774, !tbaa !1221
  %state64 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %43, i32 0, i32 4, !dbg !3775
  store i32 8, i32* %state64, align 4, !dbg !3776, !tbaa !3160
  br label %sw.epilog, !dbg !3777

if.end.65:                                        ; preds = %lor.lhs.false.57
  %44 = load i32, i32* %c.addr, align 4, !dbg !3778, !tbaa !2313
  %cmp66 = icmp eq i32 %44, 0, !dbg !3780
  br i1 %cmp66, label %if.then.67, label %if.end.68, !dbg !3781

if.then.67:                                       ; preds = %if.end.65
  store i32 10, i32* %c.addr, align 4, !dbg !3782, !tbaa !2313
  br label %if.end.68, !dbg !3783

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %45 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3784, !tbaa !1221
  %46 = load i32, i32* %c.addr, align 4, !dbg !3786, !tbaa !2313
  %call69 = call i32 @parse_add_char(%struct.ReaderObj* %45, i32 %46), !dbg !3787
  %cmp70 = icmp slt i32 %call69, 0, !dbg !3788
  br i1 %cmp70, label %if.then.71, label %if.end.72, !dbg !3789

if.then.71:                                       ; preds = %if.end.68
  store i32 -1, i32* %retval, !dbg !3790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3790

if.end.72:                                        ; preds = %if.end.68
  %47 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3791, !tbaa !1221
  %state73 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %47, i32 0, i32 4, !dbg !3792
  store i32 3, i32* %state73, align 4, !dbg !3793, !tbaa !3160
  br label %sw.epilog, !dbg !3794

sw.bb.74:                                         ; preds = %LeafBlock.7
  %48 = load i32, i32* %c.addr, align 4, !dbg !3795, !tbaa !2313
  %cmp75 = icmp eq i32 %48, 0, !dbg !3797
  br i1 %cmp75, label %if.then.76, label %if.end.77, !dbg !3798

if.then.76:                                       ; preds = %sw.bb.74
  br label %sw.epilog, !dbg !3799

if.end.77:                                        ; preds = %sw.bb.74
  br label %sw.bb.78, !dbg !3800

sw.bb.78:                                         ; preds = %NodeBlock.1, %if.end.77
  %49 = load i32, i32* %c.addr, align 4, !dbg !3802, !tbaa !2313
  %cmp79 = icmp eq i32 %49, 10, !dbg !3804
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.80, !dbg !3805

lor.lhs.false.80:                                 ; preds = %sw.bb.78
  %50 = load i32, i32* %c.addr, align 4, !dbg !3806, !tbaa !2313
  %cmp81 = icmp eq i32 %50, 13, !dbg !3808
  br i1 %cmp81, label %if.then.84, label %lor.lhs.false.82, !dbg !3809

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.80
  %51 = load i32, i32* %c.addr, align 4, !dbg !3810, !tbaa !2313
  %cmp83 = icmp eq i32 %51, 0, !dbg !3812
  br i1 %cmp83, label %if.then.84, label %if.else.92, !dbg !3813

if.then.84:                                       ; preds = %lor.lhs.false.82, %lor.lhs.false.80, %sw.bb.78
  %52 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3814, !tbaa !1221
  %call85 = call i32 @parse_save_field(%struct.ReaderObj* %52), !dbg !3817
  %cmp86 = icmp slt i32 %call85, 0, !dbg !3818
  br i1 %cmp86, label %if.then.87, label %if.end.88, !dbg !3819

if.then.87:                                       ; preds = %if.then.84
  store i32 -1, i32* %retval, !dbg !3820
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3820

if.end.88:                                        ; preds = %if.then.84
  %53 = load i32, i32* %c.addr, align 4, !dbg !3821, !tbaa !2313
  %cmp89 = icmp eq i32 %53, 0, !dbg !3822
  %cond90 = select i1 %cmp89, i32 0, i32 7, !dbg !3821
  %54 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3823, !tbaa !1221
  %state91 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %54, i32 0, i32 4, !dbg !3824
  store i32 %cond90, i32* %state91, align 4, !dbg !3825, !tbaa !3160
  br label %if.end.113, !dbg !3826

if.else.92:                                       ; preds = %lor.lhs.false.82
  %55 = load i32, i32* %c.addr, align 4, !dbg !3827, !tbaa !2313
  %56 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3829, !tbaa !1221
  %escapechar93 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %56, i32 0, i32 4, !dbg !3830
  %57 = load i32, i32* %escapechar93, align 4, !dbg !3830, !tbaa !2295
  %cmp94 = icmp eq i32 %55, %57, !dbg !3831
  br i1 %cmp94, label %if.then.95, label %if.else.97, !dbg !3832

if.then.95:                                       ; preds = %if.else.92
  %58 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3833, !tbaa !1221
  %state96 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %58, i32 0, i32 4, !dbg !3835
  store i32 2, i32* %state96, align 4, !dbg !3836, !tbaa !3160
  br label %if.end.112, !dbg !3837

if.else.97:                                       ; preds = %if.else.92
  %59 = load i32, i32* %c.addr, align 4, !dbg !3838, !tbaa !2313
  %60 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3840, !tbaa !1221
  %delimiter98 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %60, i32 0, i32 2, !dbg !3841
  %61 = load i32, i32* %delimiter98, align 4, !dbg !3841, !tbaa !1842
  %cmp99 = icmp eq i32 %59, %61, !dbg !3842
  br i1 %cmp99, label %if.then.100, label %if.else.106, !dbg !3843

if.then.100:                                      ; preds = %if.else.97
  %62 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3844, !tbaa !1221
  %call101 = call i32 @parse_save_field(%struct.ReaderObj* %62), !dbg !3847
  %cmp102 = icmp slt i32 %call101, 0, !dbg !3848
  br i1 %cmp102, label %if.then.103, label %if.end.104, !dbg !3849

if.then.103:                                      ; preds = %if.then.100
  store i32 -1, i32* %retval, !dbg !3850
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3850

if.end.104:                                       ; preds = %if.then.100
  %63 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3851, !tbaa !1221
  %state105 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %63, i32 0, i32 4, !dbg !3852
  store i32 1, i32* %state105, align 4, !dbg !3853, !tbaa !3160
  br label %if.end.111, !dbg !3854

if.else.106:                                      ; preds = %if.else.97
  %64 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3855, !tbaa !1221
  %65 = load i32, i32* %c.addr, align 4, !dbg !3858, !tbaa !2313
  %call107 = call i32 @parse_add_char(%struct.ReaderObj* %64, i32 %65), !dbg !3859
  %cmp108 = icmp slt i32 %call107, 0, !dbg !3860
  br i1 %cmp108, label %if.then.109, label %if.end.110, !dbg !3861

if.then.109:                                      ; preds = %if.else.106
  store i32 -1, i32* %retval, !dbg !3862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3862

if.end.110:                                       ; preds = %if.else.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.104
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.95
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.88
  br label %sw.epilog, !dbg !3863

sw.bb.114:                                        ; preds = %NodeBlock.5
  %66 = load i32, i32* %c.addr, align 4, !dbg !3864, !tbaa !2313
  %cmp115 = icmp eq i32 %66, 0, !dbg !3866
  br i1 %cmp115, label %if.then.116, label %if.else.117, !dbg !3867

if.then.116:                                      ; preds = %sw.bb.114
  br label %if.end.142, !dbg !3868

if.else.117:                                      ; preds = %sw.bb.114
  %67 = load i32, i32* %c.addr, align 4, !dbg !3870, !tbaa !2313
  %68 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3872, !tbaa !1221
  %escapechar118 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %68, i32 0, i32 4, !dbg !3873
  %69 = load i32, i32* %escapechar118, align 4, !dbg !3873, !tbaa !2295
  %cmp119 = icmp eq i32 %67, %69, !dbg !3874
  br i1 %cmp119, label %if.then.120, label %if.else.122, !dbg !3875

if.then.120:                                      ; preds = %if.else.117
  %70 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3876, !tbaa !1221
  %state121 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %70, i32 0, i32 4, !dbg !3878
  store i32 5, i32* %state121, align 4, !dbg !3879, !tbaa !3160
  br label %if.end.141, !dbg !3880

if.else.122:                                      ; preds = %if.else.117
  %71 = load i32, i32* %c.addr, align 4, !dbg !3881, !tbaa !2313
  %72 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3883, !tbaa !1221
  %quotechar123 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %72, i32 0, i32 3, !dbg !3884
  %73 = load i32, i32* %quotechar123, align 4, !dbg !3884, !tbaa !1868
  %cmp124 = icmp eq i32 %71, %73, !dbg !3885
  br i1 %cmp124, label %land.lhs.true.125, label %if.else.135, !dbg !3886

land.lhs.true.125:                                ; preds = %if.else.122
  %74 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3887, !tbaa !1221
  %quoting126 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %74, i32 0, i32 7, !dbg !3888
  %75 = load i32, i32* %quoting126, align 4, !dbg !3888, !tbaa !1835
  %cmp127 = icmp ne i32 %75, 3, !dbg !3889
  br i1 %cmp127, label %if.then.128, label %if.else.135, !dbg !3890

if.then.128:                                      ; preds = %land.lhs.true.125
  %76 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3891, !tbaa !1221
  %doublequote = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %76, i32 0, i32 1, !dbg !3894
  %77 = load i32, i32* %doublequote, align 4, !dbg !3894, !tbaa !3895
  %tobool129 = icmp ne i32 %77, 0, !dbg !3891
  br i1 %tobool129, label %if.then.130, label %if.else.132, !dbg !3896

if.then.130:                                      ; preds = %if.then.128
  %78 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3897, !tbaa !1221
  %state131 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %78, i32 0, i32 4, !dbg !3899
  store i32 6, i32* %state131, align 4, !dbg !3900, !tbaa !3160
  br label %if.end.134, !dbg !3901

if.else.132:                                      ; preds = %if.then.128
  %79 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3902, !tbaa !1221
  %state133 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %79, i32 0, i32 4, !dbg !3904
  store i32 3, i32* %state133, align 4, !dbg !3905, !tbaa !3160
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.130
  br label %if.end.140, !dbg !3906

if.else.135:                                      ; preds = %land.lhs.true.125, %if.else.122
  %80 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3907, !tbaa !1221
  %81 = load i32, i32* %c.addr, align 4, !dbg !3910, !tbaa !2313
  %call136 = call i32 @parse_add_char(%struct.ReaderObj* %80, i32 %81), !dbg !3911
  %cmp137 = icmp slt i32 %call136, 0, !dbg !3912
  br i1 %cmp137, label %if.then.138, label %if.end.139, !dbg !3913

if.then.138:                                      ; preds = %if.else.135
  store i32 -1, i32* %retval, !dbg !3914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3914

if.end.139:                                       ; preds = %if.else.135
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.134
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.120
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.116
  br label %sw.epilog, !dbg !3915

sw.bb.143:                                        ; preds = %NodeBlock.5
  %82 = load i32, i32* %c.addr, align 4, !dbg !3916, !tbaa !2313
  %cmp144 = icmp eq i32 %82, 0, !dbg !3918
  br i1 %cmp144, label %if.then.145, label %if.end.146, !dbg !3919

if.then.145:                                      ; preds = %sw.bb.143
  store i32 10, i32* %c.addr, align 4, !dbg !3920, !tbaa !2313
  br label %if.end.146, !dbg !3921

if.end.146:                                       ; preds = %if.then.145, %sw.bb.143
  %83 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3922, !tbaa !1221
  %84 = load i32, i32* %c.addr, align 4, !dbg !3924, !tbaa !2313
  %call147 = call i32 @parse_add_char(%struct.ReaderObj* %83, i32 %84), !dbg !3925
  %cmp148 = icmp slt i32 %call147, 0, !dbg !3926
  br i1 %cmp148, label %if.then.149, label %if.end.150, !dbg !3927

if.then.149:                                      ; preds = %if.end.146
  store i32 -1, i32* %retval, !dbg !3928
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3928

if.end.150:                                       ; preds = %if.end.146
  %85 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3929, !tbaa !1221
  %state151 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %85, i32 0, i32 4, !dbg !3930
  store i32 4, i32* %state151, align 4, !dbg !3931, !tbaa !3160
  br label %sw.epilog, !dbg !3932

sw.bb.152:                                        ; preds = %NodeBlock.11
  %86 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3933, !tbaa !1221
  %quoting153 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %86, i32 0, i32 7, !dbg !3935
  %87 = load i32, i32* %quoting153, align 4, !dbg !3935, !tbaa !1835
  %cmp154 = icmp ne i32 %87, 3, !dbg !3936
  br i1 %cmp154, label %land.lhs.true.155, label %if.else.164, !dbg !3937

land.lhs.true.155:                                ; preds = %sw.bb.152
  %88 = load i32, i32* %c.addr, align 4, !dbg !3938, !tbaa !2313
  %89 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3939, !tbaa !1221
  %quotechar156 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %89, i32 0, i32 3, !dbg !3940
  %90 = load i32, i32* %quotechar156, align 4, !dbg !3940, !tbaa !1868
  %cmp157 = icmp eq i32 %88, %90, !dbg !3941
  br i1 %cmp157, label %if.then.158, label %if.else.164, !dbg !3942

if.then.158:                                      ; preds = %land.lhs.true.155
  %91 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3943, !tbaa !1221
  %92 = load i32, i32* %c.addr, align 4, !dbg !3946, !tbaa !2313
  %call159 = call i32 @parse_add_char(%struct.ReaderObj* %91, i32 %92), !dbg !3947
  %cmp160 = icmp slt i32 %call159, 0, !dbg !3948
  br i1 %cmp160, label %if.then.161, label %if.end.162, !dbg !3949

if.then.161:                                      ; preds = %if.then.158
  store i32 -1, i32* %retval, !dbg !3950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3950

if.end.162:                                       ; preds = %if.then.158
  %93 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3951, !tbaa !1221
  %state163 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %93, i32 0, i32 4, !dbg !3952
  store i32 4, i32* %state163, align 4, !dbg !3953, !tbaa !3160
  br label %if.end.204, !dbg !3954

if.else.164:                                      ; preds = %land.lhs.true.155, %sw.bb.152
  %94 = load i32, i32* %c.addr, align 4, !dbg !3955, !tbaa !2313
  %95 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3957, !tbaa !1221
  %delimiter165 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %95, i32 0, i32 2, !dbg !3958
  %96 = load i32, i32* %delimiter165, align 4, !dbg !3958, !tbaa !1842
  %cmp166 = icmp eq i32 %94, %96, !dbg !3959
  br i1 %cmp166, label %if.then.167, label %if.else.173, !dbg !3960

if.then.167:                                      ; preds = %if.else.164
  %97 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3961, !tbaa !1221
  %call168 = call i32 @parse_save_field(%struct.ReaderObj* %97), !dbg !3964
  %cmp169 = icmp slt i32 %call168, 0, !dbg !3965
  br i1 %cmp169, label %if.then.170, label %if.end.171, !dbg !3966

if.then.170:                                      ; preds = %if.then.167
  store i32 -1, i32* %retval, !dbg !3967
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3967

if.end.171:                                       ; preds = %if.then.167
  %98 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3968, !tbaa !1221
  %state172 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %98, i32 0, i32 4, !dbg !3969
  store i32 1, i32* %state172, align 4, !dbg !3970, !tbaa !3160
  br label %if.end.203, !dbg !3971

if.else.173:                                      ; preds = %if.else.164
  %99 = load i32, i32* %c.addr, align 4, !dbg !3972, !tbaa !2313
  %cmp174 = icmp eq i32 %99, 10, !dbg !3974
  br i1 %cmp174, label %if.then.179, label %lor.lhs.false.175, !dbg !3975

lor.lhs.false.175:                                ; preds = %if.else.173
  %100 = load i32, i32* %c.addr, align 4, !dbg !3976, !tbaa !2313
  %cmp176 = icmp eq i32 %100, 13, !dbg !3978
  br i1 %cmp176, label %if.then.179, label %lor.lhs.false.177, !dbg !3979

lor.lhs.false.177:                                ; preds = %lor.lhs.false.175
  %101 = load i32, i32* %c.addr, align 4, !dbg !3980, !tbaa !2313
  %cmp178 = icmp eq i32 %101, 0, !dbg !3982
  br i1 %cmp178, label %if.then.179, label %if.else.187, !dbg !3983

if.then.179:                                      ; preds = %lor.lhs.false.177, %lor.lhs.false.175, %if.else.173
  %102 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3984, !tbaa !1221
  %call180 = call i32 @parse_save_field(%struct.ReaderObj* %102), !dbg !3987
  %cmp181 = icmp slt i32 %call180, 0, !dbg !3988
  br i1 %cmp181, label %if.then.182, label %if.end.183, !dbg !3989

if.then.182:                                      ; preds = %if.then.179
  store i32 -1, i32* %retval, !dbg !3990
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3990

if.end.183:                                       ; preds = %if.then.179
  %103 = load i32, i32* %c.addr, align 4, !dbg !3991, !tbaa !2313
  %cmp184 = icmp eq i32 %103, 0, !dbg !3992
  %cond185 = select i1 %cmp184, i32 0, i32 7, !dbg !3991
  %104 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !3993, !tbaa !1221
  %state186 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %104, i32 0, i32 4, !dbg !3994
  store i32 %cond185, i32* %state186, align 4, !dbg !3995, !tbaa !3160
  br label %if.end.202, !dbg !3996

if.else.187:                                      ; preds = %lor.lhs.false.177
  %105 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !3997, !tbaa !1221
  %strict = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %105, i32 0, i32 8, !dbg !3999
  %106 = load i32, i32* %strict, align 4, !dbg !3999, !tbaa !3168
  %tobool188 = icmp ne i32 %106, 0, !dbg !3997
  br i1 %tobool188, label %if.else.195, label %if.then.189, !dbg !4000

if.then.189:                                      ; preds = %if.else.187
  %107 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4001, !tbaa !1221
  %108 = load i32, i32* %c.addr, align 4, !dbg !4004, !tbaa !2313
  %call190 = call i32 @parse_add_char(%struct.ReaderObj* %107, i32 %108), !dbg !4005
  %cmp191 = icmp slt i32 %call190, 0, !dbg !4006
  br i1 %cmp191, label %if.then.192, label %if.end.193, !dbg !4007

if.then.192:                                      ; preds = %if.then.189
  store i32 -1, i32* %retval, !dbg !4008
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4008

if.end.193:                                       ; preds = %if.then.189
  %109 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4009, !tbaa !1221
  %state194 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %109, i32 0, i32 4, !dbg !4010
  store i32 3, i32* %state194, align 4, !dbg !4011, !tbaa !3160
  br label %if.end.201, !dbg !4012

if.else.195:                                      ; preds = %if.else.187
  %call196 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4013
  %call197 = call i8* @PyModule_GetState(%struct._object* %call196), !dbg !4015
  %110 = bitcast i8* %call197 to %struct._csvstate*, !dbg !4016
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %110, i32 0, i32 0, !dbg !4017
  %111 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !4017, !tbaa !1314
  %112 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4018, !tbaa !1221
  %delimiter198 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %112, i32 0, i32 2, !dbg !4019
  %113 = load i32, i32* %delimiter198, align 4, !dbg !4019, !tbaa !1842
  %114 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4020, !tbaa !1221
  %quotechar199 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %114, i32 0, i32 3, !dbg !4021
  %115 = load i32, i32* %quotechar199, align 4, !dbg !4021, !tbaa !1868
  %call200 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %113, i32 %115), !dbg !4022
  store i32 -1, i32* %retval, !dbg !4023
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4023

if.end.201:                                       ; preds = %if.end.193
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.183
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.171
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.162
  br label %sw.epilog, !dbg !4024

sw.bb.205:                                        ; preds = %NodeBlock.9
  %116 = load i32, i32* %c.addr, align 4, !dbg !4025, !tbaa !2313
  %cmp206 = icmp eq i32 %116, 10, !dbg !4027
  br i1 %cmp206, label %if.then.209, label %lor.lhs.false.207, !dbg !4028

lor.lhs.false.207:                                ; preds = %sw.bb.205
  %117 = load i32, i32* %c.addr, align 4, !dbg !4029, !tbaa !2313
  %cmp208 = icmp eq i32 %117, 13, !dbg !4031
  br i1 %cmp208, label %if.then.209, label %if.else.210, !dbg !4032

if.then.209:                                      ; preds = %lor.lhs.false.207, %sw.bb.205
  br label %if.end.220, !dbg !4033

if.else.210:                                      ; preds = %lor.lhs.false.207
  %118 = load i32, i32* %c.addr, align 4, !dbg !4035, !tbaa !2313
  %cmp211 = icmp eq i32 %118, 0, !dbg !4037
  br i1 %cmp211, label %if.then.212, label %if.else.214, !dbg !4038

if.then.212:                                      ; preds = %if.else.210
  %119 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4039, !tbaa !1221
  %state213 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %119, i32 0, i32 4, !dbg !4040
  store i32 0, i32* %state213, align 4, !dbg !4041, !tbaa !3160
  br label %if.end.219, !dbg !4039

if.else.214:                                      ; preds = %if.else.210
  %call215 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4042
  %call216 = call i8* @PyModule_GetState(%struct._object* %call215), !dbg !4044
  %120 = bitcast i8* %call216 to %struct._csvstate*, !dbg !4045
  %error_obj217 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %120, i32 0, i32 0, !dbg !4046
  %121 = load %struct._object*, %struct._object** %error_obj217, align 8, !dbg !4046, !tbaa !1314
  %call218 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %121, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.33, i32 0, i32 0)), !dbg !4047
  store i32 -1, i32* %retval, !dbg !4048
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4048

if.end.219:                                       ; preds = %if.then.212
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.209
  br label %sw.epilog, !dbg !4049

NewDefault:                                       ; preds = %LeafBlock.7, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.220, %if.end.204, %if.end.150, %if.end.142, %if.end.113, %if.then.76, %if.end.72, %if.end.63, %if.end.54, %if.then.4, %if.then
  store i32 0, i32* %retval, !dbg !4050
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4050

cleanup:                                          ; preds = %sw.epilog, %if.else.214, %if.else.195, %if.then.192, %if.then.182, %if.then.170, %if.then.161, %if.then.149, %if.then.138, %if.then.109, %if.then.103, %if.then.87, %if.then.71, %if.then.62, %if.then.47, %if.then.38, %if.then.16
  %122 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !4051
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !4051
  %123 = load i32, i32* %retval, !dbg !4051
  ret i32 %123, !dbg !4051
}

declare %struct._object* @PyList_New(i64) #3

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #3

declare %struct._object* @PyNumber_Float(%struct._object*) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_add_char(%struct.ReaderObj* %self, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %c.addr = alloca i32, align 4
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !805, metadata !1200), !dbg !4052
  store i32 %c, i32* %c.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !806, metadata !1200), !dbg !4053
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4054, !tbaa !1221
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 7, !dbg !4056
  %1 = load i64, i64* %field_len, align 8, !dbg !4056, !tbaa !3155
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4057
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !4058
  %2 = bitcast i8* %call1 to %struct._csvstate*, !dbg !4059
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %2, i32 0, i32 2, !dbg !4060
  %3 = load i64, i64* %field_limit, align 8, !dbg !4060, !tbaa !1241
  %cmp = icmp sge i64 %1, %3, !dbg !4061
  br i1 %cmp, label %if.then, label %if.end, !dbg !4062

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4063
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2), !dbg !4065
  %4 = bitcast i8* %call3 to %struct._csvstate*, !dbg !4066
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %4, i32 0, i32 0, !dbg !4067
  %5 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !4067, !tbaa !1314
  %call4 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4068
  %call5 = call i8* @PyModule_GetState(%struct._object* %call4), !dbg !4069
  %6 = bitcast i8* %call5 to %struct._csvstate*, !dbg !4070
  %field_limit6 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %6, i32 0, i32 2, !dbg !4071
  %7 = load i64, i64* %field_limit6, align 8, !dbg !4071, !tbaa !1241
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i64 %7), !dbg !4072
  store i32 -1, i32* %retval, !dbg !4073
  br label %return, !dbg !4073

if.end:                                           ; preds = %entry
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4074, !tbaa !1221
  %field_len8 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 7, !dbg !4076
  %9 = load i64, i64* %field_len8, align 8, !dbg !4076, !tbaa !3155
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4077, !tbaa !1221
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 6, !dbg !4078
  %11 = load i64, i64* %field_size, align 8, !dbg !4078, !tbaa !4079
  %cmp9 = icmp eq i64 %9, %11, !dbg !4080
  br i1 %cmp9, label %land.lhs.true, label %if.end.12, !dbg !4081

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4082, !tbaa !1221
  %call10 = call i32 @parse_grow_buff(%struct.ReaderObj* %12), !dbg !4084
  %tobool = icmp ne i32 %call10, 0, !dbg !4084
  br i1 %tobool, label %if.end.12, label %if.then.11, !dbg !4085

if.then.11:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !4086
  br label %return, !dbg !4086

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %13 = load i32, i32* %c.addr, align 4, !dbg !4087, !tbaa !2313
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4088, !tbaa !1221
  %field_len13 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 7, !dbg !4089
  %15 = load i64, i64* %field_len13, align 8, !dbg !4090, !tbaa !3155
  %inc = add i64 %15, 1, !dbg !4090
  store i64 %inc, i64* %field_len13, align 8, !dbg !4090, !tbaa !3155
  %16 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4091, !tbaa !1221
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %16, i32 0, i32 5, !dbg !4092
  %17 = load i32*, i32** %field, align 8, !dbg !4092, !tbaa !2892
  %arrayidx = getelementptr i32, i32* %17, i64 %15, !dbg !4091
  store i32 %13, i32* %arrayidx, align 4, !dbg !4093, !tbaa !2313
  store i32 0, i32* %retval, !dbg !4094
  br label %return, !dbg !4094

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %18 = load i32, i32* %retval, !dbg !4095
  ret i32 %18, !dbg !4095
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_grow_buff(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %field9 = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self.addr, metadata !809, metadata !1200), !dbg !4096
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4097, !tbaa !1221
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 6, !dbg !4098
  %1 = load i64, i64* %field_size, align 8, !dbg !4098, !tbaa !4079
  %cmp = icmp eq i64 %1, 0, !dbg !4099
  br i1 %cmp, label %if.then, label %if.else, !dbg !4100

if.then:                                          ; preds = %entry
  %2 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4101, !tbaa !1221
  %field_size1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %2, i32 0, i32 6, !dbg !4103
  store i64 4096, i64* %field_size1, align 8, !dbg !4104, !tbaa !4079
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4105, !tbaa !1221
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 5, !dbg !4107
  %4 = load i32*, i32** %field, align 8, !dbg !4107, !tbaa !2892
  %cmp2 = icmp ne i32* %4, null, !dbg !4108
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !4109

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4110, !tbaa !1221
  %field4 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %5, i32 0, i32 5, !dbg !4111
  %6 = load i32*, i32** %field4, align 8, !dbg !4111, !tbaa !2892
  %7 = bitcast i32* %6 to i8*, !dbg !4110
  call void @PyMem_Free(i8* %7), !dbg !4112
  br label %if.end, !dbg !4112

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4113, !tbaa !1221
  %field_size5 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 6, !dbg !4114
  %9 = load i64, i64* %field_size5, align 8, !dbg !4114, !tbaa !4079
  %cmp6 = icmp ugt i64 %9, 2305843009213693951, !dbg !4115
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !4116

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !4117

cond.false:                                       ; preds = %if.end
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4119, !tbaa !1221
  %field_size7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 6, !dbg !4121
  %11 = load i64, i64* %field_size7, align 8, !dbg !4121, !tbaa !4079
  %mul = mul i64 %11, 4, !dbg !4122
  %call = call i8* @PyMem_Malloc(i64 %mul), !dbg !4123
  %12 = bitcast i8* %call to i32*, !dbg !4124
  br label %cond.end, !dbg !4116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ null, %cond.true ], [ %12, %cond.false ], !dbg !4116
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4125, !tbaa !1221
  %field8 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %13, i32 0, i32 5, !dbg !4128
  store i32* %cond, i32** %field8, align 8, !dbg !4129, !tbaa !2892
  br label %if.end.28, !dbg !4130

if.else:                                          ; preds = %entry
  %14 = bitcast i32** %field9 to i8*, !dbg !4131
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !4131
  call void @llvm.dbg.declare(metadata i32** %field9, metadata !810, metadata !1200), !dbg !4132
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4133, !tbaa !1221
  %field10 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 5, !dbg !4134
  %16 = load i32*, i32** %field10, align 8, !dbg !4134, !tbaa !2892
  store i32* %16, i32** %field9, align 8, !dbg !4132, !tbaa !1221
  %17 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4135, !tbaa !1221
  %field_size11 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %17, i32 0, i32 6, !dbg !4137
  %18 = load i64, i64* %field_size11, align 8, !dbg !4137, !tbaa !4079
  %cmp12 = icmp sgt i64 %18, 4611686018427387903, !dbg !4138
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !4139

if.then.13:                                       ; preds = %if.else
  %call14 = call %struct._object* @PyErr_NoMemory(), !dbg !4140
  store i32 0, i32* %retval, !dbg !4142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4142

if.end.15:                                        ; preds = %if.else
  %19 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4143, !tbaa !1221
  %field_size16 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %19, i32 0, i32 6, !dbg !4144
  %20 = load i64, i64* %field_size16, align 8, !dbg !4145, !tbaa !4079
  %mul17 = mul i64 %20, 2, !dbg !4145
  store i64 %mul17, i64* %field_size16, align 8, !dbg !4145, !tbaa !4079
  %21 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4146, !tbaa !1221
  %field_size18 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %21, i32 0, i32 6, !dbg !4147
  %22 = load i64, i64* %field_size18, align 8, !dbg !4147, !tbaa !4079
  %cmp19 = icmp ugt i64 %22, 2305843009213693951, !dbg !4148
  br i1 %cmp19, label %cond.true.20, label %cond.false.21, !dbg !4149

cond.true.20:                                     ; preds = %if.end.15
  br label %cond.end.25, !dbg !4150

cond.false.21:                                    ; preds = %if.end.15
  %23 = load i32*, i32** %field9, align 8, !dbg !4152, !tbaa !1221
  %24 = bitcast i32* %23 to i8*, !dbg !4154
  %25 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4155, !tbaa !1221
  %field_size22 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %25, i32 0, i32 6, !dbg !4156
  %26 = load i64, i64* %field_size22, align 8, !dbg !4156, !tbaa !4079
  %mul23 = mul i64 %26, 4, !dbg !4157
  %call24 = call i8* @PyMem_Realloc(i8* %24, i64 %mul23), !dbg !4158
  %27 = bitcast i8* %call24 to i32*, !dbg !4159
  br label %cond.end.25, !dbg !4149

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32* [ null, %cond.true.20 ], [ %27, %cond.false.21 ], !dbg !4149
  store i32* %cond26, i32** %field9, align 8, !dbg !4160, !tbaa !1221
  %28 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4163, !tbaa !1221
  %field27 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %28, i32 0, i32 5, !dbg !4164
  store i32* %cond26, i32** %field27, align 8, !dbg !4165, !tbaa !2892
  store i32 0, i32* %cleanup.dest.slot, !dbg !4166
  br label %cleanup, !dbg !4166

cleanup:                                          ; preds = %cond.end.25, %if.then.13
  %29 = bitcast i32** %field9 to i8*, !dbg !4167
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !4167
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %cond.end
  %30 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8, !dbg !4169, !tbaa !1221
  %field29 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %30, i32 0, i32 5, !dbg !4171
  %31 = load i32*, i32** %field29, align 8, !dbg !4171, !tbaa !2892
  %cmp30 = icmp eq i32* %31, null, !dbg !4172
  br i1 %cmp30, label %if.then.31, label %if.end.33, !dbg !4173

if.then.31:                                       ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_NoMemory(), !dbg !4174
  store i32 0, i32* %retval, !dbg !4176
  br label %return, !dbg !4176

if.end.33:                                        ; preds = %if.end.28
  store i32 1, i32* %retval, !dbg !4177
  br label %return, !dbg !4177

return:                                           ; preds = %LeafBlock, %if.end.33, %if.then.31
  %32 = load i32, i32* %retval, !dbg !4178
  ret i32 %32, !dbg !4178
}

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare i8* @PyMem_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @Writer_dealloc(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !817, metadata !1200), !dbg !4179
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4180, !tbaa !1221
  %1 = bitcast %struct.WriterObj* %0 to i8*, !dbg !4180
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !4181
  br label %do.body, !dbg !4182

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4183
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4183
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !818, metadata !1200), !dbg !4185
  %3 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4186, !tbaa !1221
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %3, i32 0, i32 2, !dbg !4187
  %4 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4187, !tbaa !4188
  %5 = bitcast %struct.DialectObj* %4 to %struct._object*, !dbg !4190
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4185, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4191, !tbaa !1221
  %cmp = icmp ne %struct._object* %6, null, !dbg !4192
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !4193

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !4194

do.body.1:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4196
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4196
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !820, metadata !1200), !dbg !4198
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4199, !tbaa !1221
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !4198, !tbaa !1221
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4200, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !4202
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !4203, !tbaa !1265
  %dec = add i64 %10, -1, !dbg !4203
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4203, !tbaa !1265
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4204
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4205

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !4206

if.else:                                          ; preds = %do.body.1
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4208, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !4210
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4210, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !4211
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4211, !tbaa !1370
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4212, !tbaa !1221
  call void %13(%struct._object* %14), !dbg !4213
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4214
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4214
  br label %do.cond, !dbg !4216

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4217

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !4219

if.end.4:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4221
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !4221
  br label %do.end.6, !dbg !4224

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !4225

do.body.7:                                        ; preds = %do.end.6
  %17 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !4226
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !4226
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !823, metadata !1200), !dbg !4228
  %18 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4229, !tbaa !1221
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %18, i32 0, i32 1, !dbg !4230
  %19 = load %struct._object*, %struct._object** %writeline, align 8, !dbg !4230, !tbaa !4231
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !4228, !tbaa !1221
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !4232, !tbaa !1221
  %cmp9 = icmp ne %struct._object* %20, null, !dbg !4233
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !4234

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !4235

do.body.11:                                       ; preds = %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !4237
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !4237
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !825, metadata !1200), !dbg !4239
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !4240, !tbaa !1221
  store %struct._object* %22, %struct._object** %_py_decref_tmp12, align 8, !dbg !4239, !tbaa !1221
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4241, !tbaa !1221
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !4243
  %24 = load i64, i64* %ob_refcnt13, align 8, !dbg !4244, !tbaa !1265
  %dec14 = add i64 %24, -1, !dbg !4244
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !4244, !tbaa !1265
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !4245
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !4246

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !4247

if.else.17:                                       ; preds = %do.body.11
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4249, !tbaa !1221
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !4251
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !4251, !tbaa !1368
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !4252
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !4252, !tbaa !1370
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4253, !tbaa !1221
  call void %27(%struct._object* %28), !dbg !4254
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %29 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !4255
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !4255
  br label %do.cond.21, !dbg !4257

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !4258

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !4260

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %30 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !4262
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !4262
  br label %do.end.25, !dbg !4263

do.end.25:                                        ; preds = %if.end.23
  %31 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4264, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %31, i32 0, i32 3, !dbg !4266
  %32 = load i32*, i32** %rec, align 8, !dbg !4266, !tbaa !4267
  %cmp26 = icmp ne i32* %32, null, !dbg !4268
  br i1 %cmp26, label %if.then.27, label %if.end.29, !dbg !4269

if.then.27:                                       ; preds = %do.end.25
  %33 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4270, !tbaa !1221
  %rec28 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %33, i32 0, i32 3, !dbg !4271
  %34 = load i32*, i32** %rec28, align 8, !dbg !4271, !tbaa !4267
  %35 = bitcast i32* %34 to i8*, !dbg !4270
  call void @PyMem_Free(i8* %35), !dbg !4272
  br label %if.end.29, !dbg !4272

if.end.29:                                        ; preds = %if.then.27, %do.end.25
  %36 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4273, !tbaa !1221
  %37 = bitcast %struct.WriterObj* %36 to i8*, !dbg !4273
  call void @PyObject_GC_Del(i8* %37), !dbg !4274
  ret void, !dbg !4275
}

; Function Attrs: nounwind uwtable
define internal i32 @Writer_traverse(%struct.WriterObj* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !832, metadata !1200), !dbg !4276
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !833, metadata !1200), !dbg !4277
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !834, metadata !1200), !dbg !4278
  br label %do.body, !dbg !4279

do.body:                                          ; preds = %entry
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4280, !tbaa !1221
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2, !dbg !4282
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4282, !tbaa !4188
  %tobool = icmp ne %struct.DialectObj* %1, null, !dbg !4283
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !4284

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4285
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !835, metadata !1200), !dbg !4287
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !4288, !tbaa !1221
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4289, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %4, i32 0, i32 2, !dbg !4290
  %5 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8, !dbg !4290, !tbaa !4188
  %6 = bitcast %struct.DialectObj* %5 to %struct._object*, !dbg !4291
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !4292, !tbaa !1221
  %call = call i32 %3(%struct._object* %6, i8* %7), !dbg !4288
  store i32 %call, i32* %vret, align 4, !dbg !4287, !tbaa !2313
  %8 = load i32, i32* %vret, align 4, !dbg !4293, !tbaa !2313
  %tobool2 = icmp ne i32 %8, 0, !dbg !4293
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !4295

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4, !dbg !4296, !tbaa !2313
  store i32 %9, i32* %retval, !dbg !4298
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4298

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !4299
  br label %cleanup, !dbg !4299

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast i32* %vret to i8*, !dbg !4301
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !4301
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !4304

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !4305

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !4308

do.body.5:                                        ; preds = %do.end
  %11 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4309, !tbaa !1221
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %11, i32 0, i32 1, !dbg !4311
  %12 = load %struct._object*, %struct._object** %writeline, align 8, !dbg !4311, !tbaa !4231
  %tobool6 = icmp ne %struct._object* %12, null, !dbg !4312
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !4313

if.then.7:                                        ; preds = %do.body.5
  %13 = bitcast i32* %vret8 to i8*, !dbg !4314
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !4314
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !839, metadata !1200), !dbg !4316
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !4317, !tbaa !1221
  %15 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4318, !tbaa !1221
  %writeline9 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %15, i32 0, i32 1, !dbg !4319
  %16 = load %struct._object*, %struct._object** %writeline9, align 8, !dbg !4319, !tbaa !4231
  %17 = load i8*, i8** %arg.addr, align 8, !dbg !4320, !tbaa !1221
  %call10 = call i32 %14(%struct._object* %16, i8* %17), !dbg !4317
  store i32 %call10, i32* %vret8, align 4, !dbg !4316, !tbaa !2313
  %18 = load i32, i32* %vret8, align 4, !dbg !4321, !tbaa !2313
  %tobool11 = icmp ne i32 %18, 0, !dbg !4321
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !4323

if.then.12:                                       ; preds = %if.then.7
  %19 = load i32, i32* %vret8, align 4, !dbg !4324, !tbaa !2313
  store i32 %19, i32* %retval, !dbg !4326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !4326

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !4327
  br label %cleanup.14, !dbg !4327

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %20 = bitcast i32* %vret8 to i8*, !dbg !4329
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !4329
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.14
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.15, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.16

cleanup.cont.16:                                  ; preds = %NewDefault.1
  br label %if.end.17, !dbg !4332

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !4333

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !4336
  br label %return, !dbg !4336

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end.18
  %21 = load i32, i32* %retval, !dbg !4337
  ret i32 %21, !dbg !4337
}

; Function Attrs: nounwind uwtable
define internal i32 @Writer_clear(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !847, metadata !1200), !dbg !4338
  br label %do.body, !dbg !4339

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4340
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4340
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !848, metadata !1200), !dbg !4342
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4343, !tbaa !1221
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %1, i32 0, i32 2, !dbg !4344
  %2 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4344, !tbaa !4188
  %3 = bitcast %struct.DialectObj* %2 to %struct._object*, !dbg !4345
  store %struct._object* %3, %struct._object** %_py_tmp, align 8, !dbg !4342, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4346, !tbaa !1221
  %cmp = icmp ne %struct._object* %4, null, !dbg !4347
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !4348

if.then:                                          ; preds = %do.body
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4349, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 2, !dbg !4351
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8, !dbg !4352, !tbaa !4188
  br label %do.body.2, !dbg !4353

do.body.2:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4354
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4354
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !850, metadata !1200), !dbg !4356
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4357, !tbaa !1221
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !4356, !tbaa !1221
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4358, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4360
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4361, !tbaa !1265
  %dec = add i64 %9, -1, !dbg !4361
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4361, !tbaa !1265
  %cmp3 = icmp ne i64 %dec, 0, !dbg !4362
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !4363

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !4364

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4366, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !4368
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4368, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !4369
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4369, !tbaa !1370
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4370, !tbaa !1221
  call void %12(%struct._object* %13), !dbg !4371
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4372
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4372
  br label %do.cond, !dbg !4374

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4375

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !4377

if.end.5:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4379
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4379
  br label %do.end.7, !dbg !4382

do.end.7:                                         ; preds = %if.end.5
  br label %do.body.8, !dbg !4383

do.body.8:                                        ; preds = %do.end.7
  %16 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !4384
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !4384
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !854, metadata !1200), !dbg !4386
  %17 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4387, !tbaa !1221
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %17, i32 0, i32 1, !dbg !4388
  %18 = load %struct._object*, %struct._object** %writeline, align 8, !dbg !4388, !tbaa !4231
  store %struct._object* %18, %struct._object** %_py_tmp9, align 8, !dbg !4386, !tbaa !1221
  %19 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !4389, !tbaa !1221
  %cmp10 = icmp ne %struct._object* %19, null, !dbg !4390
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !4391

if.then.11:                                       ; preds = %do.body.8
  %20 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4392, !tbaa !1221
  %writeline12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %20, i32 0, i32 1, !dbg !4394
  store %struct._object* null, %struct._object** %writeline12, align 8, !dbg !4395, !tbaa !4231
  br label %do.body.13, !dbg !4396

do.body.13:                                       ; preds = %if.then.11
  %21 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !4397
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !4397
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !856, metadata !1200), !dbg !4399
  %22 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !4400, !tbaa !1221
  store %struct._object* %22, %struct._object** %_py_decref_tmp14, align 8, !dbg !4399, !tbaa !1221
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !4401, !tbaa !1221
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !4403
  %24 = load i64, i64* %ob_refcnt15, align 8, !dbg !4404, !tbaa !1265
  %dec16 = add i64 %24, -1, !dbg !4404
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !4404, !tbaa !1265
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !4405
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !4406

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !4407

if.else.19:                                       ; preds = %do.body.13
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !4409, !tbaa !1221
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !4411
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !4411, !tbaa !1368
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !4412
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !4412, !tbaa !1370
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !4413, !tbaa !1221
  call void %27(%struct._object* %28), !dbg !4414
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %29 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !4415
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !4415
  br label %do.cond.23, !dbg !4417

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !4418

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !4420

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %30 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !4422
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !4422
  br label %do.end.27, !dbg !4423

do.end.27:                                        ; preds = %if.end.25
  ret i32 0, !dbg !4424
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_writerow(%struct.WriterObj* %self, %struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.WriterObj*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %dialect = alloca %struct.DialectObj*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %line = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %field = alloca %struct._object*, align 8
  %append_ok = alloca i32, align 4
  %quoted = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !864, metadata !1200), !dbg !4425
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !865, metadata !1200), !dbg !4426
  %0 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !4427
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4427
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %dialect, metadata !866, metadata !1200), !dbg !4428
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4429, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %1, i32 0, i32 2, !dbg !4430
  %2 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8, !dbg !4430, !tbaa !4188
  store %struct.DialectObj* %2, %struct.DialectObj** %dialect, align 8, !dbg !4428, !tbaa !1221
  %3 = bitcast i64* %len to i8*, !dbg !4431
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4431
  call void @llvm.dbg.declare(metadata i64* %len, metadata !867, metadata !1200), !dbg !4432
  %4 = bitcast i64* %i to i8*, !dbg !4431
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4431
  call void @llvm.dbg.declare(metadata i64* %i, metadata !868, metadata !1200), !dbg !4433
  %5 = bitcast %struct._object** %line to i8*, !dbg !4434
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4434
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !869, metadata !1200), !dbg !4435
  %6 = bitcast %struct._object** %result to i8*, !dbg !4434
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4434
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !870, metadata !1200), !dbg !4436
  %7 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !4437, !tbaa !1221
  %call = call i32 @PySequence_Check(%struct._object* %7), !dbg !4439
  %tobool = icmp ne i32 %call, 0, !dbg !4439
  br i1 %tobool, label %if.end, label %if.then, !dbg !4440

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !4441
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2), !dbg !4442
  %8 = bitcast i8* %call3 to %struct._csvstate*, !dbg !4443
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %8, i32 0, i32 0, !dbg !4444
  %9 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !4444, !tbaa !1314
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0)), !dbg !4445
  store %struct._object* %call4, %struct._object** %retval, !dbg !4446
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113, !dbg !4446

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !4447, !tbaa !1221
  %call5 = call i64 @PySequence_Size(%struct._object* %10), !dbg !4448
  store i64 %call5, i64* %len, align 8, !dbg !4449, !tbaa !2414
  %11 = load i64, i64* %len, align 8, !dbg !4450, !tbaa !2414
  %cmp = icmp slt i64 %11, 0, !dbg !4452
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !4453

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4454
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113, !dbg !4454

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4455, !tbaa !1221
  call void @join_reset(%struct.WriterObj* %12), !dbg !4456
  store i64 0, i64* %i, align 8, !dbg !4457, !tbaa !2414
  br label %for.cond, !dbg !4458

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load i64, i64* %i, align 8, !dbg !4459, !tbaa !2414
  %14 = load i64, i64* %len, align 8, !dbg !4462, !tbaa !2414
  %cmp8 = icmp slt i64 %13, %14, !dbg !4463
  br i1 %cmp8, label %for.body, label %for.end, !dbg !4464

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._object** %field to i8*, !dbg !4465
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !4465
  call void @llvm.dbg.declare(metadata %struct._object** %field, metadata !871, metadata !1200), !dbg !4466
  %16 = bitcast i32* %append_ok to i8*, !dbg !4467
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !4467
  call void @llvm.dbg.declare(metadata i32* %append_ok, metadata !875, metadata !1200), !dbg !4468
  %17 = bitcast i32* %quoted to i8*, !dbg !4469
  call void @llvm.lifetime.start(i64 4, i8* %17) #1, !dbg !4469
  call void @llvm.dbg.declare(metadata i32* %quoted, metadata !876, metadata !1200), !dbg !4470
  %18 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !4471, !tbaa !1221
  %19 = load i64, i64* %i, align 8, !dbg !4472, !tbaa !2414
  %call9 = call %struct._object* @PySequence_GetItem(%struct._object* %18, i64 %19), !dbg !4473
  store %struct._object* %call9, %struct._object** %field, align 8, !dbg !4474, !tbaa !1221
  %20 = load %struct._object*, %struct._object** %field, align 8, !dbg !4475, !tbaa !1221
  %cmp10 = icmp eq %struct._object* %20, null, !dbg !4477
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4478

if.then.11:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval, !dbg !4479
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85, !dbg !4479

if.end.12:                                        ; preds = %for.body
  %21 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4480, !tbaa !1221
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %21, i32 0, i32 7, !dbg !4481
  %22 = load i32, i32* %quoting, align 4, !dbg !4481, !tbaa !1835
  br label %NodeBlock

NodeBlock:                                        ; preds = %if.end.12
  %Pivot = icmp slt i32 %22, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %22, 2
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %22, 1
  br i1 %SwitchLeaf, label %sw.bb.15, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1
  %23 = load %struct._object*, %struct._object** %field, align 8, !dbg !4482, !tbaa !1221
  %call13 = call i32 @PyNumber_Check(%struct._object* %23), !dbg !4484
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4485
  %lnot = xor i1 %tobool14, true, !dbg !4485
  %lnot.ext = zext i1 %lnot to i32, !dbg !4485
  store i32 %lnot.ext, i32* %quoted, align 4, !dbg !4486, !tbaa !2313
  br label %sw.epilog, !dbg !4487

sw.bb.15:                                         ; preds = %LeafBlock
  store i32 1, i32* %quoted, align 4, !dbg !4488, !tbaa !2313
  br label %sw.epilog, !dbg !4489

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  store i32 0, i32* %quoted, align 4, !dbg !4490, !tbaa !2313
  br label %sw.epilog, !dbg !4491

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb
  %24 = load %struct._object*, %struct._object** %field, align 8, !dbg !4492, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !4493
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4493, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !4494
  %26 = load i64, i64* %tp_flags, align 8, !dbg !4494, !tbaa !1435
  %and = and i64 %26, 268435456, !dbg !4495
  %cmp16 = icmp ne i64 %and, 0, !dbg !4496
  br i1 %cmp16, label %if.then.17, label %if.else.25, !dbg !4497

if.then.17:                                       ; preds = %sw.epilog
  %27 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4498, !tbaa !1221
  %28 = load %struct._object*, %struct._object** %field, align 8, !dbg !4499, !tbaa !1221
  %29 = load i64, i64* %len, align 8, !dbg !4500, !tbaa !2414
  %cmp18 = icmp eq i64 %29, 1, !dbg !4501
  %conv = zext i1 %cmp18 to i32, !dbg !4501
  %call19 = call i32 @join_append(%struct.WriterObj* %27, %struct._object* %28, i32* %quoted, i32 %conv), !dbg !4502
  store i32 %call19, i32* %append_ok, align 4, !dbg !4503, !tbaa !2313
  br label %do.body, !dbg !4504

do.body:                                          ; preds = %if.then.17
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4505
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !4505
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !877, metadata !1200), !dbg !4507
  %31 = load %struct._object*, %struct._object** %field, align 8, !dbg !4508, !tbaa !1221
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8, !dbg !4507, !tbaa !1221
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4509, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !4511
  %33 = load i64, i64* %ob_refcnt, align 8, !dbg !4512, !tbaa !1265
  %dec = add i64 %33, -1, !dbg !4512
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4512, !tbaa !1265
  %cmp20 = icmp ne i64 %dec, 0, !dbg !4513
  br i1 %cmp20, label %if.then.22, label %if.else, !dbg !4514

if.then.22:                                       ; preds = %do.body
  br label %if.end.24, !dbg !4515

if.else:                                          ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4517, !tbaa !1221
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !4519
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !4519, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !4520
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4520, !tbaa !1370
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4521, !tbaa !1221
  call void %36(%struct._object* %37), !dbg !4522
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4523
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !4523
  br label %do.cond, !dbg !4525

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.cond
  br label %if.end.81, !dbg !4528

if.else.25:                                       ; preds = %sw.epilog
  %39 = load %struct._object*, %struct._object** %field, align 8, !dbg !4529, !tbaa !1221
  %cmp26 = icmp eq %struct._object* %39, @_Py_NoneStruct, !dbg !4530
  br i1 %cmp26, label %if.then.28, label %if.else.45, !dbg !4531

if.then.28:                                       ; preds = %if.else.25
  %40 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4532, !tbaa !1221
  %41 = load i64, i64* %len, align 8, !dbg !4533, !tbaa !2414
  %cmp29 = icmp eq i64 %41, 1, !dbg !4534
  %conv30 = zext i1 %cmp29 to i32, !dbg !4534
  %call31 = call i32 @join_append(%struct.WriterObj* %40, %struct._object* null, i32* %quoted, i32 %conv30), !dbg !4535
  store i32 %call31, i32* %append_ok, align 4, !dbg !4536, !tbaa !2313
  br label %do.body.32, !dbg !4537

do.body.32:                                       ; preds = %if.then.28
  %42 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !4538
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !4538
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !881, metadata !1200), !dbg !4540
  %43 = load %struct._object*, %struct._object** %field, align 8, !dbg !4541, !tbaa !1221
  store %struct._object* %43, %struct._object** %_py_decref_tmp33, align 8, !dbg !4540, !tbaa !1221
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4542, !tbaa !1221
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !4544
  %45 = load i64, i64* %ob_refcnt34, align 8, !dbg !4545, !tbaa !1265
  %dec35 = add i64 %45, -1, !dbg !4545
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !4545, !tbaa !1265
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !4546
  br i1 %cmp36, label %if.then.38, label %if.else.39, !dbg !4547

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42, !dbg !4548

if.else.39:                                       ; preds = %do.body.32
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4550, !tbaa !1221
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !4552
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !4552, !tbaa !1368
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !4553
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !4553, !tbaa !1370
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !4554, !tbaa !1221
  call void %48(%struct._object* %49), !dbg !4555
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %50 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !4556
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !4556
  br label %do.cond.43, !dbg !4558

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !4559

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.80, !dbg !4561

if.else.45:                                       ; preds = %if.else.25
  %51 = bitcast %struct._object** %str to i8*, !dbg !4562
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !4562
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !885, metadata !1200), !dbg !4563
  %52 = load %struct._object*, %struct._object** %field, align 8, !dbg !4564, !tbaa !1221
  %call46 = call %struct._object* @PyObject_Str(%struct._object* %52), !dbg !4565
  store %struct._object* %call46, %struct._object** %str, align 8, !dbg !4566, !tbaa !1221
  br label %do.body.47, !dbg !4567

do.body.47:                                       ; preds = %if.else.45
  %53 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !4568
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !4568
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !887, metadata !1200), !dbg !4570
  %54 = load %struct._object*, %struct._object** %field, align 8, !dbg !4571, !tbaa !1221
  store %struct._object* %54, %struct._object** %_py_decref_tmp48, align 8, !dbg !4570, !tbaa !1221
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4572, !tbaa !1221
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4574
  %56 = load i64, i64* %ob_refcnt49, align 8, !dbg !4575, !tbaa !1265
  %dec50 = add i64 %56, -1, !dbg !4575
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !4575, !tbaa !1265
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !4576
  br i1 %cmp51, label %if.then.53, label %if.else.54, !dbg !4577

if.then.53:                                       ; preds = %do.body.47
  br label %if.end.57, !dbg !4578

if.else.54:                                       ; preds = %do.body.47
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4580, !tbaa !1221
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4582
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !4582, !tbaa !1368
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4583
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !4583, !tbaa !1370
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !4584, !tbaa !1221
  call void %59(%struct._object* %60), !dbg !4585
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  %61 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !4586
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !4586
  br label %do.cond.58, !dbg !4588

do.cond.58:                                       ; preds = %if.end.57
  br label %do.end.59, !dbg !4589

do.end.59:                                        ; preds = %do.cond.58
  %62 = load %struct._object*, %struct._object** %str, align 8, !dbg !4591, !tbaa !1221
  %cmp60 = icmp eq %struct._object* %62, null, !dbg !4593
  br i1 %cmp60, label %if.then.62, label %if.end.63, !dbg !4594

if.then.62:                                       ; preds = %do.end.59
  store %struct._object* null, %struct._object** %retval, !dbg !4595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4595

if.end.63:                                        ; preds = %do.end.59
  %63 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4596, !tbaa !1221
  %64 = load %struct._object*, %struct._object** %str, align 8, !dbg !4597, !tbaa !1221
  %65 = load i64, i64* %len, align 8, !dbg !4598, !tbaa !2414
  %cmp64 = icmp eq i64 %65, 1, !dbg !4599
  %conv65 = zext i1 %cmp64 to i32, !dbg !4599
  %call66 = call i32 @join_append(%struct.WriterObj* %63, %struct._object* %64, i32* %quoted, i32 %conv65), !dbg !4600
  store i32 %call66, i32* %append_ok, align 4, !dbg !4601, !tbaa !2313
  br label %do.body.67, !dbg !4602

do.body.67:                                       ; preds = %if.end.63
  %66 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !4603
  call void @llvm.lifetime.start(i64 8, i8* %66) #1, !dbg !4603
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !889, metadata !1200), !dbg !4605
  %67 = load %struct._object*, %struct._object** %str, align 8, !dbg !4606, !tbaa !1221
  store %struct._object* %67, %struct._object** %_py_decref_tmp68, align 8, !dbg !4605, !tbaa !1221
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !4607, !tbaa !1221
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !4609
  %69 = load i64, i64* %ob_refcnt69, align 8, !dbg !4610, !tbaa !1265
  %dec70 = add i64 %69, -1, !dbg !4610
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !4610, !tbaa !1265
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !4611
  br i1 %cmp71, label %if.then.73, label %if.else.74, !dbg !4612

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77, !dbg !4613

if.else.74:                                       ; preds = %do.body.67
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !4615, !tbaa !1221
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !4617
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !4617, !tbaa !1368
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !4618
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !4618, !tbaa !1370
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !4619, !tbaa !1221
  call void %72(%struct._object* %73), !dbg !4620
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %74 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !4621
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !4621
  br label %do.cond.78, !dbg !4622

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !4623

do.end.79:                                        ; preds = %do.cond.78
  store i32 0, i32* %cleanup.dest.slot, !dbg !4625
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %do.end.79, %if.then.62
  %75 = bitcast %struct._object** %str to i8*, !dbg !4626
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !4626
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.4

LeafBlock.4:                                      ; preds = %cleanup
  %SwitchLeaf5 = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf5, label %cleanup.cont, label %NewDefault.3

cleanup.cont:                                     ; preds = %LeafBlock.4
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont, %do.end.44
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %do.end
  %76 = load i32, i32* %append_ok, align 4, !dbg !4628, !tbaa !2313
  %tobool82 = icmp ne i32 %76, 0, !dbg !4628
  br i1 %tobool82, label %if.end.84, label %if.then.83, !dbg !4630

if.then.83:                                       ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval, !dbg !4631
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85, !dbg !4631

if.end.84:                                        ; preds = %if.end.81
  store i32 0, i32* %cleanup.dest.slot, !dbg !4632
  br label %cleanup.85, !dbg !4632

NewDefault.3:                                     ; preds = %LeafBlock.4
  br label %cleanup.85

cleanup.85:                                       ; preds = %NewDefault.3, %if.end.84, %if.then.83, %if.then.11
  %77 = bitcast i32* %quoted to i8*, !dbg !4633
  call void @llvm.lifetime.end(i64 4, i8* %77) #1, !dbg !4633
  %78 = bitcast i32* %append_ok to i8*, !dbg !4633
  call void @llvm.lifetime.end(i64 4, i8* %78) #1, !dbg !4633
  %79 = bitcast %struct._object** %field to i8*, !dbg !4633
  call void @llvm.lifetime.end(i64 8, i8* %79) #1, !dbg !4633
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.7

LeafBlock.7:                                      ; preds = %cleanup.85
  %SwitchLeaf8 = icmp eq i32 %cleanup.dest.88, 0
  br i1 %SwitchLeaf8, label %cleanup.cont.89, label %NewDefault.6

cleanup.cont.89:                                  ; preds = %LeafBlock.7
  br label %for.inc, !dbg !4634

for.inc:                                          ; preds = %cleanup.cont.89
  %80 = load i64, i64* %i, align 8, !dbg !4635, !tbaa !2414
  %inc = add i64 %80, 1, !dbg !4635
  store i64 %inc, i64* %i, align 8, !dbg !4635, !tbaa !2414
  br label %for.cond, !dbg !4636

for.end:                                          ; preds = %for.cond
  %81 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4637, !tbaa !1221
  %call90 = call i32 @join_append_lineterminator(%struct.WriterObj* %81), !dbg !4639
  %tobool91 = icmp ne i32 %call90, 0, !dbg !4639
  br i1 %tobool91, label %if.end.93, label %if.then.92, !dbg !4640

if.then.92:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !4641
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113, !dbg !4641

if.end.93:                                        ; preds = %for.end
  %82 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4642, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %82, i32 0, i32 3, !dbg !4643
  %83 = load i32*, i32** %rec, align 8, !dbg !4643, !tbaa !4267
  %84 = bitcast i32* %83 to i8*, !dbg !4644
  %85 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4645, !tbaa !1221
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %85, i32 0, i32 5, !dbg !4646
  %86 = load i64, i64* %rec_len, align 8, !dbg !4646, !tbaa !4647
  %call94 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %84, i64 %86), !dbg !4648
  store %struct._object* %call94, %struct._object** %line, align 8, !dbg !4649, !tbaa !1221
  %87 = load %struct._object*, %struct._object** %line, align 8, !dbg !4650, !tbaa !1221
  %cmp95 = icmp eq %struct._object* %87, null, !dbg !4652
  br i1 %cmp95, label %if.then.97, label %if.end.98, !dbg !4653

if.then.97:                                       ; preds = %if.end.93
  store %struct._object* null, %struct._object** %retval, !dbg !4654
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113, !dbg !4654

if.end.98:                                        ; preds = %if.end.93
  %88 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4655, !tbaa !1221
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %88, i32 0, i32 1, !dbg !4656
  %89 = load %struct._object*, %struct._object** %writeline, align 8, !dbg !4656, !tbaa !4231
  %90 = load %struct._object*, %struct._object** %line, align 8, !dbg !4657, !tbaa !1221
  %call99 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %89, %struct._object* %90, i8* null), !dbg !4658
  store %struct._object* %call99, %struct._object** %result, align 8, !dbg !4659, !tbaa !1221
  br label %do.body.100, !dbg !4660

do.body.100:                                      ; preds = %if.end.98
  %91 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !4661
  call void @llvm.lifetime.start(i64 8, i8* %91) #1, !dbg !4661
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !891, metadata !1200), !dbg !4663
  %92 = load %struct._object*, %struct._object** %line, align 8, !dbg !4664, !tbaa !1221
  store %struct._object* %92, %struct._object** %_py_decref_tmp101, align 8, !dbg !4663, !tbaa !1221
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !4665, !tbaa !1221
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0, !dbg !4667
  %94 = load i64, i64* %ob_refcnt102, align 8, !dbg !4668, !tbaa !1265
  %dec103 = add i64 %94, -1, !dbg !4668
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !4668, !tbaa !1265
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !4669
  br i1 %cmp104, label %if.then.106, label %if.else.107, !dbg !4670

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110, !dbg !4671

if.else.107:                                      ; preds = %do.body.100
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !4673, !tbaa !1221
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1, !dbg !4675
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8, !dbg !4675, !tbaa !1368
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4, !dbg !4676
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8, !dbg !4676, !tbaa !1370
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !4677, !tbaa !1221
  call void %97(%struct._object* %98), !dbg !4678
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  %99 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !4679
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !4679
  br label %do.cond.111, !dbg !4681

do.cond.111:                                      ; preds = %if.end.110
  br label %do.end.112, !dbg !4682

do.end.112:                                       ; preds = %do.cond.111
  %100 = load %struct._object*, %struct._object** %result, align 8, !dbg !4684, !tbaa !1221
  store %struct._object* %100, %struct._object** %retval, !dbg !4685
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113, !dbg !4685

NewDefault.6:                                     ; preds = %LeafBlock.7
  br label %cleanup.113

cleanup.113:                                      ; preds = %NewDefault.6, %do.end.112, %if.then.97, %if.then.92, %if.then.6, %if.then
  %101 = bitcast %struct._object** %result to i8*, !dbg !4686
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !4686
  %102 = bitcast %struct._object** %line to i8*, !dbg !4686
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !4686
  %103 = bitcast i64* %i to i8*, !dbg !4686
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !4686
  %104 = bitcast i64* %len to i8*, !dbg !4686
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !4686
  %105 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !4686
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !4686
  %106 = load %struct._object*, %struct._object** %retval, !dbg !4686
  ret %struct._object* %106, !dbg !4686
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_writerows(%struct.WriterObj* %self, %struct._object* %seqseq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.WriterObj*, align 8
  %seqseq.addr = alloca %struct._object*, align 8
  %row_iter = alloca %struct._object*, align 8
  %row_obj = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !947, metadata !1200), !dbg !4687
  store %struct._object* %seqseq, %struct._object** %seqseq.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %seqseq.addr, metadata !948, metadata !1200), !dbg !4688
  %0 = bitcast %struct._object** %row_iter to i8*, !dbg !4689
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4689
  call void @llvm.dbg.declare(metadata %struct._object** %row_iter, metadata !949, metadata !1200), !dbg !4690
  %1 = bitcast %struct._object** %row_obj to i8*, !dbg !4689
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4689
  call void @llvm.dbg.declare(metadata %struct._object** %row_obj, metadata !950, metadata !1200), !dbg !4691
  %2 = bitcast %struct._object** %result to i8*, !dbg !4689
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4689
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !951, metadata !1200), !dbg !4692
  %3 = load %struct._object*, %struct._object** %seqseq.addr, align 8, !dbg !4693, !tbaa !1221
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %3), !dbg !4694
  store %struct._object* %call, %struct._object** %row_iter, align 8, !dbg !4695, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %row_iter, align 8, !dbg !4696, !tbaa !1221
  %cmp = icmp eq %struct._object* %4, null, !dbg !4698
  br i1 %cmp, label %if.then, label %if.end, !dbg !4699

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4700, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0)), !dbg !4702
  store %struct._object* null, %struct._object** %retval, !dbg !4703
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4703

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !4704

while.cond:                                       ; preds = %if.end.33, %if.end
  %6 = load %struct._object*, %struct._object** %row_iter, align 8, !dbg !4705, !tbaa !1221
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %6), !dbg !4708
  store %struct._object* %call1, %struct._object** %row_obj, align 8, !dbg !4709, !tbaa !1221
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4704
  br i1 %tobool, label %while.body, label %while.end, !dbg !4704

while.body:                                       ; preds = %while.cond
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4710, !tbaa !1221
  %8 = load %struct._object*, %struct._object** %row_obj, align 8, !dbg !4711, !tbaa !1221
  %call2 = call %struct._object* @csv_writerow(%struct.WriterObj* %7, %struct._object* %8), !dbg !4712
  store %struct._object* %call2, %struct._object** %result, align 8, !dbg !4713, !tbaa !1221
  br label %do.body, !dbg !4714

do.body:                                          ; preds = %while.body
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4715
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4715
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !952, metadata !1200), !dbg !4717
  %10 = load %struct._object*, %struct._object** %row_obj, align 8, !dbg !4718, !tbaa !1221
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !4717, !tbaa !1221
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4719, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !4721
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !4722, !tbaa !1265
  %dec = add i64 %12, -1, !dbg !4722
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4722, !tbaa !1265
  %cmp3 = icmp ne i64 %dec, 0, !dbg !4723
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !4724

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !4725

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4727, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4729
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4729, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !4730
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4730, !tbaa !1370
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4731, !tbaa !1221
  call void %15(%struct._object* %16), !dbg !4732
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4733
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !4733
  br label %do.cond, !dbg !4735

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !4736

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %result, align 8, !dbg !4738, !tbaa !1221
  %tobool6 = icmp ne %struct._object* %18, null, !dbg !4738
  br i1 %tobool6, label %if.else.20, label %if.then.7, !dbg !4739

if.then.7:                                        ; preds = %do.end
  br label %do.body.8, !dbg !4740

do.body.8:                                        ; preds = %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !4741
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !4741
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp9, metadata !955, metadata !1200), !dbg !4743
  %20 = load %struct._object*, %struct._object** %row_iter, align 8, !dbg !4744, !tbaa !1221
  store %struct._object* %20, %struct._object** %_py_decref_tmp9, align 8, !dbg !4743, !tbaa !1221
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4745, !tbaa !1221
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4747
  %22 = load i64, i64* %ob_refcnt10, align 8, !dbg !4748, !tbaa !1265
  %dec11 = add i64 %22, -1, !dbg !4748
  store i64 %dec11, i64* %ob_refcnt10, align 8, !dbg !4748, !tbaa !1265
  %cmp12 = icmp ne i64 %dec11, 0, !dbg !4749
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !4750

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17, !dbg !4751

if.else.14:                                       ; preds = %do.body.8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4753, !tbaa !1221
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !4755
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !4755, !tbaa !1368
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !4756
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !4756, !tbaa !1370
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4757, !tbaa !1221
  call void %25(%struct._object* %26), !dbg !4758
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  %27 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !4759
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !4759
  br label %do.cond.18, !dbg !4761

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !4762

do.end.19:                                        ; preds = %do.cond.18
  store %struct._object* null, %struct._object** %retval, !dbg !4764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4764

if.else.20:                                       ; preds = %do.end
  br label %do.body.21, !dbg !4765

do.body.21:                                       ; preds = %if.else.20
  %28 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !4766
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !4766
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !959, metadata !1200), !dbg !4768
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !4769, !tbaa !1221
  store %struct._object* %29, %struct._object** %_py_decref_tmp22, align 8, !dbg !4768, !tbaa !1221
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4770, !tbaa !1221
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !4772
  %31 = load i64, i64* %ob_refcnt23, align 8, !dbg !4773, !tbaa !1265
  %dec24 = add i64 %31, -1, !dbg !4773
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !4773, !tbaa !1265
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !4774
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !4775

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30, !dbg !4776

if.else.27:                                       ; preds = %do.body.21
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4778, !tbaa !1221
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !4780
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !4780, !tbaa !1368
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !4781
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !4781, !tbaa !1370
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !4782, !tbaa !1221
  call void %34(%struct._object* %35), !dbg !4783
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %36 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !4784
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !4784
  br label %do.cond.31, !dbg !4786

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !4787

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32
  br label %while.cond, !dbg !4704

while.end:                                        ; preds = %while.cond
  br label %do.body.34, !dbg !4789

do.body.34:                                       ; preds = %while.end
  %37 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !4790
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !4790
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !961, metadata !1200), !dbg !4792
  %38 = load %struct._object*, %struct._object** %row_iter, align 8, !dbg !4793, !tbaa !1221
  store %struct._object* %38, %struct._object** %_py_decref_tmp35, align 8, !dbg !4792, !tbaa !1221
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !4794, !tbaa !1221
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !4796
  %40 = load i64, i64* %ob_refcnt36, align 8, !dbg !4797, !tbaa !1265
  %dec37 = add i64 %40, -1, !dbg !4797
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !4797, !tbaa !1265
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !4798
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !4799

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !4800

if.else.40:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !4802, !tbaa !1221
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !4804
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !4804, !tbaa !1368
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !4805
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !4805, !tbaa !1370
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !4806, !tbaa !1221
  call void %43(%struct._object* %44), !dbg !4807
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %45 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !4808
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !4808
  br label %do.cond.44, !dbg !4810

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !4811

do.end.45:                                        ; preds = %do.cond.44
  %call46 = call %struct._object* @PyErr_Occurred(), !dbg !4813
  %tobool47 = icmp ne %struct._object* %call46, null, !dbg !4813
  br i1 %tobool47, label %if.then.48, label %if.end.49, !dbg !4815

if.then.48:                                       ; preds = %do.end.45
  store %struct._object* null, %struct._object** %retval, !dbg !4816
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4816

if.end.49:                                        ; preds = %do.end.45
  %46 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4817, !tbaa !1265
  %inc = add i64 %46, 1, !dbg !4817
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4817, !tbaa !1265
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4818

cleanup:                                          ; preds = %if.end.49, %if.then.48, %do.end.19, %if.then
  %47 = bitcast %struct._object** %result to i8*, !dbg !4819
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !4819
  %48 = bitcast %struct._object** %row_obj to i8*, !dbg !4819
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !4819
  %49 = bitcast %struct._object** %row_iter to i8*, !dbg !4819
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !4819
  %50 = load %struct._object*, %struct._object** %retval, !dbg !4819
  ret %struct._object* %50, !dbg !4819
}

declare i32 @PySequence_Check(%struct._object*) #3

declare i64 @PySequence_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @join_reset(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !895, metadata !1200), !dbg !4820
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4821, !tbaa !1221
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 5, !dbg !4822
  store i64 0, i64* %rec_len, align 8, !dbg !4823, !tbaa !4647
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4824, !tbaa !1221
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %1, i32 0, i32 6, !dbg !4825
  store i32 0, i32* %num_fields, align 4, !dbg !4826, !tbaa !4827
  ret void, !dbg !4828
}

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare i32 @PyNumber_Check(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @join_append(%struct.WriterObj* %self, %struct._object* %field, i32* %quoted, i32 %quote_empty) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %field.addr = alloca %struct._object*, align 8
  %quoted.addr = alloca i32*, align 8
  %quote_empty.addr = alloca i32, align 4
  %field_kind = alloca i32, align 4
  %field_data = alloca i8*, align 8
  %field_len = alloca i64, align 8
  %rec_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !900, metadata !1200), !dbg !4829
  store %struct._object* %field, %struct._object** %field.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %field.addr, metadata !901, metadata !1200), !dbg !4830
  store i32* %quoted, i32** %quoted.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32** %quoted.addr, metadata !902, metadata !1200), !dbg !4831
  store i32 %quote_empty, i32* %quote_empty.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %quote_empty.addr, metadata !903, metadata !1200), !dbg !4832
  %0 = bitcast i32* %field_kind to i8*, !dbg !4833
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4833
  call void @llvm.dbg.declare(metadata i32* %field_kind, metadata !904, metadata !1200), !dbg !4834
  store i32 -1, i32* %field_kind, align 4, !dbg !4834, !tbaa !2313
  %1 = bitcast i8** %field_data to i8*, !dbg !4835
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4835
  call void @llvm.dbg.declare(metadata i8** %field_data, metadata !905, metadata !1200), !dbg !4836
  store i8* null, i8** %field_data, align 8, !dbg !4836, !tbaa !1221
  %2 = bitcast i64* %field_len to i8*, !dbg !4837
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4837
  call void @llvm.dbg.declare(metadata i64* %field_len, metadata !906, metadata !1200), !dbg !4838
  store i64 0, i64* %field_len, align 8, !dbg !4838, !tbaa !2414
  %3 = bitcast i64* %rec_len to i8*, !dbg !4839
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4839
  call void @llvm.dbg.declare(metadata i64* %rec_len, metadata !907, metadata !1200), !dbg !4840
  %4 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4841, !tbaa !1221
  %cmp = icmp ne %struct._object* %4, null, !dbg !4843
  br i1 %cmp, label %if.then, label %if.end.26, !dbg !4844

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4845, !tbaa !1221
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*, !dbg !4848
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3, !dbg !4849
  %7 = bitcast %struct.anon* %state to i32*, !dbg !4850
  %bf.load = load i32, i32* %7, align 4, !dbg !4850
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !4850
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4850
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4851
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4851

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !4852

cond.false:                                       ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4854, !tbaa !1221
  %call = call i32 @_PyUnicode_Ready(%struct._object* %8), !dbg !4856
  br label %cond.end, !dbg !4851

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ], !dbg !4851
  %cmp1 = icmp eq i32 %cond, -1, !dbg !4857
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !4860

if.then.2:                                        ; preds = %cond.end
  store i32 0, i32* %retval, !dbg !4861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4861

if.end:                                           ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4862, !tbaa !1221
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*, !dbg !4863
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3, !dbg !4864
  %11 = bitcast %struct.anon* %state3 to i32*, !dbg !4865
  %bf.load4 = load i32, i32* %11, align 4, !dbg !4865
  %bf.lshr5 = lshr i32 %bf.load4, 2, !dbg !4865
  %bf.clear6 = and i32 %bf.lshr5, 7, !dbg !4865
  store i32 %bf.clear6, i32* %field_kind, align 4, !dbg !4866, !tbaa !2313
  %12 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4867, !tbaa !1221
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*, !dbg !4868
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3, !dbg !4869
  %14 = bitcast %struct.anon* %state7 to i32*, !dbg !4870
  %bf.load8 = load i32, i32* %14, align 4, !dbg !4870
  %bf.lshr9 = lshr i32 %bf.load8, 5, !dbg !4870
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !4870
  %tobool11 = icmp ne i32 %bf.clear10, 0, !dbg !4871
  br i1 %tobool11, label %cond.true.12, label %cond.false.23, !dbg !4871

cond.true.12:                                     ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4872, !tbaa !1221
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*, !dbg !4874
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3, !dbg !4875
  %17 = bitcast %struct.anon* %state13 to i32*, !dbg !4876
  %bf.load14 = load i32, i32* %17, align 4, !dbg !4876
  %bf.lshr15 = lshr i32 %bf.load14, 6, !dbg !4876
  %bf.clear16 = and i32 %bf.lshr15, 1, !dbg !4876
  %tobool17 = icmp ne i32 %bf.clear16, 0, !dbg !4877
  br i1 %tobool17, label %cond.true.18, label %cond.false.19, !dbg !4877

cond.true.18:                                     ; preds = %cond.true.12
  %18 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4878, !tbaa !1221
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*, !dbg !4880
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i64 1, !dbg !4881
  %20 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !4882
  br label %cond.end.21, !dbg !4877

cond.false.19:                                    ; preds = %cond.true.12
  %21 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4883, !tbaa !1221
  %22 = bitcast %struct._object* %21 to %struct.PyCompactUnicodeObject*, !dbg !4885
  %add.ptr20 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %22, i64 1, !dbg !4886
  %23 = bitcast %struct.PyCompactUnicodeObject* %add.ptr20 to i8*, !dbg !4887
  br label %cond.end.21, !dbg !4877

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.18
  %cond22 = phi i8* [ %20, %cond.true.18 ], [ %23, %cond.false.19 ], !dbg !4877
  br label %cond.end.24, !dbg !4888

cond.false.23:                                    ; preds = %if.end
  %24 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4891, !tbaa !1221
  %25 = bitcast %struct._object* %24 to %struct.PyUnicodeObject*, !dbg !4893
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %25, i32 0, i32 1, !dbg !4894
  %any = bitcast %union.anon* %data to i8**, !dbg !4895
  %26 = load i8*, i8** %any, align 8, !dbg !4895, !tbaa !1221
  br label %cond.end.24, !dbg !4871

cond.end.24:                                      ; preds = %cond.false.23, %cond.end.21
  %cond25 = phi i8* [ %cond22, %cond.end.21 ], [ %26, %cond.false.23 ], !dbg !4871
  store i8* %cond25, i8** %field_data, align 8, !dbg !4896, !tbaa !1221
  %27 = load %struct._object*, %struct._object** %field.addr, align 8, !dbg !4899, !tbaa !1221
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !4900
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 1, !dbg !4901
  %29 = load i64, i64* %length, align 8, !dbg !4901, !tbaa !3306
  store i64 %29, i64* %field_len, align 8, !dbg !4902, !tbaa !2414
  br label %if.end.26, !dbg !4903

if.end.26:                                        ; preds = %cond.end.24, %entry
  %30 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4904, !tbaa !1221
  %31 = load i32, i32* %field_kind, align 4, !dbg !4905, !tbaa !2313
  %32 = load i8*, i8** %field_data, align 8, !dbg !4906, !tbaa !1221
  %33 = load i64, i64* %field_len, align 8, !dbg !4907, !tbaa !2414
  %34 = load i32, i32* %quote_empty.addr, align 4, !dbg !4908, !tbaa !2313
  %35 = load i32*, i32** %quoted.addr, align 8, !dbg !4909, !tbaa !1221
  %call27 = call i64 @join_append_data(%struct.WriterObj* %30, i32 %31, i8* %32, i64 %33, i32 %34, i32* %35, i32 0), !dbg !4910
  store i64 %call27, i64* %rec_len, align 8, !dbg !4911, !tbaa !2414
  %36 = load i64, i64* %rec_len, align 8, !dbg !4912, !tbaa !2414
  %cmp28 = icmp slt i64 %36, 0, !dbg !4914
  br i1 %cmp28, label %if.then.29, label %if.end.30, !dbg !4915

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %retval, !dbg !4916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4916

if.end.30:                                        ; preds = %if.end.26
  %37 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4917, !tbaa !1221
  %38 = load i64, i64* %rec_len, align 8, !dbg !4919, !tbaa !2414
  %call31 = call i32 @join_check_rec_size(%struct.WriterObj* %37, i64 %38), !dbg !4920
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4920
  br i1 %tobool32, label %if.end.34, label %if.then.33, !dbg !4921

if.then.33:                                       ; preds = %if.end.30
  store i32 0, i32* %retval, !dbg !4922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4922

if.end.34:                                        ; preds = %if.end.30
  %39 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4923, !tbaa !1221
  %40 = load i32, i32* %field_kind, align 4, !dbg !4924, !tbaa !2313
  %41 = load i8*, i8** %field_data, align 8, !dbg !4925, !tbaa !1221
  %42 = load i64, i64* %field_len, align 8, !dbg !4926, !tbaa !2414
  %43 = load i32, i32* %quote_empty.addr, align 4, !dbg !4927, !tbaa !2313
  %44 = load i32*, i32** %quoted.addr, align 8, !dbg !4928, !tbaa !1221
  %call35 = call i64 @join_append_data(%struct.WriterObj* %39, i32 %40, i8* %41, i64 %42, i32 %43, i32* %44, i32 1), !dbg !4929
  %45 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4930, !tbaa !1221
  %rec_len36 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %45, i32 0, i32 5, !dbg !4931
  store i64 %call35, i64* %rec_len36, align 8, !dbg !4932, !tbaa !4647
  %46 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4933, !tbaa !1221
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %46, i32 0, i32 6, !dbg !4934
  %47 = load i32, i32* %num_fields, align 4, !dbg !4935, !tbaa !4827
  %inc = add i32 %47, 1, !dbg !4935
  store i32 %inc, i32* %num_fields, align 4, !dbg !4935, !tbaa !4827
  store i32 1, i32* %retval, !dbg !4936
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4936

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.29, %if.then.2
  %48 = bitcast i64* %rec_len to i8*, !dbg !4937
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !4937
  %49 = bitcast i64* %field_len to i8*, !dbg !4937
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !4937
  %50 = bitcast i8** %field_data to i8*, !dbg !4937
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !4937
  %51 = bitcast i32* %field_kind to i8*, !dbg !4937
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !4937
  %52 = load i32, i32* %retval, !dbg !4937
  ret i32 %52, !dbg !4937
}

declare %struct._object* @PyObject_Str(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @join_append_lineterminator(%struct.WriterObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %terminator_len = alloca i64, align 8
  %i = alloca i64, align 8
  %term_kind = alloca i32, align 4
  %term_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !940, metadata !1200), !dbg !4938
  %0 = bitcast i64* %terminator_len to i8*, !dbg !4939
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4939
  call void @llvm.dbg.declare(metadata i64* %terminator_len, metadata !941, metadata !1200), !dbg !4940
  %1 = bitcast i64* %i to i8*, !dbg !4939
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4939
  call void @llvm.dbg.declare(metadata i64* %i, metadata !942, metadata !1200), !dbg !4941
  %2 = bitcast i32* %term_kind to i8*, !dbg !4942
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4942
  call void @llvm.dbg.declare(metadata i32* %term_kind, metadata !943, metadata !1200), !dbg !4943
  %3 = bitcast i8** %term_data to i8*, !dbg !4944
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4944
  call void @llvm.dbg.declare(metadata i8** %term_data, metadata !944, metadata !1200), !dbg !4945
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4946, !tbaa !1221
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %4, i32 0, i32 2, !dbg !4947
  %5 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !4947, !tbaa !4188
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %5, i32 0, i32 6, !dbg !4948
  %6 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !4948, !tbaa !1345
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !4949
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 1, !dbg !4950
  %8 = load i64, i64* %length, align 8, !dbg !4950, !tbaa !3306
  store i64 %8, i64* %terminator_len, align 8, !dbg !4951, !tbaa !2414
  %9 = load i64, i64* %terminator_len, align 8, !dbg !4952, !tbaa !2414
  %cmp = icmp eq i64 %9, -1, !dbg !4954
  br i1 %cmp, label %if.then, label %if.end, !dbg !4955

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !4956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4956

if.end:                                           ; preds = %entry
  %10 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4957, !tbaa !1221
  %11 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4959, !tbaa !1221
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %11, i32 0, i32 5, !dbg !4960
  %12 = load i64, i64* %rec_len, align 8, !dbg !4960, !tbaa !4647
  %13 = load i64, i64* %terminator_len, align 8, !dbg !4961, !tbaa !2414
  %add = add i64 %12, %13, !dbg !4962
  %call = call i32 @join_check_rec_size(%struct.WriterObj* %10, i64 %add), !dbg !4963
  %tobool = icmp ne i32 %call, 0, !dbg !4963
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !4964

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !4965
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4965

if.end.2:                                         ; preds = %if.end
  %14 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4966, !tbaa !1221
  %dialect3 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %14, i32 0, i32 2, !dbg !4967
  %15 = load %struct.DialectObj*, %struct.DialectObj** %dialect3, align 8, !dbg !4967, !tbaa !4188
  %lineterminator4 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %15, i32 0, i32 6, !dbg !4968
  %16 = load %struct._object*, %struct._object** %lineterminator4, align 8, !dbg !4968, !tbaa !1345
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*, !dbg !4969
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 3, !dbg !4970
  %18 = bitcast %struct.anon* %state to i32*, !dbg !4971
  %bf.load = load i32, i32* %18, align 4, !dbg !4971
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !4971
  %bf.clear = and i32 %bf.lshr, 7, !dbg !4971
  store i32 %bf.clear, i32* %term_kind, align 4, !dbg !4972, !tbaa !2313
  %19 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4973, !tbaa !1221
  %dialect5 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %19, i32 0, i32 2, !dbg !4974
  %20 = load %struct.DialectObj*, %struct.DialectObj** %dialect5, align 8, !dbg !4974, !tbaa !4188
  %lineterminator6 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %20, i32 0, i32 6, !dbg !4975
  %21 = load %struct._object*, %struct._object** %lineterminator6, align 8, !dbg !4975, !tbaa !1345
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !4976
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !4977
  %23 = bitcast %struct.anon* %state7 to i32*, !dbg !4978
  %bf.load8 = load i32, i32* %23, align 4, !dbg !4978
  %bf.lshr9 = lshr i32 %bf.load8, 5, !dbg !4978
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !4978
  %tobool11 = icmp ne i32 %bf.clear10, 0, !dbg !4979
  br i1 %tobool11, label %cond.true, label %cond.false.25, !dbg !4979

cond.true:                                        ; preds = %if.end.2
  %24 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4980, !tbaa !1221
  %dialect12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %24, i32 0, i32 2, !dbg !4982
  %25 = load %struct.DialectObj*, %struct.DialectObj** %dialect12, align 8, !dbg !4982, !tbaa !4188
  %lineterminator13 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %25, i32 0, i32 6, !dbg !4983
  %26 = load %struct._object*, %struct._object** %lineterminator13, align 8, !dbg !4983, !tbaa !1345
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*, !dbg !4984
  %state14 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3, !dbg !4985
  %28 = bitcast %struct.anon* %state14 to i32*, !dbg !4986
  %bf.load15 = load i32, i32* %28, align 4, !dbg !4986
  %bf.lshr16 = lshr i32 %bf.load15, 6, !dbg !4986
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !4986
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !4987
  br i1 %tobool18, label %cond.true.19, label %cond.false, !dbg !4987

cond.true.19:                                     ; preds = %cond.true
  %29 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4988, !tbaa !1221
  %dialect20 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %29, i32 0, i32 2, !dbg !4990
  %30 = load %struct.DialectObj*, %struct.DialectObj** %dialect20, align 8, !dbg !4990, !tbaa !4188
  %lineterminator21 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %30, i32 0, i32 6, !dbg !4991
  %31 = load %struct._object*, %struct._object** %lineterminator21, align 8, !dbg !4991, !tbaa !1345
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*, !dbg !4992
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i64 1, !dbg !4993
  %33 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !4994
  br label %cond.end, !dbg !4987

cond.false:                                       ; preds = %cond.true
  %34 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !4995, !tbaa !1221
  %dialect22 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %34, i32 0, i32 2, !dbg !4997
  %35 = load %struct.DialectObj*, %struct.DialectObj** %dialect22, align 8, !dbg !4997, !tbaa !4188
  %lineterminator23 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %35, i32 0, i32 6, !dbg !4998
  %36 = load %struct._object*, %struct._object** %lineterminator23, align 8, !dbg !4998, !tbaa !1345
  %37 = bitcast %struct._object* %36 to %struct.PyCompactUnicodeObject*, !dbg !4999
  %add.ptr24 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %37, i64 1, !dbg !5000
  %38 = bitcast %struct.PyCompactUnicodeObject* %add.ptr24 to i8*, !dbg !5001
  br label %cond.end, !dbg !4987

cond.end:                                         ; preds = %cond.false, %cond.true.19
  %cond = phi i8* [ %33, %cond.true.19 ], [ %38, %cond.false ], !dbg !4987
  br label %cond.end.28, !dbg !5002

cond.false.25:                                    ; preds = %if.end.2
  %39 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5005, !tbaa !1221
  %dialect26 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %39, i32 0, i32 2, !dbg !5007
  %40 = load %struct.DialectObj*, %struct.DialectObj** %dialect26, align 8, !dbg !5007, !tbaa !4188
  %lineterminator27 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %40, i32 0, i32 6, !dbg !5008
  %41 = load %struct._object*, %struct._object** %lineterminator27, align 8, !dbg !5008, !tbaa !1345
  %42 = bitcast %struct._object* %41 to %struct.PyUnicodeObject*, !dbg !5009
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %42, i32 0, i32 1, !dbg !5010
  %any = bitcast %union.anon* %data to i8**, !dbg !5011
  %43 = load i8*, i8** %any, align 8, !dbg !5011, !tbaa !1221
  br label %cond.end.28, !dbg !4979

cond.end.28:                                      ; preds = %cond.false.25, %cond.end
  %cond29 = phi i8* [ %cond, %cond.end ], [ %43, %cond.false.25 ], !dbg !4979
  store i8* %cond29, i8** %term_data, align 8, !dbg !5012, !tbaa !1221
  store i64 0, i64* %i, align 8, !dbg !5015, !tbaa !2414
  br label %for.cond, !dbg !5017

for.cond:                                         ; preds = %for.inc, %cond.end.28
  %44 = load i64, i64* %i, align 8, !dbg !5018, !tbaa !2414
  %45 = load i64, i64* %terminator_len, align 8, !dbg !5022, !tbaa !2414
  %cmp30 = icmp slt i64 %44, %45, !dbg !5023
  br i1 %cmp30, label %for.body, label %for.end, !dbg !5024

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %term_kind, align 4, !dbg !5025, !tbaa !2313
  %cmp31 = icmp eq i32 %46, 1, !dbg !5026
  br i1 %cmp31, label %cond.true.32, label %cond.false.33, !dbg !5027

cond.true.32:                                     ; preds = %for.body
  %47 = load i64, i64* %i, align 8, !dbg !5028, !tbaa !2414
  %48 = load i8*, i8** %term_data, align 8, !dbg !5029, !tbaa !1221
  %arrayidx = getelementptr i8, i8* %48, i64 %47, !dbg !5030
  %49 = load i8, i8* %arrayidx, align 1, !dbg !5030, !tbaa !2467
  %conv = zext i8 %49 to i32, !dbg !5030
  br label %cond.end.43, !dbg !5027

cond.false.33:                                    ; preds = %for.body
  %50 = load i32, i32* %term_kind, align 4, !dbg !5031, !tbaa !2313
  %cmp34 = icmp eq i32 %50, 2, !dbg !5033
  br i1 %cmp34, label %cond.true.36, label %cond.false.39, !dbg !5034

cond.true.36:                                     ; preds = %cond.false.33
  %51 = load i64, i64* %i, align 8, !dbg !5035, !tbaa !2414
  %52 = load i8*, i8** %term_data, align 8, !dbg !5037, !tbaa !1221
  %53 = bitcast i8* %52 to i16*, !dbg !5038
  %arrayidx37 = getelementptr i16, i16* %53, i64 %51, !dbg !5039
  %54 = load i16, i16* %arrayidx37, align 2, !dbg !5039, !tbaa !2509
  %conv38 = zext i16 %54 to i32, !dbg !5039
  br label %cond.end.41, !dbg !5034

cond.false.39:                                    ; preds = %cond.false.33
  %55 = load i64, i64* %i, align 8, !dbg !5040, !tbaa !2414
  %56 = load i8*, i8** %term_data, align 8, !dbg !5042, !tbaa !1221
  %57 = bitcast i8* %56 to i32*, !dbg !5043
  %arrayidx40 = getelementptr i32, i32* %57, i64 %55, !dbg !5044
  %58 = load i32, i32* %arrayidx40, align 4, !dbg !5044, !tbaa !2313
  br label %cond.end.41, !dbg !5034

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %conv38, %cond.true.36 ], [ %58, %cond.false.39 ], !dbg !5034
  br label %cond.end.43, !dbg !5045

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.32
  %cond44 = phi i32 [ %conv, %cond.true.32 ], [ %cond42, %cond.end.41 ], !dbg !5027
  %59 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5048, !tbaa !1221
  %rec_len45 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %59, i32 0, i32 5, !dbg !5051
  %60 = load i64, i64* %rec_len45, align 8, !dbg !5051, !tbaa !4647
  %61 = load i64, i64* %i, align 8, !dbg !5052, !tbaa !2414
  %add46 = add i64 %60, %61, !dbg !5053
  %62 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5054, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %62, i32 0, i32 3, !dbg !5055
  %63 = load i32*, i32** %rec, align 8, !dbg !5055, !tbaa !4267
  %arrayidx47 = getelementptr i32, i32* %63, i64 %add46, !dbg !5054
  store i32 %cond44, i32* %arrayidx47, align 4, !dbg !5056, !tbaa !2313
  br label %for.inc, !dbg !5054

for.inc:                                          ; preds = %cond.end.43
  %64 = load i64, i64* %i, align 8, !dbg !5057, !tbaa !2414
  %inc = add i64 %64, 1, !dbg !5057
  store i64 %inc, i64* %i, align 8, !dbg !5057, !tbaa !2414
  br label %for.cond, !dbg !5058

for.end:                                          ; preds = %for.cond
  %65 = load i64, i64* %terminator_len, align 8, !dbg !5059, !tbaa !2414
  %66 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5060, !tbaa !1221
  %rec_len48 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %66, i32 0, i32 5, !dbg !5061
  %67 = load i64, i64* %rec_len48, align 8, !dbg !5062, !tbaa !4647
  %add49 = add i64 %67, %65, !dbg !5062
  store i64 %add49, i64* %rec_len48, align 8, !dbg !5062, !tbaa !4647
  store i32 1, i32* %retval, !dbg !5063
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5063

cleanup:                                          ; preds = %for.end, %if.then.1, %if.then
  %68 = bitcast i8** %term_data to i8*, !dbg !5064
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !5064
  %69 = bitcast i32* %term_kind to i8*, !dbg !5064
  call void @llvm.lifetime.end(i64 4, i8* %69) #1, !dbg !5064
  %70 = bitcast i64* %i to i8*, !dbg !5064
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !5064
  %71 = bitcast i64* %terminator_len to i8*, !dbg !5064
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !5064
  %72 = load i32, i32* %retval, !dbg !5064
  ret i32 %72, !dbg !5064
}

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @join_append_data(%struct.WriterObj* %self, i32 %field_kind, i8* %field_data, i64 %field_len, i32 %quote_empty, i32* %quoted, i32 %copy_phase) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.WriterObj*, align 8
  %field_kind.addr = alloca i32, align 4
  %field_data.addr = alloca i8*, align 8
  %field_len.addr = alloca i64, align 8
  %quote_empty.addr = alloca i32, align 4
  %quoted.addr = alloca i32*, align 8
  %copy_phase.addr = alloca i32, align 4
  %dialect = alloca %struct.DialectObj*, align 8
  %i = alloca i32, align 4
  %rec_len = alloca i64, align 8
  %c = alloca i32, align 4
  %want_escape = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !912, metadata !1200), !dbg !5065
  store i32 %field_kind, i32* %field_kind.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %field_kind.addr, metadata !913, metadata !1200), !dbg !5066
  store i8* %field_data, i8** %field_data.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %field_data.addr, metadata !914, metadata !1200), !dbg !5067
  store i64 %field_len, i64* %field_len.addr, align 8, !tbaa !2414
  call void @llvm.dbg.declare(metadata i64* %field_len.addr, metadata !915, metadata !1200), !dbg !5068
  store i32 %quote_empty, i32* %quote_empty.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %quote_empty.addr, metadata !916, metadata !1200), !dbg !5069
  store i32* %quoted, i32** %quoted.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32** %quoted.addr, metadata !917, metadata !1200), !dbg !5070
  store i32 %copy_phase, i32* %copy_phase.addr, align 4, !tbaa !2313
  call void @llvm.dbg.declare(metadata i32* %copy_phase.addr, metadata !918, metadata !1200), !dbg !5071
  %0 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !5072
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5072
  call void @llvm.dbg.declare(metadata %struct.DialectObj** %dialect, metadata !919, metadata !1200), !dbg !5073
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5074, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %1, i32 0, i32 2, !dbg !5075
  %2 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8, !dbg !5075, !tbaa !4188
  store %struct.DialectObj* %2, %struct.DialectObj** %dialect, align 8, !dbg !5073, !tbaa !1221
  %3 = bitcast i32* %i to i8*, !dbg !5076
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !5076
  call void @llvm.dbg.declare(metadata i32* %i, metadata !920, metadata !1200), !dbg !5077
  %4 = bitcast i64* %rec_len to i8*, !dbg !5078
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5078
  call void @llvm.dbg.declare(metadata i64* %rec_len, metadata !921, metadata !1200), !dbg !5079
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5080, !tbaa !1221
  %rec_len2 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 5, !dbg !5081
  %6 = load i64, i64* %rec_len2, align 8, !dbg !5081, !tbaa !4647
  store i64 %6, i64* %rec_len, align 8, !dbg !5082, !tbaa !2414
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5083, !tbaa !1221
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %7, i32 0, i32 6, !dbg !5085
  %8 = load i32, i32* %num_fields, align 4, !dbg !5085, !tbaa !4827
  %cmp = icmp sgt i32 %8, 0, !dbg !5086
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !5087

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5088

do.body:                                          ; preds = %if.then
  %9 = load i32, i32* %copy_phase.addr, align 4, !dbg !5089, !tbaa !2313
  %tobool = icmp ne i32 %9, 0, !dbg !5089
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !5093

if.then.3:                                        ; preds = %do.body
  %10 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5094, !tbaa !1221
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %10, i32 0, i32 2, !dbg !5096
  %11 = load i32, i32* %delimiter, align 4, !dbg !5096, !tbaa !1842
  %12 = load i64, i64* %rec_len, align 8, !dbg !5097, !tbaa !2414
  %13 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5098, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %13, i32 0, i32 3, !dbg !5099
  %14 = load i32*, i32** %rec, align 8, !dbg !5099, !tbaa !4267
  %arrayidx = getelementptr i32, i32* %14, i64 %12, !dbg !5098
  store i32 %11, i32* %arrayidx, align 4, !dbg !5100, !tbaa !2313
  br label %if.end, !dbg !5098

if.end:                                           ; preds = %if.then.3, %do.body
  %15 = load i64, i64* %rec_len, align 8, !dbg !5101, !tbaa !2414
  %inc = add i64 %15, 1, !dbg !5101
  store i64 %inc, i64* %rec_len, align 8, !dbg !5101, !tbaa !2414
  br label %do.cond, !dbg !5104

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5105

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !5107

if.end.4:                                         ; preds = %do.end, %entry
  %16 = load i32, i32* %copy_phase.addr, align 4, !dbg !5109, !tbaa !2313
  %tobool5 = icmp ne i32 %16, 0, !dbg !5109
  br i1 %tobool5, label %land.lhs.true, label %if.end.17, !dbg !5111

land.lhs.true:                                    ; preds = %if.end.4
  %17 = load i32*, i32** %quoted.addr, align 8, !dbg !5112, !tbaa !1221
  %18 = load i32, i32* %17, align 4, !dbg !5114, !tbaa !2313
  %tobool6 = icmp ne i32 %18, 0, !dbg !5114
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !5115

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body.8, !dbg !5116

do.body.8:                                        ; preds = %if.then.7
  %19 = load i32, i32* %copy_phase.addr, align 4, !dbg !5117, !tbaa !2313
  %tobool9 = icmp ne i32 %19, 0, !dbg !5117
  br i1 %tobool9, label %if.then.10, label %if.end.13, !dbg !5121

if.then.10:                                       ; preds = %do.body.8
  %20 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5122, !tbaa !1221
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %20, i32 0, i32 3, !dbg !5124
  %21 = load i32, i32* %quotechar, align 4, !dbg !5124, !tbaa !1868
  %22 = load i64, i64* %rec_len, align 8, !dbg !5125, !tbaa !2414
  %23 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5126, !tbaa !1221
  %rec11 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %23, i32 0, i32 3, !dbg !5127
  %24 = load i32*, i32** %rec11, align 8, !dbg !5127, !tbaa !4267
  %arrayidx12 = getelementptr i32, i32* %24, i64 %22, !dbg !5126
  store i32 %21, i32* %arrayidx12, align 4, !dbg !5128, !tbaa !2313
  br label %if.end.13, !dbg !5126

if.end.13:                                        ; preds = %if.then.10, %do.body.8
  %25 = load i64, i64* %rec_len, align 8, !dbg !5129, !tbaa !2414
  %inc14 = add i64 %25, 1, !dbg !5129
  store i64 %inc14, i64* %rec_len, align 8, !dbg !5129, !tbaa !2414
  br label %do.cond.15, !dbg !5132

do.cond.15:                                       ; preds = %if.end.13
  br label %do.end.16, !dbg !5133

do.end.16:                                        ; preds = %do.cond.15
  br label %if.end.17, !dbg !5135

if.end.17:                                        ; preds = %do.end.16, %land.lhs.true, %if.end.4
  store i32 0, i32* %i, align 4, !dbg !5137, !tbaa !2313
  br label %for.cond, !dbg !5138

for.cond:                                         ; preds = %for.inc, %if.end.17
  %26 = load i8*, i8** %field_data.addr, align 8, !dbg !5139, !tbaa !1221
  %tobool18 = icmp ne i8* %26, null, !dbg !5139
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !5142

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !dbg !5143, !tbaa !2313
  %conv = sext i32 %27 to i64, !dbg !5143
  %28 = load i64, i64* %field_len.addr, align 8, !dbg !5145, !tbaa !2414
  %cmp19 = icmp slt i64 %conv, %28, !dbg !5146
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %29, label %for.body, label %for.end, !dbg !5147

for.body:                                         ; preds = %land.end
  %30 = bitcast i32* %c to i8*, !dbg !5149
  call void @llvm.lifetime.start(i64 4, i8* %30) #1, !dbg !5149
  call void @llvm.dbg.declare(metadata i32* %c, metadata !922, metadata !1200), !dbg !5150
  %31 = load i32, i32* %field_kind.addr, align 4, !dbg !5151, !tbaa !2313
  %cmp21 = icmp eq i32 %31, 1, !dbg !5152
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !5153

cond.true:                                        ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !dbg !5154, !tbaa !2313
  %idxprom = sext i32 %32 to i64, !dbg !5156
  %33 = load i8*, i8** %field_data.addr, align 8, !dbg !5157, !tbaa !1221
  %arrayidx23 = getelementptr i8, i8* %33, i64 %idxprom, !dbg !5156
  %34 = load i8, i8* %arrayidx23, align 1, !dbg !5156, !tbaa !2467
  %conv24 = zext i8 %34 to i32, !dbg !5156
  br label %cond.end.34, !dbg !5153

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %field_kind.addr, align 4, !dbg !5158, !tbaa !2313
  %cmp25 = icmp eq i32 %35, 2, !dbg !5160
  br i1 %cmp25, label %cond.true.27, label %cond.false.31, !dbg !5161

cond.true.27:                                     ; preds = %cond.false
  %36 = load i32, i32* %i, align 4, !dbg !5162, !tbaa !2313
  %idxprom28 = sext i32 %36 to i64, !dbg !5164
  %37 = load i8*, i8** %field_data.addr, align 8, !dbg !5165, !tbaa !1221
  %38 = bitcast i8* %37 to i16*, !dbg !5166
  %arrayidx29 = getelementptr i16, i16* %38, i64 %idxprom28, !dbg !5164
  %39 = load i16, i16* %arrayidx29, align 2, !dbg !5164, !tbaa !2509
  %conv30 = zext i16 %39 to i32, !dbg !5164
  br label %cond.end, !dbg !5161

cond.false.31:                                    ; preds = %cond.false
  %40 = load i32, i32* %i, align 4, !dbg !5167, !tbaa !2313
  %idxprom32 = sext i32 %40 to i64, !dbg !5169
  %41 = load i8*, i8** %field_data.addr, align 8, !dbg !5170, !tbaa !1221
  %42 = bitcast i8* %41 to i32*, !dbg !5171
  %arrayidx33 = getelementptr i32, i32* %42, i64 %idxprom32, !dbg !5169
  %43 = load i32, i32* %arrayidx33, align 4, !dbg !5169, !tbaa !2313
  br label %cond.end, !dbg !5161

cond.end:                                         ; preds = %cond.false.31, %cond.true.27
  %cond = phi i32 [ %conv30, %cond.true.27 ], [ %43, %cond.false.31 ], !dbg !5161
  br label %cond.end.34, !dbg !5172

cond.end.34:                                      ; preds = %cond.end, %cond.true
  %cond35 = phi i32 [ %conv24, %cond.true ], [ %cond, %cond.end ], !dbg !5153
  store i32 %cond35, i32* %c, align 4, !dbg !5175, !tbaa !2313
  %44 = bitcast i32* %want_escape to i8*, !dbg !5178
  call void @llvm.lifetime.start(i64 4, i8* %44) #1, !dbg !5178
  call void @llvm.dbg.declare(metadata i32* %want_escape, metadata !926, metadata !1200), !dbg !5179
  store i32 0, i32* %want_escape, align 4, !dbg !5179, !tbaa !2313
  %45 = load i32, i32* %c, align 4, !dbg !5180, !tbaa !2313
  %46 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5182, !tbaa !1221
  %delimiter36 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %46, i32 0, i32 2, !dbg !5183
  %47 = load i32, i32* %delimiter36, align 4, !dbg !5183, !tbaa !1842
  %cmp37 = icmp eq i32 %45, %47, !dbg !5184
  br i1 %cmp37, label %if.then.49, label %lor.lhs.false, !dbg !5185

lor.lhs.false:                                    ; preds = %cond.end.34
  %48 = load i32, i32* %c, align 4, !dbg !5186, !tbaa !2313
  %49 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5187, !tbaa !1221
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %49, i32 0, i32 4, !dbg !5188
  %50 = load i32, i32* %escapechar, align 4, !dbg !5188, !tbaa !2295
  %cmp39 = icmp eq i32 %48, %50, !dbg !5189
  br i1 %cmp39, label %if.then.49, label %lor.lhs.false.41, !dbg !5190

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %51 = load i32, i32* %c, align 4, !dbg !5191, !tbaa !2313
  %52 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5192, !tbaa !1221
  %quotechar42 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %52, i32 0, i32 3, !dbg !5193
  %53 = load i32, i32* %quotechar42, align 4, !dbg !5193, !tbaa !1868
  %cmp43 = icmp eq i32 %51, %53, !dbg !5194
  br i1 %cmp43, label %if.then.49, label %lor.lhs.false.45, !dbg !5195

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.41
  %54 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5196, !tbaa !1221
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %54, i32 0, i32 6, !dbg !5197
  %55 = load %struct._object*, %struct._object** %lineterminator, align 8, !dbg !5197, !tbaa !1345
  %56 = load i32, i32* %c, align 4, !dbg !5198, !tbaa !2313
  %57 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5199, !tbaa !1221
  %lineterminator46 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %57, i32 0, i32 6, !dbg !5200
  %58 = load %struct._object*, %struct._object** %lineterminator46, align 8, !dbg !5200, !tbaa !1345
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*, !dbg !5201
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 1, !dbg !5202
  %60 = load i64, i64* %length, align 8, !dbg !5202, !tbaa !3306
  %call = call i64 @PyUnicode_FindChar(%struct._object* %55, i32 %56, i64 0, i64 %60, i32 1), !dbg !5203
  %cmp47 = icmp sge i64 %call, 0, !dbg !5204
  br i1 %cmp47, label %if.then.49, label %if.end.96, !dbg !5205

if.then.49:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false.41, %lor.lhs.false, %cond.end.34
  %61 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5206, !tbaa !1221
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %61, i32 0, i32 7, !dbg !5209
  %62 = load i32, i32* %quoting, align 4, !dbg !5209, !tbaa !1835
  %cmp50 = icmp eq i32 %62, 3, !dbg !5210
  br i1 %cmp50, label %if.then.52, label %if.else, !dbg !5211

if.then.52:                                       ; preds = %if.then.49
  store i32 1, i32* %want_escape, align 4, !dbg !5212, !tbaa !2313
  br label %if.end.75, !dbg !5213

if.else:                                          ; preds = %if.then.49
  %63 = load i32, i32* %c, align 4, !dbg !5214, !tbaa !2313
  %64 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5217, !tbaa !1221
  %quotechar53 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %64, i32 0, i32 3, !dbg !5218
  %65 = load i32, i32* %quotechar53, align 4, !dbg !5218, !tbaa !1868
  %cmp54 = icmp eq i32 %63, %65, !dbg !5219
  br i1 %cmp54, label %if.then.56, label %if.end.71, !dbg !5220

if.then.56:                                       ; preds = %if.else
  %66 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5221, !tbaa !1221
  %doublequote = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %66, i32 0, i32 1, !dbg !5224
  %67 = load i32, i32* %doublequote, align 4, !dbg !5224, !tbaa !3895
  %tobool57 = icmp ne i32 %67, 0, !dbg !5221
  br i1 %tobool57, label %if.then.58, label %if.else.69, !dbg !5225

if.then.58:                                       ; preds = %if.then.56
  br label %do.body.59, !dbg !5226

do.body.59:                                       ; preds = %if.then.58
  %68 = load i32, i32* %copy_phase.addr, align 4, !dbg !5227, !tbaa !2313
  %tobool60 = icmp ne i32 %68, 0, !dbg !5227
  br i1 %tobool60, label %if.then.61, label %if.end.65, !dbg !5231

if.then.61:                                       ; preds = %do.body.59
  %69 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5232, !tbaa !1221
  %quotechar62 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %69, i32 0, i32 3, !dbg !5234
  %70 = load i32, i32* %quotechar62, align 4, !dbg !5234, !tbaa !1868
  %71 = load i64, i64* %rec_len, align 8, !dbg !5235, !tbaa !2414
  %72 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5236, !tbaa !1221
  %rec63 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %72, i32 0, i32 3, !dbg !5237
  %73 = load i32*, i32** %rec63, align 8, !dbg !5237, !tbaa !4267
  %arrayidx64 = getelementptr i32, i32* %73, i64 %71, !dbg !5236
  store i32 %70, i32* %arrayidx64, align 4, !dbg !5238, !tbaa !2313
  br label %if.end.65, !dbg !5236

if.end.65:                                        ; preds = %if.then.61, %do.body.59
  %74 = load i64, i64* %rec_len, align 8, !dbg !5239, !tbaa !2414
  %inc66 = add i64 %74, 1, !dbg !5239
  store i64 %inc66, i64* %rec_len, align 8, !dbg !5239, !tbaa !2414
  br label %do.cond.67, !dbg !5242

do.cond.67:                                       ; preds = %if.end.65
  br label %do.end.68, !dbg !5243

do.end.68:                                        ; preds = %do.cond.67
  br label %if.end.70, !dbg !5245

if.else.69:                                       ; preds = %if.then.56
  store i32 1, i32* %want_escape, align 4, !dbg !5247, !tbaa !2313
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %do.end.68
  br label %if.end.71, !dbg !5248

if.end.71:                                        ; preds = %if.end.70, %if.else
  %75 = load i32, i32* %want_escape, align 4, !dbg !5249, !tbaa !2313
  %tobool72 = icmp ne i32 %75, 0, !dbg !5249
  br i1 %tobool72, label %if.end.74, label %if.then.73, !dbg !5251

if.then.73:                                       ; preds = %if.end.71
  %76 = load i32*, i32** %quoted.addr, align 8, !dbg !5252, !tbaa !1221
  store i32 1, i32* %76, align 4, !dbg !5253, !tbaa !2313
  br label %if.end.74, !dbg !5254

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.52
  %77 = load i32, i32* %want_escape, align 4, !dbg !5255, !tbaa !2313
  %tobool76 = icmp ne i32 %77, 0, !dbg !5255
  br i1 %tobool76, label %if.then.77, label %if.end.95, !dbg !5257

if.then.77:                                       ; preds = %if.end.75
  %78 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5258, !tbaa !1221
  %escapechar78 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %78, i32 0, i32 4, !dbg !5261
  %79 = load i32, i32* %escapechar78, align 4, !dbg !5261, !tbaa !2295
  %tobool79 = icmp ne i32 %79, 0, !dbg !5258
  br i1 %tobool79, label %if.end.84, label %if.then.80, !dbg !5262

if.then.80:                                       ; preds = %if.then.77
  %call81 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !5263
  %call82 = call i8* @PyModule_GetState(%struct._object* %call81), !dbg !5265
  %80 = bitcast i8* %call82 to %struct._csvstate*, !dbg !5266
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %80, i32 0, i32 0, !dbg !5267
  %81 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !5267, !tbaa !1314
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0)), !dbg !5268
  store i64 -1, i64* %retval, !dbg !5269
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5269

if.end.84:                                        ; preds = %if.then.77
  br label %do.body.85, !dbg !5270

do.body.85:                                       ; preds = %if.end.84
  %82 = load i32, i32* %copy_phase.addr, align 4, !dbg !5271, !tbaa !2313
  %tobool86 = icmp ne i32 %82, 0, !dbg !5271
  br i1 %tobool86, label %if.then.87, label %if.end.91, !dbg !5275

if.then.87:                                       ; preds = %do.body.85
  %83 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5276, !tbaa !1221
  %escapechar88 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %83, i32 0, i32 4, !dbg !5278
  %84 = load i32, i32* %escapechar88, align 4, !dbg !5278, !tbaa !2295
  %85 = load i64, i64* %rec_len, align 8, !dbg !5279, !tbaa !2414
  %86 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5280, !tbaa !1221
  %rec89 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %86, i32 0, i32 3, !dbg !5281
  %87 = load i32*, i32** %rec89, align 8, !dbg !5281, !tbaa !4267
  %arrayidx90 = getelementptr i32, i32* %87, i64 %85, !dbg !5280
  store i32 %84, i32* %arrayidx90, align 4, !dbg !5282, !tbaa !2313
  br label %if.end.91, !dbg !5280

if.end.91:                                        ; preds = %if.then.87, %do.body.85
  %88 = load i64, i64* %rec_len, align 8, !dbg !5283, !tbaa !2414
  %inc92 = add i64 %88, 1, !dbg !5283
  store i64 %inc92, i64* %rec_len, align 8, !dbg !5283, !tbaa !2414
  br label %do.cond.93, !dbg !5286

do.cond.93:                                       ; preds = %if.end.91
  br label %do.end.94, !dbg !5287

do.end.94:                                        ; preds = %do.cond.93
  br label %if.end.95, !dbg !5289

if.end.95:                                        ; preds = %do.end.94, %if.end.75
  br label %if.end.96, !dbg !5290

if.end.96:                                        ; preds = %if.end.95, %lor.lhs.false.45
  br label %do.body.97, !dbg !5291

do.body.97:                                       ; preds = %if.end.96
  %89 = load i32, i32* %copy_phase.addr, align 4, !dbg !5292, !tbaa !2313
  %tobool98 = icmp ne i32 %89, 0, !dbg !5292
  br i1 %tobool98, label %if.then.99, label %if.end.102, !dbg !5296

if.then.99:                                       ; preds = %do.body.97
  %90 = load i32, i32* %c, align 4, !dbg !5297, !tbaa !2313
  %91 = load i64, i64* %rec_len, align 8, !dbg !5299, !tbaa !2414
  %92 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5300, !tbaa !1221
  %rec100 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %92, i32 0, i32 3, !dbg !5301
  %93 = load i32*, i32** %rec100, align 8, !dbg !5301, !tbaa !4267
  %arrayidx101 = getelementptr i32, i32* %93, i64 %91, !dbg !5300
  store i32 %90, i32* %arrayidx101, align 4, !dbg !5302, !tbaa !2313
  br label %if.end.102, !dbg !5300

if.end.102:                                       ; preds = %if.then.99, %do.body.97
  %94 = load i64, i64* %rec_len, align 8, !dbg !5303, !tbaa !2414
  %inc103 = add i64 %94, 1, !dbg !5303
  store i64 %inc103, i64* %rec_len, align 8, !dbg !5303, !tbaa !2414
  br label %do.cond.104, !dbg !5306

do.cond.104:                                      ; preds = %if.end.102
  br label %do.end.105, !dbg !5307

do.end.105:                                       ; preds = %do.cond.104
  store i32 0, i32* %cleanup.dest.slot, !dbg !5309
  br label %cleanup, !dbg !5309

cleanup:                                          ; preds = %do.end.105, %if.then.80
  %95 = bitcast i32* %want_escape to i8*, !dbg !5310
  call void @llvm.lifetime.end(i64 4, i8* %95) #1, !dbg !5310
  %96 = bitcast i32* %c to i8*, !dbg !5310
  call void @llvm.lifetime.end(i64 4, i8* %96) #1, !dbg !5310
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !5311

for.inc:                                          ; preds = %cleanup.cont
  %97 = load i32, i32* %i, align 4, !dbg !5312, !tbaa !2313
  %inc107 = add i32 %97, 1, !dbg !5312
  store i32 %inc107, i32* %i, align 4, !dbg !5312, !tbaa !2313
  br label %for.cond, !dbg !5313

for.end:                                          ; preds = %land.end
  %98 = load i32, i32* %i, align 4, !dbg !5314, !tbaa !2313
  %cmp108 = icmp eq i32 %98, 0, !dbg !5316
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.123, !dbg !5317

land.lhs.true.110:                                ; preds = %for.end
  %99 = load i32, i32* %quote_empty.addr, align 4, !dbg !5318, !tbaa !2313
  %tobool111 = icmp ne i32 %99, 0, !dbg !5318
  br i1 %tobool111, label %if.then.112, label %if.end.123, !dbg !5320

if.then.112:                                      ; preds = %land.lhs.true.110
  %100 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5321, !tbaa !1221
  %quoting113 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %100, i32 0, i32 7, !dbg !5324
  %101 = load i32, i32* %quoting113, align 4, !dbg !5324, !tbaa !1835
  %cmp114 = icmp eq i32 %101, 3, !dbg !5325
  br i1 %cmp114, label %if.then.116, label %if.else.121, !dbg !5326

if.then.116:                                      ; preds = %if.then.112
  %call117 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !5327
  %call118 = call i8* @PyModule_GetState(%struct._object* %call117), !dbg !5329
  %102 = bitcast i8* %call118 to %struct._csvstate*, !dbg !5330
  %error_obj119 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %102, i32 0, i32 0, !dbg !5331
  %103 = load %struct._object*, %struct._object** %error_obj119, align 8, !dbg !5331, !tbaa !1314
  %call120 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)), !dbg !5332
  store i64 -1, i64* %retval, !dbg !5333
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141, !dbg !5333

if.else.121:                                      ; preds = %if.then.112
  %104 = load i32*, i32** %quoted.addr, align 8, !dbg !5334, !tbaa !1221
  store i32 1, i32* %104, align 4, !dbg !5335, !tbaa !2313
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121
  br label %if.end.123, !dbg !5336

if.end.123:                                       ; preds = %if.end.122, %land.lhs.true.110, %for.end
  %105 = load i32*, i32** %quoted.addr, align 8, !dbg !5337, !tbaa !1221
  %106 = load i32, i32* %105, align 4, !dbg !5339, !tbaa !2313
  %tobool124 = icmp ne i32 %106, 0, !dbg !5339
  br i1 %tobool124, label %if.then.125, label %if.end.140, !dbg !5340

if.then.125:                                      ; preds = %if.end.123
  %107 = load i32, i32* %copy_phase.addr, align 4, !dbg !5341, !tbaa !2313
  %tobool126 = icmp ne i32 %107, 0, !dbg !5341
  br i1 %tobool126, label %if.then.127, label %if.else.138, !dbg !5344

if.then.127:                                      ; preds = %if.then.125
  br label %do.body.128, !dbg !5345

do.body.128:                                      ; preds = %if.then.127
  %108 = load i32, i32* %copy_phase.addr, align 4, !dbg !5346, !tbaa !2313
  %tobool129 = icmp ne i32 %108, 0, !dbg !5346
  br i1 %tobool129, label %if.then.130, label %if.end.134, !dbg !5350

if.then.130:                                      ; preds = %do.body.128
  %109 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8, !dbg !5351, !tbaa !1221
  %quotechar131 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %109, i32 0, i32 3, !dbg !5353
  %110 = load i32, i32* %quotechar131, align 4, !dbg !5353, !tbaa !1868
  %111 = load i64, i64* %rec_len, align 8, !dbg !5354, !tbaa !2414
  %112 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5355, !tbaa !1221
  %rec132 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %112, i32 0, i32 3, !dbg !5356
  %113 = load i32*, i32** %rec132, align 8, !dbg !5356, !tbaa !4267
  %arrayidx133 = getelementptr i32, i32* %113, i64 %111, !dbg !5355
  store i32 %110, i32* %arrayidx133, align 4, !dbg !5357, !tbaa !2313
  br label %if.end.134, !dbg !5355

if.end.134:                                       ; preds = %if.then.130, %do.body.128
  %114 = load i64, i64* %rec_len, align 8, !dbg !5358, !tbaa !2414
  %inc135 = add i64 %114, 1, !dbg !5358
  store i64 %inc135, i64* %rec_len, align 8, !dbg !5358, !tbaa !2414
  br label %do.cond.136, !dbg !5361

do.cond.136:                                      ; preds = %if.end.134
  br label %do.end.137, !dbg !5362

do.end.137:                                       ; preds = %do.cond.136
  br label %if.end.139, !dbg !5364

if.else.138:                                      ; preds = %if.then.125
  %115 = load i64, i64* %rec_len, align 8, !dbg !5366, !tbaa !2414
  %add = add i64 %115, 2, !dbg !5366
  store i64 %add, i64* %rec_len, align 8, !dbg !5366, !tbaa !2414
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138, %do.end.137
  br label %if.end.140, !dbg !5367

if.end.140:                                       ; preds = %if.end.139, %if.end.123
  %116 = load i64, i64* %rec_len, align 8, !dbg !5368, !tbaa !2414
  store i64 %116, i64* %retval, !dbg !5369
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141, !dbg !5369

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.141

cleanup.141:                                      ; preds = %NewDefault, %if.end.140, %if.then.116
  %117 = bitcast i64* %rec_len to i8*, !dbg !5370
  call void @llvm.lifetime.end(i64 8, i8* %117) #1, !dbg !5370
  %118 = bitcast i32* %i to i8*, !dbg !5370
  call void @llvm.lifetime.end(i64 4, i8* %118) #1, !dbg !5370
  %119 = bitcast %struct.DialectObj** %dialect to i8*, !dbg !5370
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !5370
  %120 = load i64, i64* %retval, !dbg !5370
  ret i64 %120, !dbg !5370
}

; Function Attrs: nounwind uwtable
define internal i32 @join_check_rec_size(%struct.WriterObj* %self, i64 %rec_len) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %rec_len.addr = alloca i64, align 8
  %old_rec = alloca i32*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self.addr, metadata !931, metadata !1200), !dbg !5371
  store i64 %rec_len, i64* %rec_len.addr, align 8, !tbaa !2414
  call void @llvm.dbg.declare(metadata i64* %rec_len.addr, metadata !932, metadata !1200), !dbg !5372
  %0 = load i64, i64* %rec_len.addr, align 8, !dbg !5373, !tbaa !2414
  %cmp = icmp slt i64 %0, 0, !dbg !5375
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5376

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %rec_len.addr, align 8, !dbg !5377, !tbaa !2414
  %cmp1 = icmp sgt i64 %1, 9223372036854743039, !dbg !5379
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5380

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !5381
  store i32 0, i32* %retval, !dbg !5383
  br label %return, !dbg !5383

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %rec_len.addr, align 8, !dbg !5384, !tbaa !2414
  %3 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5385, !tbaa !1221
  %rec_size = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %3, i32 0, i32 4, !dbg !5386
  %4 = load i64, i64* %rec_size, align 8, !dbg !5386, !tbaa !5387
  %cmp2 = icmp sgt i64 %2, %4, !dbg !5388
  br i1 %cmp2, label %if.then.3, label %if.end.43, !dbg !5389

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5390, !tbaa !1221
  %rec_size4 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 4, !dbg !5391
  %6 = load i64, i64* %rec_size4, align 8, !dbg !5391, !tbaa !5387
  %cmp5 = icmp eq i64 %6, 0, !dbg !5392
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !5393

if.then.6:                                        ; preds = %if.then.3
  %7 = load i64, i64* %rec_len.addr, align 8, !dbg !5394, !tbaa !2414
  %div = sdiv i64 %7, 32768, !dbg !5396
  %add = add i64 %div, 1, !dbg !5397
  %mul = mul i64 %add, 32768, !dbg !5398
  %8 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5399, !tbaa !1221
  %rec_size7 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %8, i32 0, i32 4, !dbg !5400
  store i64 %mul, i64* %rec_size7, align 8, !dbg !5401, !tbaa !5387
  %9 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5402, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %9, i32 0, i32 3, !dbg !5404
  %10 = load i32*, i32** %rec, align 8, !dbg !5404, !tbaa !4267
  %cmp8 = icmp ne i32* %10, null, !dbg !5405
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !5406

if.then.9:                                        ; preds = %if.then.6
  %11 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5407, !tbaa !1221
  %rec10 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %11, i32 0, i32 3, !dbg !5408
  %12 = load i32*, i32** %rec10, align 8, !dbg !5408, !tbaa !4267
  %13 = bitcast i32* %12 to i8*, !dbg !5407
  call void @PyMem_Free(i8* %13), !dbg !5409
  br label %if.end.11, !dbg !5409

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  %14 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5410, !tbaa !1221
  %rec_size12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %14, i32 0, i32 4, !dbg !5411
  %15 = load i64, i64* %rec_size12, align 8, !dbg !5411, !tbaa !5387
  %cmp13 = icmp ugt i64 %15, 2305843009213693951, !dbg !5412
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !5413

cond.true:                                        ; preds = %if.end.11
  br label %cond.end, !dbg !5414

cond.false:                                       ; preds = %if.end.11
  %16 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5416, !tbaa !1221
  %rec_size14 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %16, i32 0, i32 4, !dbg !5418
  %17 = load i64, i64* %rec_size14, align 8, !dbg !5418, !tbaa !5387
  %mul15 = mul i64 %17, 4, !dbg !5419
  %call16 = call i8* @PyMem_Malloc(i64 %mul15), !dbg !5420
  %18 = bitcast i8* %call16 to i32*, !dbg !5421
  br label %cond.end, !dbg !5413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ null, %cond.true ], [ %18, %cond.false ], !dbg !5413
  %19 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5422, !tbaa !1221
  %rec17 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %19, i32 0, i32 3, !dbg !5425
  store i32* %cond, i32** %rec17, align 8, !dbg !5426, !tbaa !4267
  br label %if.end.37, !dbg !5427

if.else:                                          ; preds = %if.then.3
  %20 = bitcast i32** %old_rec to i8*, !dbg !5428
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !5428
  call void @llvm.dbg.declare(metadata i32** %old_rec, metadata !933, metadata !1200), !dbg !5429
  %21 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5430, !tbaa !1221
  %rec18 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %21, i32 0, i32 3, !dbg !5431
  %22 = load i32*, i32** %rec18, align 8, !dbg !5431, !tbaa !4267
  store i32* %22, i32** %old_rec, align 8, !dbg !5429, !tbaa !1221
  %23 = load i64, i64* %rec_len.addr, align 8, !dbg !5432, !tbaa !2414
  %div19 = sdiv i64 %23, 32768, !dbg !5433
  %add20 = add i64 %div19, 1, !dbg !5434
  %mul21 = mul i64 %add20, 32768, !dbg !5435
  %24 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5436, !tbaa !1221
  %rec_size22 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %24, i32 0, i32 4, !dbg !5437
  store i64 %mul21, i64* %rec_size22, align 8, !dbg !5438, !tbaa !5387
  %25 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5439, !tbaa !1221
  %rec_size23 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %25, i32 0, i32 4, !dbg !5440
  %26 = load i64, i64* %rec_size23, align 8, !dbg !5440, !tbaa !5387
  %cmp24 = icmp ugt i64 %26, 2305843009213693951, !dbg !5441
  br i1 %cmp24, label %cond.true.25, label %cond.false.26, !dbg !5442

cond.true.25:                                     ; preds = %if.else
  br label %cond.end.30, !dbg !5443

cond.false.26:                                    ; preds = %if.else
  %27 = load i32*, i32** %old_rec, align 8, !dbg !5445, !tbaa !1221
  %28 = bitcast i32* %27 to i8*, !dbg !5447
  %29 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5448, !tbaa !1221
  %rec_size27 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %29, i32 0, i32 4, !dbg !5449
  %30 = load i64, i64* %rec_size27, align 8, !dbg !5449, !tbaa !5387
  %mul28 = mul i64 %30, 4, !dbg !5450
  %call29 = call i8* @PyMem_Realloc(i8* %28, i64 %mul28), !dbg !5451
  %31 = bitcast i8* %call29 to i32*, !dbg !5452
  br label %cond.end.30, !dbg !5442

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.25
  %cond31 = phi i32* [ null, %cond.true.25 ], [ %31, %cond.false.26 ], !dbg !5442
  store i32* %cond31, i32** %old_rec, align 8, !dbg !5453, !tbaa !1221
  %32 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5456, !tbaa !1221
  %rec32 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %32, i32 0, i32 3, !dbg !5457
  store i32* %cond31, i32** %rec32, align 8, !dbg !5458, !tbaa !4267
  %33 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5459, !tbaa !1221
  %rec33 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %33, i32 0, i32 3, !dbg !5461
  %34 = load i32*, i32** %rec33, align 8, !dbg !5461, !tbaa !4267
  %cmp34 = icmp eq i32* %34, null, !dbg !5462
  br i1 %cmp34, label %if.then.35, label %if.end.36, !dbg !5463

if.then.35:                                       ; preds = %cond.end.30
  %35 = load i32*, i32** %old_rec, align 8, !dbg !5464, !tbaa !1221
  %36 = bitcast i32* %35 to i8*, !dbg !5464
  call void @PyMem_Free(i8* %36), !dbg !5465
  br label %if.end.36, !dbg !5465

if.end.36:                                        ; preds = %if.then.35, %cond.end.30
  %37 = bitcast i32** %old_rec to i8*, !dbg !5466
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !5466
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %cond.end
  %38 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8, !dbg !5467, !tbaa !1221
  %rec38 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %38, i32 0, i32 3, !dbg !5469
  %39 = load i32*, i32** %rec38, align 8, !dbg !5469, !tbaa !4267
  %cmp39 = icmp eq i32* %39, null, !dbg !5470
  br i1 %cmp39, label %if.then.40, label %if.end.42, !dbg !5471

if.then.40:                                       ; preds = %if.end.37
  %call41 = call %struct._object* @PyErr_NoMemory(), !dbg !5472
  store i32 0, i32* %retval, !dbg !5474
  br label %return, !dbg !5474

if.end.42:                                        ; preds = %if.end.37
  br label %if.end.43, !dbg !5475

if.end.43:                                        ; preds = %if.end.42, %if.end
  store i32 1, i32* %retval, !dbg !5476
  br label %return, !dbg !5476

return:                                           ; preds = %if.end.43, %if.then.40, %if.then
  %40 = load i32, i32* %retval, !dbg !5477
  ret i32 %40, !dbg !5477
}

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_csv_traverse(%struct._object* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret11 = alloca i32, align 4
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !1049, metadata !1200), !dbg !5478
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !1050, metadata !1200), !dbg !5479
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1051, metadata !1200), !dbg !5480
  br label %do.body, !dbg !5481

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5482, !tbaa !1221
  %call = call i8* @PyModule_GetState(%struct._object* %0), !dbg !5484
  %1 = bitcast i8* %call to %struct._csvstate*, !dbg !5485
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %1, i32 0, i32 0, !dbg !5486
  %2 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !5486, !tbaa !1314
  %tobool = icmp ne %struct._object* %2, null, !dbg !5487
  br i1 %tobool, label %if.then, label %if.end.6, !dbg !5488

if.then:                                          ; preds = %do.body
  %3 = bitcast i32* %vret to i8*, !dbg !5489
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !5489
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !1052, metadata !1200), !dbg !5491
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !5492, !tbaa !1221
  %5 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5493, !tbaa !1221
  %call1 = call i8* @PyModule_GetState(%struct._object* %5), !dbg !5494
  %6 = bitcast i8* %call1 to %struct._csvstate*, !dbg !5495
  %error_obj2 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %6, i32 0, i32 0, !dbg !5496
  %7 = load %struct._object*, %struct._object** %error_obj2, align 8, !dbg !5496, !tbaa !1314
  %8 = load i8*, i8** %arg.addr, align 8, !dbg !5497, !tbaa !1221
  %call3 = call i32 %4(%struct._object* %7, i8* %8), !dbg !5492
  store i32 %call3, i32* %vret, align 4, !dbg !5491, !tbaa !2313
  %9 = load i32, i32* %vret, align 4, !dbg !5498, !tbaa !2313
  %tobool4 = icmp ne i32 %9, 0, !dbg !5498
  br i1 %tobool4, label %if.then.5, label %if.end, !dbg !5500

if.then.5:                                        ; preds = %if.then
  %10 = load i32, i32* %vret, align 4, !dbg !5501, !tbaa !2313
  store i32 %10, i32* %retval, !dbg !5503
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5503

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !5504
  br label %cleanup, !dbg !5504

cleanup:                                          ; preds = %if.end, %if.then.5
  %11 = bitcast i32* %vret to i8*, !dbg !5506
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !5506
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.6, !dbg !5509

if.end.6:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !5510

do.end:                                           ; preds = %if.end.6
  br label %do.body.7, !dbg !5513

do.body.7:                                        ; preds = %do.end
  %12 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5514, !tbaa !1221
  %call8 = call i8* @PyModule_GetState(%struct._object* %12), !dbg !5516
  %13 = bitcast i8* %call8 to %struct._csvstate*, !dbg !5517
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %13, i32 0, i32 1, !dbg !5518
  %14 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !5518, !tbaa !1250
  %tobool9 = icmp ne %struct._object* %14, null, !dbg !5519
  br i1 %tobool9, label %if.then.10, label %if.end.21, !dbg !5520

if.then.10:                                       ; preds = %do.body.7
  %15 = bitcast i32* %vret11 to i8*, !dbg !5521
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !5521
  call void @llvm.dbg.declare(metadata i32* %vret11, metadata !1056, metadata !1200), !dbg !5523
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !5524, !tbaa !1221
  %17 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5525, !tbaa !1221
  %call12 = call i8* @PyModule_GetState(%struct._object* %17), !dbg !5526
  %18 = bitcast i8* %call12 to %struct._csvstate*, !dbg !5527
  %dialects13 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %18, i32 0, i32 1, !dbg !5528
  %19 = load %struct._object*, %struct._object** %dialects13, align 8, !dbg !5528, !tbaa !1250
  %20 = load i8*, i8** %arg.addr, align 8, !dbg !5529, !tbaa !1221
  %call14 = call i32 %16(%struct._object* %19, i8* %20), !dbg !5524
  store i32 %call14, i32* %vret11, align 4, !dbg !5523, !tbaa !2313
  %21 = load i32, i32* %vret11, align 4, !dbg !5530, !tbaa !2313
  %tobool15 = icmp ne i32 %21, 0, !dbg !5530
  br i1 %tobool15, label %if.then.16, label %if.end.17, !dbg !5532

if.then.16:                                       ; preds = %if.then.10
  %22 = load i32, i32* %vret11, align 4, !dbg !5533, !tbaa !2313
  store i32 %22, i32* %retval, !dbg !5535
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !5535

if.end.17:                                        ; preds = %if.then.10
  store i32 0, i32* %cleanup.dest.slot, !dbg !5536
  br label %cleanup.18, !dbg !5536

cleanup.18:                                       ; preds = %if.end.17, %if.then.16
  %23 = bitcast i32* %vret11 to i8*, !dbg !5538
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !5538
  %cleanup.dest.19 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.18
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.19, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.20

cleanup.cont.20:                                  ; preds = %NewDefault.1
  br label %if.end.21, !dbg !5541

if.end.21:                                        ; preds = %cleanup.cont.20, %do.body.7
  br label %do.end.22, !dbg !5542

do.end.22:                                        ; preds = %if.end.21
  store i32 0, i32* %retval, !dbg !5545
  br label %return, !dbg !5545

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end.22
  %24 = load i32, i32* %retval, !dbg !5546
  ret i32 %24, !dbg !5546
}

; Function Attrs: nounwind uwtable
define internal i32 @_csv_clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !1062, metadata !1200), !dbg !5547
  br label %do.body, !dbg !5548

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !5549
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5549
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !1063, metadata !1200), !dbg !5551
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5552, !tbaa !1221
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !5553
  %2 = bitcast i8* %call to %struct._csvstate*, !dbg !5554
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %2, i32 0, i32 0, !dbg !5555
  %3 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !5555, !tbaa !1314
  store %struct._object* %3, %struct._object** %_py_tmp, align 8, !dbg !5551, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !5556, !tbaa !1221
  %cmp = icmp ne %struct._object* %4, null, !dbg !5557
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !5558

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5559, !tbaa !1221
  %call1 = call i8* @PyModule_GetState(%struct._object* %5), !dbg !5561
  %6 = bitcast i8* %call1 to %struct._csvstate*, !dbg !5562
  %error_obj2 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %6, i32 0, i32 0, !dbg !5563
  store %struct._object* null, %struct._object** %error_obj2, align 8, !dbg !5564, !tbaa !1314
  br label %do.body.3, !dbg !5565

do.body.3:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5566
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !5566
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1065, metadata !1200), !dbg !5568
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !5569, !tbaa !1221
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !5568, !tbaa !1221
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5570, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !5572
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !5573, !tbaa !1265
  %dec = add i64 %10, -1, !dbg !5573
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5573, !tbaa !1265
  %cmp4 = icmp ne i64 %dec, 0, !dbg !5574
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !5575

if.then.5:                                        ; preds = %do.body.3
  br label %if.end, !dbg !5576

if.else:                                          ; preds = %do.body.3
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5578, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !5580
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5580, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !5581
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5581, !tbaa !1370
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5582, !tbaa !1221
  call void %13(%struct._object* %14), !dbg !5583
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5584
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !5584
  br label %do.cond, !dbg !5586

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5587

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !5589

if.end.6:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_tmp to i8*, !dbg !5591
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !5591
  br label %do.end.8, !dbg !5594

do.end.8:                                         ; preds = %if.end.6
  br label %do.body.9, !dbg !5595

do.body.9:                                        ; preds = %do.end.8
  %17 = bitcast %struct._object** %_py_tmp10 to i8*, !dbg !5596
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !5596
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp10, metadata !1069, metadata !1200), !dbg !5598
  %18 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5599, !tbaa !1221
  %call11 = call i8* @PyModule_GetState(%struct._object* %18), !dbg !5600
  %19 = bitcast i8* %call11 to %struct._csvstate*, !dbg !5601
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %19, i32 0, i32 1, !dbg !5602
  %20 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !5602, !tbaa !1250
  store %struct._object* %20, %struct._object** %_py_tmp10, align 8, !dbg !5598, !tbaa !1221
  %21 = load %struct._object*, %struct._object** %_py_tmp10, align 8, !dbg !5603, !tbaa !1221
  %cmp12 = icmp ne %struct._object* %21, null, !dbg !5604
  br i1 %cmp12, label %if.then.13, label %if.end.28, !dbg !5605

if.then.13:                                       ; preds = %do.body.9
  %22 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !5606, !tbaa !1221
  %call14 = call i8* @PyModule_GetState(%struct._object* %22), !dbg !5608
  %23 = bitcast i8* %call14 to %struct._csvstate*, !dbg !5609
  %dialects15 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %23, i32 0, i32 1, !dbg !5610
  store %struct._object* null, %struct._object** %dialects15, align 8, !dbg !5611, !tbaa !1250
  br label %do.body.16, !dbg !5612

do.body.16:                                       ; preds = %if.then.13
  %24 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !5613
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !5613
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !1071, metadata !1200), !dbg !5615
  %25 = load %struct._object*, %struct._object** %_py_tmp10, align 8, !dbg !5616, !tbaa !1221
  store %struct._object* %25, %struct._object** %_py_decref_tmp17, align 8, !dbg !5615, !tbaa !1221
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5617, !tbaa !1221
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !5619
  %27 = load i64, i64* %ob_refcnt18, align 8, !dbg !5620, !tbaa !1265
  %dec19 = add i64 %27, -1, !dbg !5620
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !5620, !tbaa !1265
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !5621
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !5622

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !5623

if.else.22:                                       ; preds = %do.body.16
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5625, !tbaa !1221
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !5627
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !5627, !tbaa !1368
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !5628
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !5628, !tbaa !1370
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5629, !tbaa !1221
  call void %30(%struct._object* %31), !dbg !5630
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %32 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !5631
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !5631
  br label %do.cond.26, !dbg !5633

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !5634

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end.28, !dbg !5636

if.end.28:                                        ; preds = %do.end.27, %do.body.9
  %33 = bitcast %struct._object** %_py_tmp10 to i8*, !dbg !5638
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !5638
  br label %do.end.30, !dbg !5639

do.end.30:                                        ; preds = %if.end.28
  ret i32 0, !dbg !5640
}

; Function Attrs: nounwind uwtable
define internal void @_csv_free(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata i8** %m.addr, metadata !1077, metadata !1200), !dbg !5641
  %0 = load i8*, i8** %m.addr, align 8, !dbg !5642, !tbaa !1221
  %1 = bitcast i8* %0 to %struct._object*, !dbg !5643
  %call = call i32 @_csv_clear(%struct._object* %1), !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_reader(%struct._object* %module, %struct._object* %args, %struct._object* %keyword_args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %keyword_args.addr = alloca %struct._object*, align 8
  %iterator = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %self = alloca %struct.ReaderObj*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !965, metadata !1200), !dbg !5646
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !966, metadata !1200), !dbg !5647
  store %struct._object* %keyword_args, %struct._object** %keyword_args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %keyword_args.addr, metadata !967, metadata !1200), !dbg !5648
  %0 = bitcast %struct._object** %iterator to i8*, !dbg !5649
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5649
  call void @llvm.dbg.declare(metadata %struct._object** %iterator, metadata !968, metadata !1200), !dbg !5650
  %1 = bitcast %struct._object** %dialect to i8*, !dbg !5649
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5649
  call void @llvm.dbg.declare(metadata %struct._object** %dialect, metadata !969, metadata !1200), !dbg !5651
  store %struct._object* null, %struct._object** %dialect, align 8, !dbg !5651, !tbaa !1221
  %2 = bitcast %struct.ReaderObj** %self to i8*, !dbg !5652
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !5652
  call void @llvm.dbg.declare(metadata %struct.ReaderObj** %self, metadata !970, metadata !1200), !dbg !5653
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Reader_Type), !dbg !5654
  %3 = bitcast %struct._object* %call to %struct.ReaderObj*, !dbg !5655
  store %struct.ReaderObj* %3, %struct.ReaderObj** %self, align 8, !dbg !5653, !tbaa !1221
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5656, !tbaa !1221
  %tobool = icmp ne %struct.ReaderObj* %4, null, !dbg !5656
  br i1 %tobool, label %if.end, label %if.then, !dbg !5658

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5659

if.end:                                           ; preds = %entry
  %5 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5660, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %5, i32 0, i32 2, !dbg !5661
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8, !dbg !5662, !tbaa !2774
  %6 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5663, !tbaa !1221
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %6, i32 0, i32 3, !dbg !5664
  store %struct._object* null, %struct._object** %fields, align 8, !dbg !5665, !tbaa !2856
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5666, !tbaa !1221
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %7, i32 0, i32 1, !dbg !5667
  store %struct._object* null, %struct._object** %input_iter, align 8, !dbg !5668, !tbaa !2817
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5669, !tbaa !1221
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 5, !dbg !5670
  store i32* null, i32** %field, align 8, !dbg !5671, !tbaa !2892
  %9 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5672, !tbaa !1221
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %9, i32 0, i32 6, !dbg !5673
  store i64 0, i64* %field_size, align 8, !dbg !5674, !tbaa !4079
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5675, !tbaa !1221
  %line_num = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 9, !dbg !5676
  store i64 0, i64* %line_num, align 8, !dbg !5677, !tbaa !3264
  %11 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5678, !tbaa !1221
  %call2 = call i32 @parse_reset(%struct.ReaderObj* %11), !dbg !5679
  %cmp = icmp slt i32 %call2, 0, !dbg !5680
  br i1 %cmp, label %if.then.3, label %if.end.7, !dbg !5681

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !5682

do.body:                                          ; preds = %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5683
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !5683
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !971, metadata !1200), !dbg !5685
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5686, !tbaa !1221
  %14 = bitcast %struct.ReaderObj* %13 to %struct._object*, !dbg !5687
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !5685, !tbaa !1221
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5688, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !5690
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !5691, !tbaa !1265
  %dec = add i64 %16, -1, !dbg !5691
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5691, !tbaa !1265
  %cmp4 = icmp ne i64 %dec, 0, !dbg !5692
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !5693

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !5694

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5696, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !5698
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5698, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !5699
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5699, !tbaa !1370
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5700, !tbaa !1221
  call void %19(%struct._object* %20), !dbg !5701
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5702
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !5702
  br label %do.cond, !dbg !5704

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !5705

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !5707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5707

if.end.7:                                         ; preds = %if.end
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5708, !tbaa !1221
  %call8 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %iterator, %struct._object** %dialect), !dbg !5709
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5709
  br i1 %tobool9, label %if.end.23, label %if.then.10, !dbg !5710

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11, !dbg !5711

do.body.11:                                       ; preds = %if.then.10
  %23 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !5712
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !5712
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !975, metadata !1200), !dbg !5714
  %24 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5715, !tbaa !1221
  %25 = bitcast %struct.ReaderObj* %24 to %struct._object*, !dbg !5716
  store %struct._object* %25, %struct._object** %_py_decref_tmp12, align 8, !dbg !5714, !tbaa !1221
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !5717, !tbaa !1221
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !5719
  %27 = load i64, i64* %ob_refcnt13, align 8, !dbg !5720, !tbaa !1265
  %dec14 = add i64 %27, -1, !dbg !5720
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !5720, !tbaa !1265
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !5721
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !5722

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !5723

if.else.17:                                       ; preds = %do.body.11
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !5725, !tbaa !1221
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !5727
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !5727, !tbaa !1368
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !5728
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !5728, !tbaa !1370
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !5729, !tbaa !1221
  call void %30(%struct._object* %31), !dbg !5730
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %32 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !5731
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !5731
  br label %do.cond.21, !dbg !5733

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !5734

do.end.22:                                        ; preds = %do.cond.21
  store %struct._object* null, %struct._object** %retval, !dbg !5736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5736

if.end.23:                                        ; preds = %if.end.7
  %33 = load %struct._object*, %struct._object** %iterator, align 8, !dbg !5737, !tbaa !1221
  %call24 = call %struct._object* @PyObject_GetIter(%struct._object* %33), !dbg !5738
  %34 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5739, !tbaa !1221
  %input_iter25 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %34, i32 0, i32 1, !dbg !5740
  store %struct._object* %call24, %struct._object** %input_iter25, align 8, !dbg !5741, !tbaa !2817
  %35 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5742, !tbaa !1221
  %input_iter26 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %35, i32 0, i32 1, !dbg !5743
  %36 = load %struct._object*, %struct._object** %input_iter26, align 8, !dbg !5743, !tbaa !2817
  %cmp27 = icmp eq %struct._object* %36, null, !dbg !5744
  br i1 %cmp27, label %if.then.28, label %if.end.41, !dbg !5745

if.then.28:                                       ; preds = %if.end.23
  %37 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5746, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0)), !dbg !5747
  br label %do.body.29, !dbg !5748

do.body.29:                                       ; preds = %if.then.28
  %38 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !5749
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !5749
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !979, metadata !1200), !dbg !5751
  %39 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5752, !tbaa !1221
  %40 = bitcast %struct.ReaderObj* %39 to %struct._object*, !dbg !5753
  store %struct._object* %40, %struct._object** %_py_decref_tmp30, align 8, !dbg !5751, !tbaa !1221
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !5754, !tbaa !1221
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !5756
  %42 = load i64, i64* %ob_refcnt31, align 8, !dbg !5757, !tbaa !1265
  %dec32 = add i64 %42, -1, !dbg !5757
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !5757, !tbaa !1265
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !5758
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !5759

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !5760

if.else.35:                                       ; preds = %do.body.29
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !5762, !tbaa !1221
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !5764
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !5764, !tbaa !1368
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !5765
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !5765, !tbaa !1370
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !5766, !tbaa !1221
  call void %45(%struct._object* %46), !dbg !5767
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %47 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !5768
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !5768
  br label %do.cond.39, !dbg !5770

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !5771

do.end.40:                                        ; preds = %do.cond.39
  store %struct._object* null, %struct._object** %retval, !dbg !5773
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5773

if.end.41:                                        ; preds = %if.end.23
  %48 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !5774, !tbaa !1221
  %49 = load %struct._object*, %struct._object** %keyword_args.addr, align 8, !dbg !5775, !tbaa !1221
  %call42 = call %struct._object* @_call_dialect(%struct._object* %48, %struct._object* %49), !dbg !5776
  %50 = bitcast %struct._object* %call42 to %struct.DialectObj*, !dbg !5777
  %51 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5778, !tbaa !1221
  %dialect43 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %51, i32 0, i32 2, !dbg !5779
  store %struct.DialectObj* %50, %struct.DialectObj** %dialect43, align 8, !dbg !5780, !tbaa !2774
  %52 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5781, !tbaa !1221
  %dialect44 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %52, i32 0, i32 2, !dbg !5782
  %53 = load %struct.DialectObj*, %struct.DialectObj** %dialect44, align 8, !dbg !5782, !tbaa !2774
  %cmp45 = icmp eq %struct.DialectObj* %53, null, !dbg !5783
  br i1 %cmp45, label %if.then.46, label %if.end.59, !dbg !5784

if.then.46:                                       ; preds = %if.end.41
  br label %do.body.47, !dbg !5785

do.body.47:                                       ; preds = %if.then.46
  %54 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !5786
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !5786
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !983, metadata !1200), !dbg !5788
  %55 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5789, !tbaa !1221
  %56 = bitcast %struct.ReaderObj* %55 to %struct._object*, !dbg !5790
  store %struct._object* %56, %struct._object** %_py_decref_tmp48, align 8, !dbg !5788, !tbaa !1221
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !5791, !tbaa !1221
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !5793
  %58 = load i64, i64* %ob_refcnt49, align 8, !dbg !5794, !tbaa !1265
  %dec50 = add i64 %58, -1, !dbg !5794
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !5794, !tbaa !1265
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !5795
  br i1 %cmp51, label %if.then.52, label %if.else.53, !dbg !5796

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56, !dbg !5797

if.else.53:                                       ; preds = %do.body.47
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !5799, !tbaa !1221
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !5801
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !5801, !tbaa !1368
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !5802
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !5802, !tbaa !1370
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !5803, !tbaa !1221
  call void %61(%struct._object* %62), !dbg !5804
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %63 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !5805
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !5805
  br label %do.cond.57, !dbg !5807

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !5808

do.end.58:                                        ; preds = %do.cond.57
  store %struct._object* null, %struct._object** %retval, !dbg !5810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5810

if.end.59:                                        ; preds = %if.end.41
  %64 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5811, !tbaa !1221
  %65 = bitcast %struct.ReaderObj* %64 to i8*, !dbg !5811
  call void @PyObject_GC_Track(i8* %65), !dbg !5812
  %66 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8, !dbg !5813, !tbaa !1221
  %67 = bitcast %struct.ReaderObj* %66 to %struct._object*, !dbg !5814
  store %struct._object* %67, %struct._object** %retval, !dbg !5815
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5815

cleanup:                                          ; preds = %if.end.59, %do.end.58, %do.end.40, %do.end.22, %do.end, %if.then
  %68 = bitcast %struct.ReaderObj** %self to i8*, !dbg !5816
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !5816
  %69 = bitcast %struct._object** %dialect to i8*, !dbg !5816
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !5816
  %70 = bitcast %struct._object** %iterator to i8*, !dbg !5816
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !5816
  %71 = load %struct._object*, %struct._object** %retval, !dbg !5816
  ret %struct._object* %71, !dbg !5816
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_writer(%struct._object* %module, %struct._object* %args, %struct._object* %keyword_args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %keyword_args.addr = alloca %struct._object*, align 8
  %output_file = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %self = alloca %struct.WriterObj*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !997, metadata !1200), !dbg !5817
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !998, metadata !1200), !dbg !5818
  store %struct._object* %keyword_args, %struct._object** %keyword_args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %keyword_args.addr, metadata !999, metadata !1200), !dbg !5819
  %0 = bitcast %struct._object** %output_file to i8*, !dbg !5820
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5820
  call void @llvm.dbg.declare(metadata %struct._object** %output_file, metadata !1000, metadata !1200), !dbg !5821
  %1 = bitcast %struct._object** %dialect to i8*, !dbg !5820
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5820
  call void @llvm.dbg.declare(metadata %struct._object** %dialect, metadata !1001, metadata !1200), !dbg !5822
  store %struct._object* null, %struct._object** %dialect, align 8, !dbg !5822, !tbaa !1221
  %2 = bitcast %struct.WriterObj** %self to i8*, !dbg !5823
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !5823
  call void @llvm.dbg.declare(metadata %struct.WriterObj** %self, metadata !1002, metadata !1200), !dbg !5824
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Writer_Type), !dbg !5825
  %3 = bitcast %struct._object* %call to %struct.WriterObj*, !dbg !5826
  store %struct.WriterObj* %3, %struct.WriterObj** %self, align 8, !dbg !5824, !tbaa !1221
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5827, !tbaa !1221
  %tobool = icmp ne %struct.WriterObj* %4, null, !dbg !5827
  br i1 %tobool, label %if.end, label %if.then, !dbg !5829

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5830

if.end:                                           ; preds = %entry
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5831, !tbaa !1221
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 2, !dbg !5832
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8, !dbg !5833, !tbaa !4188
  %6 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5834, !tbaa !1221
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %6, i32 0, i32 1, !dbg !5835
  store %struct._object* null, %struct._object** %writeline, align 8, !dbg !5836, !tbaa !4231
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5837, !tbaa !1221
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %7, i32 0, i32 3, !dbg !5838
  store i32* null, i32** %rec, align 8, !dbg !5839, !tbaa !4267
  %8 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5840, !tbaa !1221
  %rec_size = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %8, i32 0, i32 4, !dbg !5841
  store i64 0, i64* %rec_size, align 8, !dbg !5842, !tbaa !5387
  %9 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5843, !tbaa !1221
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %9, i32 0, i32 5, !dbg !5844
  store i64 0, i64* %rec_len, align 8, !dbg !5845, !tbaa !4647
  %10 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5846, !tbaa !1221
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %10, i32 0, i32 6, !dbg !5847
  store i32 0, i32* %num_fields, align 4, !dbg !5848, !tbaa !4827
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5849, !tbaa !1221
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %output_file, %struct._object** %dialect), !dbg !5850
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5850
  br i1 %tobool3, label %if.end.7, label %if.then.4, !dbg !5851

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !5852

do.body:                                          ; preds = %if.then.4
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5853
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !5853
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1003, metadata !1200), !dbg !5855
  %13 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5856, !tbaa !1221
  %14 = bitcast %struct.WriterObj* %13 to %struct._object*, !dbg !5857
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !5855, !tbaa !1221
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5858, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !5860
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !5861, !tbaa !1265
  %dec = add i64 %16, -1, !dbg !5861
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5861, !tbaa !1265
  %cmp = icmp ne i64 %dec, 0, !dbg !5862
  br i1 %cmp, label %if.then.5, label %if.else, !dbg !5863

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !5864

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5866, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !5868
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5868, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !5869
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5869, !tbaa !1370
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5870, !tbaa !1221
  call void %19(%struct._object* %20), !dbg !5871
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5872
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !5872
  br label %do.cond, !dbg !5874

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !5875

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !5877
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5877

if.end.7:                                         ; preds = %if.end
  %22 = load %struct._object*, %struct._object** %output_file, align 8, !dbg !5878, !tbaa !1221
  %call8 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %22, %struct._Py_Identifier* @csv_writer.PyId_write), !dbg !5879
  %23 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5880, !tbaa !1221
  %writeline9 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %23, i32 0, i32 1, !dbg !5881
  store %struct._object* %call8, %struct._object** %writeline9, align 8, !dbg !5882, !tbaa !4231
  %24 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5883, !tbaa !1221
  %writeline10 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %24, i32 0, i32 1, !dbg !5884
  %25 = load %struct._object*, %struct._object** %writeline10, align 8, !dbg !5884, !tbaa !4231
  %cmp11 = icmp eq %struct._object* %25, null, !dbg !5885
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false, !dbg !5886

lor.lhs.false:                                    ; preds = %if.end.7
  %26 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5887, !tbaa !1221
  %writeline12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %26, i32 0, i32 1, !dbg !5889
  %27 = load %struct._object*, %struct._object** %writeline12, align 8, !dbg !5889, !tbaa !4231
  %call13 = call i32 @PyCallable_Check(%struct._object* %27), !dbg !5890
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5890
  br i1 %tobool14, label %if.end.28, label %if.then.15, !dbg !5891

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.7
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5892, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i32 0, i32 0)), !dbg !5893
  br label %do.body.16, !dbg !5894

do.body.16:                                       ; preds = %if.then.15
  %29 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !5895
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !5895
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp17, metadata !1007, metadata !1200), !dbg !5897
  %30 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5898, !tbaa !1221
  %31 = bitcast %struct.WriterObj* %30 to %struct._object*, !dbg !5899
  store %struct._object* %31, %struct._object** %_py_decref_tmp17, align 8, !dbg !5897, !tbaa !1221
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5900, !tbaa !1221
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !5902
  %33 = load i64, i64* %ob_refcnt18, align 8, !dbg !5903, !tbaa !1265
  %dec19 = add i64 %33, -1, !dbg !5903
  store i64 %dec19, i64* %ob_refcnt18, align 8, !dbg !5903, !tbaa !1265
  %cmp20 = icmp ne i64 %dec19, 0, !dbg !5904
  br i1 %cmp20, label %if.then.21, label %if.else.22, !dbg !5905

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25, !dbg !5906

if.else.22:                                       ; preds = %do.body.16
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5908, !tbaa !1221
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !5910
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !5910, !tbaa !1368
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !5911
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8, !dbg !5911, !tbaa !1370
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8, !dbg !5912, !tbaa !1221
  call void %36(%struct._object* %37), !dbg !5913
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  %38 = bitcast %struct._object** %_py_decref_tmp17 to i8*, !dbg !5914
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !5914
  br label %do.cond.26, !dbg !5916

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !5917

do.end.27:                                        ; preds = %do.cond.26
  store %struct._object* null, %struct._object** %retval, !dbg !5919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5919

if.end.28:                                        ; preds = %lor.lhs.false
  %39 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !5920, !tbaa !1221
  %40 = load %struct._object*, %struct._object** %keyword_args.addr, align 8, !dbg !5921, !tbaa !1221
  %call29 = call %struct._object* @_call_dialect(%struct._object* %39, %struct._object* %40), !dbg !5922
  %41 = bitcast %struct._object* %call29 to %struct.DialectObj*, !dbg !5923
  %42 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5924, !tbaa !1221
  %dialect30 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %42, i32 0, i32 2, !dbg !5925
  store %struct.DialectObj* %41, %struct.DialectObj** %dialect30, align 8, !dbg !5926, !tbaa !4188
  %43 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5927, !tbaa !1221
  %dialect31 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %43, i32 0, i32 2, !dbg !5928
  %44 = load %struct.DialectObj*, %struct.DialectObj** %dialect31, align 8, !dbg !5928, !tbaa !4188
  %cmp32 = icmp eq %struct.DialectObj* %44, null, !dbg !5929
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !5930

if.then.33:                                       ; preds = %if.end.28
  br label %do.body.34, !dbg !5931

do.body.34:                                       ; preds = %if.then.33
  %45 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !5932
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !5932
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !1011, metadata !1200), !dbg !5934
  %46 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5935, !tbaa !1221
  %47 = bitcast %struct.WriterObj* %46 to %struct._object*, !dbg !5936
  store %struct._object* %47, %struct._object** %_py_decref_tmp35, align 8, !dbg !5934, !tbaa !1221
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !5937, !tbaa !1221
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !5939
  %49 = load i64, i64* %ob_refcnt36, align 8, !dbg !5940, !tbaa !1265
  %dec37 = add i64 %49, -1, !dbg !5940
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !5940, !tbaa !1265
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !5941
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !5942

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !5943

if.else.40:                                       ; preds = %do.body.34
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !5945, !tbaa !1221
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !5947
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !5947, !tbaa !1368
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !5948
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !5948, !tbaa !1370
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !5949, !tbaa !1221
  call void %52(%struct._object* %53), !dbg !5950
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %54 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !5951
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !5951
  br label %do.cond.44, !dbg !5953

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !5954

do.end.45:                                        ; preds = %do.cond.44
  store %struct._object* null, %struct._object** %retval, !dbg !5956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5956

if.end.46:                                        ; preds = %if.end.28
  %55 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5957, !tbaa !1221
  %56 = bitcast %struct.WriterObj* %55 to i8*, !dbg !5957
  call void @PyObject_GC_Track(i8* %56), !dbg !5958
  %57 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8, !dbg !5959, !tbaa !1221
  %58 = bitcast %struct.WriterObj* %57 to %struct._object*, !dbg !5960
  store %struct._object* %58, %struct._object** %retval, !dbg !5961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5961

cleanup:                                          ; preds = %if.end.46, %do.end.45, %do.end.27, %do.end, %if.then
  %59 = bitcast %struct.WriterObj** %self to i8*, !dbg !5962
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !5962
  %60 = bitcast %struct._object** %dialect to i8*, !dbg !5962
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !5962
  %61 = bitcast %struct._object** %output_file to i8*, !dbg !5962
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !5962
  %62 = load %struct._object*, %struct._object** %retval, !dbg !5962
  ret %struct._object* %62, !dbg !5962
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_list_dialects(%struct._object* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !1017, metadata !1200), !dbg !5963
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1018, metadata !1200), !dbg !5964
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !5965
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !5966
  %0 = bitcast i8* %call1 to %struct._csvstate*, !dbg !5967
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 1, !dbg !5968
  %1 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !5968, !tbaa !1250
  %call2 = call %struct._object* @PyDict_Keys(%struct._object* %1), !dbg !5969
  ret %struct._object* %call2, !dbg !5970
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_register_dialect(%struct._object* %module, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %name_obj = alloca %struct._object*, align 8
  %dialect_obj = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !1021, metadata !1200), !dbg !5971
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1022, metadata !1200), !dbg !5972
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !1023, metadata !1200), !dbg !5973
  %0 = bitcast %struct._object** %name_obj to i8*, !dbg !5974
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5974
  call void @llvm.dbg.declare(metadata %struct._object** %name_obj, metadata !1024, metadata !1200), !dbg !5975
  %1 = bitcast %struct._object** %dialect_obj to i8*, !dbg !5974
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5974
  call void @llvm.dbg.declare(metadata %struct._object** %dialect_obj, metadata !1025, metadata !1200), !dbg !5976
  store %struct._object* null, %struct._object** %dialect_obj, align 8, !dbg !5976, !tbaa !1221
  %2 = bitcast %struct._object** %dialect to i8*, !dbg !5977
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !5977
  call void @llvm.dbg.declare(metadata %struct._object** %dialect, metadata !1026, metadata !1200), !dbg !5978
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5979, !tbaa !1221
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %name_obj, %struct._object** %dialect_obj), !dbg !5981
  %tobool = icmp ne i32 %call, 0, !dbg !5981
  br i1 %tobool, label %if.end, label %if.then, !dbg !5982

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5983
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5983

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %name_obj, align 8, !dbg !5984, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !5986
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5986, !tbaa !1368
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !5987
  %6 = load i64, i64* %tp_flags, align 8, !dbg !5987, !tbaa !1435
  %and = and i64 %6, 268435456, !dbg !5988
  %cmp = icmp ne i64 %and, 0, !dbg !5989
  br i1 %cmp, label %if.end.2, label %if.then.1, !dbg !5990

if.then.1:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5991, !tbaa !1221
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0)), !dbg !5993
  store %struct._object* null, %struct._object** %retval, !dbg !5994
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5994

if.end.2:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %name_obj, align 8, !dbg !5995, !tbaa !1221
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*, !dbg !5997
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3, !dbg !5998
  %10 = bitcast %struct.anon* %state to i32*, !dbg !5999
  %bf.load = load i32, i32* %10, align 4, !dbg !5999
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !5999
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5999
  %tobool3 = icmp ne i32 %bf.clear, 0, !dbg !6000
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !6000

cond.true:                                        ; preds = %if.end.2
  br label %cond.end, !dbg !6001

cond.false:                                       ; preds = %if.end.2
  %11 = load %struct._object*, %struct._object** %name_obj, align 8, !dbg !6003, !tbaa !1221
  %call4 = call i32 @_PyUnicode_Ready(%struct._object* %11), !dbg !6005
  br label %cond.end, !dbg !6000

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call4, %cond.false ], !dbg !6000
  %cmp5 = icmp eq i32 %cond, -1, !dbg !6006
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !6009

if.then.6:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !6010
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6010

if.end.7:                                         ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %dialect_obj, align 8, !dbg !6011, !tbaa !1221
  %13 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !6012, !tbaa !1221
  %call8 = call %struct._object* @_call_dialect(%struct._object* %12, %struct._object* %13), !dbg !6013
  store %struct._object* %call8, %struct._object** %dialect, align 8, !dbg !6014, !tbaa !1221
  %14 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !6015, !tbaa !1221
  %cmp9 = icmp eq %struct._object* %14, null, !dbg !6017
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !6018

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !6019
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6019

if.end.11:                                        ; preds = %if.end.7
  %call12 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6020
  %call13 = call i8* @PyModule_GetState(%struct._object* %call12), !dbg !6021
  %15 = bitcast i8* %call13 to %struct._csvstate*, !dbg !6022
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %15, i32 0, i32 1, !dbg !6023
  %16 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !6023, !tbaa !1250
  %17 = load %struct._object*, %struct._object** %name_obj, align 8, !dbg !6024, !tbaa !1221
  %18 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !6025, !tbaa !1221
  %call14 = call i32 @PyDict_SetItem(%struct._object* %16, %struct._object* %17, %struct._object* %18), !dbg !6026
  %cmp15 = icmp slt i32 %call14, 0, !dbg !6027
  br i1 %cmp15, label %if.then.16, label %if.end.21, !dbg !6028

if.then.16:                                       ; preds = %if.end.11
  br label %do.body, !dbg !6029

do.body:                                          ; preds = %if.then.16
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6030
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !6030
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1027, metadata !1200), !dbg !6032
  %20 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !6033, !tbaa !1221
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !6032, !tbaa !1221
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6034, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !6036
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !6037, !tbaa !1265
  %dec = add i64 %22, -1, !dbg !6037
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !6037, !tbaa !1265
  %cmp17 = icmp ne i64 %dec, 0, !dbg !6038
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !6039

if.then.18:                                       ; preds = %do.body
  br label %if.end.20, !dbg !6040

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6042, !tbaa !1221
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !6044
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !6044, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !6045
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !6045, !tbaa !1370
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6046, !tbaa !1221
  call void %25(%struct._object* %26), !dbg !6047
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6048
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !6048
  br label %do.cond, !dbg !6050

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !6051

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !6053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6053

if.end.21:                                        ; preds = %if.end.11
  br label %do.body.22, !dbg !6054

do.body.22:                                       ; preds = %if.end.21
  %28 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !6055
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !6055
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !1031, metadata !1200), !dbg !6057
  %29 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !6058, !tbaa !1221
  store %struct._object* %29, %struct._object** %_py_decref_tmp23, align 8, !dbg !6057, !tbaa !1221
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !6059, !tbaa !1221
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !6061
  %31 = load i64, i64* %ob_refcnt24, align 8, !dbg !6062, !tbaa !1265
  %dec25 = add i64 %31, -1, !dbg !6062
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !6062, !tbaa !1265
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !6063
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !6064

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !6065

if.else.28:                                       ; preds = %do.body.22
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !6067, !tbaa !1221
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !6069
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !6069, !tbaa !1368
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !6070
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !6070, !tbaa !1370
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !6071, !tbaa !1221
  call void %34(%struct._object* %35), !dbg !6072
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %36 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !6073
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !6073
  br label %do.cond.32, !dbg !6075

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !6076

do.end.33:                                        ; preds = %do.cond.32
  %37 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !6078, !tbaa !1265
  %inc = add i64 %37, 1, !dbg !6078
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !6078, !tbaa !1265
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !6079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6079

cleanup:                                          ; preds = %do.end.33, %do.end, %if.then.10, %if.then.6, %if.then.1, %if.then
  %38 = bitcast %struct._object** %dialect to i8*, !dbg !6080
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !6080
  %39 = bitcast %struct._object** %dialect_obj to i8*, !dbg !6080
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !6080
  %40 = bitcast %struct._object** %name_obj to i8*, !dbg !6080
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !6080
  %41 = load %struct._object*, %struct._object** %retval, !dbg !6080
  ret %struct._object* %41, !dbg !6080
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_unregister_dialect(%struct._object* %module, %struct._object* %name_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %name_obj.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !1035, metadata !1200), !dbg !6081
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %name_obj.addr, metadata !1036, metadata !1200), !dbg !6082
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6083
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !6085
  %0 = bitcast i8* %call1 to %struct._csvstate*, !dbg !6086
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 1, !dbg !6087
  %1 = load %struct._object*, %struct._object** %dialects, align 8, !dbg !6087, !tbaa !1250
  %2 = load %struct._object*, %struct._object** %name_obj.addr, align 8, !dbg !6088, !tbaa !1221
  %call2 = call i32 @PyDict_DelItem(%struct._object* %1, %struct._object* %2), !dbg !6089
  %cmp = icmp slt i32 %call2, 0, !dbg !6090
  br i1 %cmp, label %if.then, label %if.end, !dbg !6091

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6092
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3), !dbg !6093
  %3 = bitcast i8* %call4 to %struct._csvstate*, !dbg !6094
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %3, i32 0, i32 0, !dbg !6095
  %4 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !6095, !tbaa !1314
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)), !dbg !6096
  store %struct._object* %call5, %struct._object** %retval, !dbg !6097
  br label %return, !dbg !6097

if.end:                                           ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !6098, !tbaa !1265
  %inc = add i64 %5, 1, !dbg !6098
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !6098, !tbaa !1265
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !6099
  br label %return, !dbg !6099

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !6100
  ret %struct._object* %6, !dbg !6100
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_get_dialect(%struct._object* %module, %struct._object* %name_obj) #0 {
entry:
  %module.addr = alloca %struct._object*, align 8
  %name_obj.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !1039, metadata !1200), !dbg !6101
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %name_obj.addr, metadata !1040, metadata !1200), !dbg !6102
  %0 = load %struct._object*, %struct._object** %name_obj.addr, align 8, !dbg !6103, !tbaa !1221
  %call = call %struct._object* @get_dialect_from_registry(%struct._object* %0), !dbg !6104
  ret %struct._object* %call, !dbg !6105
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_field_size_limit(%struct._object* %module, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_limit = alloca %struct._object*, align 8
  %old_limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !1043, metadata !1200), !dbg !6106
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1044, metadata !1200), !dbg !6107
  %0 = bitcast %struct._object** %new_limit to i8*, !dbg !6108
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !6108
  call void @llvm.dbg.declare(metadata %struct._object** %new_limit, metadata !1045, metadata !1200), !dbg !6109
  store %struct._object* null, %struct._object** %new_limit, align 8, !dbg !6109, !tbaa !1221
  %1 = bitcast i64* %old_limit to i8*, !dbg !6110
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !6110
  call void @llvm.dbg.declare(metadata i64* %old_limit, metadata !1046, metadata !1200), !dbg !6111
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6112
  %call1 = call i8* @PyModule_GetState(%struct._object* %call), !dbg !6113
  %2 = bitcast i8* %call1 to %struct._csvstate*, !dbg !6114
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %2, i32 0, i32 2, !dbg !6115
  %3 = load i64, i64* %field_limit, align 8, !dbg !6115, !tbaa !1241
  store i64 %3, i64* %old_limit, align 8, !dbg !6111, !tbaa !2414
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !6116, !tbaa !1221
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i64 0, i64 1, %struct._object** %new_limit), !dbg !6118
  %tobool = icmp ne i32 %call2, 0, !dbg !6118
  br i1 %tobool, label %if.end, label %if.then, !dbg !6119

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !6120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6120

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %new_limit, align 8, !dbg !6121, !tbaa !1221
  %cmp = icmp ne %struct._object* %5, null, !dbg !6123
  br i1 %cmp, label %if.then.3, label %if.end.23, !dbg !6124

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %new_limit, align 8, !dbg !6125, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !6128
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !6128, !tbaa !1368
  %cmp4 = icmp eq %struct._typeobject* %7, @PyLong_Type, !dbg !6129
  br i1 %cmp4, label %if.end.7, label %if.then.5, !dbg !6130

if.then.5:                                        ; preds = %if.then.3
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !6131, !tbaa !1221
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0)), !dbg !6133
  store %struct._object* null, %struct._object** %retval, !dbg !6134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6134

if.end.7:                                         ; preds = %if.then.3
  %9 = load %struct._object*, %struct._object** %new_limit, align 8, !dbg !6135, !tbaa !1221
  %call8 = call i64 @PyLong_AsLong(%struct._object* %9), !dbg !6136
  %call9 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6137
  %call10 = call i8* @PyModule_GetState(%struct._object* %call9), !dbg !6138
  %10 = bitcast i8* %call10 to %struct._csvstate*, !dbg !6139
  %field_limit11 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %10, i32 0, i32 2, !dbg !6140
  store i64 %call8, i64* %field_limit11, align 8, !dbg !6141, !tbaa !1241
  %call12 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6142
  %call13 = call i8* @PyModule_GetState(%struct._object* %call12), !dbg !6144
  %11 = bitcast i8* %call13 to %struct._csvstate*, !dbg !6145
  %field_limit14 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %11, i32 0, i32 2, !dbg !6146
  %12 = load i64, i64* %field_limit14, align 8, !dbg !6146, !tbaa !1241
  %cmp15 = icmp eq i64 %12, -1, !dbg !6147
  br i1 %cmp15, label %land.lhs.true, label %if.end.22, !dbg !6148

land.lhs.true:                                    ; preds = %if.end.7
  %call16 = call %struct._object* @PyErr_Occurred(), !dbg !6149
  %tobool17 = icmp ne %struct._object* %call16, null, !dbg !6149
  br i1 %tobool17, label %if.then.18, label %if.end.22, !dbg !6151

if.then.18:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %old_limit, align 8, !dbg !6152, !tbaa !2414
  %call19 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule), !dbg !6154
  %call20 = call i8* @PyModule_GetState(%struct._object* %call19), !dbg !6155
  %14 = bitcast i8* %call20 to %struct._csvstate*, !dbg !6156
  %field_limit21 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %14, i32 0, i32 2, !dbg !6157
  store i64 %13, i64* %field_limit21, align 8, !dbg !6158, !tbaa !1241
  store %struct._object* null, %struct._object** %retval, !dbg !6159
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6159

if.end.22:                                        ; preds = %land.lhs.true, %if.end.7
  br label %if.end.23, !dbg !6160

if.end.23:                                        ; preds = %if.end.22, %if.end
  %15 = load i64, i64* %old_limit, align 8, !dbg !6161, !tbaa !2414
  %call24 = call %struct._object* @PyLong_FromLong(i64 %15), !dbg !6162
  store %struct._object* %call24, %struct._object** %retval, !dbg !6163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6163

cleanup:                                          ; preds = %if.end.23, %if.then.18, %if.then.5, %if.then
  %16 = bitcast i64* %old_limit to i8*, !dbg !6164
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !6164
  %17 = bitcast %struct._object** %new_limit to i8*, !dbg !6164
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !6164
  %18 = load %struct._object*, %struct._object** %retval, !dbg !6164
  ret %struct._object* %18, !dbg !6164
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @_call_dialect(%struct._object* %dialect_inst, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dialect_inst.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %ctor_args = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %dialect_inst, %struct._object** %dialect_inst.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %dialect_inst.addr, metadata !989, metadata !1200), !dbg !6165
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1221
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !990, metadata !1200), !dbg !6166
  %0 = bitcast %struct._object** %ctor_args to i8*, !dbg !6167
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !6167
  call void @llvm.dbg.declare(metadata %struct._object** %ctor_args, metadata !991, metadata !1200), !dbg !6168
  %1 = bitcast %struct._object** %dialect to i8*, !dbg !6169
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !6169
  call void @llvm.dbg.declare(metadata %struct._object** %dialect, metadata !992, metadata !1200), !dbg !6170
  %2 = load %struct._object*, %struct._object** %dialect_inst.addr, align 8, !dbg !6171, !tbaa !1221
  %tobool = icmp ne %struct._object* %2, null, !dbg !6171
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), !dbg !6171
  %3 = load %struct._object*, %struct._object** %dialect_inst.addr, align 8, !dbg !6172, !tbaa !1221
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* %cond, %struct._object* %3), !dbg !6173
  store %struct._object* %call, %struct._object** %ctor_args, align 8, !dbg !6174, !tbaa !1221
  %4 = load %struct._object*, %struct._object** %ctor_args, align 8, !dbg !6175, !tbaa !1221
  %cmp = icmp eq %struct._object* %4, null, !dbg !6177
  br i1 %cmp, label %if.then, label %if.end, !dbg !6178

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !6179
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6179

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %ctor_args, align 8, !dbg !6180, !tbaa !1221
  %6 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !6181, !tbaa !1221
  %call1 = call %struct._object* @PyObject_Call(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0), %struct._object* %5, %struct._object* %6), !dbg !6182
  store %struct._object* %call1, %struct._object** %dialect, align 8, !dbg !6183, !tbaa !1221
  br label %do.body, !dbg !6184

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6185
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !6185
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !993, metadata !1200), !dbg !6187
  %8 = load %struct._object*, %struct._object** %ctor_args, align 8, !dbg !6188, !tbaa !1221
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !6187, !tbaa !1221
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6189, !tbaa !1221
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !6191
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !6192, !tbaa !1265
  %dec = add i64 %10, -1, !dbg !6192
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !6192, !tbaa !1265
  %cmp2 = icmp ne i64 %dec, 0, !dbg !6193
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !6194

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !6195

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6197, !tbaa !1221
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !6199
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !6199, !tbaa !1368
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !6200
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !6200, !tbaa !1370
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6201, !tbaa !1221
  call void %13(%struct._object* %14), !dbg !6202
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6203
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !6203
  br label %do.cond, !dbg !6205

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !6206

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %dialect, align 8, !dbg !6208, !tbaa !1221
  store %struct._object* %16, %struct._object** %retval, !dbg !6209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6209

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %dialect to i8*, !dbg !6210
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !6210
  %18 = bitcast %struct._object** %ctor_args to i8*, !dbg !6210
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !6210
  %19 = load %struct._object*, %struct._object** %retval, !dbg !6210
  ret %struct._object* %19, !dbg !6210
}

declare void @PyObject_GC_Track(i8*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PyDict_Keys(%struct._object*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1195, !1196, !1197}
!llvm.ident = !{!1198}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !28, subprograms: !472, globals: !1078)
!1 = !DIFile(filename: "_csv.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !10, !17}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_csv.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "QUOTE_MINIMAL", value: 0)
!7 = !DIEnumerator(name: "QUOTE_ALL", value: 1)
!8 = !DIEnumerator(name: "QUOTE_NONNUMERIC", value: 2)
!9 = !DIEnumerator(name: "QUOTE_NONE", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !11, line: 451, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!14 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!15 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!16 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27}
!19 = !DIEnumerator(name: "START_RECORD", value: 0)
!20 = !DIEnumerator(name: "START_FIELD", value: 1)
!21 = !DIEnumerator(name: "ESCAPED_CHAR", value: 2)
!22 = !DIEnumerator(name: "IN_FIELD", value: 3)
!23 = !DIEnumerator(name: "IN_QUOTED_FIELD", value: 4)
!24 = !DIEnumerator(name: "ESCAPE_IN_QUOTED_FIELD", value: 5)
!25 = !DIEnumerator(name: "QUOTE_IN_QUOTED_FIELD", value: 6)
!26 = !DIEnumerator(name: "EAT_CRNL", value: 7)
!27 = !DIEnumerator(name: "AFTER_ESCAPED_CRNL", value: 8)
!28 = !{!29, !30, !35, !382, !389, !396, !414, !418, !426, !442, !444, !74, !124, !41, !441, !446, !461}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "_csvstate", file: !4, line: 21, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 17, size: 192, align: 64, elements: !33)
!33 = !{!34, !380, !381}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "error_obj", scope: !32, file: !4, line: 18, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !37, line: 109, baseType: !38)
!37 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !37, line: 105, size: 128, align: 64, elements: !39)
!39 = !{!40, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !38, file: !37, line: 107, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !42, line: 177, baseType: !43)
!42 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !44, line: 102, baseType: !45)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 181, baseType: !47)
!46 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!47 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !38, file: !37, line: 108, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !37, line: 334, size: 3200, align: 64, elements: !51)
!51 = !{!52, !58, !62, !63, !64, !69, !132, !137, !142, !143, !148, !200, !231, !243, !249, !250, !251, !253, !255, !286, !287, !288, !297, !298, !303, !304, !306, !308, !318, !328, !346, !347, !348, !350, !352, !353, !355, !360, !365, !370, !371, !372, !373, !374, !375, !376, !377, !379}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !50, file: !37, line: 335, baseType: !53, size: 192, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !37, line: 114, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 111, size: 192, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !54, file: !37, line: 112, baseType: !36, size: 128, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !54, file: !37, line: 113, baseType: !41, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !50, file: !37, line: 336, baseType: !59, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !50, file: !37, line: 337, baseType: !41, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !50, file: !37, line: 337, baseType: !41, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !50, file: !37, line: 341, baseType: !65, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !37, line: 308, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !35}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !50, file: !37, line: 342, baseType: !70, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !37, line: 314, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !35, !75, !74}
!74 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 48, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 246, size: 1728, align: 64, elements: !79)
!78 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!79 = !{!80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !101, !102, !103, !104, !106, !108, !110, !114, !117, !119, !120, !121, !122, !123, !127, !128}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !78, line: 247, baseType: !74, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !77, file: !78, line: 252, baseType: !82, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !77, file: !78, line: 253, baseType: !82, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !77, file: !78, line: 254, baseType: !82, size: 64, align: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !77, file: !78, line: 255, baseType: !82, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !77, file: !78, line: 256, baseType: !82, size: 64, align: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !77, file: !78, line: 257, baseType: !82, size: 64, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !77, file: !78, line: 258, baseType: !82, size: 64, align: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !77, file: !78, line: 259, baseType: !82, size: 64, align: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !77, file: !78, line: 261, baseType: !82, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !77, file: !78, line: 262, baseType: !82, size: 64, align: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !77, file: !78, line: 263, baseType: !82, size: 64, align: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !77, file: !78, line: 265, baseType: !94, size: 64, align: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !78, line: 161, size: 192, align: 64, elements: !96)
!96 = !{!97, !98, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !95, file: !78, line: 162, baseType: !94, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !95, file: !78, line: 163, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !95, file: !78, line: 167, baseType: !74, size: 32, align: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !77, file: !78, line: 267, baseType: !99, size: 64, align: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !77, file: !78, line: 269, baseType: !74, size: 32, align: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !77, file: !78, line: 273, baseType: !74, size: 32, align: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !77, file: !78, line: 275, baseType: !105, size: 64, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 140, baseType: !47)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !77, file: !78, line: 279, baseType: !107, size: 16, align: 16, offset: 1024)
!107 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !77, file: !78, line: 280, baseType: !109, size: 8, align: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !77, file: !78, line: 281, baseType: !111, size: 8, align: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !77, file: !78, line: 285, baseType: !115, size: 64, align: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !78, line: 155, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !78, line: 294, baseType: !118, size: 64, align: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 141, baseType: !47)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !77, file: !78, line: 303, baseType: !29, size: 64, align: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !77, file: !78, line: 304, baseType: !29, size: 64, align: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !77, file: !78, line: 305, baseType: !29, size: 64, align: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !77, file: !78, line: 306, baseType: !29, size: 64, align: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !77, file: !78, line: 307, baseType: !124, size: 64, align: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 62, baseType: !126)
!125 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !77, file: !78, line: 309, baseType: !74, size: 32, align: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !77, file: !78, line: 311, baseType: !129, size: 160, align: 8, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !50, file: !37, line: 343, baseType: !133, size: 64, align: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !37, line: 316, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!35, !35, !82}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !50, file: !37, line: 344, baseType: !138, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !37, line: 318, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!74, !35, !82, !35}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !50, file: !37, line: 345, baseType: !29, size: 64, align: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !50, file: !37, line: 346, baseType: !144, size: 64, align: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !37, line: 320, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!35, !35}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !50, file: !37, line: 350, baseType: !149, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !37, line: 278, baseType: !151)
!151 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 236, size: 2176, align: 64, elements: !152)
!152 = !{!153, !158, !159, !160, !161, !162, !167, !169, !170, !171, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !151, file: !37, line: 241, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !37, line: 166, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!35, !35, !35}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !151, file: !37, line: 242, baseType: !154, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !151, file: !37, line: 243, baseType: !154, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !151, file: !37, line: 244, baseType: !154, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !151, file: !37, line: 245, baseType: !154, size: 64, align: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !151, file: !37, line: 246, baseType: !163, size: 64, align: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !37, line: 167, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!35, !35, !35, !35}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !151, file: !37, line: 247, baseType: !168, size: 64, align: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !37, line: 165, baseType: !145)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !151, file: !37, line: 248, baseType: !168, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !151, file: !37, line: 249, baseType: !168, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !151, file: !37, line: 250, baseType: !172, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !37, line: 168, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!74, !35}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !151, file: !37, line: 251, baseType: !168, size: 64, align: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !151, file: !37, line: 252, baseType: !154, size: 64, align: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !151, file: !37, line: 253, baseType: !154, size: 64, align: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !151, file: !37, line: 254, baseType: !154, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !151, file: !37, line: 255, baseType: !154, size: 64, align: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !151, file: !37, line: 256, baseType: !154, size: 64, align: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !151, file: !37, line: 257, baseType: !168, size: 64, align: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !151, file: !37, line: 258, baseType: !29, size: 64, align: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !151, file: !37, line: 259, baseType: !168, size: 64, align: 64, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !151, file: !37, line: 261, baseType: !154, size: 64, align: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !151, file: !37, line: 262, baseType: !154, size: 64, align: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !151, file: !37, line: 263, baseType: !154, size: 64, align: 64, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !151, file: !37, line: 264, baseType: !154, size: 64, align: 64, offset: 1408)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !151, file: !37, line: 265, baseType: !163, size: 64, align: 64, offset: 1472)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !151, file: !37, line: 266, baseType: !154, size: 64, align: 64, offset: 1536)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !151, file: !37, line: 267, baseType: !154, size: 64, align: 64, offset: 1600)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !151, file: !37, line: 268, baseType: !154, size: 64, align: 64, offset: 1664)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !151, file: !37, line: 269, baseType: !154, size: 64, align: 64, offset: 1728)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !151, file: !37, line: 270, baseType: !154, size: 64, align: 64, offset: 1792)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !151, file: !37, line: 272, baseType: !154, size: 64, align: 64, offset: 1856)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !151, file: !37, line: 273, baseType: !154, size: 64, align: 64, offset: 1920)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !151, file: !37, line: 274, baseType: !154, size: 64, align: 64, offset: 1984)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !151, file: !37, line: 275, baseType: !154, size: 64, align: 64, offset: 2048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !151, file: !37, line: 277, baseType: !168, size: 64, align: 64, offset: 2112)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !50, file: !37, line: 351, baseType: !201, size: 64, align: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !37, line: 292, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 280, size: 640, align: 64, elements: !204)
!204 = !{!205, !210, !211, !216, !217, !218, !223, !224, !229, !230}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !203, file: !37, line: 281, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !37, line: 169, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!41, !35}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !203, file: !37, line: 282, baseType: !154, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !203, file: !37, line: 283, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !37, line: 170, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!35, !35, !41}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !203, file: !37, line: 284, baseType: !212, size: 64, align: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !203, file: !37, line: 285, baseType: !29, size: 64, align: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !203, file: !37, line: 286, baseType: !219, size: 64, align: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !37, line: 172, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!74, !35, !41, !35}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !203, file: !37, line: 287, baseType: !29, size: 64, align: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !203, file: !37, line: 288, baseType: !225, size: 64, align: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !37, line: 231, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!74, !35, !35}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !203, file: !37, line: 290, baseType: !154, size: 64, align: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !203, file: !37, line: 291, baseType: !212, size: 64, align: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !50, file: !37, line: 352, baseType: !232, size: 64, align: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !37, line: 298, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 294, size: 192, align: 64, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !234, file: !37, line: 295, baseType: !206, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !234, file: !37, line: 296, baseType: !154, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !234, file: !37, line: 297, baseType: !239, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !37, line: 174, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!74, !35, !35, !35}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !50, file: !37, line: 356, baseType: !244, size: 64, align: 64, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !37, line: 321, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !35}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !42, line: 186, baseType: !41)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !50, file: !37, line: 357, baseType: !163, size: 64, align: 64, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !50, file: !37, line: 358, baseType: !144, size: 64, align: 64, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !50, file: !37, line: 359, baseType: !252, size: 64, align: 64, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !37, line: 317, baseType: !155)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !50, file: !37, line: 360, baseType: !254, size: 64, align: 64, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !37, line: 319, baseType: !240)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !50, file: !37, line: 363, baseType: !256, size: 64, align: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !37, line: 304, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 301, size: 128, align: 64, elements: !259)
!259 = !{!260, !281}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !258, file: !37, line: 302, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !37, line: 193, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!74, !35, !265, !74}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !37, line: 191, baseType: !267)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !37, line: 178, size: 640, align: 64, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !278, !279, !280}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !267, file: !37, line: 179, baseType: !29, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !267, file: !37, line: 180, baseType: !35, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !267, file: !37, line: 181, baseType: !41, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !267, file: !37, line: 182, baseType: !41, size: 64, align: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !267, file: !37, line: 184, baseType: !74, size: 32, align: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !267, file: !37, line: 185, baseType: !74, size: 32, align: 32, offset: 288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !267, file: !37, line: 186, baseType: !82, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !267, file: !37, line: 187, baseType: !277, size: 64, align: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !267, file: !37, line: 188, baseType: !277, size: 64, align: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !267, file: !37, line: 189, baseType: !277, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !267, file: !37, line: 190, baseType: !29, size: 64, align: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !258, file: !37, line: 303, baseType: !282, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !37, line: 194, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !35, !265}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !50, file: !37, line: 366, baseType: !126, size: 64, align: 64, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !50, file: !37, line: 368, baseType: !59, size: 64, align: 64, offset: 1408)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !50, file: !37, line: 372, baseType: !289, size: 64, align: 64, offset: 1472)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !37, line: 233, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!74, !35, !293, !29}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !37, line: 232, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!74, !35, !29}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !50, file: !37, line: 375, baseType: !172, size: 64, align: 64, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !50, file: !37, line: 379, baseType: !299, size: 64, align: 64, offset: 1600)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !37, line: 322, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!35, !35, !35, !74}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !50, file: !37, line: 382, baseType: !41, size: 64, align: 64, offset: 1664)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !50, file: !37, line: 385, baseType: !305, size: 64, align: 64, offset: 1728)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !37, line: 323, baseType: !145)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !50, file: !37, line: 386, baseType: !307, size: 64, align: 64, offset: 1792)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !37, line: 324, baseType: !145)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !50, file: !37, line: 389, baseType: !309, size: 64, align: 64, offset: 1856)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !311, line: 40, size: 256, align: 64, elements: !312)
!311 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!312 = !{!313, !314, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !310, file: !311, line: 41, baseType: !59, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !310, file: !311, line: 42, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !311, line: 18, baseType: !155)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !310, file: !311, line: 43, baseType: !74, size: 32, align: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !310, file: !311, line: 45, baseType: !59, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !50, file: !37, line: 390, baseType: !319, size: 64, align: 64, offset: 1920)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !321, line: 18, size: 320, align: 64, elements: !322)
!321 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!322 = !{!323, !324, !325, !326, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !321, line: 19, baseType: !82, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !321, line: 20, baseType: !74, size: 32, align: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !320, file: !321, line: 21, baseType: !41, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 22, baseType: !74, size: 32, align: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !320, file: !321, line: 23, baseType: !82, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !50, file: !37, line: 391, baseType: !329, size: 64, align: 64, offset: 1984)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !331, line: 11, size: 320, align: 64, elements: !332)
!331 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!332 = !{!333, !334, !339, !344, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !331, line: 12, baseType: !82, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !330, file: !331, line: 13, baseType: !335, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !331, line: 8, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!35, !35, !29}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !330, file: !331, line: 14, baseType: !340, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !331, line: 9, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!74, !35, !35, !29}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !330, file: !331, line: 15, baseType: !82, size: 64, align: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !330, file: !331, line: 16, baseType: !29, size: 64, align: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !50, file: !37, line: 392, baseType: !49, size: 64, align: 64, offset: 2048)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !50, file: !37, line: 393, baseType: !35, size: 64, align: 64, offset: 2112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !50, file: !37, line: 394, baseType: !349, size: 64, align: 64, offset: 2176)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !37, line: 325, baseType: !164)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !50, file: !37, line: 395, baseType: !351, size: 64, align: 64, offset: 2240)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !37, line: 326, baseType: !240)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !50, file: !37, line: 396, baseType: !41, size: 64, align: 64, offset: 2304)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !50, file: !37, line: 397, baseType: !354, size: 64, align: 64, offset: 2368)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !37, line: 327, baseType: !240)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !50, file: !37, line: 398, baseType: !356, size: 64, align: 64, offset: 2432)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !37, line: 329, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!35, !49, !41}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !50, file: !37, line: 399, baseType: !361, size: 64, align: 64, offset: 2496)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !37, line: 328, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!35, !49, !35, !35}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !50, file: !37, line: 400, baseType: !366, size: 64, align: 64, offset: 2560)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !37, line: 307, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !29}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !50, file: !37, line: 401, baseType: !172, size: 64, align: 64, offset: 2624)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !50, file: !37, line: 402, baseType: !35, size: 64, align: 64, offset: 2688)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !50, file: !37, line: 403, baseType: !35, size: 64, align: 64, offset: 2752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !50, file: !37, line: 404, baseType: !35, size: 64, align: 64, offset: 2816)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !50, file: !37, line: 405, baseType: !35, size: 64, align: 64, offset: 2880)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !50, file: !37, line: 406, baseType: !35, size: 64, align: 64, offset: 2944)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !50, file: !37, line: 407, baseType: !65, size: 64, align: 64, offset: 3008)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !50, file: !37, line: 410, baseType: !378, size: 32, align: 32, offset: 3072)
!378 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !50, file: !37, line: 412, baseType: !65, size: 64, align: 64, offset: 3136)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dialects", scope: !32, file: !4, line: 19, baseType: !35, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "field_limit", scope: !32, file: !4, line: 20, baseType: !47, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "DialectObj", file: !4, line: 86, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 74, size: 448, align: 64, elements: !385)
!385 = !{!386, !387, !388, !390, !391, !392, !393, !394, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !384, file: !4, line: 75, baseType: !36, size: 128, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "doublequote", scope: !384, file: !4, line: 77, baseType: !74, size: 32, align: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "delimiter", scope: !384, file: !4, line: 78, baseType: !389, size: 32, align: 32, offset: 160)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !11, line: 121, baseType: !378)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "quotechar", scope: !384, file: !4, line: 79, baseType: !389, size: 32, align: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "escapechar", scope: !384, file: !4, line: 80, baseType: !389, size: 32, align: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "skipinitialspace", scope: !384, file: !4, line: 81, baseType: !74, size: 32, align: 32, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lineterminator", scope: !384, file: !4, line: 82, baseType: !35, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "quoting", scope: !384, file: !4, line: 83, baseType: !74, size: 32, align: 32, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "strict", scope: !384, file: !4, line: 85, baseType: !74, size: 32, align: 32, offset: 416)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !11, line: 351, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 217, size: 384, align: 64, elements: !399)
!399 = !{!400, !401, !402, !403, !411}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !398, file: !11, line: 291, baseType: !36, size: 128, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !398, file: !11, line: 292, baseType: !41, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !398, file: !11, line: 293, baseType: !248, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !11, line: 349, baseType: !404, size: 32, align: 32, offset: 256)
!404 = !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !11, line: 294, size: 32, align: 32, elements: !405)
!405 = !{!406, !407, !408, !409, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !404, file: !11, line: 303, baseType: !378, size: 2, align: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !404, file: !11, line: 331, baseType: !378, size: 3, align: 32, offset: 2)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !404, file: !11, line: 336, baseType: !378, size: 1, align: 32, offset: 5)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !404, file: !11, line: 340, baseType: !378, size: 1, align: 32, offset: 6)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !404, file: !11, line: 345, baseType: !378, size: 1, align: 32, offset: 7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !398, file: !11, line: 350, baseType: !412, size: 64, align: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !125, line: 90, baseType: !74)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !11, line: 134, baseType: !417)
!417 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !11, line: 363, baseType: !420)
!420 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 356, size: 576, align: 64, elements: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !420, file: !11, line: 357, baseType: !397, size: 384, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !420, file: !11, line: 358, baseType: !41, size: 64, align: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !420, file: !11, line: 360, baseType: !82, size: 64, align: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !420, file: !11, line: 361, baseType: !41, size: 64, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !11, line: 376, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 368, size: 640, align: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !428, file: !11, line: 369, baseType: !419, size: 576, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !428, file: !11, line: 375, baseType: !432, size: 64, align: 64, offset: 576)
!432 = !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !11, line: 370, size: 64, align: 64, elements: !433)
!433 = !{!434, !435, !437, !440}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !432, file: !11, line: 371, baseType: !29, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !432, file: !11, line: 372, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !432, file: !11, line: 373, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !11, line: 129, baseType: !107)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !432, file: !11, line: 374, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReaderObj", file: !4, line: 104, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 90, size: 704, align: 64, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !456, !457, !458, !459, !460}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !448, file: !4, line: 91, baseType: !36, size: 128, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "input_iter", scope: !448, file: !4, line: 93, baseType: !35, size: 64, align: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dialect", scope: !448, file: !4, line: 95, baseType: !382, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !448, file: !4, line: 97, baseType: !35, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !448, file: !4, line: 98, baseType: !455, size: 32, align: 32, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ParserState", file: !4, line: 55, baseType: !17)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !448, file: !4, line: 99, baseType: !441, size: 64, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "field_size", scope: !448, file: !4, line: 100, baseType: !41, size: 64, align: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "field_len", scope: !448, file: !4, line: 101, baseType: !41, size: 64, align: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "numeric_field", scope: !448, file: !4, line: 102, baseType: !74, size: 32, align: 32, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "line_num", scope: !448, file: !4, line: 103, baseType: !126, size: 64, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "WriterObj", file: !4, line: 121, baseType: !463)
!463 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 110, size: 512, align: 64, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !463, file: !4, line: 111, baseType: !36, size: 128, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "writeline", scope: !463, file: !4, line: 113, baseType: !35, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dialect", scope: !463, file: !4, line: 115, baseType: !382, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rec", scope: !463, file: !4, line: 117, baseType: !441, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rec_size", scope: !463, file: !4, line: 118, baseType: !41, size: 64, align: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rec_len", scope: !463, file: !4, line: 119, baseType: !41, size: 64, align: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "num_fields", scope: !463, file: !4, line: 120, baseType: !74, size: 32, align: 32, offset: 448)
!472 = !{!473, !486, !496, !501, !506, !509, !512, !517, !520, !523, !616, !620, !633, !645, !664, !673, !679, !699, !718, !741, !773, !781, !796, !803, !807, !813, !828, !843, !860, !893, !896, !908, !927, !938, !945, !963, !987, !995, !1015, !1019, !1033, !1037, !1041, !1047, !1060, !1075}
!473 = !DISubprogram(name: "PyInit__csv", scope: !4, file: !4, line: 1636, type: !474, isLocal: false, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__csv, variables: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{!35}
!476 = !{!477, !478}
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !473, file: !4, line: 1638, type: !35)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "style", scope: !473, file: !4, line: 1639, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleDesc", file: !4, line: 64, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 61, size: 128, align: 64, elements: !482)
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !481, file: !4, line: 62, baseType: !484, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuoteStyle", file: !4, line: 59, baseType: !3)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !4, line: 63, baseType: !82, size: 64, align: 64, offset: 64)
!486 = !DISubprogram(name: "Dialect_dealloc", scope: !4, file: !4, line: 319, type: !487, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.DialectObj*)* @Dialect_dealloc, variables: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !382}
!489 = !{!490, !491, !493}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !486, file: !4, line: 319, type: !382)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !492, file: !4, line: 321, type: !35)
!492 = distinct !DILexicalBlock(scope: !486, file: !4, line: 321, column: 8)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !4, line: 321, type: !35)
!494 = distinct !DILexicalBlock(scope: !495, file: !4, line: 321, column: 112)
!495 = distinct !DILexicalBlock(scope: !492, file: !4, line: 321, column: 78)
!496 = !DISubprogram(name: "Dialect_get_delimiter", scope: !4, file: !4, line: 169, type: !497, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.DialectObj*)* @Dialect_get_delimiter, variables: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!35, !382}
!499 = !{!500}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !4, line: 169, type: !382)
!501 = !DISubprogram(name: "get_nullchar_as_None", scope: !4, file: !4, line: 152, type: !502, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @get_nullchar_as_None, variables: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!35, !389}
!504 = !{!505}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !501, file: !4, line: 152, type: !389)
!506 = !DISubprogram(name: "Dialect_get_escapechar", scope: !4, file: !4, line: 175, type: !497, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.DialectObj*)* @Dialect_get_escapechar, variables: !507)
!507 = !{!508}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !506, file: !4, line: 175, type: !382)
!509 = !DISubprogram(name: "Dialect_get_lineterminator", scope: !4, file: !4, line: 163, type: !497, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.DialectObj*)* @Dialect_get_lineterminator, variables: !510)
!510 = !{!511}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !4, line: 163, type: !382)
!512 = !DISubprogram(name: "get_string", scope: !4, file: !4, line: 145, type: !146, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @get_string, variables: !513)
!513 = !{!514, !515}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !512, file: !4, line: 145, type: !35)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !516, file: !4, line: 147, type: !35)
!516 = distinct !DILexicalBlock(scope: !512, file: !4, line: 147, column: 8)
!517 = !DISubprogram(name: "Dialect_get_quotechar", scope: !4, file: !4, line: 181, type: !497, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.DialectObj*)* @Dialect_get_quotechar, variables: !518)
!518 = !{!519}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !4, line: 181, type: !382)
!520 = !DISubprogram(name: "Dialect_get_quoting", scope: !4, file: !4, line: 187, type: !497, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.DialectObj*)* @Dialect_get_quoting, variables: !521)
!521 = !{!522}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !4, line: 187, type: !382)
!523 = !DISubprogram(name: "dialect_new", scope: !4, file: !4, line: 339, type: !524, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dialect_new, variables: !528)
!524 = !DISubroutineType(types: !525)
!525 = !{!35, !526, !35, !35}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !37, line: 422, baseType: !50)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !547, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !571, !573, !576, !578, !581, !583, !586, !588, !591, !593, !596, !598, !601, !603, !606, !608, !611, !613}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !523, file: !4, line: 339, type: !526)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !523, file: !4, line: 339, type: !35)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !523, file: !4, line: 339, type: !35)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !523, file: !4, line: 341, type: !382)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !523, file: !4, line: 342, type: !35)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !523, file: !4, line: 343, type: !35)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delimiter", scope: !523, file: !4, line: 344, type: !35)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doublequote", scope: !523, file: !4, line: 345, type: !35)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "escapechar", scope: !523, file: !4, line: 346, type: !35)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineterminator", scope: !523, file: !4, line: 347, type: !35)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quotechar", scope: !523, file: !4, line: 348, type: !35)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quoting", scope: !523, file: !4, line: 349, type: !35)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skipinitialspace", scope: !523, file: !4, line: 350, type: !35)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "strict", scope: !523, file: !4, line: 351, type: !35)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !544, file: !4, line: 389, type: !35)
!544 = distinct !DILexicalBlock(scope: !545, file: !4, line: 389, column: 12)
!545 = distinct !DILexicalBlock(scope: !546, file: !4, line: 388, column: 29)
!546 = distinct !DILexicalBlock(scope: !523, file: !4, line: 388, column: 9)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !4, line: 389, type: !35)
!548 = distinct !DILexicalBlock(scope: !549, file: !4, line: 389, column: 103)
!549 = distinct !DILexicalBlock(scope: !544, file: !4, line: 389, column: 69)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !551, file: !4, line: 394, type: !35)
!551 = distinct !DILexicalBlock(scope: !523, file: !4, line: 394, column: 8)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !553, file: !4, line: 395, type: !35)
!553 = distinct !DILexicalBlock(scope: !523, file: !4, line: 395, column: 8)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !555, file: !4, line: 396, type: !35)
!555 = distinct !DILexicalBlock(scope: !523, file: !4, line: 396, column: 8)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !557, file: !4, line: 397, type: !35)
!557 = distinct !DILexicalBlock(scope: !523, file: !4, line: 397, column: 8)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !559, file: !4, line: 398, type: !35)
!559 = distinct !DILexicalBlock(scope: !523, file: !4, line: 398, column: 8)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !561, file: !4, line: 399, type: !35)
!561 = distinct !DILexicalBlock(scope: !523, file: !4, line: 399, column: 8)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !563, file: !4, line: 400, type: !35)
!563 = distinct !DILexicalBlock(scope: !523, file: !4, line: 400, column: 8)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !565, file: !4, line: 401, type: !35)
!565 = distinct !DILexicalBlock(scope: !523, file: !4, line: 401, column: 8)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !567, file: !4, line: 453, type: !35)
!567 = distinct !DILexicalBlock(scope: !523, file: !4, line: 453, column: 8)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !569, file: !4, line: 453, type: !35)
!569 = distinct !DILexicalBlock(scope: !570, file: !4, line: 453, column: 96)
!570 = distinct !DILexicalBlock(scope: !567, file: !4, line: 453, column: 62)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !572, file: !4, line: 454, type: !35)
!572 = distinct !DILexicalBlock(scope: !523, file: !4, line: 454, column: 8)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !574, file: !4, line: 454, type: !35)
!574 = distinct !DILexicalBlock(scope: !575, file: !4, line: 454, column: 99)
!575 = distinct !DILexicalBlock(scope: !572, file: !4, line: 454, column: 65)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !577, file: !4, line: 455, type: !35)
!577 = distinct !DILexicalBlock(scope: !523, file: !4, line: 455, column: 8)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !4, line: 455, type: !35)
!579 = distinct !DILexicalBlock(scope: !580, file: !4, line: 455, column: 101)
!580 = distinct !DILexicalBlock(scope: !577, file: !4, line: 455, column: 67)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !582, file: !4, line: 456, type: !35)
!582 = distinct !DILexicalBlock(scope: !523, file: !4, line: 456, column: 8)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !4, line: 456, type: !35)
!584 = distinct !DILexicalBlock(scope: !585, file: !4, line: 456, column: 103)
!585 = distinct !DILexicalBlock(scope: !582, file: !4, line: 456, column: 69)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !587, file: !4, line: 457, type: !35)
!587 = distinct !DILexicalBlock(scope: !523, file: !4, line: 457, column: 8)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !4, line: 457, type: !35)
!589 = distinct !DILexicalBlock(scope: !590, file: !4, line: 457, column: 102)
!590 = distinct !DILexicalBlock(scope: !587, file: !4, line: 457, column: 68)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !592, file: !4, line: 458, type: !35)
!592 = distinct !DILexicalBlock(scope: !523, file: !4, line: 458, column: 8)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !4, line: 458, type: !35)
!594 = distinct !DILexicalBlock(scope: !595, file: !4, line: 458, column: 106)
!595 = distinct !DILexicalBlock(scope: !592, file: !4, line: 458, column: 72)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !597, file: !4, line: 459, type: !35)
!597 = distinct !DILexicalBlock(scope: !523, file: !4, line: 459, column: 8)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !4, line: 459, type: !35)
!599 = distinct !DILexicalBlock(scope: !600, file: !4, line: 459, column: 101)
!600 = distinct !DILexicalBlock(scope: !597, file: !4, line: 459, column: 67)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !602, file: !4, line: 460, type: !35)
!602 = distinct !DILexicalBlock(scope: !523, file: !4, line: 460, column: 8)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !604, file: !4, line: 460, type: !35)
!604 = distinct !DILexicalBlock(scope: !605, file: !4, line: 460, column: 99)
!605 = distinct !DILexicalBlock(scope: !602, file: !4, line: 460, column: 65)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !607, file: !4, line: 461, type: !35)
!607 = distinct !DILexicalBlock(scope: !523, file: !4, line: 461, column: 8)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !609, file: !4, line: 461, type: !35)
!609 = distinct !DILexicalBlock(scope: !610, file: !4, line: 461, column: 108)
!610 = distinct !DILexicalBlock(scope: !607, file: !4, line: 461, column: 74)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !612, file: !4, line: 462, type: !35)
!612 = distinct !DILexicalBlock(scope: !523, file: !4, line: 462, column: 8)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !614, file: !4, line: 462, type: !35)
!614 = distinct !DILexicalBlock(scope: !615, file: !4, line: 462, column: 98)
!615 = distinct !DILexicalBlock(scope: !612, file: !4, line: 462, column: 64)
!616 = !DISubprogram(name: "get_dialect_from_registry", scope: !4, file: !4, line: 130, type: !146, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @get_dialect_from_registry, variables: !617)
!617 = !{!618, !619}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name_obj", arg: 1, scope: !616, file: !4, line: 130, type: !35)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect_obj", scope: !616, file: !4, line: 132, type: !35)
!620 = !DISubprogram(name: "_set_char", scope: !4, file: !4, line: 234, type: !621, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, %struct._object*, i32)* @_set_char, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!74, !59, !441, !35, !389}
!623 = !{!624, !625, !626, !627, !628}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !620, file: !4, line: 234, type: !59)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "target", arg: 2, scope: !620, file: !4, line: 234, type: !441)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 3, scope: !620, file: !4, line: 234, type: !35)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dflt", arg: 4, scope: !620, file: !4, line: 234, type: !389)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !629, file: !4, line: 241, type: !41)
!629 = distinct !DILexicalBlock(scope: !630, file: !4, line: 240, column: 39)
!630 = distinct !DILexicalBlock(scope: !631, file: !4, line: 240, column: 13)
!631 = distinct !DILexicalBlock(scope: !632, file: !4, line: 238, column: 10)
!632 = distinct !DILexicalBlock(scope: !620, file: !4, line: 236, column: 9)
!633 = !DISubprogram(name: "_set_bool", scope: !4, file: !4, line: 193, type: !634, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, %struct._object*, i32)* @_set_bool, variables: !637)
!634 = !DISubroutineType(types: !635)
!635 = !{!74, !59, !636, !35, !74}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!637 = !{!638, !639, !640, !641, !642}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !633, file: !4, line: 193, type: !59)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "target", arg: 2, scope: !633, file: !4, line: 193, type: !636)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 3, scope: !633, file: !4, line: 193, type: !35)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dflt", arg: 4, scope: !633, file: !4, line: 193, type: !74)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !643, file: !4, line: 198, type: !74)
!643 = distinct !DILexicalBlock(scope: !644, file: !4, line: 197, column: 10)
!644 = distinct !DILexicalBlock(scope: !633, file: !4, line: 195, column: 9)
!645 = !DISubprogram(name: "_set_str", scope: !4, file: !4, line: 264, type: !646, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object**, %struct._object*, i8*)* @_set_str, variables: !649)
!646 = !DISubroutineType(types: !647)
!647 = !{!74, !59, !648, !35, !59}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!649 = !{!650, !651, !652, !653, !654, !661}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !645, file: !4, line: 264, type: !59)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "target", arg: 2, scope: !645, file: !4, line: 264, type: !648)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 3, scope: !645, file: !4, line: 264, type: !35)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dflt", arg: 4, scope: !645, file: !4, line: 264, type: !59)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !655, file: !4, line: 279, type: !35)
!655 = distinct !DILexicalBlock(scope: !656, file: !4, line: 279, column: 16)
!656 = distinct !DILexicalBlock(scope: !657, file: !4, line: 276, column: 14)
!657 = distinct !DILexicalBlock(scope: !658, file: !4, line: 271, column: 18)
!658 = distinct !DILexicalBlock(scope: !659, file: !4, line: 269, column: 13)
!659 = distinct !DILexicalBlock(scope: !660, file: !4, line: 268, column: 10)
!660 = distinct !DILexicalBlock(scope: !645, file: !4, line: 266, column: 9)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !662, file: !4, line: 279, type: !35)
!662 = distinct !DILexicalBlock(scope: !663, file: !4, line: 279, column: 107)
!663 = distinct !DILexicalBlock(scope: !655, file: !4, line: 279, column: 73)
!664 = !DISubprogram(name: "_set_int", scope: !4, file: !4, line: 207, type: !634, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, %struct._object*, i32)* @_set_int, variables: !665)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !664, file: !4, line: 207, type: !59)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "target", arg: 2, scope: !664, file: !4, line: 207, type: !636)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 3, scope: !664, file: !4, line: 207, type: !35)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dflt", arg: 4, scope: !664, file: !4, line: 207, type: !74)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !671, file: !4, line: 212, type: !47)
!671 = distinct !DILexicalBlock(scope: !672, file: !4, line: 211, column: 10)
!672 = distinct !DILexicalBlock(scope: !664, file: !4, line: 209, column: 9)
!673 = !DISubprogram(name: "dialect_check_quoting", scope: !4, file: !4, line: 288, type: !674, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @dialect_check_quoting, variables: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!74, !74}
!676 = !{!677, !678}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quoting", arg: 1, scope: !673, file: !4, line: 288, type: !74)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qs", scope: !673, file: !4, line: 290, type: !479)
!679 = !DISubprogram(name: "Reader_dealloc", scope: !4, file: !4, line: 868, type: !680, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ReaderObj*)* @Reader_dealloc, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !446}
!682 = !{!683, !684, !686, !689, !691, !694, !696}
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !679, file: !4, line: 868, type: !446)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !685, file: !4, line: 871, type: !35)
!685 = distinct !DILexicalBlock(scope: !679, file: !4, line: 871, column: 8)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !687, file: !4, line: 871, type: !35)
!687 = distinct !DILexicalBlock(scope: !688, file: !4, line: 871, column: 105)
!688 = distinct !DILexicalBlock(scope: !685, file: !4, line: 871, column: 71)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !690, file: !4, line: 872, type: !35)
!690 = distinct !DILexicalBlock(scope: !679, file: !4, line: 872, column: 8)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !4, line: 872, type: !35)
!692 = distinct !DILexicalBlock(scope: !693, file: !4, line: 872, column: 108)
!693 = distinct !DILexicalBlock(scope: !690, file: !4, line: 872, column: 74)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !695, file: !4, line: 873, type: !35)
!695 = distinct !DILexicalBlock(scope: !679, file: !4, line: 873, column: 8)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !697, file: !4, line: 873, type: !35)
!697 = distinct !DILexicalBlock(scope: !698, file: !4, line: 873, column: 104)
!698 = distinct !DILexicalBlock(scope: !695, file: !4, line: 873, column: 70)
!699 = !DISubprogram(name: "Reader_traverse", scope: !4, file: !4, line: 880, type: !700, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*, i32 (%struct._object*, i8*)*, i8*)* @Reader_traverse, variables: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{!74, !446, !293, !29}
!702 = !{!703, !704, !705, !706, !710, !714}
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !699, file: !4, line: 880, type: !446)
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !699, file: !4, line: 880, type: !293)
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !699, file: !4, line: 880, type: !29)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !707, file: !4, line: 882, type: !74)
!707 = distinct !DILexicalBlock(scope: !708, file: !4, line: 882, column: 29)
!708 = distinct !DILexicalBlock(scope: !709, file: !4, line: 882, column: 14)
!709 = distinct !DILexicalBlock(scope: !699, file: !4, line: 882, column: 8)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !711, file: !4, line: 883, type: !74)
!711 = distinct !DILexicalBlock(scope: !712, file: !4, line: 883, column: 32)
!712 = distinct !DILexicalBlock(scope: !713, file: !4, line: 883, column: 14)
!713 = distinct !DILexicalBlock(scope: !699, file: !4, line: 883, column: 8)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !715, file: !4, line: 884, type: !74)
!715 = distinct !DILexicalBlock(scope: !716, file: !4, line: 884, column: 28)
!716 = distinct !DILexicalBlock(scope: !717, file: !4, line: 884, column: 14)
!717 = distinct !DILexicalBlock(scope: !699, file: !4, line: 884, column: 8)
!718 = !DISubprogram(name: "Reader_clear", scope: !4, file: !4, line: 889, type: !719, isLocal: true, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*)* @Reader_clear, variables: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!74, !446}
!721 = !{!722, !723, !725, !729, !731, !735, !737}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !718, file: !4, line: 889, type: !446)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !724, file: !4, line: 891, type: !35)
!724 = distinct !DILexicalBlock(scope: !718, file: !4, line: 891, column: 8)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !726, file: !4, line: 891, type: !35)
!726 = distinct !DILexicalBlock(scope: !727, file: !4, line: 891, column: 121)
!727 = distinct !DILexicalBlock(scope: !728, file: !4, line: 891, column: 86)
!728 = distinct !DILexicalBlock(scope: !724, file: !4, line: 891, column: 63)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !730, file: !4, line: 892, type: !35)
!730 = distinct !DILexicalBlock(scope: !718, file: !4, line: 892, column: 8)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !732, file: !4, line: 892, type: !35)
!732 = distinct !DILexicalBlock(scope: !733, file: !4, line: 892, column: 127)
!733 = distinct !DILexicalBlock(scope: !734, file: !4, line: 892, column: 89)
!734 = distinct !DILexicalBlock(scope: !730, file: !4, line: 892, column: 66)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !736, file: !4, line: 893, type: !35)
!736 = distinct !DILexicalBlock(scope: !718, file: !4, line: 893, column: 8)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !4, line: 893, type: !35)
!738 = distinct !DILexicalBlock(scope: !739, file: !4, line: 893, column: 119)
!739 = distinct !DILexicalBlock(scope: !740, file: !4, line: 893, column: 85)
!740 = distinct !DILexicalBlock(scope: !736, file: !4, line: 893, column: 62)
!741 = !DISubprogram(name: "Reader_iternext", scope: !4, file: !4, line: 798, type: !742, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.ReaderObj*)* @Reader_iternext, variables: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{!35, !446}
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !758, !762, !767, !771}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !741, file: !4, line: 798, type: !446)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fields", scope: !741, file: !4, line: 800, type: !35)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !741, file: !4, line: 801, type: !389)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !741, file: !4, line: 802, type: !41)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linelen", scope: !741, file: !4, line: 802, type: !41)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !741, file: !4, line: 803, type: !378)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !741, file: !4, line: 804, type: !29)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineobj", scope: !741, file: !4, line: 805, type: !35)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !754, file: !4, line: 830, type: !35)
!754 = distinct !DILexicalBlock(scope: !755, file: !4, line: 830, column: 16)
!755 = distinct !DILexicalBlock(scope: !756, file: !4, line: 823, column: 86)
!756 = distinct !DILexicalBlock(scope: !757, file: !4, line: 823, column: 13)
!757 = distinct !DILexicalBlock(scope: !741, file: !4, line: 809, column: 8)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !759, file: !4, line: 834, type: !35)
!759 = distinct !DILexicalBlock(scope: !760, file: !4, line: 834, column: 16)
!760 = distinct !DILexicalBlock(scope: !761, file: !4, line: 833, column: 125)
!761 = distinct !DILexicalBlock(scope: !757, file: !4, line: 833, column: 13)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !763, file: !4, line: 845, type: !35)
!763 = distinct !DILexicalBlock(scope: !764, file: !4, line: 845, column: 20)
!764 = distinct !DILexicalBlock(scope: !765, file: !4, line: 844, column: 28)
!765 = distinct !DILexicalBlock(scope: !766, file: !4, line: 844, column: 17)
!766 = distinct !DILexicalBlock(scope: !757, file: !4, line: 842, column: 27)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !768, file: !4, line: 851, type: !35)
!768 = distinct !DILexicalBlock(scope: !769, file: !4, line: 851, column: 20)
!769 = distinct !DILexicalBlock(scope: !770, file: !4, line: 850, column: 50)
!770 = distinct !DILexicalBlock(scope: !766, file: !4, line: 850, column: 17)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !772, file: !4, line: 856, type: !35)
!772 = distinct !DILexicalBlock(scope: !757, file: !4, line: 856, column: 12)
!773 = !DISubprogram(name: "parse_reset", scope: !4, file: !4, line: 785, type: !719, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*)* @parse_reset, variables: !774)
!774 = !{!775, !776, !778}
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !773, file: !4, line: 785, type: !446)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !777, file: !4, line: 787, type: !35)
!777 = distinct !DILexicalBlock(scope: !773, file: !4, line: 787, column: 8)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !779, file: !4, line: 787, type: !35)
!779 = distinct !DILexicalBlock(scope: !780, file: !4, line: 787, column: 104)
!780 = distinct !DILexicalBlock(scope: !777, file: !4, line: 787, column: 70)
!781 = !DISubprogram(name: "parse_save_field", scope: !4, file: !4, line: 537, type: !719, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*)* @parse_save_field, variables: !782)
!782 = !{!783, !784, !785, !788, !790, !794}
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !781, file: !4, line: 537, type: !446)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !781, file: !4, line: 539, type: !35)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !786, file: !4, line: 547, type: !35)
!786 = distinct !DILexicalBlock(scope: !787, file: !4, line: 546, column: 30)
!787 = distinct !DILexicalBlock(scope: !781, file: !4, line: 546, column: 9)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !4, line: 551, type: !35)
!789 = distinct !DILexicalBlock(scope: !786, file: !4, line: 551, column: 12)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !791, file: !4, line: 557, type: !35)
!791 = distinct !DILexicalBlock(scope: !792, file: !4, line: 557, column: 12)
!792 = distinct !DILexicalBlock(scope: !793, file: !4, line: 556, column: 49)
!793 = distinct !DILexicalBlock(scope: !781, file: !4, line: 556, column: 9)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !795, file: !4, line: 560, type: !35)
!795 = distinct !DILexicalBlock(scope: !781, file: !4, line: 560, column: 8)
!796 = !DISubprogram(name: "parse_process_char", scope: !4, file: !4, line: 604, type: !797, isLocal: true, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*, i32)* @parse_process_char, variables: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!74, !446, !389}
!799 = !{!800, !801, !802}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !796, file: !4, line: 604, type: !446)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !796, file: !4, line: 604, type: !389)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !796, file: !4, line: 606, type: !382)
!803 = !DISubprogram(name: "parse_add_char", scope: !4, file: !4, line: 590, type: !797, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*, i32)* @parse_add_char, variables: !804)
!804 = !{!805, !806}
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !803, file: !4, line: 590, type: !446)
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !803, file: !4, line: 590, type: !389)
!807 = !DISubprogram(name: "parse_grow_buff", scope: !4, file: !4, line: 565, type: !719, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.ReaderObj*)* @parse_grow_buff, variables: !808)
!808 = !{!809, !810}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !807, file: !4, line: 565, type: !446)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !811, file: !4, line: 574, type: !441)
!811 = distinct !DILexicalBlock(scope: !812, file: !4, line: 573, column: 10)
!812 = distinct !DILexicalBlock(scope: !807, file: !4, line: 567, column: 9)
!813 = !DISubprogram(name: "Writer_dealloc", scope: !4, file: !4, line: 1311, type: !814, isLocal: true, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.WriterObj*)* @Writer_dealloc, variables: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !461}
!816 = !{!817, !818, !820, !823, !825}
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !813, file: !4, line: 1311, type: !461)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !819, file: !4, line: 1314, type: !35)
!819 = distinct !DILexicalBlock(scope: !813, file: !4, line: 1314, column: 8)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !821, file: !4, line: 1314, type: !35)
!821 = distinct !DILexicalBlock(scope: !822, file: !4, line: 1314, column: 105)
!822 = distinct !DILexicalBlock(scope: !819, file: !4, line: 1314, column: 71)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !824, file: !4, line: 1315, type: !35)
!824 = distinct !DILexicalBlock(scope: !813, file: !4, line: 1315, column: 8)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !826, file: !4, line: 1315, type: !35)
!826 = distinct !DILexicalBlock(scope: !827, file: !4, line: 1315, column: 107)
!827 = distinct !DILexicalBlock(scope: !824, file: !4, line: 1315, column: 73)
!828 = !DISubprogram(name: "Writer_traverse", scope: !4, file: !4, line: 1322, type: !829, isLocal: true, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.WriterObj*, i32 (%struct._object*, i8*)*, i8*)* @Writer_traverse, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!74, !461, !293, !29}
!831 = !{!832, !833, !834, !835, !839}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !828, file: !4, line: 1322, type: !461)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !828, file: !4, line: 1322, type: !293)
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !828, file: !4, line: 1322, type: !29)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !836, file: !4, line: 1324, type: !74)
!836 = distinct !DILexicalBlock(scope: !837, file: !4, line: 1324, column: 29)
!837 = distinct !DILexicalBlock(scope: !838, file: !4, line: 1324, column: 14)
!838 = distinct !DILexicalBlock(scope: !828, file: !4, line: 1324, column: 8)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !840, file: !4, line: 1325, type: !74)
!840 = distinct !DILexicalBlock(scope: !841, file: !4, line: 1325, column: 31)
!841 = distinct !DILexicalBlock(scope: !842, file: !4, line: 1325, column: 14)
!842 = distinct !DILexicalBlock(scope: !828, file: !4, line: 1325, column: 8)
!843 = !DISubprogram(name: "Writer_clear", scope: !4, file: !4, line: 1330, type: !844, isLocal: true, isDefinition: true, scopeLine: 1331, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.WriterObj*)* @Writer_clear, variables: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!74, !461}
!846 = !{!847, !848, !850, !854, !856}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !843, file: !4, line: 1330, type: !461)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !849, file: !4, line: 1332, type: !35)
!849 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1332, column: 8)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !851, file: !4, line: 1332, type: !35)
!851 = distinct !DILexicalBlock(scope: !852, file: !4, line: 1332, column: 121)
!852 = distinct !DILexicalBlock(scope: !853, file: !4, line: 1332, column: 86)
!853 = distinct !DILexicalBlock(scope: !849, file: !4, line: 1332, column: 63)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !855, file: !4, line: 1333, type: !35)
!855 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1333, column: 8)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !857, file: !4, line: 1333, type: !35)
!857 = distinct !DILexicalBlock(scope: !858, file: !4, line: 1333, column: 125)
!858 = distinct !DILexicalBlock(scope: !859, file: !4, line: 1333, column: 88)
!859 = distinct !DILexicalBlock(scope: !855, file: !4, line: 1333, column: 65)
!860 = !DISubprogram(name: "csv_writerow", scope: !4, file: !4, line: 1190, type: !861, isLocal: true, isDefinition: true, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.WriterObj*, %struct._object*)* @csv_writerow, variables: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!35, !461, !35}
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !875, !876, !877, !881, !885, !887, !889, !891}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !860, file: !4, line: 1190, type: !461)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 2, scope: !860, file: !4, line: 1190, type: !35)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !860, file: !4, line: 1192, type: !382)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !860, file: !4, line: 1193, type: !41)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !860, file: !4, line: 1193, type: !41)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !860, file: !4, line: 1194, type: !35)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !860, file: !4, line: 1194, type: !35)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !872, file: !4, line: 1207, type: !35)
!872 = distinct !DILexicalBlock(scope: !873, file: !4, line: 1206, column: 31)
!873 = distinct !DILexicalBlock(scope: !874, file: !4, line: 1206, column: 5)
!874 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1206, column: 5)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "append_ok", scope: !872, file: !4, line: 1208, type: !74)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quoted", scope: !872, file: !4, line: 1209, type: !74)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !878, file: !4, line: 1229, type: !35)
!878 = distinct !DILexicalBlock(scope: !879, file: !4, line: 1229, column: 16)
!879 = distinct !DILexicalBlock(scope: !880, file: !4, line: 1227, column: 83)
!880 = distinct !DILexicalBlock(scope: !872, file: !4, line: 1227, column: 13)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !882, file: !4, line: 1233, type: !35)
!882 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1233, column: 16)
!883 = distinct !DILexicalBlock(scope: !884, file: !4, line: 1231, column: 46)
!884 = distinct !DILexicalBlock(scope: !880, file: !4, line: 1231, column: 18)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !886, file: !4, line: 1236, type: !35)
!886 = distinct !DILexicalBlock(scope: !884, file: !4, line: 1235, column: 14)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !888, file: !4, line: 1239, type: !35)
!888 = distinct !DILexicalBlock(scope: !886, file: !4, line: 1239, column: 16)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !890, file: !4, line: 1243, type: !35)
!890 = distinct !DILexicalBlock(scope: !886, file: !4, line: 1243, column: 16)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !892, file: !4, line: 1259, type: !35)
!892 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1259, column: 8)
!893 = !DISubprogram(name: "join_reset", scope: !4, file: !4, line: 999, type: !814, isLocal: true, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.WriterObj*)* @join_reset, variables: !894)
!894 = !{!895}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !893, file: !4, line: 999, type: !461)
!896 = !DISubprogram(name: "join_append", scope: !4, file: !4, line: 1129, type: !897, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.WriterObj*, %struct._object*, i32*, i32)* @join_append, variables: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{!74, !461, !35, !636, !74}
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907}
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !896, file: !4, line: 1129, type: !461)
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "field", arg: 2, scope: !896, file: !4, line: 1129, type: !35)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quoted", arg: 3, scope: !896, file: !4, line: 1129, type: !636)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quote_empty", arg: 4, scope: !896, file: !4, line: 1129, type: !74)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field_kind", scope: !896, file: !4, line: 1131, type: !378)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field_data", scope: !896, file: !4, line: 1132, type: !29)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field_len", scope: !896, file: !4, line: 1133, type: !41)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rec_len", scope: !896, file: !4, line: 1134, type: !41)
!908 = !DISubprogram(name: "join_append_data", scope: !4, file: !4, line: 1011, type: !909, isLocal: true, isDefinition: true, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.WriterObj*, i32, i8*, i64, i32, i32*, i32)* @join_append_data, variables: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!41, !461, !378, !29, !41, !74, !636, !74}
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !926}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !908, file: !4, line: 1011, type: !461)
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "field_kind", arg: 2, scope: !908, file: !4, line: 1011, type: !378)
!914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "field_data", arg: 3, scope: !908, file: !4, line: 1011, type: !29)
!915 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "field_len", arg: 4, scope: !908, file: !4, line: 1012, type: !41)
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quote_empty", arg: 5, scope: !908, file: !4, line: 1012, type: !74)
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "quoted", arg: 6, scope: !908, file: !4, line: 1012, type: !636)
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "copy_phase", arg: 7, scope: !908, file: !4, line: 1013, type: !74)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !908, file: !4, line: 1015, type: !382)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !908, file: !4, line: 1016, type: !74)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rec_len", scope: !908, file: !4, line: 1017, type: !41)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !923, file: !4, line: 1039, type: !389)
!923 = distinct !DILexicalBlock(scope: !924, file: !4, line: 1038, column: 53)
!924 = distinct !DILexicalBlock(scope: !925, file: !4, line: 1038, column: 5)
!925 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1038, column: 5)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "want_escape", scope: !923, file: !4, line: 1040, type: !74)
!927 = !DISubprogram(name: "join_check_rec_size", scope: !4, file: !4, line: 1097, type: !928, isLocal: true, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.WriterObj*, i64)* @join_check_rec_size, variables: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!74, !461, !41}
!930 = !{!931, !932, !933}
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !927, file: !4, line: 1097, type: !461)
!932 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_len", arg: 2, scope: !927, file: !4, line: 1097, type: !41)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_rec", scope: !934, file: !4, line: 1113, type: !441)
!934 = distinct !DILexicalBlock(scope: !935, file: !4, line: 1112, column: 14)
!935 = distinct !DILexicalBlock(scope: !936, file: !4, line: 1106, column: 13)
!936 = distinct !DILexicalBlock(scope: !937, file: !4, line: 1105, column: 35)
!937 = distinct !DILexicalBlock(scope: !927, file: !4, line: 1105, column: 9)
!938 = !DISubprogram(name: "join_append_lineterminator", scope: !4, file: !4, line: 1160, type: !844, isLocal: true, isDefinition: true, scopeLine: 1161, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.WriterObj*)* @join_append_lineterminator, variables: !939)
!939 = !{!940, !941, !942, !943, !944}
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !938, file: !4, line: 1160, type: !461)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminator_len", scope: !938, file: !4, line: 1162, type: !41)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !938, file: !4, line: 1162, type: !41)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "term_kind", scope: !938, file: !4, line: 1163, type: !378)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "term_data", scope: !938, file: !4, line: 1164, type: !29)
!945 = !DISubprogram(name: "csv_writerows", scope: !4, file: !4, line: 1270, type: !861, isLocal: true, isDefinition: true, scopeLine: 1271, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.WriterObj*, %struct._object*)* @csv_writerows, variables: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !955, !959, !961}
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !945, file: !4, line: 1270, type: !461)
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seqseq", arg: 2, scope: !945, file: !4, line: 1270, type: !35)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row_iter", scope: !945, file: !4, line: 1272, type: !35)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row_obj", scope: !945, file: !4, line: 1272, type: !35)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !945, file: !4, line: 1272, type: !35)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !953, file: !4, line: 1282, type: !35)
!953 = distinct !DILexicalBlock(scope: !954, file: !4, line: 1282, column: 12)
!954 = distinct !DILexicalBlock(scope: !945, file: !4, line: 1280, column: 47)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !956, file: !4, line: 1284, type: !35)
!956 = distinct !DILexicalBlock(scope: !957, file: !4, line: 1284, column: 16)
!957 = distinct !DILexicalBlock(scope: !958, file: !4, line: 1283, column: 22)
!958 = distinct !DILexicalBlock(scope: !954, file: !4, line: 1283, column: 13)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !960, file: !4, line: 1288, type: !35)
!960 = distinct !DILexicalBlock(scope: !958, file: !4, line: 1288, column: 17)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !962, file: !4, line: 1290, type: !35)
!962 = distinct !DILexicalBlock(scope: !945, file: !4, line: 1290, column: 8)
!963 = !DISubprogram(name: "csv_reader", scope: !4, file: !4, line: 953, type: !165, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_reader, variables: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !975, !979, !983}
!965 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !963, file: !4, line: 953, type: !35)
!966 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !963, file: !4, line: 953, type: !35)
!967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keyword_args", arg: 3, scope: !963, file: !4, line: 953, type: !35)
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterator", scope: !963, file: !4, line: 955, type: !35)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !963, file: !4, line: 955, type: !35)
!970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !963, file: !4, line: 956, type: !446)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !972, file: !4, line: 969, type: !35)
!972 = distinct !DILexicalBlock(scope: !973, file: !4, line: 969, column: 12)
!973 = distinct !DILexicalBlock(scope: !974, file: !4, line: 968, column: 32)
!974 = distinct !DILexicalBlock(scope: !963, file: !4, line: 968, column: 9)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !976, file: !4, line: 974, type: !35)
!976 = distinct !DILexicalBlock(scope: !977, file: !4, line: 974, column: 12)
!977 = distinct !DILexicalBlock(scope: !978, file: !4, line: 973, column: 66)
!978 = distinct !DILexicalBlock(scope: !963, file: !4, line: 973, column: 9)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !980, file: !4, line: 981, type: !35)
!980 = distinct !DILexicalBlock(scope: !981, file: !4, line: 981, column: 12)
!981 = distinct !DILexicalBlock(scope: !982, file: !4, line: 978, column: 41)
!982 = distinct !DILexicalBlock(scope: !963, file: !4, line: 978, column: 9)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !984, file: !4, line: 986, type: !35)
!984 = distinct !DILexicalBlock(scope: !985, file: !4, line: 986, column: 12)
!985 = distinct !DILexicalBlock(scope: !986, file: !4, line: 985, column: 38)
!986 = distinct !DILexicalBlock(scope: !963, file: !4, line: 985, column: 9)
!987 = !DISubprogram(name: "_call_dialect", scope: !4, file: !4, line: 520, type: !156, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_call_dialect, variables: !988)
!988 = !{!989, !990, !991, !992, !993}
!989 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dialect_inst", arg: 1, scope: !987, file: !4, line: 520, type: !35)
!990 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 2, scope: !987, file: !4, line: 520, type: !35)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctor_args", scope: !987, file: !4, line: 522, type: !35)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !987, file: !4, line: 523, type: !35)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !994, file: !4, line: 529, type: !35)
!994 = distinct !DILexicalBlock(scope: !987, file: !4, line: 529, column: 8)
!995 = !DISubprogram(name: "csv_writer", scope: !4, file: !4, line: 1380, type: !165, isLocal: true, isDefinition: true, scopeLine: 1381, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_writer, variables: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1007, !1011}
!997 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !995, file: !4, line: 1380, type: !35)
!998 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !995, file: !4, line: 1380, type: !35)
!999 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "keyword_args", arg: 3, scope: !995, file: !4, line: 1380, type: !35)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output_file", scope: !995, file: !4, line: 1382, type: !35)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !995, file: !4, line: 1382, type: !35)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !995, file: !4, line: 1383, type: !461)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1004, file: !4, line: 1398, type: !35)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !4, line: 1398, column: 12)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !4, line: 1397, column: 69)
!1006 = distinct !DILexicalBlock(scope: !995, file: !4, line: 1397, column: 9)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1008, file: !4, line: 1405, type: !35)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !4, line: 1405, column: 12)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !4, line: 1402, column: 78)
!1010 = distinct !DILexicalBlock(scope: !995, file: !4, line: 1402, column: 9)
!1011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1012, file: !4, line: 1410, type: !35)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !4, line: 1410, column: 12)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !4, line: 1409, column: 38)
!1014 = distinct !DILexicalBlock(scope: !995, file: !4, line: 1409, column: 9)
!1015 = !DISubprogram(name: "csv_list_dialects", scope: !4, file: !4, line: 1421, type: !156, isLocal: true, isDefinition: true, scopeLine: 1422, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @csv_list_dialects, variables: !1016)
!1016 = !{!1017, !1018}
!1017 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1015, file: !4, line: 1421, type: !35)
!1018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1015, file: !4, line: 1421, type: !35)
!1019 = !DISubprogram(name: "csv_register_dialect", scope: !4, file: !4, line: 1427, type: !165, isLocal: true, isDefinition: true, scopeLine: 1428, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @csv_register_dialect, variables: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1031}
!1021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1019, file: !4, line: 1427, type: !35)
!1022 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1019, file: !4, line: 1427, type: !35)
!1023 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !1019, file: !4, line: 1427, type: !35)
!1024 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_obj", scope: !1019, file: !4, line: 1429, type: !35)
!1025 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect_obj", scope: !1019, file: !4, line: 1429, type: !35)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dialect", scope: !1019, file: !4, line: 1430, type: !35)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1028, file: !4, line: 1445, type: !35)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !4, line: 1445, column: 12)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !4, line: 1444, column: 125)
!1030 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1444, column: 9)
!1031 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1032, file: !4, line: 1448, type: !35)
!1032 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1448, column: 8)
!1033 = !DISubprogram(name: "csv_unregister_dialect", scope: !4, file: !4, line: 1454, type: !156, isLocal: true, isDefinition: true, scopeLine: 1455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @csv_unregister_dialect, variables: !1034)
!1034 = !{!1035, !1036}
!1035 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1033, file: !4, line: 1454, type: !35)
!1036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name_obj", arg: 2, scope: !1033, file: !4, line: 1454, type: !35)
!1037 = !DISubprogram(name: "csv_get_dialect", scope: !4, file: !4, line: 1463, type: !156, isLocal: true, isDefinition: true, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @csv_get_dialect, variables: !1038)
!1038 = !{!1039, !1040}
!1039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1037, file: !4, line: 1463, type: !35)
!1040 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name_obj", arg: 2, scope: !1037, file: !4, line: 1463, type: !35)
!1041 = !DISubprogram(name: "csv_field_size_limit", scope: !4, file: !4, line: 1469, type: !156, isLocal: true, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @csv_field_size_limit, variables: !1042)
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1041, file: !4, line: 1469, type: !35)
!1044 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1041, file: !4, line: 1469, type: !35)
!1045 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_limit", scope: !1041, file: !4, line: 1471, type: !35)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_limit", scope: !1041, file: !4, line: 1472, type: !47)
!1047 = !DISubprogram(name: "_csv_traverse", scope: !4, file: !4, line: 34, type: !291, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @_csv_traverse, variables: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1056}
!1049 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !1047, file: !4, line: 34, type: !35)
!1050 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !1047, file: !4, line: 34, type: !293)
!1051 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !1047, file: !4, line: 34, type: !29)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1053, file: !4, line: 36, type: !74)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !4, line: 36, column: 62)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !4, line: 36, column: 14)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !4, line: 36, column: 8)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !1057, file: !4, line: 37, type: !74)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !4, line: 37, column: 61)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !4, line: 37, column: 14)
!1059 = distinct !DILexicalBlock(scope: !1047, file: !4, line: 37, column: 8)
!1060 = !DISubprogram(name: "_csv_clear", scope: !4, file: !4, line: 26, type: !174, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_csv_clear, variables: !1061)
!1061 = !{!1062, !1063, !1065, !1069, !1071}
!1062 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !1060, file: !4, line: 26, type: !35)
!1063 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1064, file: !4, line: 28, type: !35)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !4, line: 28, column: 8)
!1065 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1066, file: !4, line: 28, type: !35)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !4, line: 28, column: 187)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !4, line: 28, column: 119)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 28, column: 96)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1070, file: !4, line: 29, type: !35)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !4, line: 29, column: 8)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1072, file: !4, line: 29, type: !35)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !4, line: 29, column: 185)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !4, line: 29, column: 118)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !4, line: 29, column: 95)
!1075 = !DISubprogram(name: "_csv_free", scope: !4, file: !4, line: 42, type: !368, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @_csv_free, variables: !1076)
!1076 = !{!1077}
!1077 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !1075, file: !4, line: 42, type: !29)
!1078 = !{!1079, !1080, !1084, !1088, !1093, !1097, !1098, !1102, !1104, !1108, !1109, !1113, !1115, !1119, !1123, !1127, !1150, !1154, !1158, !1162, !1170, !1174, !1178, !1182, !1183, !1187, !1191}
!1079 = !DIGlobalVariable(name: "Dialect_Type", scope: !0, file: !4, line: 472, type: !527, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Dialect_Type)
!1080 = !DIGlobalVariable(name: "Dialect_Type_doc", scope: !0, file: !4, line: 467, type: !1081, isLocal: true, isDefinition: true, variable: [75 x i8]* @Dialect_Type_doc)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 600, align: 8, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 75)
!1084 = !DIGlobalVariable(name: "Dialect_memberlist", scope: !0, file: !4, line: 302, type: !1085, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @Dialect_memberlist)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 1280, align: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DISubrange(count: 4)
!1088 = !DIGlobalVariable(name: "Dialect_getsetlist", scope: !0, file: !4, line: 309, type: !1089, isLocal: true, isDefinition: true, variable: [6 x %struct.PyGetSetDef]* @Dialect_getsetlist)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 1920, align: 64, elements: !1091)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !331, line: 17, baseType: !330)
!1091 = !{!1092}
!1092 = !DISubrange(count: 6)
!1093 = !DIGlobalVariable(name: "dialect_kws", scope: !0, file: !4, line: 325, type: !1094, isLocal: true, isDefinition: true, variable: [10 x i8*]* @dialect_kws)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 640, align: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 10)
!1097 = !DIGlobalVariable(name: "Reader_Type", scope: !0, file: !4, line: 916, type: !527, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Reader_Type)
!1098 = !DIGlobalVariable(name: "Reader_Type_doc", scope: !0, file: !4, line: 897, type: !1099, isLocal: true, isDefinition: true, variable: [96 x i8]* @Reader_Type_doc)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, align: 8, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 96)
!1102 = !DIGlobalVariable(name: "Reader_methods", scope: !0, file: !4, line: 904, type: !1103, isLocal: true, isDefinition: true, variable: [1 x %struct.PyMethodDef]* @Reader_methods)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, align: 64, elements: !112)
!1104 = !DIGlobalVariable(name: "Reader_memberlist", scope: !0, file: !4, line: 909, type: !1105, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMemberDef]* @Reader_memberlist)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 960, align: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 3)
!1108 = !DIGlobalVariable(name: "Writer_Type", scope: !0, file: !4, line: 1344, type: !527, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Writer_Type)
!1109 = !DIGlobalVariable(name: "Writer_Type_doc", scope: !0, file: !4, line: 1337, type: !1110, isLocal: true, isDefinition: true, variable: [107 x i8]* @Writer_Type_doc)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 856, align: 8, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 107)
!1113 = !DIGlobalVariable(name: "Writer_methods", scope: !0, file: !4, line: 1297, type: !1114, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @Writer_methods)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 768, align: 64, elements: !1106)
!1115 = !DIGlobalVariable(name: "csv_writerow_doc", scope: !0, file: !4, line: 1183, type: !1116, isLocal: true, isDefinition: true, variable: [130 x i8]* @csv_writerow_doc)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1040, align: 8, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 130)
!1119 = !DIGlobalVariable(name: "csv_writerows_doc", scope: !0, file: !4, line: 1263, type: !1120, isLocal: true, isDefinition: true, variable: [141 x i8]* @csv_writerows_doc)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1128, align: 8, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 141)
!1123 = !DIGlobalVariable(name: "Writer_memberlist", scope: !0, file: !4, line: 1305, type: !1124, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @Writer_memberlist)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 640, align: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 2)
!1127 = !DIGlobalVariable(name: "_csvmodule", scope: !0, file: !4, line: 1623, type: !1128, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_csvmodule)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1129, line: 47, size: 832, align: 64, elements: !1130)
!1129 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1130 = !{!1131, !1140, !1141, !1142, !1143, !1146, !1147, !1148, !1149}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1128, file: !1129, line: 48, baseType: !1132, size: 320, align: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1129, line: 38, baseType: !1133)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1129, line: 33, size: 320, align: 64, elements: !1134)
!1134 = !{!1135, !1136, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1133, file: !1129, line: 34, baseType: !36, size: 128, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1133, file: !1129, line: 35, baseType: !1137, size: 64, align: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1133, file: !1129, line: 36, baseType: !41, size: 64, align: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1133, file: !1129, line: 37, baseType: !35, size: 64, align: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1128, file: !1129, line: 49, baseType: !59, size: 64, align: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1128, file: !1129, line: 50, baseType: !59, size: 64, align: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1128, file: !1129, line: 51, baseType: !41, size: 64, align: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1128, file: !1129, line: 52, baseType: !1144, size: 64, align: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !311, line: 47, baseType: !310)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1128, file: !1129, line: 53, baseType: !172, size: 64, align: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1128, file: !1129, line: 54, baseType: !289, size: 64, align: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1128, file: !1129, line: 55, baseType: !172, size: 64, align: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1128, file: !1129, line: 56, baseType: !366, size: 64, align: 64, offset: 768)
!1150 = !DIGlobalVariable(name: "csv_module_doc", scope: !0, file: !4, line: 1495, type: !1151, isLocal: true, isDefinition: true, variable: [2580 x i8]* @csv_module_doc)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 20640, align: 8, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 2580)
!1154 = !DIGlobalVariable(name: "csv_methods", scope: !0, file: !4, line: 1605, type: !1155, isLocal: true, isDefinition: true, variable: [8 x %struct.PyMethodDef]* @csv_methods)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 2048, align: 64, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 8)
!1158 = !DIGlobalVariable(name: "csv_reader_doc", scope: !0, file: !4, line: 1553, type: !1159, isLocal: true, isDefinition: true, variable: [555 x i8]* @csv_reader_doc)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 4440, align: 8, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 555)
!1162 = !DIGlobalVariable(name: "PyId_write", scope: !995, file: !4, line: 1384, type: !1163, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @csv_writer.PyId_write)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !37, line: 144, baseType: !1164)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !37, line: 140, size: 192, align: 64, elements: !1165)
!1165 = !{!1166, !1168, !1169}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !37, line: 141, baseType: !1167, size: 64, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1164, file: !37, line: 142, baseType: !59, size: 64, align: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1164, file: !37, line: 143, baseType: !35, size: 64, align: 64, offset: 128)
!1170 = !DIGlobalVariable(name: "csv_writer_doc", scope: !0, file: !4, line: 1568, type: !1171, isLocal: true, isDefinition: true, variable: [389 x i8]* @csv_writer_doc)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3112, align: 8, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 389)
!1174 = !DIGlobalVariable(name: "csv_list_dialects_doc", scope: !0, file: !4, line: 1582, type: !1175, isLocal: true, isDefinition: true, variable: [73 x i8]* @csv_list_dialects_doc)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 584, align: 8, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 73)
!1178 = !DIGlobalVariable(name: "csv_register_dialect_doc", scope: !0, file: !4, line: 1590, type: !1179, isLocal: true, isDefinition: true, variable: [106 x i8]* @csv_register_dialect_doc)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 848, align: 8, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 106)
!1182 = !DIGlobalVariable(name: "csv_unregister_dialect_doc", scope: !0, file: !4, line: 1594, type: !1099, isLocal: true, isDefinition: true, variable: [96 x i8]* @csv_unregister_dialect_doc)
!1183 = !DIGlobalVariable(name: "csv_get_dialect_doc", scope: !0, file: !4, line: 1586, type: !1184, isLocal: true, isDefinition: true, variable: [86 x i8]* @csv_get_dialect_doc)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 688, align: 8, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 86)
!1187 = !DIGlobalVariable(name: "csv_field_size_limit_doc", scope: !0, file: !4, line: 1598, type: !1188, isLocal: true, isDefinition: true, variable: [165 x i8]* @csv_field_size_limit_doc)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1320, align: 8, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 165)
!1191 = !DIGlobalVariable(name: "quote_styles", scope: !0, file: !4, line: 66, type: !1192, isLocal: true, isDefinition: true, variable: [5 x %struct.StyleDesc]* @quote_styles)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 640, align: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 5)
!1195 = !{i32 2, !"Dwarf Version", i32 4}
!1196 = !{i32 2, !"Debug Info Version", i32 3}
!1197 = !{i32 1, !"PIC Level", i32 2}
!1198 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1199 = !DILocation(line: 1638, column: 5, scope: !473)
!1200 = !DIExpression()
!1201 = !DILocation(line: 1638, column: 15, scope: !473)
!1202 = !DILocation(line: 1639, column: 5, scope: !473)
!1203 = !DILocation(line: 1639, column: 16, scope: !473)
!1204 = !DILocation(line: 1641, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1641, column: 9)
!1206 = !DILocation(line: 1641, column: 37, scope: !1205)
!1207 = !DILocation(line: 1641, column: 9, scope: !473)
!1208 = !DILocation(line: 1642, column: 9, scope: !1205)
!1209 = !DILocation(line: 1644, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1644, column: 9)
!1211 = !DILocation(line: 1644, column: 36, scope: !1210)
!1212 = !DILocation(line: 1644, column: 9, scope: !473)
!1213 = !DILocation(line: 1645, column: 9, scope: !1210)
!1214 = !DILocation(line: 1647, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1647, column: 9)
!1216 = !DILocation(line: 1647, column: 36, scope: !1215)
!1217 = !DILocation(line: 1647, column: 9, scope: !473)
!1218 = !DILocation(line: 1648, column: 9, scope: !1215)
!1219 = !DILocation(line: 1651, column: 14, scope: !473)
!1220 = !DILocation(line: 1651, column: 12, scope: !473)
!1221 = !{!1222, !1222, i64 0}
!1222 = !{!"any pointer", !1223, i64 0}
!1223 = !{!"omnipotent char", !1224, i64 0}
!1224 = !{!"Simple C/C++ TBAA"}
!1225 = !DILocation(line: 1652, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1652, column: 9)
!1227 = !DILocation(line: 1652, column: 16, scope: !1226)
!1228 = !DILocation(line: 1652, column: 9, scope: !473)
!1229 = !DILocation(line: 1653, column: 9, scope: !1226)
!1230 = !DILocation(line: 1656, column: 36, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1656, column: 9)
!1232 = !DILocation(line: 1656, column: 9, scope: !1231)
!1233 = !DILocation(line: 1657, column: 43, scope: !1231)
!1234 = !DILocation(line: 1656, column: 9, scope: !473)
!1235 = !DILocation(line: 1658, column: 9, scope: !1231)
!1236 = !DILocation(line: 1661, column: 37, scope: !473)
!1237 = !DILocation(line: 1661, column: 19, scope: !473)
!1238 = !DILocation(line: 1661, column: 6, scope: !473)
!1239 = !DILocation(line: 1661, column: 47, scope: !473)
!1240 = !DILocation(line: 1661, column: 59, scope: !473)
!1241 = !{!1242, !1243, i64 16}
!1242 = !{!"", !1222, i64 0, !1222, i64 8, !1243, i64 16}
!1243 = !{!"long", !1223, i64 0}
!1244 = !DILocation(line: 1665, column: 58, scope: !473)
!1245 = !DILocation(line: 1665, column: 37, scope: !473)
!1246 = !DILocation(line: 1665, column: 19, scope: !473)
!1247 = !DILocation(line: 1665, column: 6, scope: !473)
!1248 = !DILocation(line: 1665, column: 47, scope: !473)
!1249 = !DILocation(line: 1665, column: 56, scope: !473)
!1250 = !{!1242, !1222, i64 8}
!1251 = !DILocation(line: 1666, column: 41, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1666, column: 9)
!1253 = !DILocation(line: 1666, column: 23, scope: !1252)
!1254 = !DILocation(line: 1666, column: 10, scope: !1252)
!1255 = !DILocation(line: 1666, column: 51, scope: !1252)
!1256 = !DILocation(line: 1666, column: 60, scope: !1252)
!1257 = !DILocation(line: 1666, column: 9, scope: !473)
!1258 = !DILocation(line: 1667, column: 9, scope: !1252)
!1259 = !DILocation(line: 1668, column: 53, scope: !473)
!1260 = !DILocation(line: 1668, column: 35, scope: !473)
!1261 = !DILocation(line: 1668, column: 22, scope: !473)
!1262 = !DILocation(line: 1668, column: 63, scope: !473)
!1263 = !DILocation(line: 1668, column: 75, scope: !473)
!1264 = !DILocation(line: 1668, column: 84, scope: !473)
!1265 = !{!1266, !1243, i64 0}
!1266 = !{!"_object", !1243, i64 0, !1222, i64 8}
!1267 = !DILocation(line: 1669, column: 28, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1669, column: 9)
!1269 = !DILocation(line: 1669, column: 81, scope: !1268)
!1270 = !DILocation(line: 1669, column: 63, scope: !1268)
!1271 = !DILocation(line: 1669, column: 50, scope: !1268)
!1272 = !DILocation(line: 1669, column: 91, scope: !1268)
!1273 = !DILocation(line: 1669, column: 9, scope: !1268)
!1274 = !DILocation(line: 1669, column: 9, scope: !473)
!1275 = !DILocation(line: 1670, column: 9, scope: !1268)
!1276 = !DILocation(line: 1673, column: 16, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1673, column: 5)
!1278 = !DILocation(line: 1673, column: 10, scope: !1277)
!1279 = !DILocation(line: 1673, column: 32, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1281, file: !4, discriminator: 2)
!1281 = !DILexicalBlockFile(scope: !1282, file: !4, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !4, line: 1673, column: 5)
!1283 = !DILocation(line: 1673, column: 39, scope: !1282)
!1284 = !{!1285, !1222, i64 8}
!1285 = !{!"", !1223, i64 0, !1222, i64 8}
!1286 = !DILocation(line: 1673, column: 5, scope: !1277)
!1287 = !DILocation(line: 1674, column: 37, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !4, line: 1674, column: 13)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !4, line: 1673, column: 54)
!1290 = !DILocation(line: 1674, column: 45, scope: !1288)
!1291 = !DILocation(line: 1674, column: 52, scope: !1288)
!1292 = !DILocation(line: 1675, column: 37, scope: !1288)
!1293 = !DILocation(line: 1675, column: 44, scope: !1288)
!1294 = !{!1285, !1223, i64 0}
!1295 = !DILocation(line: 1674, column: 13, scope: !1288)
!1296 = !DILocation(line: 1675, column: 51, scope: !1288)
!1297 = !DILocation(line: 1674, column: 13, scope: !1289)
!1298 = !DILocation(line: 1676, column: 13, scope: !1288)
!1299 = !DILocation(line: 1677, column: 5, scope: !1289)
!1300 = !DILocation(line: 1673, column: 50, scope: !1282)
!1301 = !DILocation(line: 1673, column: 5, scope: !1282)
!1302 = !DILocation(line: 1680, column: 47, scope: !473)
!1303 = !DILocation(line: 1681, column: 28, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1681, column: 9)
!1305 = !DILocation(line: 1681, column: 9, scope: !1304)
!1306 = !DILocation(line: 1681, column: 9, scope: !473)
!1307 = !DILocation(line: 1682, column: 9, scope: !1304)
!1308 = !DILocation(line: 1685, column: 59, scope: !473)
!1309 = !DILocation(line: 1685, column: 37, scope: !473)
!1310 = !DILocation(line: 1685, column: 19, scope: !473)
!1311 = !DILocation(line: 1685, column: 6, scope: !473)
!1312 = !DILocation(line: 1685, column: 47, scope: !473)
!1313 = !DILocation(line: 1685, column: 57, scope: !473)
!1314 = !{!1242, !1222, i64 0}
!1315 = !DILocation(line: 1686, column: 41, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !473, file: !4, line: 1686, column: 9)
!1317 = !DILocation(line: 1686, column: 23, scope: !1316)
!1318 = !DILocation(line: 1686, column: 10, scope: !1316)
!1319 = !DILocation(line: 1686, column: 51, scope: !1316)
!1320 = !DILocation(line: 1686, column: 61, scope: !1316)
!1321 = !DILocation(line: 1686, column: 9, scope: !473)
!1322 = !DILocation(line: 1687, column: 9, scope: !1316)
!1323 = !DILocation(line: 1688, column: 53, scope: !473)
!1324 = !DILocation(line: 1688, column: 35, scope: !473)
!1325 = !DILocation(line: 1688, column: 22, scope: !473)
!1326 = !DILocation(line: 1688, column: 63, scope: !473)
!1327 = !DILocation(line: 1688, column: 76, scope: !473)
!1328 = !DILocation(line: 1688, column: 85, scope: !473)
!1329 = !DILocation(line: 1689, column: 24, scope: !473)
!1330 = !DILocation(line: 1689, column: 73, scope: !473)
!1331 = !DILocation(line: 1689, column: 55, scope: !473)
!1332 = !DILocation(line: 1689, column: 42, scope: !473)
!1333 = !DILocation(line: 1689, column: 83, scope: !473)
!1334 = !DILocation(line: 1689, column: 5, scope: !473)
!1335 = !DILocation(line: 1690, column: 12, scope: !473)
!1336 = !DILocation(line: 1690, column: 5, scope: !473)
!1337 = !DILocation(line: 1691, column: 1, scope: !473)
!1338 = !DILocation(line: 319, column: 29, scope: !486)
!1339 = !DILocation(line: 321, column: 5, scope: !486)
!1340 = !DILocation(line: 321, column: 10, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !492, file: !4, discriminator: 1)
!1342 = !DILocation(line: 321, column: 20, scope: !492)
!1343 = !DILocation(line: 321, column: 51, scope: !492)
!1344 = !DILocation(line: 321, column: 57, scope: !492)
!1345 = !{!1346, !1222, i64 40}
!1346 = !{!"", !1266, i64 0, !1347, i64 16, !1347, i64 20, !1347, i64 24, !1347, i64 28, !1347, i64 32, !1222, i64 40, !1347, i64 48, !1347, i64 52}
!1347 = !{!"int", !1223, i64 0}
!1348 = !DILocation(line: 321, column: 78, scope: !495)
!1349 = !DILocation(line: 321, column: 94, scope: !495)
!1350 = !DILocation(line: 321, column: 78, scope: !492)
!1351 = !DILocation(line: 321, column: 109, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !495, file: !4, discriminator: 2)
!1353 = !DILocation(line: 321, column: 114, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 4)
!1355 = !DILocation(line: 321, column: 124, scope: !494)
!1356 = !DILocation(line: 321, column: 154, scope: !494)
!1357 = !DILocation(line: 321, column: 180, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !494, file: !4, line: 321, column: 177)
!1359 = !DILocation(line: 321, column: 197, scope: !1358)
!1360 = !DILocation(line: 321, column: 177, scope: !1358)
!1361 = !DILocation(line: 321, column: 207, scope: !1358)
!1362 = !DILocation(line: 321, column: 177, scope: !494)
!1363 = !DILocation(line: 321, column: 177, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 5)
!1365 = !DILocation(line: 321, column: 238, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1358, file: !4, discriminator: 6)
!1367 = !DILocation(line: 321, column: 256, scope: !1358)
!1368 = !{!1266, !1222, i64 8}
!1369 = !DILocation(line: 321, column: 266, scope: !1358)
!1370 = !{!1371, !1222, i64 48}
!1371 = !{!"_typeobject", !1372, i64 0, !1222, i64 24, !1243, i64 32, !1243, i64 40, !1222, i64 48, !1222, i64 56, !1222, i64 64, !1222, i64 72, !1222, i64 80, !1222, i64 88, !1222, i64 96, !1222, i64 104, !1222, i64 112, !1222, i64 120, !1222, i64 128, !1222, i64 136, !1222, i64 144, !1222, i64 152, !1222, i64 160, !1243, i64 168, !1222, i64 176, !1222, i64 184, !1222, i64 192, !1222, i64 200, !1243, i64 208, !1222, i64 216, !1222, i64 224, !1222, i64 232, !1222, i64 240, !1222, i64 248, !1222, i64 256, !1222, i64 264, !1222, i64 272, !1222, i64 280, !1243, i64 288, !1222, i64 296, !1222, i64 304, !1222, i64 312, !1222, i64 320, !1222, i64 328, !1222, i64 336, !1222, i64 344, !1222, i64 352, !1222, i64 360, !1222, i64 368, !1222, i64 376, !1347, i64 384, !1222, i64 392}
!1372 = !{!"", !1266, i64 0, !1243, i64 16}
!1373 = !DILocation(line: 321, column: 291, scope: !1358)
!1374 = !DILocation(line: 321, column: 222, scope: !1358)
!1375 = !DILocation(line: 321, column: 310, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !495, file: !4, discriminator: 7)
!1377 = !DILocation(line: 321, column: 310, scope: !494)
!1378 = !DILocation(line: 321, column: 310, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 8)
!1380 = !DILocation(line: 321, column: 310, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 9)
!1382 = !DILocation(line: 321, column: 323, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !4, discriminator: 10)
!1384 = !DILexicalBlockFile(scope: !486, file: !4, discriminator: 3)
!1385 = !DILocation(line: 321, column: 323, scope: !492)
!1386 = !DILocation(line: 322, column: 19, scope: !486)
!1387 = !DILocation(line: 322, column: 7, scope: !486)
!1388 = !DILocation(line: 322, column: 27, scope: !486)
!1389 = !DILocation(line: 322, column: 37, scope: !486)
!1390 = !{!1371, !1222, i64 320}
!1391 = !DILocation(line: 322, column: 57, scope: !486)
!1392 = !DILocation(line: 322, column: 45, scope: !486)
!1393 = !DILocation(line: 322, column: 5, scope: !486)
!1394 = !DILocation(line: 323, column: 1, scope: !486)
!1395 = !DILocation(line: 339, column: 27, scope: !523)
!1396 = !DILocation(line: 339, column: 43, scope: !523)
!1397 = !DILocation(line: 339, column: 59, scope: !523)
!1398 = !DILocation(line: 341, column: 5, scope: !523)
!1399 = !DILocation(line: 341, column: 17, scope: !523)
!1400 = !DILocation(line: 342, column: 5, scope: !523)
!1401 = !DILocation(line: 342, column: 15, scope: !523)
!1402 = !DILocation(line: 343, column: 5, scope: !523)
!1403 = !DILocation(line: 343, column: 15, scope: !523)
!1404 = !DILocation(line: 344, column: 5, scope: !523)
!1405 = !DILocation(line: 344, column: 15, scope: !523)
!1406 = !DILocation(line: 345, column: 5, scope: !523)
!1407 = !DILocation(line: 345, column: 15, scope: !523)
!1408 = !DILocation(line: 346, column: 5, scope: !523)
!1409 = !DILocation(line: 346, column: 15, scope: !523)
!1410 = !DILocation(line: 347, column: 5, scope: !523)
!1411 = !DILocation(line: 347, column: 15, scope: !523)
!1412 = !DILocation(line: 348, column: 5, scope: !523)
!1413 = !DILocation(line: 348, column: 15, scope: !523)
!1414 = !DILocation(line: 349, column: 5, scope: !523)
!1415 = !DILocation(line: 349, column: 15, scope: !523)
!1416 = !DILocation(line: 350, column: 5, scope: !523)
!1417 = !DILocation(line: 350, column: 15, scope: !523)
!1418 = !DILocation(line: 351, column: 5, scope: !523)
!1419 = !DILocation(line: 351, column: 15, scope: !523)
!1420 = !DILocation(line: 353, column: 38, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !523, file: !4, line: 353, column: 9)
!1422 = !DILocation(line: 353, column: 44, scope: !1421)
!1423 = !DILocation(line: 353, column: 10, scope: !1421)
!1424 = !DILocation(line: 353, column: 9, scope: !523)
!1425 = !DILocation(line: 364, column: 9, scope: !1421)
!1426 = !DILocation(line: 366, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !523, file: !4, line: 366, column: 9)
!1428 = !DILocation(line: 366, column: 17, scope: !1427)
!1429 = !DILocation(line: 366, column: 9, scope: !523)
!1430 = !DILocation(line: 367, column: 30, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !4, line: 367, column: 13)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !4, line: 366, column: 32)
!1433 = !DILocation(line: 367, column: 41, scope: !1431)
!1434 = !DILocation(line: 367, column: 52, scope: !1431)
!1435 = !{!1371, !1243, i64 168}
!1436 = !DILocation(line: 367, column: 61, scope: !1431)
!1437 = !DILocation(line: 367, column: 78, scope: !1431)
!1438 = !DILocation(line: 367, column: 13, scope: !1432)
!1439 = !DILocation(line: 368, column: 49, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !4, line: 367, column: 85)
!1441 = !DILocation(line: 368, column: 23, scope: !1440)
!1442 = !DILocation(line: 368, column: 21, scope: !1440)
!1443 = !DILocation(line: 369, column: 17, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !4, line: 369, column: 17)
!1445 = !DILocation(line: 369, column: 25, scope: !1444)
!1446 = !DILocation(line: 369, column: 17, scope: !1440)
!1447 = !DILocation(line: 370, column: 17, scope: !1444)
!1448 = !DILocation(line: 371, column: 9, scope: !1440)
!1449 = !DILocation(line: 373, column: 29, scope: !1431)
!1450 = !DILocation(line: 373, column: 40, scope: !1431)
!1451 = !DILocation(line: 373, column: 49, scope: !1431)
!1452 = !DILocation(line: 375, column: 28, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1432, file: !4, line: 375, column: 13)
!1454 = !DILocation(line: 375, column: 39, scope: !1453)
!1455 = !DILocation(line: 375, column: 48, scope: !1453)
!1456 = !DILocation(line: 375, column: 67, scope: !1453)
!1457 = !DILocation(line: 375, column: 101, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1453, file: !4, discriminator: 1)
!1459 = !DILocation(line: 375, column: 112, scope: !1453)
!1460 = !DILocation(line: 375, column: 70, scope: !1453)
!1461 = !DILocation(line: 375, column: 140, scope: !1453)
!1462 = !DILocation(line: 376, column: 13, scope: !1453)
!1463 = !DILocation(line: 376, column: 23, scope: !1453)
!1464 = !DILocation(line: 376, column: 28, scope: !1453)
!1465 = !DILocation(line: 377, column: 13, scope: !1453)
!1466 = !DILocation(line: 377, column: 25, scope: !1453)
!1467 = !DILocation(line: 377, column: 30, scope: !1453)
!1468 = !DILocation(line: 378, column: 13, scope: !1453)
!1469 = !DILocation(line: 378, column: 24, scope: !1453)
!1470 = !DILocation(line: 378, column: 29, scope: !1453)
!1471 = !DILocation(line: 379, column: 13, scope: !1453)
!1472 = !DILocation(line: 379, column: 28, scope: !1453)
!1473 = !DILocation(line: 379, column: 33, scope: !1453)
!1474 = !DILocation(line: 380, column: 13, scope: !1453)
!1475 = !DILocation(line: 380, column: 23, scope: !1453)
!1476 = !DILocation(line: 380, column: 28, scope: !1453)
!1477 = !DILocation(line: 381, column: 13, scope: !1453)
!1478 = !DILocation(line: 381, column: 21, scope: !1453)
!1479 = !DILocation(line: 381, column: 26, scope: !1453)
!1480 = !DILocation(line: 382, column: 13, scope: !1453)
!1481 = !DILocation(line: 382, column: 30, scope: !1453)
!1482 = !DILocation(line: 382, column: 35, scope: !1453)
!1483 = !DILocation(line: 383, column: 13, scope: !1453)
!1484 = !DILocation(line: 383, column: 20, scope: !1453)
!1485 = !DILocation(line: 375, column: 13, scope: !1432)
!1486 = !DILocation(line: 384, column: 20, scope: !1453)
!1487 = !DILocation(line: 384, column: 13, scope: !1453)
!1488 = !DILocation(line: 385, column: 5, scope: !1432)
!1489 = !DILocation(line: 387, column: 26, scope: !523)
!1490 = !DILocation(line: 387, column: 32, scope: !523)
!1491 = !{!1371, !1222, i64 304}
!1492 = !DILocation(line: 387, column: 41, scope: !523)
!1493 = !DILocation(line: 387, column: 12, scope: !523)
!1494 = !DILocation(line: 387, column: 10, scope: !523)
!1495 = !DILocation(line: 388, column: 9, scope: !546)
!1496 = !DILocation(line: 388, column: 14, scope: !546)
!1497 = !DILocation(line: 388, column: 9, scope: !523)
!1498 = !DILocation(line: 389, column: 9, scope: !545)
!1499 = !DILocation(line: 389, column: 14, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !544, file: !4, discriminator: 1)
!1501 = !DILocation(line: 389, column: 24, scope: !544)
!1502 = !DILocation(line: 389, column: 55, scope: !544)
!1503 = !DILocation(line: 389, column: 69, scope: !549)
!1504 = !DILocation(line: 389, column: 85, scope: !549)
!1505 = !DILocation(line: 389, column: 69, scope: !544)
!1506 = !DILocation(line: 389, column: 100, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !549, file: !4, discriminator: 2)
!1508 = !DILocation(line: 389, column: 105, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !548, file: !4, discriminator: 4)
!1510 = !DILocation(line: 389, column: 115, scope: !548)
!1511 = !DILocation(line: 389, column: 145, scope: !548)
!1512 = !DILocation(line: 389, column: 171, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !548, file: !4, line: 389, column: 168)
!1514 = !DILocation(line: 389, column: 188, scope: !1513)
!1515 = !DILocation(line: 389, column: 168, scope: !1513)
!1516 = !DILocation(line: 389, column: 198, scope: !1513)
!1517 = !DILocation(line: 389, column: 168, scope: !548)
!1518 = !DILocation(line: 389, column: 168, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !548, file: !4, discriminator: 5)
!1520 = !DILocation(line: 389, column: 229, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1513, file: !4, discriminator: 6)
!1522 = !DILocation(line: 389, column: 247, scope: !1513)
!1523 = !DILocation(line: 389, column: 257, scope: !1513)
!1524 = !DILocation(line: 389, column: 282, scope: !1513)
!1525 = !DILocation(line: 389, column: 213, scope: !1513)
!1526 = !DILocation(line: 389, column: 301, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !549, file: !4, discriminator: 7)
!1528 = !DILocation(line: 389, column: 301, scope: !548)
!1529 = !DILocation(line: 389, column: 301, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !548, file: !4, discriminator: 8)
!1531 = !DILocation(line: 389, column: 301, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !548, file: !4, discriminator: 9)
!1533 = !DILocation(line: 389, column: 314, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !4, discriminator: 10)
!1535 = !DILexicalBlockFile(scope: !545, file: !4, discriminator: 3)
!1536 = !DILocation(line: 389, column: 314, scope: !544)
!1537 = !DILocation(line: 389, column: 314, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !544, file: !4, discriminator: 11)
!1539 = !DILocation(line: 390, column: 9, scope: !545)
!1540 = !DILocation(line: 392, column: 5, scope: !523)
!1541 = !DILocation(line: 392, column: 11, scope: !523)
!1542 = !DILocation(line: 392, column: 26, scope: !523)
!1543 = !DILocation(line: 394, column: 5, scope: !523)
!1544 = !DILocation(line: 394, column: 10, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !551, file: !4, discriminator: 1)
!1546 = !DILocation(line: 394, column: 20, scope: !551)
!1547 = !DILocation(line: 394, column: 51, scope: !551)
!1548 = !DILocation(line: 394, column: 67, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !551, file: !4, line: 394, column: 67)
!1550 = !DILocation(line: 394, column: 83, scope: !1549)
!1551 = !DILocation(line: 394, column: 67, scope: !551)
!1552 = !DILocation(line: 394, column: 114, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1549, file: !4, discriminator: 2)
!1554 = !DILocation(line: 394, column: 133, scope: !1549)
!1555 = !DILocation(line: 394, column: 142, scope: !1549)
!1556 = !DILocation(line: 394, column: 98, scope: !1549)
!1557 = !DILocation(line: 394, column: 147, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !4, discriminator: 4)
!1559 = !DILexicalBlockFile(scope: !523, file: !4, discriminator: 3)
!1560 = !DILocation(line: 394, column: 147, scope: !551)
!1561 = !DILocation(line: 394, column: 147, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !551, file: !4, discriminator: 5)
!1563 = !DILocation(line: 395, column: 5, scope: !523)
!1564 = !DILocation(line: 395, column: 10, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !553, file: !4, discriminator: 1)
!1566 = !DILocation(line: 395, column: 20, scope: !553)
!1567 = !DILocation(line: 395, column: 51, scope: !553)
!1568 = !DILocation(line: 395, column: 69, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !553, file: !4, line: 395, column: 69)
!1570 = !DILocation(line: 395, column: 85, scope: !1569)
!1571 = !DILocation(line: 395, column: 69, scope: !553)
!1572 = !DILocation(line: 395, column: 116, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1569, file: !4, discriminator: 2)
!1574 = !DILocation(line: 395, column: 135, scope: !1569)
!1575 = !DILocation(line: 395, column: 144, scope: !1569)
!1576 = !DILocation(line: 395, column: 100, scope: !1569)
!1577 = !DILocation(line: 395, column: 149, scope: !1558)
!1578 = !DILocation(line: 395, column: 149, scope: !553)
!1579 = !DILocation(line: 395, column: 149, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !553, file: !4, discriminator: 5)
!1581 = !DILocation(line: 396, column: 5, scope: !523)
!1582 = !DILocation(line: 396, column: 10, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !555, file: !4, discriminator: 1)
!1584 = !DILocation(line: 396, column: 20, scope: !555)
!1585 = !DILocation(line: 396, column: 51, scope: !555)
!1586 = !DILocation(line: 396, column: 68, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !555, file: !4, line: 396, column: 68)
!1588 = !DILocation(line: 396, column: 84, scope: !1587)
!1589 = !DILocation(line: 396, column: 68, scope: !555)
!1590 = !DILocation(line: 396, column: 115, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1587, file: !4, discriminator: 2)
!1592 = !DILocation(line: 396, column: 134, scope: !1587)
!1593 = !DILocation(line: 396, column: 143, scope: !1587)
!1594 = !DILocation(line: 396, column: 99, scope: !1587)
!1595 = !DILocation(line: 396, column: 148, scope: !1558)
!1596 = !DILocation(line: 396, column: 148, scope: !555)
!1597 = !DILocation(line: 396, column: 148, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !555, file: !4, discriminator: 5)
!1599 = !DILocation(line: 397, column: 5, scope: !523)
!1600 = !DILocation(line: 397, column: 10, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !557, file: !4, discriminator: 1)
!1602 = !DILocation(line: 397, column: 20, scope: !557)
!1603 = !DILocation(line: 397, column: 51, scope: !557)
!1604 = !DILocation(line: 397, column: 72, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !557, file: !4, line: 397, column: 72)
!1606 = !DILocation(line: 397, column: 88, scope: !1605)
!1607 = !DILocation(line: 397, column: 72, scope: !557)
!1608 = !DILocation(line: 397, column: 119, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1605, file: !4, discriminator: 2)
!1610 = !DILocation(line: 397, column: 138, scope: !1605)
!1611 = !DILocation(line: 397, column: 147, scope: !1605)
!1612 = !DILocation(line: 397, column: 103, scope: !1605)
!1613 = !DILocation(line: 397, column: 152, scope: !1558)
!1614 = !DILocation(line: 397, column: 152, scope: !557)
!1615 = !DILocation(line: 397, column: 152, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !557, file: !4, discriminator: 5)
!1617 = !DILocation(line: 398, column: 5, scope: !523)
!1618 = !DILocation(line: 398, column: 10, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !559, file: !4, discriminator: 1)
!1620 = !DILocation(line: 398, column: 20, scope: !559)
!1621 = !DILocation(line: 398, column: 51, scope: !559)
!1622 = !DILocation(line: 398, column: 67, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !559, file: !4, line: 398, column: 67)
!1624 = !DILocation(line: 398, column: 83, scope: !1623)
!1625 = !DILocation(line: 398, column: 67, scope: !559)
!1626 = !DILocation(line: 398, column: 114, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1623, file: !4, discriminator: 2)
!1628 = !DILocation(line: 398, column: 133, scope: !1623)
!1629 = !DILocation(line: 398, column: 142, scope: !1623)
!1630 = !DILocation(line: 398, column: 98, scope: !1623)
!1631 = !DILocation(line: 398, column: 147, scope: !1558)
!1632 = !DILocation(line: 398, column: 147, scope: !559)
!1633 = !DILocation(line: 398, column: 147, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !559, file: !4, discriminator: 5)
!1635 = !DILocation(line: 399, column: 5, scope: !523)
!1636 = !DILocation(line: 399, column: 10, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !561, file: !4, discriminator: 1)
!1638 = !DILocation(line: 399, column: 20, scope: !561)
!1639 = !DILocation(line: 399, column: 51, scope: !561)
!1640 = !DILocation(line: 399, column: 65, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !561, file: !4, line: 399, column: 65)
!1642 = !DILocation(line: 399, column: 81, scope: !1641)
!1643 = !DILocation(line: 399, column: 65, scope: !561)
!1644 = !DILocation(line: 399, column: 112, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1641, file: !4, discriminator: 2)
!1646 = !DILocation(line: 399, column: 131, scope: !1641)
!1647 = !DILocation(line: 399, column: 140, scope: !1641)
!1648 = !DILocation(line: 399, column: 96, scope: !1641)
!1649 = !DILocation(line: 399, column: 145, scope: !1558)
!1650 = !DILocation(line: 399, column: 145, scope: !561)
!1651 = !DILocation(line: 399, column: 145, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !561, file: !4, discriminator: 5)
!1653 = !DILocation(line: 400, column: 5, scope: !523)
!1654 = !DILocation(line: 400, column: 10, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !563, file: !4, discriminator: 1)
!1656 = !DILocation(line: 400, column: 20, scope: !563)
!1657 = !DILocation(line: 400, column: 51, scope: !563)
!1658 = !DILocation(line: 400, column: 74, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !563, file: !4, line: 400, column: 74)
!1660 = !DILocation(line: 400, column: 90, scope: !1659)
!1661 = !DILocation(line: 400, column: 74, scope: !563)
!1662 = !DILocation(line: 400, column: 121, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1659, file: !4, discriminator: 2)
!1664 = !DILocation(line: 400, column: 140, scope: !1659)
!1665 = !DILocation(line: 400, column: 149, scope: !1659)
!1666 = !DILocation(line: 400, column: 105, scope: !1659)
!1667 = !DILocation(line: 400, column: 154, scope: !1558)
!1668 = !DILocation(line: 400, column: 154, scope: !563)
!1669 = !DILocation(line: 400, column: 154, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !563, file: !4, discriminator: 5)
!1671 = !DILocation(line: 401, column: 5, scope: !523)
!1672 = !DILocation(line: 401, column: 10, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !565, file: !4, discriminator: 1)
!1674 = !DILocation(line: 401, column: 20, scope: !565)
!1675 = !DILocation(line: 401, column: 51, scope: !565)
!1676 = !DILocation(line: 401, column: 64, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !565, file: !4, line: 401, column: 64)
!1678 = !DILocation(line: 401, column: 80, scope: !1677)
!1679 = !DILocation(line: 401, column: 64, scope: !565)
!1680 = !DILocation(line: 401, column: 111, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1677, file: !4, discriminator: 2)
!1682 = !DILocation(line: 401, column: 130, scope: !1677)
!1683 = !DILocation(line: 401, column: 139, scope: !1677)
!1684 = !DILocation(line: 401, column: 95, scope: !1677)
!1685 = !DILocation(line: 401, column: 144, scope: !1558)
!1686 = !DILocation(line: 401, column: 144, scope: !565)
!1687 = !DILocation(line: 401, column: 144, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !565, file: !4, discriminator: 5)
!1689 = !DILocation(line: 402, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !523, file: !4, line: 402, column: 9)
!1691 = !DILocation(line: 402, column: 17, scope: !1690)
!1692 = !DILocation(line: 402, column: 9, scope: !523)
!1693 = !DILocation(line: 406, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 406, column: 13)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !4, line: 402, column: 32)
!1696 = !DILocation(line: 406, column: 23, scope: !1694)
!1697 = !DILocation(line: 406, column: 13, scope: !1695)
!1698 = !DILocation(line: 406, column: 73, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1694, file: !4, discriminator: 1)
!1700 = !DILocation(line: 406, column: 50, scope: !1694)
!1701 = !DILocation(line: 406, column: 48, scope: !1694)
!1702 = !DILocation(line: 406, column: 38, scope: !1694)
!1703 = !DILocation(line: 407, column: 13, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 407, column: 13)
!1705 = !DILocation(line: 407, column: 25, scope: !1704)
!1706 = !DILocation(line: 407, column: 13, scope: !1695)
!1707 = !DILocation(line: 407, column: 77, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1704, file: !4, discriminator: 1)
!1709 = !DILocation(line: 407, column: 54, scope: !1704)
!1710 = !DILocation(line: 407, column: 52, scope: !1704)
!1711 = !DILocation(line: 407, column: 40, scope: !1704)
!1712 = !DILocation(line: 408, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 408, column: 13)
!1714 = !DILocation(line: 408, column: 24, scope: !1713)
!1715 = !DILocation(line: 408, column: 13, scope: !1695)
!1716 = !DILocation(line: 408, column: 75, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1713, file: !4, discriminator: 1)
!1718 = !DILocation(line: 408, column: 52, scope: !1713)
!1719 = !DILocation(line: 408, column: 50, scope: !1713)
!1720 = !DILocation(line: 408, column: 39, scope: !1713)
!1721 = !DILocation(line: 409, column: 13, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 409, column: 13)
!1723 = !DILocation(line: 409, column: 28, scope: !1722)
!1724 = !DILocation(line: 409, column: 13, scope: !1695)
!1725 = !DILocation(line: 409, column: 83, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1722, file: !4, discriminator: 1)
!1727 = !DILocation(line: 409, column: 60, scope: !1722)
!1728 = !DILocation(line: 409, column: 58, scope: !1722)
!1729 = !DILocation(line: 409, column: 43, scope: !1722)
!1730 = !DILocation(line: 410, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 410, column: 13)
!1732 = !DILocation(line: 410, column: 23, scope: !1731)
!1733 = !DILocation(line: 410, column: 13, scope: !1695)
!1734 = !DILocation(line: 410, column: 73, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1731, file: !4, discriminator: 1)
!1736 = !DILocation(line: 410, column: 50, scope: !1731)
!1737 = !DILocation(line: 410, column: 48, scope: !1731)
!1738 = !DILocation(line: 410, column: 38, scope: !1731)
!1739 = !DILocation(line: 411, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 411, column: 13)
!1741 = !DILocation(line: 411, column: 21, scope: !1740)
!1742 = !DILocation(line: 411, column: 13, scope: !1695)
!1743 = !DILocation(line: 411, column: 69, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1740, file: !4, discriminator: 1)
!1745 = !DILocation(line: 411, column: 46, scope: !1740)
!1746 = !DILocation(line: 411, column: 44, scope: !1740)
!1747 = !DILocation(line: 411, column: 36, scope: !1740)
!1748 = !DILocation(line: 412, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 412, column: 13)
!1750 = !DILocation(line: 412, column: 30, scope: !1749)
!1751 = !DILocation(line: 412, column: 13, scope: !1695)
!1752 = !DILocation(line: 412, column: 87, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1749, file: !4, discriminator: 1)
!1754 = !DILocation(line: 412, column: 64, scope: !1749)
!1755 = !DILocation(line: 412, column: 62, scope: !1749)
!1756 = !DILocation(line: 412, column: 45, scope: !1749)
!1757 = !DILocation(line: 413, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 413, column: 13)
!1759 = !DILocation(line: 413, column: 20, scope: !1758)
!1760 = !DILocation(line: 413, column: 13, scope: !1695)
!1761 = !DILocation(line: 413, column: 67, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1758, file: !4, discriminator: 1)
!1763 = !DILocation(line: 413, column: 44, scope: !1758)
!1764 = !DILocation(line: 413, column: 42, scope: !1758)
!1765 = !DILocation(line: 413, column: 35, scope: !1758)
!1766 = !DILocation(line: 414, column: 9, scope: !1695)
!1767 = !DILocation(line: 415, column: 5, scope: !1695)
!1768 = !DILocation(line: 421, column: 33, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !523, file: !4, line: 421, column: 9)
!1770 = !DILocation(line: 421, column: 39, scope: !1769)
!1771 = !DILocation(line: 421, column: 50, scope: !1769)
!1772 = !DILocation(line: 421, column: 9, scope: !1769)
!1773 = !DILocation(line: 421, column: 9, scope: !523)
!1774 = !DILocation(line: 421, column: 67, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1769, file: !4, discriminator: 1)
!1776 = !DILocation(line: 422, column: 35, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !523, file: !4, line: 422, column: 9)
!1778 = !DILocation(line: 422, column: 41, scope: !1777)
!1779 = !DILocation(line: 422, column: 54, scope: !1777)
!1780 = !DILocation(line: 422, column: 9, scope: !1777)
!1781 = !DILocation(line: 422, column: 9, scope: !523)
!1782 = !DILocation(line: 422, column: 71, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1777, file: !4, discriminator: 1)
!1784 = !DILocation(line: 423, column: 34, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !523, file: !4, line: 423, column: 9)
!1786 = !DILocation(line: 423, column: 40, scope: !1785)
!1787 = !DILocation(line: 423, column: 52, scope: !1785)
!1788 = !DILocation(line: 423, column: 9, scope: !1785)
!1789 = !DILocation(line: 423, column: 9, scope: !523)
!1790 = !DILocation(line: 423, column: 68, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1785, file: !4, discriminator: 1)
!1792 = !DILocation(line: 424, column: 37, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !523, file: !4, line: 424, column: 9)
!1794 = !DILocation(line: 424, column: 43, scope: !1793)
!1795 = !DILocation(line: 424, column: 59, scope: !1793)
!1796 = !DILocation(line: 424, column: 9, scope: !1793)
!1797 = !DILocation(line: 424, column: 9, scope: !523)
!1798 = !DILocation(line: 424, column: 84, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1793, file: !4, discriminator: 1)
!1800 = !DILocation(line: 425, column: 33, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !523, file: !4, line: 425, column: 9)
!1802 = !DILocation(line: 425, column: 39, scope: !1801)
!1803 = !DILocation(line: 425, column: 50, scope: !1801)
!1804 = !DILocation(line: 425, column: 9, scope: !1801)
!1805 = !DILocation(line: 425, column: 9, scope: !523)
!1806 = !DILocation(line: 425, column: 67, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1801, file: !4, discriminator: 1)
!1808 = !DILocation(line: 426, column: 30, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !523, file: !4, line: 426, column: 9)
!1810 = !DILocation(line: 426, column: 36, scope: !1809)
!1811 = !DILocation(line: 426, column: 45, scope: !1809)
!1812 = !DILocation(line: 426, column: 9, scope: !1809)
!1813 = !DILocation(line: 426, column: 9, scope: !523)
!1814 = !DILocation(line: 426, column: 70, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1809, file: !4, discriminator: 1)
!1816 = !DILocation(line: 427, column: 40, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !523, file: !4, line: 427, column: 9)
!1818 = !DILocation(line: 427, column: 46, scope: !1817)
!1819 = !DILocation(line: 427, column: 64, scope: !1817)
!1820 = !DILocation(line: 427, column: 9, scope: !1817)
!1821 = !DILocation(line: 427, column: 9, scope: !523)
!1822 = !DILocation(line: 427, column: 86, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1817, file: !4, discriminator: 1)
!1824 = !DILocation(line: 428, column: 30, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !523, file: !4, line: 428, column: 9)
!1826 = !DILocation(line: 428, column: 36, scope: !1825)
!1827 = !DILocation(line: 428, column: 44, scope: !1825)
!1828 = !DILocation(line: 428, column: 9, scope: !1825)
!1829 = !DILocation(line: 428, column: 9, scope: !523)
!1830 = !DILocation(line: 428, column: 56, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1825, file: !4, discriminator: 1)
!1832 = !DILocation(line: 431, column: 31, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !523, file: !4, line: 431, column: 9)
!1834 = !DILocation(line: 431, column: 37, scope: !1833)
!1835 = !{!1346, !1347, i64 48}
!1836 = !DILocation(line: 431, column: 9, scope: !1833)
!1837 = !DILocation(line: 431, column: 9, scope: !523)
!1838 = !DILocation(line: 432, column: 9, scope: !1833)
!1839 = !DILocation(line: 433, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !523, file: !4, line: 433, column: 9)
!1841 = !DILocation(line: 433, column: 15, scope: !1840)
!1842 = !{!1346, !1347, i64 20}
!1843 = !DILocation(line: 433, column: 25, scope: !1840)
!1844 = !DILocation(line: 433, column: 9, scope: !523)
!1845 = !DILocation(line: 434, column: 25, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !4, line: 433, column: 31)
!1847 = !DILocation(line: 434, column: 9, scope: !1846)
!1848 = !DILocation(line: 436, column: 9, scope: !1846)
!1849 = !DILocation(line: 438, column: 9, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !523, file: !4, line: 438, column: 9)
!1851 = !DILocation(line: 438, column: 19, scope: !1850)
!1852 = !DILocation(line: 438, column: 40, scope: !1850)
!1853 = !DILocation(line: 438, column: 43, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1850, file: !4, discriminator: 1)
!1855 = !DILocation(line: 438, column: 51, scope: !1850)
!1856 = !DILocation(line: 438, column: 9, scope: !523)
!1857 = !DILocation(line: 439, column: 9, scope: !1850)
!1858 = !DILocation(line: 439, column: 15, scope: !1850)
!1859 = !DILocation(line: 439, column: 23, scope: !1850)
!1860 = !DILocation(line: 440, column: 9, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !523, file: !4, line: 440, column: 9)
!1862 = !DILocation(line: 440, column: 15, scope: !1861)
!1863 = !DILocation(line: 440, column: 23, scope: !1861)
!1864 = !DILocation(line: 440, column: 37, scope: !1861)
!1865 = !DILocation(line: 440, column: 40, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1861, file: !4, discriminator: 1)
!1867 = !DILocation(line: 440, column: 46, scope: !1861)
!1868 = !{!1346, !1347, i64 24}
!1869 = !DILocation(line: 440, column: 56, scope: !1861)
!1870 = !DILocation(line: 440, column: 9, scope: !523)
!1871 = !DILocation(line: 441, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !4, line: 440, column: 62)
!1873 = !DILocation(line: 441, column: 9, scope: !1872)
!1874 = !DILocation(line: 443, column: 9, scope: !1872)
!1875 = !DILocation(line: 445, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !523, file: !4, line: 445, column: 9)
!1877 = !DILocation(line: 445, column: 15, scope: !1876)
!1878 = !DILocation(line: 445, column: 30, scope: !1876)
!1879 = !DILocation(line: 445, column: 9, scope: !523)
!1880 = !DILocation(line: 446, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !4, line: 445, column: 36)
!1882 = !DILocation(line: 446, column: 9, scope: !1881)
!1883 = !DILocation(line: 447, column: 9, scope: !1881)
!1884 = !DILocation(line: 450, column: 23, scope: !523)
!1885 = !DILocation(line: 450, column: 11, scope: !523)
!1886 = !DILocation(line: 450, column: 9, scope: !523)
!1887 = !DILocation(line: 451, column: 21, scope: !523)
!1888 = !DILocation(line: 451, column: 8, scope: !523)
!1889 = !DILocation(line: 451, column: 29, scope: !523)
!1890 = !DILocation(line: 451, column: 38, scope: !523)
!1891 = !DILocation(line: 451, column: 5, scope: !523)
!1892 = !DILocation(line: 453, column: 5, scope: !523)
!1893 = !DILocation(line: 453, column: 10, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !567, file: !4, discriminator: 1)
!1895 = !DILocation(line: 453, column: 20, scope: !567)
!1896 = !DILocation(line: 453, column: 51, scope: !567)
!1897 = !DILocation(line: 453, column: 38, scope: !567)
!1898 = !DILocation(line: 453, column: 62, scope: !570)
!1899 = !DILocation(line: 453, column: 78, scope: !570)
!1900 = !DILocation(line: 453, column: 62, scope: !567)
!1901 = !DILocation(line: 453, column: 93, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !570, file: !4, discriminator: 2)
!1903 = !DILocation(line: 453, column: 98, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 4)
!1905 = !DILocation(line: 453, column: 108, scope: !569)
!1906 = !DILocation(line: 453, column: 138, scope: !569)
!1907 = !DILocation(line: 453, column: 164, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !569, file: !4, line: 453, column: 161)
!1909 = !DILocation(line: 453, column: 181, scope: !1908)
!1910 = !DILocation(line: 453, column: 161, scope: !1908)
!1911 = !DILocation(line: 453, column: 191, scope: !1908)
!1912 = !DILocation(line: 453, column: 161, scope: !569)
!1913 = !DILocation(line: 453, column: 161, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 5)
!1915 = !DILocation(line: 453, column: 222, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1908, file: !4, discriminator: 6)
!1917 = !DILocation(line: 453, column: 240, scope: !1908)
!1918 = !DILocation(line: 453, column: 250, scope: !1908)
!1919 = !DILocation(line: 453, column: 275, scope: !1908)
!1920 = !DILocation(line: 453, column: 206, scope: !1908)
!1921 = !DILocation(line: 453, column: 294, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !570, file: !4, discriminator: 7)
!1923 = !DILocation(line: 453, column: 294, scope: !569)
!1924 = !DILocation(line: 453, column: 294, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 8)
!1926 = !DILocation(line: 453, column: 294, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 9)
!1928 = !DILocation(line: 453, column: 307, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1559, file: !4, discriminator: 10)
!1930 = !DILocation(line: 453, column: 307, scope: !567)
!1931 = !DILocation(line: 453, column: 307, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !567, file: !4, discriminator: 11)
!1933 = !DILocation(line: 454, column: 5, scope: !523)
!1934 = !DILocation(line: 454, column: 10, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !572, file: !4, discriminator: 1)
!1936 = !DILocation(line: 454, column: 20, scope: !572)
!1937 = !DILocation(line: 454, column: 51, scope: !572)
!1938 = !DILocation(line: 454, column: 65, scope: !575)
!1939 = !DILocation(line: 454, column: 81, scope: !575)
!1940 = !DILocation(line: 454, column: 65, scope: !572)
!1941 = !DILocation(line: 454, column: 96, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !575, file: !4, discriminator: 2)
!1943 = !DILocation(line: 454, column: 101, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !574, file: !4, discriminator: 4)
!1945 = !DILocation(line: 454, column: 111, scope: !574)
!1946 = !DILocation(line: 454, column: 141, scope: !574)
!1947 = !DILocation(line: 454, column: 167, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !574, file: !4, line: 454, column: 164)
!1949 = !DILocation(line: 454, column: 184, scope: !1948)
!1950 = !DILocation(line: 454, column: 164, scope: !1948)
!1951 = !DILocation(line: 454, column: 194, scope: !1948)
!1952 = !DILocation(line: 454, column: 164, scope: !574)
!1953 = !DILocation(line: 454, column: 164, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !574, file: !4, discriminator: 5)
!1955 = !DILocation(line: 454, column: 225, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1948, file: !4, discriminator: 6)
!1957 = !DILocation(line: 454, column: 243, scope: !1948)
!1958 = !DILocation(line: 454, column: 253, scope: !1948)
!1959 = !DILocation(line: 454, column: 278, scope: !1948)
!1960 = !DILocation(line: 454, column: 209, scope: !1948)
!1961 = !DILocation(line: 454, column: 297, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !575, file: !4, discriminator: 7)
!1963 = !DILocation(line: 454, column: 297, scope: !574)
!1964 = !DILocation(line: 454, column: 297, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !574, file: !4, discriminator: 8)
!1966 = !DILocation(line: 454, column: 297, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !574, file: !4, discriminator: 9)
!1968 = !DILocation(line: 454, column: 310, scope: !1929)
!1969 = !DILocation(line: 454, column: 310, scope: !572)
!1970 = !DILocation(line: 454, column: 310, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !572, file: !4, discriminator: 11)
!1972 = !DILocation(line: 455, column: 5, scope: !523)
!1973 = !DILocation(line: 455, column: 10, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 1)
!1975 = !DILocation(line: 455, column: 20, scope: !577)
!1976 = !DILocation(line: 455, column: 51, scope: !577)
!1977 = !DILocation(line: 455, column: 67, scope: !580)
!1978 = !DILocation(line: 455, column: 83, scope: !580)
!1979 = !DILocation(line: 455, column: 67, scope: !577)
!1980 = !DILocation(line: 455, column: 98, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !580, file: !4, discriminator: 2)
!1982 = !DILocation(line: 455, column: 103, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !579, file: !4, discriminator: 4)
!1984 = !DILocation(line: 455, column: 113, scope: !579)
!1985 = !DILocation(line: 455, column: 143, scope: !579)
!1986 = !DILocation(line: 455, column: 169, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !579, file: !4, line: 455, column: 166)
!1988 = !DILocation(line: 455, column: 186, scope: !1987)
!1989 = !DILocation(line: 455, column: 166, scope: !1987)
!1990 = !DILocation(line: 455, column: 196, scope: !1987)
!1991 = !DILocation(line: 455, column: 166, scope: !579)
!1992 = !DILocation(line: 455, column: 166, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !579, file: !4, discriminator: 5)
!1994 = !DILocation(line: 455, column: 227, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1987, file: !4, discriminator: 6)
!1996 = !DILocation(line: 455, column: 245, scope: !1987)
!1997 = !DILocation(line: 455, column: 255, scope: !1987)
!1998 = !DILocation(line: 455, column: 280, scope: !1987)
!1999 = !DILocation(line: 455, column: 211, scope: !1987)
!2000 = !DILocation(line: 455, column: 299, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !580, file: !4, discriminator: 7)
!2002 = !DILocation(line: 455, column: 299, scope: !579)
!2003 = !DILocation(line: 455, column: 299, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !579, file: !4, discriminator: 8)
!2005 = !DILocation(line: 455, column: 299, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !579, file: !4, discriminator: 9)
!2007 = !DILocation(line: 455, column: 312, scope: !1929)
!2008 = !DILocation(line: 455, column: 312, scope: !577)
!2009 = !DILocation(line: 455, column: 312, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 11)
!2011 = !DILocation(line: 456, column: 5, scope: !523)
!2012 = !DILocation(line: 456, column: 10, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !582, file: !4, discriminator: 1)
!2014 = !DILocation(line: 456, column: 20, scope: !582)
!2015 = !DILocation(line: 456, column: 51, scope: !582)
!2016 = !DILocation(line: 456, column: 69, scope: !585)
!2017 = !DILocation(line: 456, column: 85, scope: !585)
!2018 = !DILocation(line: 456, column: 69, scope: !582)
!2019 = !DILocation(line: 456, column: 100, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !585, file: !4, discriminator: 2)
!2021 = !DILocation(line: 456, column: 105, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 4)
!2023 = !DILocation(line: 456, column: 115, scope: !584)
!2024 = !DILocation(line: 456, column: 145, scope: !584)
!2025 = !DILocation(line: 456, column: 171, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !584, file: !4, line: 456, column: 168)
!2027 = !DILocation(line: 456, column: 188, scope: !2026)
!2028 = !DILocation(line: 456, column: 168, scope: !2026)
!2029 = !DILocation(line: 456, column: 198, scope: !2026)
!2030 = !DILocation(line: 456, column: 168, scope: !584)
!2031 = !DILocation(line: 456, column: 168, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 5)
!2033 = !DILocation(line: 456, column: 229, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2026, file: !4, discriminator: 6)
!2035 = !DILocation(line: 456, column: 247, scope: !2026)
!2036 = !DILocation(line: 456, column: 257, scope: !2026)
!2037 = !DILocation(line: 456, column: 282, scope: !2026)
!2038 = !DILocation(line: 456, column: 213, scope: !2026)
!2039 = !DILocation(line: 456, column: 301, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !585, file: !4, discriminator: 7)
!2041 = !DILocation(line: 456, column: 301, scope: !584)
!2042 = !DILocation(line: 456, column: 301, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 8)
!2044 = !DILocation(line: 456, column: 301, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 9)
!2046 = !DILocation(line: 456, column: 314, scope: !1929)
!2047 = !DILocation(line: 456, column: 314, scope: !582)
!2048 = !DILocation(line: 456, column: 314, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !582, file: !4, discriminator: 11)
!2050 = !DILocation(line: 457, column: 5, scope: !523)
!2051 = !DILocation(line: 457, column: 10, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !587, file: !4, discriminator: 1)
!2053 = !DILocation(line: 457, column: 20, scope: !587)
!2054 = !DILocation(line: 457, column: 51, scope: !587)
!2055 = !DILocation(line: 457, column: 68, scope: !590)
!2056 = !DILocation(line: 457, column: 84, scope: !590)
!2057 = !DILocation(line: 457, column: 68, scope: !587)
!2058 = !DILocation(line: 457, column: 99, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !590, file: !4, discriminator: 2)
!2060 = !DILocation(line: 457, column: 104, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !589, file: !4, discriminator: 4)
!2062 = !DILocation(line: 457, column: 114, scope: !589)
!2063 = !DILocation(line: 457, column: 144, scope: !589)
!2064 = !DILocation(line: 457, column: 170, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !589, file: !4, line: 457, column: 167)
!2066 = !DILocation(line: 457, column: 187, scope: !2065)
!2067 = !DILocation(line: 457, column: 167, scope: !2065)
!2068 = !DILocation(line: 457, column: 197, scope: !2065)
!2069 = !DILocation(line: 457, column: 167, scope: !589)
!2070 = !DILocation(line: 457, column: 167, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !589, file: !4, discriminator: 5)
!2072 = !DILocation(line: 457, column: 228, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2065, file: !4, discriminator: 6)
!2074 = !DILocation(line: 457, column: 246, scope: !2065)
!2075 = !DILocation(line: 457, column: 256, scope: !2065)
!2076 = !DILocation(line: 457, column: 281, scope: !2065)
!2077 = !DILocation(line: 457, column: 212, scope: !2065)
!2078 = !DILocation(line: 457, column: 300, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !590, file: !4, discriminator: 7)
!2080 = !DILocation(line: 457, column: 300, scope: !589)
!2081 = !DILocation(line: 457, column: 300, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !589, file: !4, discriminator: 8)
!2083 = !DILocation(line: 457, column: 300, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !589, file: !4, discriminator: 9)
!2085 = !DILocation(line: 457, column: 313, scope: !1929)
!2086 = !DILocation(line: 457, column: 313, scope: !587)
!2087 = !DILocation(line: 457, column: 313, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !587, file: !4, discriminator: 11)
!2089 = !DILocation(line: 458, column: 5, scope: !523)
!2090 = !DILocation(line: 458, column: 10, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !592, file: !4, discriminator: 1)
!2092 = !DILocation(line: 458, column: 20, scope: !592)
!2093 = !DILocation(line: 458, column: 51, scope: !592)
!2094 = !DILocation(line: 458, column: 72, scope: !595)
!2095 = !DILocation(line: 458, column: 88, scope: !595)
!2096 = !DILocation(line: 458, column: 72, scope: !592)
!2097 = !DILocation(line: 458, column: 103, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !595, file: !4, discriminator: 2)
!2099 = !DILocation(line: 458, column: 108, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !594, file: !4, discriminator: 4)
!2101 = !DILocation(line: 458, column: 118, scope: !594)
!2102 = !DILocation(line: 458, column: 148, scope: !594)
!2103 = !DILocation(line: 458, column: 174, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !594, file: !4, line: 458, column: 171)
!2105 = !DILocation(line: 458, column: 191, scope: !2104)
!2106 = !DILocation(line: 458, column: 171, scope: !2104)
!2107 = !DILocation(line: 458, column: 201, scope: !2104)
!2108 = !DILocation(line: 458, column: 171, scope: !594)
!2109 = !DILocation(line: 458, column: 171, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !594, file: !4, discriminator: 5)
!2111 = !DILocation(line: 458, column: 232, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2104, file: !4, discriminator: 6)
!2113 = !DILocation(line: 458, column: 250, scope: !2104)
!2114 = !DILocation(line: 458, column: 260, scope: !2104)
!2115 = !DILocation(line: 458, column: 285, scope: !2104)
!2116 = !DILocation(line: 458, column: 216, scope: !2104)
!2117 = !DILocation(line: 458, column: 304, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !595, file: !4, discriminator: 7)
!2119 = !DILocation(line: 458, column: 304, scope: !594)
!2120 = !DILocation(line: 458, column: 304, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !594, file: !4, discriminator: 8)
!2122 = !DILocation(line: 458, column: 304, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !594, file: !4, discriminator: 9)
!2124 = !DILocation(line: 458, column: 317, scope: !1929)
!2125 = !DILocation(line: 458, column: 317, scope: !592)
!2126 = !DILocation(line: 458, column: 317, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !592, file: !4, discriminator: 11)
!2128 = !DILocation(line: 459, column: 5, scope: !523)
!2129 = !DILocation(line: 459, column: 10, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 1)
!2131 = !DILocation(line: 459, column: 20, scope: !597)
!2132 = !DILocation(line: 459, column: 51, scope: !597)
!2133 = !DILocation(line: 459, column: 67, scope: !600)
!2134 = !DILocation(line: 459, column: 83, scope: !600)
!2135 = !DILocation(line: 459, column: 67, scope: !597)
!2136 = !DILocation(line: 459, column: 98, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 2)
!2138 = !DILocation(line: 459, column: 103, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 4)
!2140 = !DILocation(line: 459, column: 113, scope: !599)
!2141 = !DILocation(line: 459, column: 143, scope: !599)
!2142 = !DILocation(line: 459, column: 169, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !599, file: !4, line: 459, column: 166)
!2144 = !DILocation(line: 459, column: 186, scope: !2143)
!2145 = !DILocation(line: 459, column: 166, scope: !2143)
!2146 = !DILocation(line: 459, column: 196, scope: !2143)
!2147 = !DILocation(line: 459, column: 166, scope: !599)
!2148 = !DILocation(line: 459, column: 166, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 5)
!2150 = !DILocation(line: 459, column: 227, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2143, file: !4, discriminator: 6)
!2152 = !DILocation(line: 459, column: 245, scope: !2143)
!2153 = !DILocation(line: 459, column: 255, scope: !2143)
!2154 = !DILocation(line: 459, column: 280, scope: !2143)
!2155 = !DILocation(line: 459, column: 211, scope: !2143)
!2156 = !DILocation(line: 459, column: 299, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 7)
!2158 = !DILocation(line: 459, column: 299, scope: !599)
!2159 = !DILocation(line: 459, column: 299, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 8)
!2161 = !DILocation(line: 459, column: 299, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 9)
!2163 = !DILocation(line: 459, column: 312, scope: !1929)
!2164 = !DILocation(line: 459, column: 312, scope: !597)
!2165 = !DILocation(line: 459, column: 312, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 11)
!2167 = !DILocation(line: 460, column: 5, scope: !523)
!2168 = !DILocation(line: 460, column: 10, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !602, file: !4, discriminator: 1)
!2170 = !DILocation(line: 460, column: 20, scope: !602)
!2171 = !DILocation(line: 460, column: 51, scope: !602)
!2172 = !DILocation(line: 460, column: 65, scope: !605)
!2173 = !DILocation(line: 460, column: 81, scope: !605)
!2174 = !DILocation(line: 460, column: 65, scope: !602)
!2175 = !DILocation(line: 460, column: 96, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !605, file: !4, discriminator: 2)
!2177 = !DILocation(line: 460, column: 101, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !604, file: !4, discriminator: 4)
!2179 = !DILocation(line: 460, column: 111, scope: !604)
!2180 = !DILocation(line: 460, column: 141, scope: !604)
!2181 = !DILocation(line: 460, column: 167, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !604, file: !4, line: 460, column: 164)
!2183 = !DILocation(line: 460, column: 184, scope: !2182)
!2184 = !DILocation(line: 460, column: 164, scope: !2182)
!2185 = !DILocation(line: 460, column: 194, scope: !2182)
!2186 = !DILocation(line: 460, column: 164, scope: !604)
!2187 = !DILocation(line: 460, column: 164, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !604, file: !4, discriminator: 5)
!2189 = !DILocation(line: 460, column: 225, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2182, file: !4, discriminator: 6)
!2191 = !DILocation(line: 460, column: 243, scope: !2182)
!2192 = !DILocation(line: 460, column: 253, scope: !2182)
!2193 = !DILocation(line: 460, column: 278, scope: !2182)
!2194 = !DILocation(line: 460, column: 209, scope: !2182)
!2195 = !DILocation(line: 460, column: 297, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !605, file: !4, discriminator: 7)
!2197 = !DILocation(line: 460, column: 297, scope: !604)
!2198 = !DILocation(line: 460, column: 297, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !604, file: !4, discriminator: 8)
!2200 = !DILocation(line: 460, column: 297, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !604, file: !4, discriminator: 9)
!2202 = !DILocation(line: 460, column: 310, scope: !1929)
!2203 = !DILocation(line: 460, column: 310, scope: !602)
!2204 = !DILocation(line: 460, column: 310, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !602, file: !4, discriminator: 11)
!2206 = !DILocation(line: 461, column: 5, scope: !523)
!2207 = !DILocation(line: 461, column: 10, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !607, file: !4, discriminator: 1)
!2209 = !DILocation(line: 461, column: 20, scope: !607)
!2210 = !DILocation(line: 461, column: 51, scope: !607)
!2211 = !DILocation(line: 461, column: 74, scope: !610)
!2212 = !DILocation(line: 461, column: 90, scope: !610)
!2213 = !DILocation(line: 461, column: 74, scope: !607)
!2214 = !DILocation(line: 461, column: 105, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !610, file: !4, discriminator: 2)
!2216 = !DILocation(line: 461, column: 110, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !609, file: !4, discriminator: 4)
!2218 = !DILocation(line: 461, column: 120, scope: !609)
!2219 = !DILocation(line: 461, column: 150, scope: !609)
!2220 = !DILocation(line: 461, column: 176, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !609, file: !4, line: 461, column: 173)
!2222 = !DILocation(line: 461, column: 193, scope: !2221)
!2223 = !DILocation(line: 461, column: 173, scope: !2221)
!2224 = !DILocation(line: 461, column: 203, scope: !2221)
!2225 = !DILocation(line: 461, column: 173, scope: !609)
!2226 = !DILocation(line: 461, column: 173, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !609, file: !4, discriminator: 5)
!2228 = !DILocation(line: 461, column: 234, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2221, file: !4, discriminator: 6)
!2230 = !DILocation(line: 461, column: 252, scope: !2221)
!2231 = !DILocation(line: 461, column: 262, scope: !2221)
!2232 = !DILocation(line: 461, column: 287, scope: !2221)
!2233 = !DILocation(line: 461, column: 218, scope: !2221)
!2234 = !DILocation(line: 461, column: 306, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !610, file: !4, discriminator: 7)
!2236 = !DILocation(line: 461, column: 306, scope: !609)
!2237 = !DILocation(line: 461, column: 306, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !609, file: !4, discriminator: 8)
!2239 = !DILocation(line: 461, column: 306, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !609, file: !4, discriminator: 9)
!2241 = !DILocation(line: 461, column: 319, scope: !1929)
!2242 = !DILocation(line: 461, column: 319, scope: !607)
!2243 = !DILocation(line: 461, column: 319, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !607, file: !4, discriminator: 11)
!2245 = !DILocation(line: 462, column: 5, scope: !523)
!2246 = !DILocation(line: 462, column: 10, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 1)
!2248 = !DILocation(line: 462, column: 20, scope: !612)
!2249 = !DILocation(line: 462, column: 51, scope: !612)
!2250 = !DILocation(line: 462, column: 64, scope: !615)
!2251 = !DILocation(line: 462, column: 80, scope: !615)
!2252 = !DILocation(line: 462, column: 64, scope: !612)
!2253 = !DILocation(line: 462, column: 95, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !615, file: !4, discriminator: 2)
!2255 = !DILocation(line: 462, column: 100, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !614, file: !4, discriminator: 4)
!2257 = !DILocation(line: 462, column: 110, scope: !614)
!2258 = !DILocation(line: 462, column: 140, scope: !614)
!2259 = !DILocation(line: 462, column: 166, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !614, file: !4, line: 462, column: 163)
!2261 = !DILocation(line: 462, column: 183, scope: !2260)
!2262 = !DILocation(line: 462, column: 163, scope: !2260)
!2263 = !DILocation(line: 462, column: 193, scope: !2260)
!2264 = !DILocation(line: 462, column: 163, scope: !614)
!2265 = !DILocation(line: 462, column: 163, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !614, file: !4, discriminator: 5)
!2267 = !DILocation(line: 462, column: 224, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2260, file: !4, discriminator: 6)
!2269 = !DILocation(line: 462, column: 242, scope: !2260)
!2270 = !DILocation(line: 462, column: 252, scope: !2260)
!2271 = !DILocation(line: 462, column: 277, scope: !2260)
!2272 = !DILocation(line: 462, column: 208, scope: !2260)
!2273 = !DILocation(line: 462, column: 296, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !615, file: !4, discriminator: 7)
!2275 = !DILocation(line: 462, column: 296, scope: !614)
!2276 = !DILocation(line: 462, column: 296, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !614, file: !4, discriminator: 8)
!2278 = !DILocation(line: 462, column: 296, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !614, file: !4, discriminator: 9)
!2280 = !DILocation(line: 462, column: 309, scope: !1929)
!2281 = !DILocation(line: 462, column: 309, scope: !612)
!2282 = !DILocation(line: 462, column: 309, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 11)
!2284 = !DILocation(line: 463, column: 12, scope: !523)
!2285 = !DILocation(line: 463, column: 5, scope: !523)
!2286 = !DILocation(line: 464, column: 1, scope: !523)
!2287 = !DILocation(line: 169, column: 35, scope: !496)
!2288 = !DILocation(line: 171, column: 33, scope: !496)
!2289 = !DILocation(line: 171, column: 39, scope: !496)
!2290 = !DILocation(line: 171, column: 12, scope: !496)
!2291 = !DILocation(line: 171, column: 5, scope: !496)
!2292 = !DILocation(line: 175, column: 36, scope: !506)
!2293 = !DILocation(line: 177, column: 33, scope: !506)
!2294 = !DILocation(line: 177, column: 39, scope: !506)
!2295 = !{!1346, !1347, i64 28}
!2296 = !DILocation(line: 177, column: 12, scope: !506)
!2297 = !DILocation(line: 177, column: 5, scope: !506)
!2298 = !DILocation(line: 163, column: 40, scope: !509)
!2299 = !DILocation(line: 165, column: 23, scope: !509)
!2300 = !DILocation(line: 165, column: 29, scope: !509)
!2301 = !DILocation(line: 165, column: 12, scope: !509)
!2302 = !DILocation(line: 165, column: 5, scope: !509)
!2303 = !DILocation(line: 181, column: 35, scope: !517)
!2304 = !DILocation(line: 183, column: 33, scope: !517)
!2305 = !DILocation(line: 183, column: 39, scope: !517)
!2306 = !DILocation(line: 183, column: 12, scope: !517)
!2307 = !DILocation(line: 183, column: 5, scope: !517)
!2308 = !DILocation(line: 187, column: 33, scope: !520)
!2309 = !DILocation(line: 189, column: 28, scope: !520)
!2310 = !DILocation(line: 189, column: 34, scope: !520)
!2311 = !DILocation(line: 189, column: 12, scope: !520)
!2312 = !DILocation(line: 189, column: 5, scope: !520)
!2313 = !{!1347, !1347, i64 0}
!2314 = !DILocation(line: 152, column: 30, scope: !501)
!2315 = !DILocation(line: 154, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !501, file: !4, line: 154, column: 9)
!2317 = !DILocation(line: 154, column: 11, scope: !2316)
!2318 = !DILocation(line: 154, column: 9, scope: !501)
!2319 = !DILocation(line: 155, column: 55, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !4, line: 154, column: 20)
!2321 = !DILocation(line: 156, column: 9, scope: !2320)
!2322 = !DILocation(line: 159, column: 38, scope: !2316)
!2323 = !DILocation(line: 159, column: 16, scope: !2316)
!2324 = !DILocation(line: 159, column: 9, scope: !2316)
!2325 = !DILocation(line: 160, column: 1, scope: !501)
!2326 = !DILocation(line: 145, column: 22, scope: !512)
!2327 = !DILocation(line: 147, column: 5, scope: !512)
!2328 = !DILocation(line: 147, column: 10, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !516, file: !4, discriminator: 1)
!2330 = !DILocation(line: 147, column: 20, scope: !516)
!2331 = !DILocation(line: 147, column: 51, scope: !516)
!2332 = !DILocation(line: 147, column: 61, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !516, file: !4, line: 147, column: 61)
!2334 = !DILocation(line: 147, column: 77, scope: !2333)
!2335 = !DILocation(line: 147, column: 61, scope: !516)
!2336 = !DILocation(line: 147, column: 108, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2333, file: !4, discriminator: 2)
!2338 = !DILocation(line: 147, column: 127, scope: !2333)
!2339 = !DILocation(line: 147, column: 136, scope: !2333)
!2340 = !DILocation(line: 147, column: 92, scope: !2333)
!2341 = !DILocation(line: 147, column: 141, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !4, discriminator: 4)
!2343 = !DILexicalBlockFile(scope: !512, file: !4, discriminator: 3)
!2344 = !DILocation(line: 147, column: 141, scope: !516)
!2345 = !DILocation(line: 148, column: 12, scope: !512)
!2346 = !DILocation(line: 148, column: 5, scope: !512)
!2347 = !DILocation(line: 130, column: 38, scope: !616)
!2348 = !DILocation(line: 132, column: 5, scope: !616)
!2349 = !DILocation(line: 132, column: 15, scope: !616)
!2350 = !DILocation(line: 134, column: 66, scope: !616)
!2351 = !DILocation(line: 134, column: 48, scope: !616)
!2352 = !DILocation(line: 134, column: 35, scope: !616)
!2353 = !DILocation(line: 134, column: 101, scope: !616)
!2354 = !DILocation(line: 134, column: 111, scope: !616)
!2355 = !DILocation(line: 134, column: 19, scope: !616)
!2356 = !DILocation(line: 134, column: 17, scope: !616)
!2357 = !DILocation(line: 135, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !616, file: !4, line: 135, column: 9)
!2359 = !DILocation(line: 135, column: 21, scope: !2358)
!2360 = !DILocation(line: 135, column: 9, scope: !616)
!2361 = !DILocation(line: 136, column: 14, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !4, line: 136, column: 13)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !4, line: 135, column: 36)
!2364 = !DILocation(line: 136, column: 13, scope: !2363)
!2365 = !DILocation(line: 137, column: 58, scope: !2362)
!2366 = !DILocation(line: 137, column: 40, scope: !2362)
!2367 = !DILocation(line: 137, column: 27, scope: !2362)
!2368 = !DILocation(line: 137, column: 93, scope: !2362)
!2369 = !DILocation(line: 137, column: 13, scope: !2362)
!2370 = !DILocation(line: 138, column: 5, scope: !2363)
!2371 = !DILocation(line: 140, column: 25, scope: !2358)
!2372 = !DILocation(line: 140, column: 40, scope: !2358)
!2373 = !DILocation(line: 140, column: 49, scope: !2358)
!2374 = !DILocation(line: 141, column: 12, scope: !616)
!2375 = !DILocation(line: 142, column: 1, scope: !616)
!2376 = !DILocation(line: 141, column: 5, scope: !616)
!2377 = !DILocation(line: 234, column: 23, scope: !620)
!2378 = !DILocation(line: 234, column: 38, scope: !620)
!2379 = !DILocation(line: 234, column: 56, scope: !620)
!2380 = !DILocation(line: 234, column: 69, scope: !620)
!2381 = !DILocation(line: 236, column: 9, scope: !632)
!2382 = !DILocation(line: 236, column: 13, scope: !632)
!2383 = !DILocation(line: 236, column: 9, scope: !620)
!2384 = !DILocation(line: 237, column: 19, scope: !632)
!2385 = !DILocation(line: 237, column: 10, scope: !632)
!2386 = !DILocation(line: 237, column: 17, scope: !632)
!2387 = !DILocation(line: 237, column: 9, scope: !632)
!2388 = !DILocation(line: 239, column: 10, scope: !631)
!2389 = !DILocation(line: 239, column: 17, scope: !631)
!2390 = !DILocation(line: 240, column: 13, scope: !630)
!2391 = !DILocation(line: 240, column: 17, scope: !630)
!2392 = !DILocation(line: 240, column: 13, scope: !631)
!2393 = !DILocation(line: 241, column: 13, scope: !629)
!2394 = !DILocation(line: 241, column: 24, scope: !629)
!2395 = !DILocation(line: 242, column: 35, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !629, file: !4, line: 242, column: 17)
!2397 = !DILocation(line: 242, column: 42, scope: !2396)
!2398 = !DILocation(line: 242, column: 53, scope: !2396)
!2399 = !DILocation(line: 242, column: 62, scope: !2396)
!2400 = !DILocation(line: 242, column: 79, scope: !2396)
!2401 = !DILocation(line: 242, column: 17, scope: !629)
!2402 = !DILocation(line: 243, column: 30, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2396, file: !4, line: 242, column: 86)
!2404 = !DILocation(line: 244, column: 58, scope: !2403)
!2405 = !DILocation(line: 245, column: 21, scope: !2403)
!2406 = !DILocation(line: 245, column: 26, scope: !2403)
!2407 = !DILocation(line: 245, column: 35, scope: !2403)
!2408 = !{!1371, !1222, i64 24}
!2409 = !DILocation(line: 243, column: 17, scope: !2403)
!2410 = !DILocation(line: 246, column: 17, scope: !2403)
!2411 = !DILocation(line: 248, column: 39, scope: !629)
!2412 = !DILocation(line: 248, column: 19, scope: !629)
!2413 = !DILocation(line: 248, column: 17, scope: !629)
!2414 = !{!1243, !1243, i64 0}
!2415 = !DILocation(line: 249, column: 17, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !629, file: !4, line: 249, column: 17)
!2417 = !DILocation(line: 249, column: 21, scope: !2416)
!2418 = !DILocation(line: 249, column: 17, scope: !629)
!2419 = !DILocation(line: 250, column: 30, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2416, file: !4, line: 249, column: 26)
!2421 = !DILocation(line: 252, column: 21, scope: !2420)
!2422 = !DILocation(line: 250, column: 17, scope: !2420)
!2423 = !DILocation(line: 253, column: 17, scope: !2420)
!2424 = !DILocation(line: 256, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !629, file: !4, line: 256, column: 17)
!2426 = !DILocation(line: 256, column: 21, scope: !2425)
!2427 = !DILocation(line: 256, column: 17, scope: !629)
!2428 = !DILocation(line: 257, column: 116, scope: !2425)
!2429 = !DILocation(line: 257, column: 97, scope: !2425)
!2430 = !DILocation(line: 257, column: 124, scope: !2425)
!2431 = !DILocation(line: 257, column: 130, scope: !2425)
!2432 = !DILocation(line: 257, column: 136, scope: !2425)
!2433 = !DILocation(line: 257, column: 67, scope: !2425)
!2434 = !DILocation(line: 257, column: 216, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 1)
!2436 = !DILocation(line: 257, column: 198, scope: !2425)
!2437 = !DILocation(line: 257, column: 224, scope: !2425)
!2438 = !DILocation(line: 257, column: 230, scope: !2425)
!2439 = !DILocation(line: 257, column: 196, scope: !2425)
!2440 = !DILocation(line: 257, column: 289, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 3)
!2442 = !DILocation(line: 257, column: 272, scope: !2425)
!2443 = !DILocation(line: 257, column: 296, scope: !2425)
!2444 = !DILocation(line: 257, column: 302, scope: !2425)
!2445 = !DILocation(line: 257, column: 242, scope: !2425)
!2446 = !DILocation(line: 257, column: 338, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 5)
!2448 = !DILocation(line: 257, column: 320, scope: !2425)
!2449 = !DILocation(line: 257, column: 344, scope: !2425)
!2450 = !DILocation(line: 257, column: 312, scope: !2425)
!2451 = !DILocation(line: 257, column: 388, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 6)
!2453 = !DILocation(line: 257, column: 361, scope: !2425)
!2454 = !DILocation(line: 257, column: 394, scope: !2425)
!2455 = !DILocation(line: 257, column: 353, scope: !2425)
!2456 = !DILocation(line: 257, column: 196, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2458, file: !4, discriminator: 8)
!2458 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 7)
!2459 = !DILocation(line: 257, column: 442, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 4)
!2461 = !DILocation(line: 257, column: 421, scope: !2425)
!2462 = !DILocation(line: 257, column: 450, scope: !2425)
!2463 = !DILocation(line: 257, column: 455, scope: !2425)
!2464 = !DILocation(line: 257, column: 162, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !4, discriminator: 10)
!2466 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 9)
!2467 = !{!1223, !1223, i64 0}
!2468 = !DILocation(line: 257, column: 522, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 2)
!2470 = !DILocation(line: 257, column: 503, scope: !2425)
!2471 = !DILocation(line: 257, column: 530, scope: !2425)
!2472 = !DILocation(line: 257, column: 536, scope: !2425)
!2473 = !DILocation(line: 257, column: 542, scope: !2425)
!2474 = !DILocation(line: 257, column: 473, scope: !2425)
!2475 = !DILocation(line: 257, column: 622, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 12)
!2477 = !DILocation(line: 257, column: 604, scope: !2425)
!2478 = !DILocation(line: 257, column: 630, scope: !2425)
!2479 = !DILocation(line: 257, column: 636, scope: !2425)
!2480 = !DILocation(line: 257, column: 602, scope: !2425)
!2481 = !DILocation(line: 257, column: 695, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 14)
!2483 = !DILocation(line: 257, column: 678, scope: !2425)
!2484 = !DILocation(line: 257, column: 702, scope: !2425)
!2485 = !DILocation(line: 257, column: 708, scope: !2425)
!2486 = !DILocation(line: 257, column: 648, scope: !2425)
!2487 = !DILocation(line: 257, column: 744, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 16)
!2489 = !DILocation(line: 257, column: 726, scope: !2425)
!2490 = !DILocation(line: 257, column: 750, scope: !2425)
!2491 = !DILocation(line: 257, column: 718, scope: !2425)
!2492 = !DILocation(line: 257, column: 794, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 17)
!2494 = !DILocation(line: 257, column: 767, scope: !2425)
!2495 = !DILocation(line: 257, column: 800, scope: !2425)
!2496 = !DILocation(line: 257, column: 759, scope: !2425)
!2497 = !DILocation(line: 257, column: 602, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2499, file: !4, discriminator: 19)
!2499 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 18)
!2500 = !DILocation(line: 257, column: 848, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 15)
!2502 = !DILocation(line: 257, column: 827, scope: !2425)
!2503 = !DILocation(line: 257, column: 856, scope: !2425)
!2504 = !DILocation(line: 257, column: 861, scope: !2425)
!2505 = !DILocation(line: 257, column: 569, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2507, file: !4, discriminator: 21)
!2507 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 20)
!2508 = !DILocation(line: 257, column: 568, scope: !2425)
!2509 = !{!2510, !2510, i64 0}
!2510 = !{!"short", !1223, i64 0}
!2511 = !DILocation(line: 257, column: 932, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 13)
!2513 = !DILocation(line: 257, column: 914, scope: !2425)
!2514 = !DILocation(line: 257, column: 940, scope: !2425)
!2515 = !DILocation(line: 257, column: 946, scope: !2425)
!2516 = !DILocation(line: 257, column: 912, scope: !2425)
!2517 = !DILocation(line: 257, column: 1005, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 23)
!2519 = !DILocation(line: 257, column: 988, scope: !2425)
!2520 = !DILocation(line: 257, column: 1012, scope: !2425)
!2521 = !DILocation(line: 257, column: 1018, scope: !2425)
!2522 = !DILocation(line: 257, column: 958, scope: !2425)
!2523 = !DILocation(line: 257, column: 1054, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 25)
!2525 = !DILocation(line: 257, column: 1036, scope: !2425)
!2526 = !DILocation(line: 257, column: 1060, scope: !2425)
!2527 = !DILocation(line: 257, column: 1028, scope: !2425)
!2528 = !DILocation(line: 257, column: 1104, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 26)
!2530 = !DILocation(line: 257, column: 1077, scope: !2425)
!2531 = !DILocation(line: 257, column: 1110, scope: !2425)
!2532 = !DILocation(line: 257, column: 1069, scope: !2425)
!2533 = !DILocation(line: 257, column: 912, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !4, discriminator: 28)
!2535 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 27)
!2536 = !DILocation(line: 257, column: 1158, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 24)
!2538 = !DILocation(line: 257, column: 1137, scope: !2425)
!2539 = !DILocation(line: 257, column: 1166, scope: !2425)
!2540 = !DILocation(line: 257, column: 1171, scope: !2425)
!2541 = !DILocation(line: 257, column: 879, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2543, file: !4, discriminator: 30)
!2543 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 29)
!2544 = !DILocation(line: 257, column: 878, scope: !2425)
!2545 = !DILocation(line: 257, column: 67, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2547, file: !4, discriminator: 31)
!2547 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 22)
!2548 = !DILocation(line: 257, column: 18, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !4, discriminator: 32)
!2550 = !DILexicalBlockFile(scope: !2425, file: !4, discriminator: 11)
!2551 = !DILocation(line: 257, column: 25, scope: !2425)
!2552 = !DILocation(line: 257, column: 17, scope: !2425)
!2553 = !DILocation(line: 258, column: 9, scope: !630)
!2554 = !DILocation(line: 258, column: 9, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !630, file: !4, discriminator: 1)
!2556 = !DILocation(line: 258, column: 9, scope: !629)
!2557 = !DILocation(line: 260, column: 5, scope: !620)
!2558 = !DILocation(line: 261, column: 1, scope: !620)
!2559 = !DILocation(line: 193, column: 23, scope: !633)
!2560 = !DILocation(line: 193, column: 34, scope: !633)
!2561 = !DILocation(line: 193, column: 52, scope: !633)
!2562 = !DILocation(line: 193, column: 61, scope: !633)
!2563 = !DILocation(line: 195, column: 9, scope: !644)
!2564 = !DILocation(line: 195, column: 13, scope: !644)
!2565 = !DILocation(line: 195, column: 9, scope: !633)
!2566 = !DILocation(line: 196, column: 19, scope: !644)
!2567 = !DILocation(line: 196, column: 10, scope: !644)
!2568 = !DILocation(line: 196, column: 17, scope: !644)
!2569 = !DILocation(line: 196, column: 9, scope: !644)
!2570 = !DILocation(line: 198, column: 9, scope: !643)
!2571 = !DILocation(line: 198, column: 13, scope: !643)
!2572 = !DILocation(line: 198, column: 33, scope: !643)
!2573 = !DILocation(line: 198, column: 17, scope: !643)
!2574 = !DILocation(line: 199, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !643, file: !4, line: 199, column: 13)
!2576 = !DILocation(line: 199, column: 15, scope: !2575)
!2577 = !DILocation(line: 199, column: 13, scope: !643)
!2578 = !DILocation(line: 200, column: 13, scope: !2575)
!2579 = !DILocation(line: 201, column: 19, scope: !643)
!2580 = !DILocation(line: 201, column: 10, scope: !643)
!2581 = !DILocation(line: 201, column: 17, scope: !643)
!2582 = !DILocation(line: 202, column: 5, scope: !644)
!2583 = !DILocation(line: 202, column: 5, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !644, file: !4, discriminator: 1)
!2585 = !DILocation(line: 203, column: 5, scope: !633)
!2586 = !DILocation(line: 204, column: 1, scope: !633)
!2587 = !DILocation(line: 264, column: 22, scope: !645)
!2588 = !DILocation(line: 264, column: 39, scope: !645)
!2589 = !DILocation(line: 264, column: 57, scope: !645)
!2590 = !DILocation(line: 264, column: 74, scope: !645)
!2591 = !DILocation(line: 266, column: 9, scope: !660)
!2592 = !DILocation(line: 266, column: 13, scope: !660)
!2593 = !DILocation(line: 266, column: 9, scope: !645)
!2594 = !DILocation(line: 267, column: 41, scope: !660)
!2595 = !DILocation(line: 267, column: 54, scope: !660)
!2596 = !DILocation(line: 267, column: 47, scope: !660)
!2597 = !DILocation(line: 267, column: 19, scope: !660)
!2598 = !DILocation(line: 267, column: 10, scope: !660)
!2599 = !DILocation(line: 267, column: 17, scope: !660)
!2600 = !DILocation(line: 267, column: 9, scope: !660)
!2601 = !DILocation(line: 269, column: 13, scope: !658)
!2602 = !DILocation(line: 269, column: 17, scope: !658)
!2603 = !DILocation(line: 269, column: 13, scope: !659)
!2604 = !DILocation(line: 270, column: 14, scope: !658)
!2605 = !DILocation(line: 270, column: 21, scope: !658)
!2606 = !DILocation(line: 270, column: 13, scope: !658)
!2607 = !DILocation(line: 271, column: 36, scope: !657)
!2608 = !DILocation(line: 271, column: 43, scope: !657)
!2609 = !DILocation(line: 271, column: 54, scope: !657)
!2610 = !DILocation(line: 271, column: 63, scope: !657)
!2611 = !DILocation(line: 271, column: 80, scope: !657)
!2612 = !DILocation(line: 271, column: 18, scope: !658)
!2613 = !DILocation(line: 272, column: 26, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !657, file: !4, line: 271, column: 87)
!2615 = !DILocation(line: 273, column: 53, scope: !2614)
!2616 = !DILocation(line: 272, column: 13, scope: !2614)
!2617 = !DILocation(line: 274, column: 13, scope: !2614)
!2618 = !DILocation(line: 277, column: 51, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !656, file: !4, line: 277, column: 17)
!2620 = !DILocation(line: 277, column: 35, scope: !2619)
!2621 = !DILocation(line: 277, column: 57, scope: !2619)
!2622 = !DILocation(line: 277, column: 63, scope: !2619)
!2623 = !DILocation(line: 277, column: 33, scope: !2619)
!2624 = !DILocation(line: 277, column: 33, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2619, file: !4, discriminator: 1)
!2626 = !DILocation(line: 277, column: 106, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2619, file: !4, discriminator: 2)
!2628 = !DILocation(line: 277, column: 76, scope: !2619)
!2629 = !DILocation(line: 277, column: 114, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2631, file: !4, discriminator: 4)
!2631 = !DILexicalBlockFile(scope: !2619, file: !4, discriminator: 3)
!2632 = !DILocation(line: 277, column: 17, scope: !656)
!2633 = !DILocation(line: 278, column: 17, scope: !2619)
!2634 = !DILocation(line: 279, column: 13, scope: !656)
!2635 = !DILocation(line: 279, column: 18, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !655, file: !4, discriminator: 1)
!2637 = !DILocation(line: 279, column: 28, scope: !655)
!2638 = !DILocation(line: 279, column: 60, scope: !655)
!2639 = !DILocation(line: 279, column: 59, scope: !655)
!2640 = !DILocation(line: 279, column: 73, scope: !663)
!2641 = !DILocation(line: 279, column: 89, scope: !663)
!2642 = !DILocation(line: 279, column: 73, scope: !655)
!2643 = !DILocation(line: 279, column: 104, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !663, file: !4, discriminator: 2)
!2645 = !DILocation(line: 279, column: 109, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !662, file: !4, discriminator: 4)
!2647 = !DILocation(line: 279, column: 119, scope: !662)
!2648 = !DILocation(line: 279, column: 149, scope: !662)
!2649 = !DILocation(line: 279, column: 175, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !662, file: !4, line: 279, column: 172)
!2651 = !DILocation(line: 279, column: 192, scope: !2650)
!2652 = !DILocation(line: 279, column: 172, scope: !2650)
!2653 = !DILocation(line: 279, column: 202, scope: !2650)
!2654 = !DILocation(line: 279, column: 172, scope: !662)
!2655 = !DILocation(line: 279, column: 172, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !662, file: !4, discriminator: 5)
!2657 = !DILocation(line: 279, column: 233, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2650, file: !4, discriminator: 6)
!2659 = !DILocation(line: 279, column: 251, scope: !2650)
!2660 = !DILocation(line: 279, column: 261, scope: !2650)
!2661 = !DILocation(line: 279, column: 286, scope: !2650)
!2662 = !DILocation(line: 279, column: 217, scope: !2650)
!2663 = !DILocation(line: 279, column: 305, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !663, file: !4, discriminator: 7)
!2665 = !DILocation(line: 279, column: 305, scope: !662)
!2666 = !DILocation(line: 279, column: 305, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !662, file: !4, discriminator: 8)
!2668 = !DILocation(line: 279, column: 305, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !662, file: !4, discriminator: 9)
!2670 = !DILocation(line: 279, column: 318, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2672, file: !4, discriminator: 10)
!2672 = !DILexicalBlockFile(scope: !656, file: !4, discriminator: 3)
!2673 = !DILocation(line: 279, column: 318, scope: !655)
!2674 = !DILocation(line: 280, column: 29, scope: !656)
!2675 = !DILocation(line: 280, column: 36, scope: !656)
!2676 = !DILocation(line: 280, column: 45, scope: !656)
!2677 = !DILocation(line: 281, column: 23, scope: !656)
!2678 = !DILocation(line: 281, column: 14, scope: !656)
!2679 = !DILocation(line: 281, column: 21, scope: !656)
!2680 = !DILocation(line: 284, column: 5, scope: !645)
!2681 = !DILocation(line: 285, column: 1, scope: !645)
!2682 = !DILocation(line: 207, column: 22, scope: !664)
!2683 = !DILocation(line: 207, column: 33, scope: !664)
!2684 = !DILocation(line: 207, column: 51, scope: !664)
!2685 = !DILocation(line: 207, column: 60, scope: !664)
!2686 = !DILocation(line: 209, column: 9, scope: !672)
!2687 = !DILocation(line: 209, column: 13, scope: !672)
!2688 = !DILocation(line: 209, column: 9, scope: !664)
!2689 = !DILocation(line: 210, column: 19, scope: !672)
!2690 = !DILocation(line: 210, column: 10, scope: !672)
!2691 = !DILocation(line: 210, column: 17, scope: !672)
!2692 = !DILocation(line: 210, column: 9, scope: !672)
!2693 = !DILocation(line: 212, column: 9, scope: !671)
!2694 = !DILocation(line: 212, column: 14, scope: !671)
!2695 = !DILocation(line: 213, column: 29, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !671, file: !4, line: 213, column: 13)
!2697 = !DILocation(line: 213, column: 36, scope: !2696)
!2698 = !DILocation(line: 213, column: 45, scope: !2696)
!2699 = !DILocation(line: 213, column: 13, scope: !671)
!2700 = !DILocation(line: 214, column: 26, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !4, line: 213, column: 63)
!2702 = !DILocation(line: 215, column: 55, scope: !2701)
!2703 = !DILocation(line: 214, column: 13, scope: !2701)
!2704 = !DILocation(line: 216, column: 13, scope: !2701)
!2705 = !DILocation(line: 218, column: 31, scope: !671)
!2706 = !DILocation(line: 218, column: 17, scope: !671)
!2707 = !DILocation(line: 218, column: 15, scope: !671)
!2708 = !DILocation(line: 219, column: 13, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !671, file: !4, line: 219, column: 13)
!2710 = !DILocation(line: 219, column: 19, scope: !2709)
!2711 = !DILocation(line: 219, column: 25, scope: !2709)
!2712 = !DILocation(line: 219, column: 28, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2709, file: !4, discriminator: 1)
!2714 = !DILocation(line: 219, column: 13, scope: !671)
!2715 = !DILocation(line: 220, column: 13, scope: !2709)
!2716 = !DILocation(line: 222, column: 13, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !671, file: !4, line: 222, column: 13)
!2718 = !DILocation(line: 222, column: 19, scope: !2717)
!2719 = !DILocation(line: 222, column: 32, scope: !2717)
!2720 = !DILocation(line: 222, column: 35, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2717, file: !4, discriminator: 1)
!2722 = !DILocation(line: 222, column: 41, scope: !2717)
!2723 = !DILocation(line: 222, column: 13, scope: !671)
!2724 = !DILocation(line: 223, column: 26, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2717, file: !4, line: 222, column: 61)
!2726 = !DILocation(line: 224, column: 61, scope: !2725)
!2727 = !DILocation(line: 223, column: 13, scope: !2725)
!2728 = !DILocation(line: 225, column: 13, scope: !2725)
!2729 = !DILocation(line: 228, column: 24, scope: !671)
!2730 = !DILocation(line: 228, column: 19, scope: !671)
!2731 = !DILocation(line: 228, column: 10, scope: !671)
!2732 = !DILocation(line: 228, column: 17, scope: !671)
!2733 = !DILocation(line: 229, column: 5, scope: !672)
!2734 = !DILocation(line: 229, column: 5, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !672, file: !4, discriminator: 1)
!2736 = !DILocation(line: 230, column: 5, scope: !664)
!2737 = !DILocation(line: 231, column: 1, scope: !664)
!2738 = !DILocation(line: 288, column: 27, scope: !673)
!2739 = !DILocation(line: 290, column: 5, scope: !673)
!2740 = !DILocation(line: 290, column: 16, scope: !673)
!2741 = !DILocation(line: 292, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !673, file: !4, line: 292, column: 5)
!2743 = !DILocation(line: 292, column: 10, scope: !2742)
!2744 = !DILocation(line: 292, column: 29, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2746, file: !4, discriminator: 2)
!2746 = !DILexicalBlockFile(scope: !2747, file: !4, discriminator: 1)
!2747 = distinct !DILexicalBlock(scope: !2742, file: !4, line: 292, column: 5)
!2748 = !DILocation(line: 292, column: 33, scope: !2747)
!2749 = !DILocation(line: 292, column: 5, scope: !2742)
!2750 = !DILocation(line: 293, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !4, line: 293, column: 13)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !4, line: 292, column: 45)
!2753 = !DILocation(line: 293, column: 17, scope: !2751)
!2754 = !DILocation(line: 293, column: 26, scope: !2751)
!2755 = !DILocation(line: 293, column: 23, scope: !2751)
!2756 = !DILocation(line: 293, column: 13, scope: !2752)
!2757 = !DILocation(line: 294, column: 13, scope: !2751)
!2758 = !DILocation(line: 295, column: 5, scope: !2752)
!2759 = !DILocation(line: 292, column: 41, scope: !2747)
!2760 = !DILocation(line: 292, column: 5, scope: !2747)
!2761 = !DILocation(line: 296, column: 18, scope: !673)
!2762 = !DILocation(line: 296, column: 5, scope: !673)
!2763 = !DILocation(line: 297, column: 5, scope: !673)
!2764 = !DILocation(line: 298, column: 1, scope: !673)
!2765 = !DILocation(line: 868, column: 27, scope: !679)
!2766 = !DILocation(line: 870, column: 25, scope: !679)
!2767 = !DILocation(line: 870, column: 5, scope: !679)
!2768 = !DILocation(line: 871, column: 5, scope: !679)
!2769 = !DILocation(line: 871, column: 10, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !685, file: !4, discriminator: 1)
!2771 = !DILocation(line: 871, column: 20, scope: !685)
!2772 = !DILocation(line: 871, column: 51, scope: !685)
!2773 = !DILocation(line: 871, column: 57, scope: !685)
!2774 = !{!2775, !1222, i64 24}
!2775 = !{!"", !1266, i64 0, !1222, i64 16, !1222, i64 24, !1222, i64 32, !1223, i64 40, !1222, i64 48, !1243, i64 56, !1243, i64 64, !1347, i64 72, !1243, i64 80}
!2776 = !DILocation(line: 871, column: 38, scope: !685)
!2777 = !DILocation(line: 871, column: 71, scope: !688)
!2778 = !DILocation(line: 871, column: 87, scope: !688)
!2779 = !DILocation(line: 871, column: 71, scope: !685)
!2780 = !DILocation(line: 871, column: 102, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !688, file: !4, discriminator: 2)
!2782 = !DILocation(line: 871, column: 107, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 4)
!2784 = !DILocation(line: 871, column: 117, scope: !687)
!2785 = !DILocation(line: 871, column: 147, scope: !687)
!2786 = !DILocation(line: 871, column: 173, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !687, file: !4, line: 871, column: 170)
!2788 = !DILocation(line: 871, column: 190, scope: !2787)
!2789 = !DILocation(line: 871, column: 170, scope: !2787)
!2790 = !DILocation(line: 871, column: 200, scope: !2787)
!2791 = !DILocation(line: 871, column: 170, scope: !687)
!2792 = !DILocation(line: 871, column: 170, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 5)
!2794 = !DILocation(line: 871, column: 231, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2787, file: !4, discriminator: 6)
!2796 = !DILocation(line: 871, column: 249, scope: !2787)
!2797 = !DILocation(line: 871, column: 259, scope: !2787)
!2798 = !DILocation(line: 871, column: 284, scope: !2787)
!2799 = !DILocation(line: 871, column: 215, scope: !2787)
!2800 = !DILocation(line: 871, column: 303, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !688, file: !4, discriminator: 7)
!2802 = !DILocation(line: 871, column: 303, scope: !687)
!2803 = !DILocation(line: 871, column: 303, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 8)
!2805 = !DILocation(line: 871, column: 303, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 9)
!2807 = !DILocation(line: 871, column: 316, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2809, file: !4, discriminator: 10)
!2809 = !DILexicalBlockFile(scope: !679, file: !4, discriminator: 3)
!2810 = !DILocation(line: 871, column: 316, scope: !685)
!2811 = !DILocation(line: 872, column: 5, scope: !679)
!2812 = !DILocation(line: 872, column: 10, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !690, file: !4, discriminator: 1)
!2814 = !DILocation(line: 872, column: 20, scope: !690)
!2815 = !DILocation(line: 872, column: 51, scope: !690)
!2816 = !DILocation(line: 872, column: 57, scope: !690)
!2817 = !{!2775, !1222, i64 16}
!2818 = !DILocation(line: 872, column: 74, scope: !693)
!2819 = !DILocation(line: 872, column: 90, scope: !693)
!2820 = !DILocation(line: 872, column: 74, scope: !690)
!2821 = !DILocation(line: 872, column: 105, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !693, file: !4, discriminator: 2)
!2823 = !DILocation(line: 872, column: 110, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !692, file: !4, discriminator: 4)
!2825 = !DILocation(line: 872, column: 120, scope: !692)
!2826 = !DILocation(line: 872, column: 150, scope: !692)
!2827 = !DILocation(line: 872, column: 176, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !692, file: !4, line: 872, column: 173)
!2829 = !DILocation(line: 872, column: 193, scope: !2828)
!2830 = !DILocation(line: 872, column: 173, scope: !2828)
!2831 = !DILocation(line: 872, column: 203, scope: !2828)
!2832 = !DILocation(line: 872, column: 173, scope: !692)
!2833 = !DILocation(line: 872, column: 173, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !692, file: !4, discriminator: 5)
!2835 = !DILocation(line: 872, column: 234, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2828, file: !4, discriminator: 6)
!2837 = !DILocation(line: 872, column: 252, scope: !2828)
!2838 = !DILocation(line: 872, column: 262, scope: !2828)
!2839 = !DILocation(line: 872, column: 287, scope: !2828)
!2840 = !DILocation(line: 872, column: 218, scope: !2828)
!2841 = !DILocation(line: 872, column: 306, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !693, file: !4, discriminator: 7)
!2843 = !DILocation(line: 872, column: 306, scope: !692)
!2844 = !DILocation(line: 872, column: 306, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !692, file: !4, discriminator: 8)
!2846 = !DILocation(line: 872, column: 306, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !692, file: !4, discriminator: 9)
!2848 = !DILocation(line: 872, column: 319, scope: !2808)
!2849 = !DILocation(line: 872, column: 319, scope: !690)
!2850 = !DILocation(line: 873, column: 5, scope: !679)
!2851 = !DILocation(line: 873, column: 10, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !695, file: !4, discriminator: 1)
!2853 = !DILocation(line: 873, column: 20, scope: !695)
!2854 = !DILocation(line: 873, column: 51, scope: !695)
!2855 = !DILocation(line: 873, column: 57, scope: !695)
!2856 = !{!2775, !1222, i64 32}
!2857 = !DILocation(line: 873, column: 70, scope: !698)
!2858 = !DILocation(line: 873, column: 86, scope: !698)
!2859 = !DILocation(line: 873, column: 70, scope: !695)
!2860 = !DILocation(line: 873, column: 101, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !698, file: !4, discriminator: 2)
!2862 = !DILocation(line: 873, column: 106, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !697, file: !4, discriminator: 4)
!2864 = !DILocation(line: 873, column: 116, scope: !697)
!2865 = !DILocation(line: 873, column: 146, scope: !697)
!2866 = !DILocation(line: 873, column: 172, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !697, file: !4, line: 873, column: 169)
!2868 = !DILocation(line: 873, column: 189, scope: !2867)
!2869 = !DILocation(line: 873, column: 169, scope: !2867)
!2870 = !DILocation(line: 873, column: 199, scope: !2867)
!2871 = !DILocation(line: 873, column: 169, scope: !697)
!2872 = !DILocation(line: 873, column: 169, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !697, file: !4, discriminator: 5)
!2874 = !DILocation(line: 873, column: 230, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2867, file: !4, discriminator: 6)
!2876 = !DILocation(line: 873, column: 248, scope: !2867)
!2877 = !DILocation(line: 873, column: 258, scope: !2867)
!2878 = !DILocation(line: 873, column: 283, scope: !2867)
!2879 = !DILocation(line: 873, column: 214, scope: !2867)
!2880 = !DILocation(line: 873, column: 302, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !698, file: !4, discriminator: 7)
!2882 = !DILocation(line: 873, column: 302, scope: !697)
!2883 = !DILocation(line: 873, column: 302, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !697, file: !4, discriminator: 8)
!2885 = !DILocation(line: 873, column: 302, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !697, file: !4, discriminator: 9)
!2887 = !DILocation(line: 873, column: 315, scope: !2808)
!2888 = !DILocation(line: 873, column: 315, scope: !695)
!2889 = !DILocation(line: 874, column: 9, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !679, file: !4, line: 874, column: 9)
!2891 = !DILocation(line: 874, column: 15, scope: !2890)
!2892 = !{!2775, !1222, i64 48}
!2893 = !DILocation(line: 874, column: 21, scope: !2890)
!2894 = !DILocation(line: 874, column: 9, scope: !679)
!2895 = !DILocation(line: 875, column: 20, scope: !2890)
!2896 = !DILocation(line: 875, column: 26, scope: !2890)
!2897 = !DILocation(line: 875, column: 9, scope: !2890)
!2898 = !DILocation(line: 876, column: 21, scope: !679)
!2899 = !DILocation(line: 876, column: 5, scope: !679)
!2900 = !DILocation(line: 877, column: 1, scope: !679)
!2901 = !DILocation(line: 880, column: 28, scope: !699)
!2902 = !DILocation(line: 880, column: 44, scope: !699)
!2903 = !DILocation(line: 880, column: 57, scope: !699)
!2904 = !DILocation(line: 882, column: 5, scope: !699)
!2905 = !DILocation(line: 882, column: 14, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !708, file: !4, discriminator: 1)
!2907 = !DILocation(line: 882, column: 20, scope: !708)
!2908 = !DILocation(line: 882, column: 14, scope: !708)
!2909 = !DILocation(line: 882, column: 14, scope: !709)
!2910 = !DILocation(line: 882, column: 31, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !707, file: !4, discriminator: 2)
!2912 = !DILocation(line: 882, column: 35, scope: !707)
!2913 = !DILocation(line: 882, column: 42, scope: !707)
!2914 = !DILocation(line: 882, column: 61, scope: !707)
!2915 = !DILocation(line: 882, column: 67, scope: !707)
!2916 = !DILocation(line: 882, column: 48, scope: !707)
!2917 = !DILocation(line: 882, column: 77, scope: !707)
!2918 = !DILocation(line: 882, column: 87, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !707, file: !4, line: 882, column: 87)
!2920 = !DILocation(line: 882, column: 87, scope: !707)
!2921 = !DILocation(line: 882, column: 100, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2919, file: !4, discriminator: 4)
!2923 = !DILocation(line: 882, column: 93, scope: !2919)
!2924 = !DILocation(line: 882, column: 106, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !708, file: !4, discriminator: 5)
!2926 = !DILocation(line: 882, column: 106, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !4, discriminator: 7)
!2928 = !DILexicalBlockFile(scope: !708, file: !4, discriminator: 6)
!2929 = !DILocation(line: 882, column: 106, scope: !707)
!2930 = !DILocation(line: 882, column: 108, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2932, file: !4, discriminator: 8)
!2932 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 3)
!2933 = !DILocation(line: 883, column: 5, scope: !699)
!2934 = !DILocation(line: 883, column: 14, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !712, file: !4, discriminator: 1)
!2936 = !DILocation(line: 883, column: 20, scope: !712)
!2937 = !DILocation(line: 883, column: 14, scope: !712)
!2938 = !DILocation(line: 883, column: 14, scope: !713)
!2939 = !DILocation(line: 883, column: 34, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !711, file: !4, discriminator: 2)
!2941 = !DILocation(line: 883, column: 38, scope: !711)
!2942 = !DILocation(line: 883, column: 45, scope: !711)
!2943 = !DILocation(line: 883, column: 64, scope: !711)
!2944 = !DILocation(line: 883, column: 70, scope: !711)
!2945 = !DILocation(line: 883, column: 83, scope: !711)
!2946 = !DILocation(line: 883, column: 93, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !711, file: !4, line: 883, column: 93)
!2948 = !DILocation(line: 883, column: 93, scope: !711)
!2949 = !DILocation(line: 883, column: 106, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2947, file: !4, discriminator: 4)
!2951 = !DILocation(line: 883, column: 99, scope: !2947)
!2952 = !DILocation(line: 883, column: 112, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !712, file: !4, discriminator: 5)
!2954 = !DILocation(line: 883, column: 112, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2956, file: !4, discriminator: 7)
!2956 = !DILexicalBlockFile(scope: !712, file: !4, discriminator: 6)
!2957 = !DILocation(line: 883, column: 112, scope: !711)
!2958 = !DILocation(line: 883, column: 114, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2960, file: !4, discriminator: 8)
!2960 = !DILexicalBlockFile(scope: !713, file: !4, discriminator: 3)
!2961 = !DILocation(line: 884, column: 5, scope: !699)
!2962 = !DILocation(line: 884, column: 14, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 1)
!2964 = !DILocation(line: 884, column: 20, scope: !716)
!2965 = !DILocation(line: 884, column: 14, scope: !716)
!2966 = !DILocation(line: 884, column: 14, scope: !717)
!2967 = !DILocation(line: 884, column: 30, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !715, file: !4, discriminator: 2)
!2969 = !DILocation(line: 884, column: 34, scope: !715)
!2970 = !DILocation(line: 884, column: 41, scope: !715)
!2971 = !DILocation(line: 884, column: 60, scope: !715)
!2972 = !DILocation(line: 884, column: 66, scope: !715)
!2973 = !DILocation(line: 884, column: 75, scope: !715)
!2974 = !DILocation(line: 884, column: 85, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !715, file: !4, line: 884, column: 85)
!2976 = !DILocation(line: 884, column: 85, scope: !715)
!2977 = !DILocation(line: 884, column: 98, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2975, file: !4, discriminator: 4)
!2979 = !DILocation(line: 884, column: 91, scope: !2975)
!2980 = !DILocation(line: 884, column: 104, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 5)
!2982 = !DILocation(line: 884, column: 104, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2984, file: !4, discriminator: 7)
!2984 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 6)
!2985 = !DILocation(line: 884, column: 104, scope: !715)
!2986 = !DILocation(line: 884, column: 106, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2988, file: !4, discriminator: 8)
!2988 = !DILexicalBlockFile(scope: !717, file: !4, discriminator: 3)
!2989 = !DILocation(line: 885, column: 5, scope: !699)
!2990 = !DILocation(line: 886, column: 1, scope: !699)
!2991 = !DILocation(line: 889, column: 25, scope: !718)
!2992 = !DILocation(line: 891, column: 5, scope: !718)
!2993 = !DILocation(line: 891, column: 10, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !724, file: !4, discriminator: 1)
!2995 = !DILocation(line: 891, column: 20, scope: !724)
!2996 = !DILocation(line: 891, column: 43, scope: !724)
!2997 = !DILocation(line: 891, column: 49, scope: !724)
!2998 = !DILocation(line: 891, column: 30, scope: !724)
!2999 = !DILocation(line: 891, column: 63, scope: !728)
!3000 = !DILocation(line: 891, column: 71, scope: !728)
!3001 = !DILocation(line: 891, column: 63, scope: !724)
!3002 = !DILocation(line: 891, column: 89, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 2)
!3004 = !DILocation(line: 891, column: 95, scope: !727)
!3005 = !DILocation(line: 891, column: 104, scope: !727)
!3006 = !DILocation(line: 891, column: 118, scope: !727)
!3007 = !DILocation(line: 891, column: 123, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 4)
!3009 = !DILocation(line: 891, column: 133, scope: !726)
!3010 = !DILocation(line: 891, column: 163, scope: !726)
!3011 = !DILocation(line: 891, column: 181, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !726, file: !4, line: 891, column: 178)
!3013 = !DILocation(line: 891, column: 198, scope: !3012)
!3014 = !DILocation(line: 891, column: 178, scope: !3012)
!3015 = !DILocation(line: 891, column: 208, scope: !3012)
!3016 = !DILocation(line: 891, column: 178, scope: !726)
!3017 = !DILocation(line: 891, column: 178, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 5)
!3019 = !DILocation(line: 891, column: 239, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3012, file: !4, discriminator: 6)
!3021 = !DILocation(line: 891, column: 257, scope: !3012)
!3022 = !DILocation(line: 891, column: 267, scope: !3012)
!3023 = !DILocation(line: 891, column: 292, scope: !3012)
!3024 = !DILocation(line: 891, column: 223, scope: !3012)
!3025 = !DILocation(line: 891, column: 311, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 7)
!3027 = !DILocation(line: 891, column: 311, scope: !726)
!3028 = !DILocation(line: 891, column: 311, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 8)
!3030 = !DILocation(line: 891, column: 324, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 9)
!3032 = !DILocation(line: 891, column: 326, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3034, file: !4, discriminator: 10)
!3034 = !DILexicalBlockFile(scope: !718, file: !4, discriminator: 3)
!3035 = !DILocation(line: 891, column: 326, scope: !724)
!3036 = !DILocation(line: 892, column: 5, scope: !718)
!3037 = !DILocation(line: 892, column: 10, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !730, file: !4, discriminator: 1)
!3039 = !DILocation(line: 892, column: 20, scope: !730)
!3040 = !DILocation(line: 892, column: 43, scope: !730)
!3041 = !DILocation(line: 892, column: 49, scope: !730)
!3042 = !DILocation(line: 892, column: 66, scope: !734)
!3043 = !DILocation(line: 892, column: 74, scope: !734)
!3044 = !DILocation(line: 892, column: 66, scope: !730)
!3045 = !DILocation(line: 892, column: 92, scope: !3046)
!3046 = !DILexicalBlockFile(scope: !733, file: !4, discriminator: 2)
!3047 = !DILocation(line: 892, column: 98, scope: !733)
!3048 = !DILocation(line: 892, column: 110, scope: !733)
!3049 = !DILocation(line: 892, column: 124, scope: !733)
!3050 = !DILocation(line: 892, column: 129, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 4)
!3052 = !DILocation(line: 892, column: 139, scope: !732)
!3053 = !DILocation(line: 892, column: 169, scope: !732)
!3054 = !DILocation(line: 892, column: 187, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !732, file: !4, line: 892, column: 184)
!3056 = !DILocation(line: 892, column: 204, scope: !3055)
!3057 = !DILocation(line: 892, column: 184, scope: !3055)
!3058 = !DILocation(line: 892, column: 214, scope: !3055)
!3059 = !DILocation(line: 892, column: 184, scope: !732)
!3060 = !DILocation(line: 892, column: 184, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 5)
!3062 = !DILocation(line: 892, column: 245, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3055, file: !4, discriminator: 6)
!3064 = !DILocation(line: 892, column: 263, scope: !3055)
!3065 = !DILocation(line: 892, column: 273, scope: !3055)
!3066 = !DILocation(line: 892, column: 298, scope: !3055)
!3067 = !DILocation(line: 892, column: 229, scope: !3055)
!3068 = !DILocation(line: 892, column: 317, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !733, file: !4, discriminator: 7)
!3070 = !DILocation(line: 892, column: 317, scope: !732)
!3071 = !DILocation(line: 892, column: 317, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 8)
!3073 = !DILocation(line: 892, column: 330, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !733, file: !4, discriminator: 9)
!3075 = !DILocation(line: 892, column: 332, scope: !3033)
!3076 = !DILocation(line: 892, column: 332, scope: !730)
!3077 = !DILocation(line: 893, column: 5, scope: !718)
!3078 = !DILocation(line: 893, column: 10, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 1)
!3080 = !DILocation(line: 893, column: 20, scope: !736)
!3081 = !DILocation(line: 893, column: 43, scope: !736)
!3082 = !DILocation(line: 893, column: 49, scope: !736)
!3083 = !DILocation(line: 893, column: 62, scope: !740)
!3084 = !DILocation(line: 893, column: 70, scope: !740)
!3085 = !DILocation(line: 893, column: 62, scope: !736)
!3086 = !DILocation(line: 893, column: 88, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !739, file: !4, discriminator: 2)
!3088 = !DILocation(line: 893, column: 94, scope: !739)
!3089 = !DILocation(line: 893, column: 102, scope: !739)
!3090 = !DILocation(line: 893, column: 116, scope: !739)
!3091 = !DILocation(line: 893, column: 121, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !738, file: !4, discriminator: 4)
!3093 = !DILocation(line: 893, column: 131, scope: !738)
!3094 = !DILocation(line: 893, column: 161, scope: !738)
!3095 = !DILocation(line: 893, column: 179, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !738, file: !4, line: 893, column: 176)
!3097 = !DILocation(line: 893, column: 196, scope: !3096)
!3098 = !DILocation(line: 893, column: 176, scope: !3096)
!3099 = !DILocation(line: 893, column: 206, scope: !3096)
!3100 = !DILocation(line: 893, column: 176, scope: !738)
!3101 = !DILocation(line: 893, column: 176, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !738, file: !4, discriminator: 5)
!3103 = !DILocation(line: 893, column: 237, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3096, file: !4, discriminator: 6)
!3105 = !DILocation(line: 893, column: 255, scope: !3096)
!3106 = !DILocation(line: 893, column: 265, scope: !3096)
!3107 = !DILocation(line: 893, column: 290, scope: !3096)
!3108 = !DILocation(line: 893, column: 221, scope: !3096)
!3109 = !DILocation(line: 893, column: 309, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !739, file: !4, discriminator: 7)
!3111 = !DILocation(line: 893, column: 309, scope: !738)
!3112 = !DILocation(line: 893, column: 309, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !738, file: !4, discriminator: 8)
!3114 = !DILocation(line: 893, column: 322, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !739, file: !4, discriminator: 9)
!3116 = !DILocation(line: 893, column: 324, scope: !3033)
!3117 = !DILocation(line: 893, column: 324, scope: !736)
!3118 = !DILocation(line: 894, column: 5, scope: !718)
!3119 = !DILocation(line: 798, column: 28, scope: !741)
!3120 = !DILocation(line: 800, column: 5, scope: !741)
!3121 = !DILocation(line: 800, column: 15, scope: !741)
!3122 = !DILocation(line: 801, column: 5, scope: !741)
!3123 = !DILocation(line: 801, column: 13, scope: !741)
!3124 = !DILocation(line: 802, column: 5, scope: !741)
!3125 = !DILocation(line: 802, column: 16, scope: !741)
!3126 = !DILocation(line: 802, column: 21, scope: !741)
!3127 = !DILocation(line: 803, column: 5, scope: !741)
!3128 = !DILocation(line: 803, column: 18, scope: !741)
!3129 = !DILocation(line: 804, column: 5, scope: !741)
!3130 = !DILocation(line: 804, column: 11, scope: !741)
!3131 = !DILocation(line: 805, column: 5, scope: !741)
!3132 = !DILocation(line: 805, column: 15, scope: !741)
!3133 = !DILocation(line: 807, column: 21, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !741, file: !4, line: 807, column: 9)
!3135 = !DILocation(line: 807, column: 9, scope: !3134)
!3136 = !DILocation(line: 807, column: 27, scope: !3134)
!3137 = !DILocation(line: 807, column: 9, scope: !741)
!3138 = !DILocation(line: 808, column: 9, scope: !3134)
!3139 = !DILocation(line: 809, column: 5, scope: !741)
!3140 = !DILocation(line: 810, column: 31, scope: !757)
!3141 = !DILocation(line: 810, column: 37, scope: !757)
!3142 = !DILocation(line: 810, column: 19, scope: !757)
!3143 = !DILocation(line: 810, column: 17, scope: !757)
!3144 = !DILocation(line: 811, column: 13, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !757, file: !4, line: 811, column: 13)
!3146 = !DILocation(line: 811, column: 21, scope: !3145)
!3147 = !DILocation(line: 811, column: 13, scope: !757)
!3148 = !DILocation(line: 813, column: 18, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !4, line: 813, column: 17)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !4, line: 811, column: 36)
!3151 = !DILocation(line: 813, column: 35, scope: !3149)
!3152 = !DILocation(line: 813, column: 39, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3149, file: !4, discriminator: 1)
!3154 = !DILocation(line: 813, column: 45, scope: !3149)
!3155 = !{!2775, !1243, i64 64}
!3156 = !DILocation(line: 813, column: 55, scope: !3149)
!3157 = !DILocation(line: 813, column: 60, scope: !3149)
!3158 = !DILocation(line: 814, column: 39, scope: !3149)
!3159 = !DILocation(line: 814, column: 45, scope: !3149)
!3160 = !{!2775, !1223, i64 40}
!3161 = !DILocation(line: 814, column: 51, scope: !3149)
!3162 = !DILocation(line: 813, column: 17, scope: !3150)
!3163 = !DILocation(line: 815, column: 21, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !4, line: 815, column: 21)
!3165 = distinct !DILexicalBlock(scope: !3149, file: !4, line: 814, column: 72)
!3166 = !DILocation(line: 815, column: 27, scope: !3164)
!3167 = !DILocation(line: 815, column: 36, scope: !3164)
!3168 = !{!1346, !1347, i64 52}
!3169 = !DILocation(line: 815, column: 21, scope: !3165)
!3170 = !DILocation(line: 816, column: 69, scope: !3164)
!3171 = !DILocation(line: 816, column: 51, scope: !3164)
!3172 = !DILocation(line: 816, column: 38, scope: !3164)
!3173 = !DILocation(line: 816, column: 104, scope: !3164)
!3174 = !DILocation(line: 816, column: 21, scope: !3164)
!3175 = !DILocation(line: 818, column: 43, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3164, file: !4, line: 818, column: 26)
!3177 = !DILocation(line: 818, column: 26, scope: !3176)
!3178 = !DILocation(line: 818, column: 49, scope: !3176)
!3179 = !DILocation(line: 818, column: 26, scope: !3164)
!3180 = !DILocation(line: 819, column: 21, scope: !3176)
!3181 = !DILocation(line: 820, column: 13, scope: !3165)
!3182 = !DILocation(line: 821, column: 13, scope: !3150)
!3183 = !DILocation(line: 823, column: 31, scope: !756)
!3184 = !DILocation(line: 823, column: 42, scope: !756)
!3185 = !DILocation(line: 823, column: 53, scope: !756)
!3186 = !DILocation(line: 823, column: 62, scope: !756)
!3187 = !DILocation(line: 823, column: 79, scope: !756)
!3188 = !DILocation(line: 823, column: 13, scope: !757)
!3189 = !DILocation(line: 824, column: 58, scope: !755)
!3190 = !DILocation(line: 824, column: 40, scope: !755)
!3191 = !DILocation(line: 824, column: 27, scope: !755)
!3192 = !DILocation(line: 824, column: 93, scope: !755)
!3193 = !DILocation(line: 828, column: 26, scope: !755)
!3194 = !DILocation(line: 828, column: 35, scope: !755)
!3195 = !DILocation(line: 828, column: 44, scope: !755)
!3196 = !DILocation(line: 824, column: 13, scope: !755)
!3197 = !DILocation(line: 830, column: 13, scope: !755)
!3198 = !DILocation(line: 830, column: 18, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !754, file: !4, discriminator: 1)
!3200 = !DILocation(line: 830, column: 28, scope: !754)
!3201 = !DILocation(line: 830, column: 58, scope: !754)
!3202 = !DILocation(line: 830, column: 76, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !754, file: !4, line: 830, column: 73)
!3204 = !DILocation(line: 830, column: 93, scope: !3203)
!3205 = !DILocation(line: 830, column: 73, scope: !3203)
!3206 = !DILocation(line: 830, column: 103, scope: !3203)
!3207 = !DILocation(line: 830, column: 73, scope: !754)
!3208 = !DILocation(line: 830, column: 73, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !754, file: !4, discriminator: 2)
!3210 = !DILocation(line: 830, column: 134, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3203, file: !4, discriminator: 3)
!3212 = !DILocation(line: 830, column: 152, scope: !3203)
!3213 = !DILocation(line: 830, column: 162, scope: !3203)
!3214 = !DILocation(line: 830, column: 187, scope: !3203)
!3215 = !DILocation(line: 830, column: 118, scope: !3203)
!3216 = !DILocation(line: 830, column: 206, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !755, file: !4, discriminator: 4)
!3218 = !DILocation(line: 830, column: 206, scope: !754)
!3219 = !DILocation(line: 830, column: 206, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !754, file: !4, discriminator: 5)
!3221 = !DILocation(line: 831, column: 13, scope: !755)
!3222 = !DILocation(line: 833, column: 47, scope: !761)
!3223 = !DILocation(line: 833, column: 31, scope: !761)
!3224 = !DILocation(line: 833, column: 57, scope: !761)
!3225 = !DILocation(line: 833, column: 63, scope: !761)
!3226 = !DILocation(line: 833, column: 29, scope: !761)
!3227 = !DILocation(line: 833, column: 29, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !761, file: !4, discriminator: 1)
!3229 = !DILocation(line: 833, column: 106, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !761, file: !4, discriminator: 2)
!3231 = !DILocation(line: 833, column: 76, scope: !761)
!3232 = !DILocation(line: 833, column: 118, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3234, file: !4, discriminator: 4)
!3234 = !DILexicalBlockFile(scope: !761, file: !4, discriminator: 3)
!3235 = !DILocation(line: 833, column: 13, scope: !757)
!3236 = !DILocation(line: 834, column: 13, scope: !760)
!3237 = !DILocation(line: 834, column: 18, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !759, file: !4, discriminator: 1)
!3239 = !DILocation(line: 834, column: 28, scope: !759)
!3240 = !DILocation(line: 834, column: 58, scope: !759)
!3241 = !DILocation(line: 834, column: 76, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !759, file: !4, line: 834, column: 73)
!3243 = !DILocation(line: 834, column: 93, scope: !3242)
!3244 = !DILocation(line: 834, column: 73, scope: !3242)
!3245 = !DILocation(line: 834, column: 103, scope: !3242)
!3246 = !DILocation(line: 834, column: 73, scope: !759)
!3247 = !DILocation(line: 834, column: 73, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !759, file: !4, discriminator: 2)
!3249 = !DILocation(line: 834, column: 134, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3242, file: !4, discriminator: 3)
!3251 = !DILocation(line: 834, column: 152, scope: !3242)
!3252 = !DILocation(line: 834, column: 162, scope: !3242)
!3253 = !DILocation(line: 834, column: 187, scope: !3242)
!3254 = !DILocation(line: 834, column: 118, scope: !3242)
!3255 = !DILocation(line: 834, column: 206, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !760, file: !4, discriminator: 4)
!3257 = !DILocation(line: 834, column: 206, scope: !759)
!3258 = !DILocation(line: 834, column: 206, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !759, file: !4, discriminator: 5)
!3260 = !DILocation(line: 835, column: 13, scope: !760)
!3261 = !DILocation(line: 837, column: 11, scope: !757)
!3262 = !DILocation(line: 837, column: 17, scope: !757)
!3263 = !DILocation(line: 837, column: 9, scope: !757)
!3264 = !{!2775, !1243, i64 80}
!3265 = !DILocation(line: 838, column: 64, scope: !757)
!3266 = !DILocation(line: 838, column: 46, scope: !757)
!3267 = !DILocation(line: 838, column: 75, scope: !757)
!3268 = !DILocation(line: 838, column: 81, scope: !757)
!3269 = !DILocation(line: 838, column: 14, scope: !757)
!3270 = !DILocation(line: 839, column: 50, scope: !757)
!3271 = !DILocation(line: 839, column: 33, scope: !757)
!3272 = !DILocation(line: 839, column: 61, scope: !757)
!3273 = !DILocation(line: 839, column: 67, scope: !757)
!3274 = !DILocation(line: 839, column: 31, scope: !757)
!3275 = !DILocation(line: 839, column: 125, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 1)
!3277 = !DILocation(line: 839, column: 109, scope: !757)
!3278 = !DILocation(line: 839, column: 135, scope: !757)
!3279 = !DILocation(line: 839, column: 141, scope: !757)
!3280 = !DILocation(line: 839, column: 79, scope: !757)
!3281 = !DILocation(line: 839, column: 176, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 3)
!3283 = !DILocation(line: 839, column: 159, scope: !757)
!3284 = !DILocation(line: 839, column: 185, scope: !757)
!3285 = !DILocation(line: 839, column: 151, scope: !757)
!3286 = !DILocation(line: 839, column: 228, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 4)
!3288 = !DILocation(line: 839, column: 202, scope: !757)
!3289 = !DILocation(line: 839, column: 237, scope: !757)
!3290 = !DILocation(line: 839, column: 194, scope: !757)
!3291 = !DILocation(line: 839, column: 31, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3293, file: !4, discriminator: 6)
!3293 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 5)
!3294 = !DILocation(line: 839, column: 284, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 2)
!3296 = !DILocation(line: 839, column: 264, scope: !757)
!3297 = !DILocation(line: 839, column: 295, scope: !757)
!3298 = !DILocation(line: 839, column: 300, scope: !757)
!3299 = !DILocation(line: 839, column: 14, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3301, file: !4, discriminator: 8)
!3301 = !DILexicalBlockFile(scope: !757, file: !4, discriminator: 7)
!3302 = !DILocation(line: 840, column: 13, scope: !757)
!3303 = !DILocation(line: 841, column: 67, scope: !757)
!3304 = !DILocation(line: 841, column: 49, scope: !757)
!3305 = !DILocation(line: 841, column: 78, scope: !757)
!3306 = !{!3307, !1243, i64 16}
!3307 = !{!"", !1266, i64 0, !1243, i64 16, !1243, i64 24, !3308, i64 32, !1222, i64 40}
!3308 = !{!"", !1347, i64 0, !1347, i64 0, !1347, i64 0, !1347, i64 0, !1347, i64 0, !1347, i64 1}
!3309 = !DILocation(line: 841, column: 17, scope: !757)
!3310 = !DILocation(line: 842, column: 9, scope: !757)
!3311 = !DILocation(line: 842, column: 23, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3276, file: !4, discriminator: 2)
!3313 = !DILocation(line: 843, column: 30, scope: !766)
!3314 = !DILocation(line: 843, column: 36, scope: !766)
!3315 = !DILocation(line: 843, column: 29, scope: !766)
!3316 = !DILocation(line: 843, column: 89, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 1)
!3318 = !DILocation(line: 843, column: 81, scope: !766)
!3319 = !DILocation(line: 843, column: 62, scope: !766)
!3320 = !DILocation(line: 843, column: 99, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 2)
!3322 = !DILocation(line: 843, column: 105, scope: !766)
!3323 = !DILocation(line: 843, column: 98, scope: !766)
!3324 = !DILocation(line: 843, column: 158, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 4)
!3326 = !DILocation(line: 843, column: 150, scope: !766)
!3327 = !DILocation(line: 843, column: 132, scope: !766)
!3328 = !DILocation(line: 843, column: 131, scope: !766)
!3329 = !DILocation(line: 843, column: 193, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 5)
!3331 = !DILocation(line: 843, column: 185, scope: !766)
!3332 = !DILocation(line: 843, column: 167, scope: !766)
!3333 = !DILocation(line: 843, column: 166, scope: !766)
!3334 = !DILocation(line: 843, column: 29, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3336, file: !4, discriminator: 7)
!3336 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 6)
!3337 = !DILocation(line: 843, column: 15, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3339, file: !4, discriminator: 8)
!3339 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 3)
!3340 = !DILocation(line: 844, column: 17, scope: !765)
!3341 = !DILocation(line: 844, column: 19, scope: !765)
!3342 = !DILocation(line: 844, column: 17, scope: !766)
!3343 = !DILocation(line: 845, column: 17, scope: !764)
!3344 = !DILocation(line: 845, column: 22, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !763, file: !4, discriminator: 1)
!3346 = !DILocation(line: 845, column: 32, scope: !763)
!3347 = !DILocation(line: 845, column: 62, scope: !763)
!3348 = !DILocation(line: 845, column: 80, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !763, file: !4, line: 845, column: 77)
!3350 = !DILocation(line: 845, column: 97, scope: !3349)
!3351 = !DILocation(line: 845, column: 77, scope: !3349)
!3352 = !DILocation(line: 845, column: 107, scope: !3349)
!3353 = !DILocation(line: 845, column: 77, scope: !763)
!3354 = !DILocation(line: 845, column: 77, scope: !3355)
!3355 = !DILexicalBlockFile(scope: !763, file: !4, discriminator: 2)
!3356 = !DILocation(line: 845, column: 138, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3349, file: !4, discriminator: 3)
!3358 = !DILocation(line: 845, column: 156, scope: !3349)
!3359 = !DILocation(line: 845, column: 166, scope: !3349)
!3360 = !DILocation(line: 845, column: 191, scope: !3349)
!3361 = !DILocation(line: 845, column: 122, scope: !3349)
!3362 = !DILocation(line: 845, column: 210, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !764, file: !4, discriminator: 4)
!3364 = !DILocation(line: 845, column: 210, scope: !763)
!3365 = !DILocation(line: 845, column: 210, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !763, file: !4, discriminator: 5)
!3367 = !DILocation(line: 846, column: 62, scope: !764)
!3368 = !DILocation(line: 846, column: 44, scope: !764)
!3369 = !DILocation(line: 846, column: 31, scope: !764)
!3370 = !DILocation(line: 846, column: 97, scope: !764)
!3371 = !DILocation(line: 846, column: 17, scope: !764)
!3372 = !DILocation(line: 848, column: 17, scope: !764)
!3373 = !DILocation(line: 850, column: 36, scope: !770)
!3374 = !DILocation(line: 850, column: 42, scope: !770)
!3375 = !DILocation(line: 850, column: 17, scope: !770)
!3376 = !DILocation(line: 850, column: 45, scope: !770)
!3377 = !DILocation(line: 850, column: 17, scope: !766)
!3378 = !DILocation(line: 851, column: 17, scope: !769)
!3379 = !DILocation(line: 851, column: 22, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !768, file: !4, discriminator: 1)
!3381 = !DILocation(line: 851, column: 32, scope: !768)
!3382 = !DILocation(line: 851, column: 62, scope: !768)
!3383 = !DILocation(line: 851, column: 80, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !768, file: !4, line: 851, column: 77)
!3385 = !DILocation(line: 851, column: 97, scope: !3384)
!3386 = !DILocation(line: 851, column: 77, scope: !3384)
!3387 = !DILocation(line: 851, column: 107, scope: !3384)
!3388 = !DILocation(line: 851, column: 77, scope: !768)
!3389 = !DILocation(line: 851, column: 77, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !768, file: !4, discriminator: 2)
!3391 = !DILocation(line: 851, column: 138, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3384, file: !4, discriminator: 3)
!3393 = !DILocation(line: 851, column: 156, scope: !3384)
!3394 = !DILocation(line: 851, column: 166, scope: !3384)
!3395 = !DILocation(line: 851, column: 191, scope: !3384)
!3396 = !DILocation(line: 851, column: 122, scope: !3384)
!3397 = !DILocation(line: 851, column: 210, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !769, file: !4, discriminator: 4)
!3399 = !DILocation(line: 851, column: 210, scope: !768)
!3400 = !DILocation(line: 851, column: 210, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !768, file: !4, discriminator: 5)
!3402 = !DILocation(line: 852, column: 17, scope: !769)
!3403 = !DILocation(line: 854, column: 16, scope: !766)
!3404 = !DILocation(line: 856, column: 9, scope: !757)
!3405 = !DILocation(line: 856, column: 14, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !772, file: !4, discriminator: 1)
!3407 = !DILocation(line: 856, column: 24, scope: !772)
!3408 = !DILocation(line: 856, column: 54, scope: !772)
!3409 = !DILocation(line: 856, column: 72, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !772, file: !4, line: 856, column: 69)
!3411 = !DILocation(line: 856, column: 89, scope: !3410)
!3412 = !DILocation(line: 856, column: 69, scope: !3410)
!3413 = !DILocation(line: 856, column: 99, scope: !3410)
!3414 = !DILocation(line: 856, column: 69, scope: !772)
!3415 = !DILocation(line: 856, column: 69, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !772, file: !4, discriminator: 2)
!3417 = !DILocation(line: 856, column: 130, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3410, file: !4, discriminator: 3)
!3419 = !DILocation(line: 856, column: 148, scope: !3410)
!3420 = !DILocation(line: 856, column: 158, scope: !3410)
!3421 = !DILocation(line: 856, column: 183, scope: !3410)
!3422 = !DILocation(line: 856, column: 114, scope: !3410)
!3423 = !DILocation(line: 856, column: 202, scope: !3287)
!3424 = !DILocation(line: 856, column: 202, scope: !772)
!3425 = !DILocation(line: 856, column: 202, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !772, file: !4, discriminator: 5)
!3427 = !DILocation(line: 857, column: 32, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !757, file: !4, line: 857, column: 13)
!3429 = !DILocation(line: 857, column: 13, scope: !3428)
!3430 = !DILocation(line: 857, column: 41, scope: !3428)
!3431 = !DILocation(line: 857, column: 13, scope: !757)
!3432 = !DILocation(line: 858, column: 13, scope: !3428)
!3433 = !DILocation(line: 859, column: 5, scope: !757)
!3434 = !DILocation(line: 859, column: 14, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !741, file: !4, discriminator: 1)
!3436 = !DILocation(line: 859, column: 20, scope: !741)
!3437 = !DILocation(line: 859, column: 26, scope: !741)
!3438 = !DILocation(line: 861, column: 14, scope: !741)
!3439 = !DILocation(line: 861, column: 20, scope: !741)
!3440 = !DILocation(line: 861, column: 12, scope: !741)
!3441 = !DILocation(line: 862, column: 5, scope: !741)
!3442 = !DILocation(line: 862, column: 11, scope: !741)
!3443 = !DILocation(line: 862, column: 18, scope: !741)
!3444 = !DILocation(line: 864, column: 12, scope: !741)
!3445 = !DILocation(line: 864, column: 5, scope: !741)
!3446 = !DILocation(line: 865, column: 1, scope: !741)
!3447 = !DILocation(line: 785, column: 24, scope: !773)
!3448 = !DILocation(line: 787, column: 5, scope: !773)
!3449 = !DILocation(line: 787, column: 10, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !777, file: !4, discriminator: 1)
!3451 = !DILocation(line: 787, column: 20, scope: !777)
!3452 = !DILocation(line: 787, column: 51, scope: !777)
!3453 = !DILocation(line: 787, column: 57, scope: !777)
!3454 = !DILocation(line: 787, column: 70, scope: !780)
!3455 = !DILocation(line: 787, column: 86, scope: !780)
!3456 = !DILocation(line: 787, column: 70, scope: !777)
!3457 = !DILocation(line: 787, column: 101, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !780, file: !4, discriminator: 2)
!3459 = !DILocation(line: 787, column: 106, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 4)
!3461 = !DILocation(line: 787, column: 116, scope: !779)
!3462 = !DILocation(line: 787, column: 146, scope: !779)
!3463 = !DILocation(line: 787, column: 172, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !779, file: !4, line: 787, column: 169)
!3465 = !DILocation(line: 787, column: 189, scope: !3464)
!3466 = !DILocation(line: 787, column: 169, scope: !3464)
!3467 = !DILocation(line: 787, column: 199, scope: !3464)
!3468 = !DILocation(line: 787, column: 169, scope: !779)
!3469 = !DILocation(line: 787, column: 169, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 5)
!3471 = !DILocation(line: 787, column: 230, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3464, file: !4, discriminator: 6)
!3473 = !DILocation(line: 787, column: 248, scope: !3464)
!3474 = !DILocation(line: 787, column: 258, scope: !3464)
!3475 = !DILocation(line: 787, column: 283, scope: !3464)
!3476 = !DILocation(line: 787, column: 214, scope: !3464)
!3477 = !DILocation(line: 787, column: 302, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !780, file: !4, discriminator: 7)
!3479 = !DILocation(line: 787, column: 302, scope: !779)
!3480 = !DILocation(line: 787, column: 302, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 8)
!3482 = !DILocation(line: 787, column: 302, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 9)
!3484 = !DILocation(line: 787, column: 315, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3486, file: !4, discriminator: 10)
!3486 = !DILexicalBlockFile(scope: !773, file: !4, discriminator: 3)
!3487 = !DILocation(line: 787, column: 315, scope: !777)
!3488 = !DILocation(line: 788, column: 20, scope: !773)
!3489 = !DILocation(line: 788, column: 5, scope: !773)
!3490 = !DILocation(line: 788, column: 11, scope: !773)
!3491 = !DILocation(line: 788, column: 18, scope: !773)
!3492 = !DILocation(line: 789, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !773, file: !4, line: 789, column: 9)
!3494 = !DILocation(line: 789, column: 15, scope: !3493)
!3495 = !DILocation(line: 789, column: 22, scope: !3493)
!3496 = !DILocation(line: 789, column: 9, scope: !773)
!3497 = !DILocation(line: 790, column: 9, scope: !3493)
!3498 = !DILocation(line: 791, column: 5, scope: !773)
!3499 = !DILocation(line: 791, column: 11, scope: !773)
!3500 = !DILocation(line: 791, column: 21, scope: !773)
!3501 = !DILocation(line: 792, column: 5, scope: !773)
!3502 = !DILocation(line: 792, column: 11, scope: !773)
!3503 = !DILocation(line: 792, column: 17, scope: !773)
!3504 = !DILocation(line: 793, column: 5, scope: !773)
!3505 = !DILocation(line: 793, column: 11, scope: !773)
!3506 = !DILocation(line: 793, column: 25, scope: !773)
!3507 = !{!2775, !1347, i64 72}
!3508 = !DILocation(line: 794, column: 5, scope: !773)
!3509 = !DILocation(line: 795, column: 1, scope: !773)
!3510 = !DILocation(line: 537, column: 29, scope: !781)
!3511 = !DILocation(line: 539, column: 5, scope: !781)
!3512 = !DILocation(line: 539, column: 15, scope: !781)
!3513 = !DILocation(line: 542, column: 48, scope: !781)
!3514 = !DILocation(line: 542, column: 54, scope: !781)
!3515 = !DILocation(line: 542, column: 39, scope: !781)
!3516 = !DILocation(line: 542, column: 61, scope: !781)
!3517 = !DILocation(line: 542, column: 67, scope: !781)
!3518 = !DILocation(line: 541, column: 13, scope: !781)
!3519 = !DILocation(line: 541, column: 11, scope: !781)
!3520 = !DILocation(line: 543, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !781, file: !4, line: 543, column: 9)
!3522 = !DILocation(line: 543, column: 15, scope: !3521)
!3523 = !DILocation(line: 543, column: 9, scope: !781)
!3524 = !DILocation(line: 544, column: 9, scope: !3521)
!3525 = !DILocation(line: 545, column: 5, scope: !781)
!3526 = !DILocation(line: 545, column: 11, scope: !781)
!3527 = !DILocation(line: 545, column: 21, scope: !781)
!3528 = !DILocation(line: 546, column: 9, scope: !787)
!3529 = !DILocation(line: 546, column: 15, scope: !787)
!3530 = !DILocation(line: 546, column: 9, scope: !781)
!3531 = !DILocation(line: 547, column: 9, scope: !786)
!3532 = !DILocation(line: 547, column: 19, scope: !786)
!3533 = !DILocation(line: 549, column: 9, scope: !786)
!3534 = !DILocation(line: 549, column: 15, scope: !786)
!3535 = !DILocation(line: 549, column: 29, scope: !786)
!3536 = !DILocation(line: 550, column: 30, scope: !786)
!3537 = !DILocation(line: 550, column: 15, scope: !786)
!3538 = !DILocation(line: 550, column: 13, scope: !786)
!3539 = !DILocation(line: 551, column: 9, scope: !786)
!3540 = !DILocation(line: 551, column: 14, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !789, file: !4, discriminator: 1)
!3542 = !DILocation(line: 551, column: 24, scope: !789)
!3543 = !DILocation(line: 551, column: 54, scope: !789)
!3544 = !DILocation(line: 551, column: 70, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !789, file: !4, line: 551, column: 67)
!3546 = !DILocation(line: 551, column: 87, scope: !3545)
!3547 = !DILocation(line: 551, column: 67, scope: !3545)
!3548 = !DILocation(line: 551, column: 97, scope: !3545)
!3549 = !DILocation(line: 551, column: 67, scope: !789)
!3550 = !DILocation(line: 551, column: 67, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !789, file: !4, discriminator: 2)
!3552 = !DILocation(line: 551, column: 128, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3545, file: !4, discriminator: 3)
!3554 = !DILocation(line: 551, column: 146, scope: !3545)
!3555 = !DILocation(line: 551, column: 156, scope: !3545)
!3556 = !DILocation(line: 551, column: 181, scope: !3545)
!3557 = !DILocation(line: 551, column: 112, scope: !3545)
!3558 = !DILocation(line: 551, column: 200, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !786, file: !4, discriminator: 4)
!3560 = !DILocation(line: 551, column: 200, scope: !789)
!3561 = !DILocation(line: 551, column: 200, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !789, file: !4, discriminator: 5)
!3563 = !DILocation(line: 552, column: 13, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !786, file: !4, line: 552, column: 13)
!3565 = !DILocation(line: 552, column: 17, scope: !3564)
!3566 = !DILocation(line: 552, column: 13, scope: !786)
!3567 = !DILocation(line: 553, column: 13, scope: !3564)
!3568 = !DILocation(line: 554, column: 17, scope: !786)
!3569 = !DILocation(line: 554, column: 15, scope: !786)
!3570 = !DILocation(line: 555, column: 5, scope: !787)
!3571 = !DILocation(line: 555, column: 5, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !787, file: !4, discriminator: 1)
!3573 = !DILocation(line: 555, column: 5, scope: !786)
!3574 = !DILocation(line: 556, column: 23, scope: !793)
!3575 = !DILocation(line: 556, column: 29, scope: !793)
!3576 = !DILocation(line: 556, column: 37, scope: !793)
!3577 = !DILocation(line: 556, column: 9, scope: !793)
!3578 = !DILocation(line: 556, column: 44, scope: !793)
!3579 = !DILocation(line: 556, column: 9, scope: !781)
!3580 = !DILocation(line: 557, column: 9, scope: !792)
!3581 = !DILocation(line: 557, column: 14, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !791, file: !4, discriminator: 1)
!3583 = !DILocation(line: 557, column: 24, scope: !791)
!3584 = !DILocation(line: 557, column: 54, scope: !791)
!3585 = !DILocation(line: 557, column: 70, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !791, file: !4, line: 557, column: 67)
!3587 = !DILocation(line: 557, column: 87, scope: !3586)
!3588 = !DILocation(line: 557, column: 67, scope: !3586)
!3589 = !DILocation(line: 557, column: 97, scope: !3586)
!3590 = !DILocation(line: 557, column: 67, scope: !791)
!3591 = !DILocation(line: 557, column: 67, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !791, file: !4, discriminator: 2)
!3593 = !DILocation(line: 557, column: 128, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3586, file: !4, discriminator: 3)
!3595 = !DILocation(line: 557, column: 146, scope: !3586)
!3596 = !DILocation(line: 557, column: 156, scope: !3586)
!3597 = !DILocation(line: 557, column: 181, scope: !3586)
!3598 = !DILocation(line: 557, column: 112, scope: !3586)
!3599 = !DILocation(line: 557, column: 200, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !792, file: !4, discriminator: 4)
!3601 = !DILocation(line: 557, column: 200, scope: !791)
!3602 = !DILocation(line: 557, column: 200, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !791, file: !4, discriminator: 5)
!3604 = !DILocation(line: 558, column: 9, scope: !792)
!3605 = !DILocation(line: 560, column: 5, scope: !781)
!3606 = !DILocation(line: 560, column: 10, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !795, file: !4, discriminator: 1)
!3608 = !DILocation(line: 560, column: 20, scope: !795)
!3609 = !DILocation(line: 560, column: 50, scope: !795)
!3610 = !DILocation(line: 560, column: 66, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !795, file: !4, line: 560, column: 63)
!3612 = !DILocation(line: 560, column: 83, scope: !3611)
!3613 = !DILocation(line: 560, column: 63, scope: !3611)
!3614 = !DILocation(line: 560, column: 93, scope: !3611)
!3615 = !DILocation(line: 560, column: 63, scope: !795)
!3616 = !DILocation(line: 560, column: 63, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !795, file: !4, discriminator: 2)
!3618 = !DILocation(line: 560, column: 124, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3611, file: !4, discriminator: 3)
!3620 = !DILocation(line: 560, column: 142, scope: !3611)
!3621 = !DILocation(line: 560, column: 152, scope: !3611)
!3622 = !DILocation(line: 560, column: 177, scope: !3611)
!3623 = !DILocation(line: 560, column: 108, scope: !3611)
!3624 = !DILocation(line: 560, column: 196, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 4)
!3626 = !DILocation(line: 560, column: 196, scope: !795)
!3627 = !DILocation(line: 560, column: 196, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !795, file: !4, discriminator: 5)
!3629 = !DILocation(line: 561, column: 5, scope: !781)
!3630 = !DILocation(line: 562, column: 1, scope: !781)
!3631 = !DILocation(line: 604, column: 31, scope: !796)
!3632 = !DILocation(line: 604, column: 45, scope: !796)
!3633 = !DILocation(line: 606, column: 5, scope: !796)
!3634 = !DILocation(line: 606, column: 17, scope: !796)
!3635 = !DILocation(line: 606, column: 27, scope: !796)
!3636 = !DILocation(line: 606, column: 33, scope: !796)
!3637 = !DILocation(line: 608, column: 13, scope: !796)
!3638 = !DILocation(line: 608, column: 19, scope: !796)
!3639 = !DILocation(line: 611, column: 13, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 611, column: 13)
!3641 = distinct !DILexicalBlock(scope: !796, file: !4, line: 608, column: 26)
!3642 = !DILocation(line: 611, column: 15, scope: !3640)
!3643 = !DILocation(line: 611, column: 13, scope: !3641)
!3644 = !DILocation(line: 613, column: 13, scope: !3640)
!3645 = !DILocation(line: 614, column: 18, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3640, file: !4, line: 614, column: 18)
!3647 = !DILocation(line: 614, column: 20, scope: !3646)
!3648 = !DILocation(line: 614, column: 28, scope: !3646)
!3649 = !DILocation(line: 614, column: 31, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3646, file: !4, discriminator: 1)
!3651 = !DILocation(line: 614, column: 33, scope: !3646)
!3652 = !DILocation(line: 614, column: 18, scope: !3640)
!3653 = !DILocation(line: 615, column: 13, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3646, file: !4, line: 614, column: 42)
!3655 = !DILocation(line: 615, column: 19, scope: !3654)
!3656 = !DILocation(line: 615, column: 25, scope: !3654)
!3657 = !DILocation(line: 616, column: 13, scope: !3654)
!3658 = !DILocation(line: 619, column: 9, scope: !3641)
!3659 = !DILocation(line: 619, column: 15, scope: !3641)
!3660 = !DILocation(line: 619, column: 21, scope: !3641)
!3661 = !DILocation(line: 623, column: 13, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 623, column: 13)
!3663 = !DILocation(line: 623, column: 15, scope: !3662)
!3664 = !DILocation(line: 623, column: 23, scope: !3662)
!3665 = !DILocation(line: 623, column: 26, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3662, file: !4, discriminator: 1)
!3667 = !DILocation(line: 623, column: 28, scope: !3662)
!3668 = !DILocation(line: 623, column: 36, scope: !3662)
!3669 = !DILocation(line: 623, column: 39, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3662, file: !4, discriminator: 2)
!3671 = !DILocation(line: 623, column: 41, scope: !3662)
!3672 = !DILocation(line: 623, column: 13, scope: !3641)
!3673 = !DILocation(line: 625, column: 34, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !4, line: 625, column: 17)
!3675 = distinct !DILexicalBlock(scope: !3662, file: !4, line: 623, column: 50)
!3676 = !DILocation(line: 625, column: 17, scope: !3674)
!3677 = !DILocation(line: 625, column: 40, scope: !3674)
!3678 = !DILocation(line: 625, column: 17, scope: !3675)
!3679 = !DILocation(line: 626, column: 17, scope: !3674)
!3680 = !DILocation(line: 627, column: 28, scope: !3675)
!3681 = !DILocation(line: 627, column: 30, scope: !3675)
!3682 = !DILocation(line: 627, column: 13, scope: !3675)
!3683 = !DILocation(line: 627, column: 19, scope: !3675)
!3684 = !DILocation(line: 627, column: 25, scope: !3675)
!3685 = !DILocation(line: 628, column: 9, scope: !3675)
!3686 = !DILocation(line: 629, column: 18, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3662, file: !4, line: 629, column: 18)
!3688 = !DILocation(line: 629, column: 23, scope: !3687)
!3689 = !DILocation(line: 629, column: 32, scope: !3687)
!3690 = !DILocation(line: 629, column: 20, scope: !3687)
!3691 = !DILocation(line: 629, column: 42, scope: !3687)
!3692 = !DILocation(line: 630, column: 18, scope: !3687)
!3693 = !DILocation(line: 630, column: 27, scope: !3687)
!3694 = !DILocation(line: 630, column: 35, scope: !3687)
!3695 = !DILocation(line: 629, column: 18, scope: !3662)
!3696 = !DILocation(line: 632, column: 13, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3687, file: !4, line: 630, column: 50)
!3698 = !DILocation(line: 632, column: 19, scope: !3697)
!3699 = !DILocation(line: 632, column: 25, scope: !3697)
!3700 = !DILocation(line: 633, column: 9, scope: !3697)
!3701 = !DILocation(line: 634, column: 18, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3687, file: !4, line: 634, column: 18)
!3703 = !DILocation(line: 634, column: 23, scope: !3702)
!3704 = !DILocation(line: 634, column: 32, scope: !3702)
!3705 = !DILocation(line: 634, column: 20, scope: !3702)
!3706 = !DILocation(line: 634, column: 18, scope: !3687)
!3707 = !DILocation(line: 636, column: 13, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3702, file: !4, line: 634, column: 44)
!3709 = !DILocation(line: 636, column: 19, scope: !3708)
!3710 = !DILocation(line: 636, column: 25, scope: !3708)
!3711 = !DILocation(line: 637, column: 9, scope: !3708)
!3712 = !DILocation(line: 638, column: 18, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3702, file: !4, line: 638, column: 18)
!3714 = !DILocation(line: 638, column: 20, scope: !3713)
!3715 = !DILocation(line: 638, column: 27, scope: !3713)
!3716 = !DILocation(line: 638, column: 30, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3713, file: !4, discriminator: 1)
!3718 = !DILocation(line: 638, column: 39, scope: !3713)
!3719 = !{!1346, !1347, i64 32}
!3720 = !DILocation(line: 638, column: 30, scope: !3713)
!3721 = !DILocation(line: 638, column: 18, scope: !3702)
!3722 = !DILocation(line: 638, column: 18, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3702, file: !4, discriminator: 2)
!3724 = !DILocation(line: 641, column: 18, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3713, file: !4, line: 641, column: 18)
!3726 = !DILocation(line: 641, column: 23, scope: !3725)
!3727 = !DILocation(line: 641, column: 32, scope: !3725)
!3728 = !DILocation(line: 641, column: 20, scope: !3725)
!3729 = !DILocation(line: 641, column: 18, scope: !3713)
!3730 = !DILocation(line: 643, column: 34, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !4, line: 643, column: 17)
!3732 = distinct !DILexicalBlock(scope: !3725, file: !4, line: 641, column: 43)
!3733 = !DILocation(line: 643, column: 17, scope: !3731)
!3734 = !DILocation(line: 643, column: 40, scope: !3731)
!3735 = !DILocation(line: 643, column: 17, scope: !3732)
!3736 = !DILocation(line: 644, column: 17, scope: !3731)
!3737 = !DILocation(line: 645, column: 9, scope: !3732)
!3738 = !DILocation(line: 648, column: 17, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !4, line: 648, column: 17)
!3740 = distinct !DILexicalBlock(scope: !3725, file: !4, line: 646, column: 14)
!3741 = !DILocation(line: 648, column: 26, scope: !3739)
!3742 = !DILocation(line: 648, column: 34, scope: !3739)
!3743 = !DILocation(line: 648, column: 17, scope: !3740)
!3744 = !DILocation(line: 649, column: 17, scope: !3739)
!3745 = !DILocation(line: 649, column: 23, scope: !3739)
!3746 = !DILocation(line: 649, column: 37, scope: !3739)
!3747 = !DILocation(line: 650, column: 32, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3740, file: !4, line: 650, column: 17)
!3749 = !DILocation(line: 650, column: 38, scope: !3748)
!3750 = !DILocation(line: 650, column: 17, scope: !3748)
!3751 = !DILocation(line: 650, column: 41, scope: !3748)
!3752 = !DILocation(line: 650, column: 17, scope: !3740)
!3753 = !DILocation(line: 651, column: 17, scope: !3748)
!3754 = !DILocation(line: 652, column: 13, scope: !3740)
!3755 = !DILocation(line: 652, column: 19, scope: !3740)
!3756 = !DILocation(line: 652, column: 25, scope: !3740)
!3757 = !DILocation(line: 654, column: 9, scope: !3641)
!3758 = !DILocation(line: 657, column: 13, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 657, column: 13)
!3760 = !DILocation(line: 657, column: 15, scope: !3759)
!3761 = !DILocation(line: 657, column: 23, scope: !3759)
!3762 = !DILocation(line: 657, column: 26, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3759, file: !4, discriminator: 1)
!3764 = !DILocation(line: 657, column: 27, scope: !3759)
!3765 = !DILocation(line: 657, column: 13, scope: !3641)
!3766 = !DILocation(line: 658, column: 32, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !4, line: 658, column: 17)
!3768 = distinct !DILexicalBlock(scope: !3759, file: !4, line: 657, column: 35)
!3769 = !DILocation(line: 658, column: 38, scope: !3767)
!3770 = !DILocation(line: 658, column: 17, scope: !3767)
!3771 = !DILocation(line: 658, column: 41, scope: !3767)
!3772 = !DILocation(line: 658, column: 17, scope: !3768)
!3773 = !DILocation(line: 659, column: 17, scope: !3767)
!3774 = !DILocation(line: 660, column: 13, scope: !3768)
!3775 = !DILocation(line: 660, column: 19, scope: !3768)
!3776 = !DILocation(line: 660, column: 25, scope: !3768)
!3777 = !DILocation(line: 661, column: 13, scope: !3768)
!3778 = !DILocation(line: 663, column: 13, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 663, column: 13)
!3780 = !DILocation(line: 663, column: 15, scope: !3779)
!3781 = !DILocation(line: 663, column: 13, scope: !3641)
!3782 = !DILocation(line: 664, column: 15, scope: !3779)
!3783 = !DILocation(line: 664, column: 13, scope: !3779)
!3784 = !DILocation(line: 665, column: 28, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 665, column: 13)
!3786 = !DILocation(line: 665, column: 34, scope: !3785)
!3787 = !DILocation(line: 665, column: 13, scope: !3785)
!3788 = !DILocation(line: 665, column: 37, scope: !3785)
!3789 = !DILocation(line: 665, column: 13, scope: !3641)
!3790 = !DILocation(line: 666, column: 13, scope: !3785)
!3791 = !DILocation(line: 667, column: 9, scope: !3641)
!3792 = !DILocation(line: 667, column: 15, scope: !3641)
!3793 = !DILocation(line: 667, column: 21, scope: !3641)
!3794 = !DILocation(line: 668, column: 9, scope: !3641)
!3795 = !DILocation(line: 671, column: 13, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 671, column: 13)
!3797 = !DILocation(line: 671, column: 15, scope: !3796)
!3798 = !DILocation(line: 671, column: 13, scope: !3641)
!3799 = !DILocation(line: 672, column: 13, scope: !3796)
!3800 = !DILocation(line: 671, column: 18, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3796, file: !4, discriminator: 1)
!3802 = !DILocation(line: 677, column: 13, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 677, column: 13)
!3804 = !DILocation(line: 677, column: 15, scope: !3803)
!3805 = !DILocation(line: 677, column: 23, scope: !3803)
!3806 = !DILocation(line: 677, column: 26, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !3803, file: !4, discriminator: 1)
!3808 = !DILocation(line: 677, column: 28, scope: !3803)
!3809 = !DILocation(line: 677, column: 36, scope: !3803)
!3810 = !DILocation(line: 677, column: 39, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3803, file: !4, discriminator: 2)
!3812 = !DILocation(line: 677, column: 41, scope: !3803)
!3813 = !DILocation(line: 677, column: 13, scope: !3641)
!3814 = !DILocation(line: 679, column: 34, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !4, line: 679, column: 17)
!3816 = distinct !DILexicalBlock(scope: !3803, file: !4, line: 677, column: 50)
!3817 = !DILocation(line: 679, column: 17, scope: !3815)
!3818 = !DILocation(line: 679, column: 40, scope: !3815)
!3819 = !DILocation(line: 679, column: 17, scope: !3816)
!3820 = !DILocation(line: 680, column: 17, scope: !3815)
!3821 = !DILocation(line: 681, column: 28, scope: !3816)
!3822 = !DILocation(line: 681, column: 30, scope: !3816)
!3823 = !DILocation(line: 681, column: 13, scope: !3816)
!3824 = !DILocation(line: 681, column: 19, scope: !3816)
!3825 = !DILocation(line: 681, column: 25, scope: !3816)
!3826 = !DILocation(line: 682, column: 9, scope: !3816)
!3827 = !DILocation(line: 683, column: 18, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3803, file: !4, line: 683, column: 18)
!3829 = !DILocation(line: 683, column: 23, scope: !3828)
!3830 = !DILocation(line: 683, column: 32, scope: !3828)
!3831 = !DILocation(line: 683, column: 20, scope: !3828)
!3832 = !DILocation(line: 683, column: 18, scope: !3803)
!3833 = !DILocation(line: 685, column: 13, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3828, file: !4, line: 683, column: 44)
!3835 = !DILocation(line: 685, column: 19, scope: !3834)
!3836 = !DILocation(line: 685, column: 25, scope: !3834)
!3837 = !DILocation(line: 686, column: 9, scope: !3834)
!3838 = !DILocation(line: 687, column: 18, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3828, file: !4, line: 687, column: 18)
!3840 = !DILocation(line: 687, column: 23, scope: !3839)
!3841 = !DILocation(line: 687, column: 32, scope: !3839)
!3842 = !DILocation(line: 687, column: 20, scope: !3839)
!3843 = !DILocation(line: 687, column: 18, scope: !3828)
!3844 = !DILocation(line: 689, column: 34, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !4, line: 689, column: 17)
!3846 = distinct !DILexicalBlock(scope: !3839, file: !4, line: 687, column: 43)
!3847 = !DILocation(line: 689, column: 17, scope: !3845)
!3848 = !DILocation(line: 689, column: 40, scope: !3845)
!3849 = !DILocation(line: 689, column: 17, scope: !3846)
!3850 = !DILocation(line: 690, column: 17, scope: !3845)
!3851 = !DILocation(line: 691, column: 13, scope: !3846)
!3852 = !DILocation(line: 691, column: 19, scope: !3846)
!3853 = !DILocation(line: 691, column: 25, scope: !3846)
!3854 = !DILocation(line: 692, column: 9, scope: !3846)
!3855 = !DILocation(line: 695, column: 32, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !4, line: 695, column: 17)
!3857 = distinct !DILexicalBlock(scope: !3839, file: !4, line: 693, column: 14)
!3858 = !DILocation(line: 695, column: 38, scope: !3856)
!3859 = !DILocation(line: 695, column: 17, scope: !3856)
!3860 = !DILocation(line: 695, column: 41, scope: !3856)
!3861 = !DILocation(line: 695, column: 17, scope: !3857)
!3862 = !DILocation(line: 696, column: 17, scope: !3856)
!3863 = !DILocation(line: 698, column: 9, scope: !3641)
!3864 = !DILocation(line: 702, column: 13, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 702, column: 13)
!3866 = !DILocation(line: 702, column: 15, scope: !3865)
!3867 = !DILocation(line: 702, column: 13, scope: !3641)
!3868 = !DILocation(line: 702, column: 13, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3641, file: !4, discriminator: 1)
!3870 = !DILocation(line: 704, column: 18, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3865, file: !4, line: 704, column: 18)
!3872 = !DILocation(line: 704, column: 23, scope: !3871)
!3873 = !DILocation(line: 704, column: 32, scope: !3871)
!3874 = !DILocation(line: 704, column: 20, scope: !3871)
!3875 = !DILocation(line: 704, column: 18, scope: !3865)
!3876 = !DILocation(line: 706, column: 13, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3871, file: !4, line: 704, column: 44)
!3878 = !DILocation(line: 706, column: 19, scope: !3877)
!3879 = !DILocation(line: 706, column: 25, scope: !3877)
!3880 = !DILocation(line: 707, column: 9, scope: !3877)
!3881 = !DILocation(line: 708, column: 18, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3871, file: !4, line: 708, column: 18)
!3883 = !DILocation(line: 708, column: 23, scope: !3882)
!3884 = !DILocation(line: 708, column: 32, scope: !3882)
!3885 = !DILocation(line: 708, column: 20, scope: !3882)
!3886 = !DILocation(line: 708, column: 42, scope: !3882)
!3887 = !DILocation(line: 709, column: 18, scope: !3882)
!3888 = !DILocation(line: 709, column: 27, scope: !3882)
!3889 = !DILocation(line: 709, column: 35, scope: !3882)
!3890 = !DILocation(line: 708, column: 18, scope: !3871)
!3891 = !DILocation(line: 710, column: 17, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !4, line: 710, column: 17)
!3893 = distinct !DILexicalBlock(scope: !3882, file: !4, line: 709, column: 50)
!3894 = !DILocation(line: 710, column: 26, scope: !3892)
!3895 = !{!1346, !1347, i64 16}
!3896 = !DILocation(line: 710, column: 17, scope: !3893)
!3897 = !DILocation(line: 712, column: 17, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3892, file: !4, line: 710, column: 39)
!3899 = !DILocation(line: 712, column: 23, scope: !3898)
!3900 = !DILocation(line: 712, column: 29, scope: !3898)
!3901 = !DILocation(line: 713, column: 13, scope: !3898)
!3902 = !DILocation(line: 716, column: 17, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3892, file: !4, line: 714, column: 18)
!3904 = !DILocation(line: 716, column: 23, scope: !3903)
!3905 = !DILocation(line: 716, column: 29, scope: !3903)
!3906 = !DILocation(line: 718, column: 9, scope: !3893)
!3907 = !DILocation(line: 721, column: 32, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !4, line: 721, column: 17)
!3909 = distinct !DILexicalBlock(scope: !3882, file: !4, line: 719, column: 14)
!3910 = !DILocation(line: 721, column: 38, scope: !3908)
!3911 = !DILocation(line: 721, column: 17, scope: !3908)
!3912 = !DILocation(line: 721, column: 41, scope: !3908)
!3913 = !DILocation(line: 721, column: 17, scope: !3909)
!3914 = !DILocation(line: 722, column: 17, scope: !3908)
!3915 = !DILocation(line: 724, column: 9, scope: !3641)
!3916 = !DILocation(line: 727, column: 13, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 727, column: 13)
!3918 = !DILocation(line: 727, column: 15, scope: !3917)
!3919 = !DILocation(line: 727, column: 13, scope: !3641)
!3920 = !DILocation(line: 728, column: 15, scope: !3917)
!3921 = !DILocation(line: 728, column: 13, scope: !3917)
!3922 = !DILocation(line: 729, column: 28, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 729, column: 13)
!3924 = !DILocation(line: 729, column: 34, scope: !3923)
!3925 = !DILocation(line: 729, column: 13, scope: !3923)
!3926 = !DILocation(line: 729, column: 37, scope: !3923)
!3927 = !DILocation(line: 729, column: 13, scope: !3641)
!3928 = !DILocation(line: 730, column: 13, scope: !3923)
!3929 = !DILocation(line: 731, column: 9, scope: !3641)
!3930 = !DILocation(line: 731, column: 15, scope: !3641)
!3931 = !DILocation(line: 731, column: 21, scope: !3641)
!3932 = !DILocation(line: 732, column: 9, scope: !3641)
!3933 = !DILocation(line: 736, column: 13, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 736, column: 13)
!3935 = !DILocation(line: 736, column: 22, scope: !3934)
!3936 = !DILocation(line: 736, column: 30, scope: !3934)
!3937 = !DILocation(line: 736, column: 44, scope: !3934)
!3938 = !DILocation(line: 737, column: 13, scope: !3934)
!3939 = !DILocation(line: 737, column: 18, scope: !3934)
!3940 = !DILocation(line: 737, column: 27, scope: !3934)
!3941 = !DILocation(line: 737, column: 15, scope: !3934)
!3942 = !DILocation(line: 736, column: 13, scope: !3641)
!3943 = !DILocation(line: 739, column: 32, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !4, line: 739, column: 17)
!3945 = distinct !DILexicalBlock(scope: !3934, file: !4, line: 737, column: 38)
!3946 = !DILocation(line: 739, column: 38, scope: !3944)
!3947 = !DILocation(line: 739, column: 17, scope: !3944)
!3948 = !DILocation(line: 739, column: 41, scope: !3944)
!3949 = !DILocation(line: 739, column: 17, scope: !3945)
!3950 = !DILocation(line: 740, column: 17, scope: !3944)
!3951 = !DILocation(line: 741, column: 13, scope: !3945)
!3952 = !DILocation(line: 741, column: 19, scope: !3945)
!3953 = !DILocation(line: 741, column: 25, scope: !3945)
!3954 = !DILocation(line: 742, column: 9, scope: !3945)
!3955 = !DILocation(line: 743, column: 18, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3934, file: !4, line: 743, column: 18)
!3957 = !DILocation(line: 743, column: 23, scope: !3956)
!3958 = !DILocation(line: 743, column: 32, scope: !3956)
!3959 = !DILocation(line: 743, column: 20, scope: !3956)
!3960 = !DILocation(line: 743, column: 18, scope: !3934)
!3961 = !DILocation(line: 745, column: 34, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !4, line: 745, column: 17)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !4, line: 743, column: 43)
!3964 = !DILocation(line: 745, column: 17, scope: !3962)
!3965 = !DILocation(line: 745, column: 40, scope: !3962)
!3966 = !DILocation(line: 745, column: 17, scope: !3963)
!3967 = !DILocation(line: 746, column: 17, scope: !3962)
!3968 = !DILocation(line: 747, column: 13, scope: !3963)
!3969 = !DILocation(line: 747, column: 19, scope: !3963)
!3970 = !DILocation(line: 747, column: 25, scope: !3963)
!3971 = !DILocation(line: 748, column: 9, scope: !3963)
!3972 = !DILocation(line: 749, column: 18, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3956, file: !4, line: 749, column: 18)
!3974 = !DILocation(line: 749, column: 20, scope: !3973)
!3975 = !DILocation(line: 749, column: 28, scope: !3973)
!3976 = !DILocation(line: 749, column: 31, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3973, file: !4, discriminator: 1)
!3978 = !DILocation(line: 749, column: 33, scope: !3973)
!3979 = !DILocation(line: 749, column: 41, scope: !3973)
!3980 = !DILocation(line: 749, column: 44, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3973, file: !4, discriminator: 2)
!3982 = !DILocation(line: 749, column: 46, scope: !3973)
!3983 = !DILocation(line: 749, column: 18, scope: !3956)
!3984 = !DILocation(line: 751, column: 34, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !4, line: 751, column: 17)
!3986 = distinct !DILexicalBlock(scope: !3973, file: !4, line: 749, column: 55)
!3987 = !DILocation(line: 751, column: 17, scope: !3985)
!3988 = !DILocation(line: 751, column: 40, scope: !3985)
!3989 = !DILocation(line: 751, column: 17, scope: !3986)
!3990 = !DILocation(line: 752, column: 17, scope: !3985)
!3991 = !DILocation(line: 753, column: 28, scope: !3986)
!3992 = !DILocation(line: 753, column: 30, scope: !3986)
!3993 = !DILocation(line: 753, column: 13, scope: !3986)
!3994 = !DILocation(line: 753, column: 19, scope: !3986)
!3995 = !DILocation(line: 753, column: 25, scope: !3986)
!3996 = !DILocation(line: 754, column: 9, scope: !3986)
!3997 = !DILocation(line: 755, column: 19, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3973, file: !4, line: 755, column: 18)
!3999 = !DILocation(line: 755, column: 28, scope: !3998)
!4000 = !DILocation(line: 755, column: 18, scope: !3973)
!4001 = !DILocation(line: 756, column: 32, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !4, line: 756, column: 17)
!4003 = distinct !DILexicalBlock(scope: !3998, file: !4, line: 755, column: 36)
!4004 = !DILocation(line: 756, column: 38, scope: !4002)
!4005 = !DILocation(line: 756, column: 17, scope: !4002)
!4006 = !DILocation(line: 756, column: 41, scope: !4002)
!4007 = !DILocation(line: 756, column: 17, scope: !4003)
!4008 = !DILocation(line: 757, column: 17, scope: !4002)
!4009 = !DILocation(line: 758, column: 13, scope: !4003)
!4010 = !DILocation(line: 758, column: 19, scope: !4003)
!4011 = !DILocation(line: 758, column: 25, scope: !4003)
!4012 = !DILocation(line: 759, column: 9, scope: !4003)
!4013 = !DILocation(line: 762, column: 58, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3998, file: !4, line: 760, column: 14)
!4015 = !DILocation(line: 762, column: 40, scope: !4014)
!4016 = !DILocation(line: 762, column: 27, scope: !4014)
!4017 = !DILocation(line: 762, column: 93, scope: !4014)
!4018 = !DILocation(line: 763, column: 29, scope: !4014)
!4019 = !DILocation(line: 763, column: 38, scope: !4014)
!4020 = !DILocation(line: 764, column: 29, scope: !4014)
!4021 = !DILocation(line: 764, column: 38, scope: !4014)
!4022 = !DILocation(line: 762, column: 13, scope: !4014)
!4023 = !DILocation(line: 765, column: 13, scope: !4014)
!4024 = !DILocation(line: 767, column: 9, scope: !3641)
!4025 = !DILocation(line: 770, column: 13, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !3641, file: !4, line: 770, column: 13)
!4027 = !DILocation(line: 770, column: 15, scope: !4026)
!4028 = !DILocation(line: 770, column: 23, scope: !4026)
!4029 = !DILocation(line: 770, column: 26, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4026, file: !4, discriminator: 2)
!4031 = !DILocation(line: 770, column: 28, scope: !4026)
!4032 = !DILocation(line: 770, column: 13, scope: !3641)
!4033 = !DILocation(line: 770, column: 13, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !3869, file: !4, discriminator: 3)
!4035 = !DILocation(line: 772, column: 18, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4026, file: !4, line: 772, column: 18)
!4037 = !DILocation(line: 772, column: 20, scope: !4036)
!4038 = !DILocation(line: 772, column: 18, scope: !4026)
!4039 = !DILocation(line: 773, column: 13, scope: !4036)
!4040 = !DILocation(line: 773, column: 19, scope: !4036)
!4041 = !DILocation(line: 773, column: 25, scope: !4036)
!4042 = !DILocation(line: 775, column: 58, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4036, file: !4, line: 774, column: 14)
!4044 = !DILocation(line: 775, column: 40, scope: !4043)
!4045 = !DILocation(line: 775, column: 27, scope: !4043)
!4046 = !DILocation(line: 775, column: 93, scope: !4043)
!4047 = !DILocation(line: 775, column: 13, scope: !4043)
!4048 = !DILocation(line: 776, column: 13, scope: !4043)
!4049 = !DILocation(line: 778, column: 9, scope: !3641)
!4050 = !DILocation(line: 781, column: 5, scope: !796)
!4051 = !DILocation(line: 782, column: 1, scope: !796)
!4052 = !DILocation(line: 590, column: 27, scope: !803)
!4053 = !DILocation(line: 590, column: 41, scope: !803)
!4054 = !DILocation(line: 592, column: 9, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !803, file: !4, line: 592, column: 9)
!4056 = !DILocation(line: 592, column: 15, scope: !4055)
!4057 = !DILocation(line: 592, column: 60, scope: !4055)
!4058 = !DILocation(line: 592, column: 42, scope: !4055)
!4059 = !DILocation(line: 592, column: 29, scope: !4055)
!4060 = !DILocation(line: 592, column: 95, scope: !4055)
!4061 = !DILocation(line: 592, column: 25, scope: !4055)
!4062 = !DILocation(line: 592, column: 9, scope: !803)
!4063 = !DILocation(line: 593, column: 54, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4055, file: !4, line: 592, column: 108)
!4065 = !DILocation(line: 593, column: 36, scope: !4064)
!4066 = !DILocation(line: 593, column: 23, scope: !4064)
!4067 = !DILocation(line: 593, column: 89, scope: !4064)
!4068 = !DILocation(line: 594, column: 54, scope: !4064)
!4069 = !DILocation(line: 594, column: 36, scope: !4064)
!4070 = !DILocation(line: 594, column: 23, scope: !4064)
!4071 = !DILocation(line: 594, column: 89, scope: !4064)
!4072 = !DILocation(line: 593, column: 9, scope: !4064)
!4073 = !DILocation(line: 595, column: 9, scope: !4064)
!4074 = !DILocation(line: 597, column: 9, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !803, file: !4, line: 597, column: 9)
!4076 = !DILocation(line: 597, column: 15, scope: !4075)
!4077 = !DILocation(line: 597, column: 28, scope: !4075)
!4078 = !DILocation(line: 597, column: 34, scope: !4075)
!4079 = !{!2775, !1243, i64 56}
!4080 = !DILocation(line: 597, column: 25, scope: !4075)
!4081 = !DILocation(line: 597, column: 45, scope: !4075)
!4082 = !DILocation(line: 597, column: 65, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !4075, file: !4, discriminator: 1)
!4084 = !DILocation(line: 597, column: 49, scope: !4075)
!4085 = !DILocation(line: 597, column: 9, scope: !803)
!4086 = !DILocation(line: 598, column: 9, scope: !4075)
!4087 = !DILocation(line: 599, column: 38, scope: !803)
!4088 = !DILocation(line: 599, column: 17, scope: !803)
!4089 = !DILocation(line: 599, column: 23, scope: !803)
!4090 = !DILocation(line: 599, column: 32, scope: !803)
!4091 = !DILocation(line: 599, column: 5, scope: !803)
!4092 = !DILocation(line: 599, column: 11, scope: !803)
!4093 = !DILocation(line: 599, column: 36, scope: !803)
!4094 = !DILocation(line: 600, column: 5, scope: !803)
!4095 = !DILocation(line: 601, column: 1, scope: !803)
!4096 = !DILocation(line: 565, column: 28, scope: !807)
!4097 = !DILocation(line: 567, column: 9, scope: !812)
!4098 = !DILocation(line: 567, column: 15, scope: !812)
!4099 = !DILocation(line: 567, column: 26, scope: !812)
!4100 = !DILocation(line: 567, column: 9, scope: !807)
!4101 = !DILocation(line: 568, column: 9, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !812, file: !4, line: 567, column: 32)
!4103 = !DILocation(line: 568, column: 15, scope: !4102)
!4104 = !DILocation(line: 568, column: 26, scope: !4102)
!4105 = !DILocation(line: 569, column: 13, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4102, file: !4, line: 569, column: 13)
!4107 = !DILocation(line: 569, column: 19, scope: !4106)
!4108 = !DILocation(line: 569, column: 25, scope: !4106)
!4109 = !DILocation(line: 569, column: 13, scope: !4102)
!4110 = !DILocation(line: 570, column: 24, scope: !4106)
!4111 = !DILocation(line: 570, column: 30, scope: !4106)
!4112 = !DILocation(line: 570, column: 13, scope: !4106)
!4113 = !DILocation(line: 571, column: 35, scope: !4102)
!4114 = !DILocation(line: 571, column: 41, scope: !4102)
!4115 = !DILocation(line: 571, column: 53, scope: !4102)
!4116 = !DILocation(line: 571, column: 25, scope: !4102)
!4117 = !DILocation(line: 571, column: 25, scope: !4118)
!4118 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 1)
!4119 = !DILocation(line: 571, column: 149, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 2)
!4121 = !DILocation(line: 571, column: 155, scope: !4102)
!4122 = !DILocation(line: 571, column: 167, scope: !4102)
!4123 = !DILocation(line: 571, column: 135, scope: !4102)
!4124 = !DILocation(line: 571, column: 123, scope: !4102)
!4125 = !DILocation(line: 571, column: 9, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4127, file: !4, discriminator: 4)
!4127 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 3)
!4128 = !DILocation(line: 571, column: 15, scope: !4102)
!4129 = !DILocation(line: 571, column: 21, scope: !4102)
!4130 = !DILocation(line: 572, column: 5, scope: !4102)
!4131 = !DILocation(line: 574, column: 9, scope: !811)
!4132 = !DILocation(line: 574, column: 18, scope: !811)
!4133 = !DILocation(line: 574, column: 26, scope: !811)
!4134 = !DILocation(line: 574, column: 32, scope: !811)
!4135 = !DILocation(line: 575, column: 13, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !811, file: !4, line: 575, column: 13)
!4137 = !DILocation(line: 575, column: 19, scope: !4136)
!4138 = !DILocation(line: 575, column: 30, scope: !4136)
!4139 = !DILocation(line: 575, column: 13, scope: !811)
!4140 = !DILocation(line: 576, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !4, line: 575, column: 69)
!4142 = !DILocation(line: 577, column: 13, scope: !4141)
!4143 = !DILocation(line: 579, column: 9, scope: !811)
!4144 = !DILocation(line: 579, column: 15, scope: !811)
!4145 = !DILocation(line: 579, column: 26, scope: !811)
!4146 = !DILocation(line: 580, column: 45, scope: !811)
!4147 = !DILocation(line: 580, column: 51, scope: !811)
!4148 = !DILocation(line: 580, column: 63, scope: !811)
!4149 = !DILocation(line: 580, column: 35, scope: !811)
!4150 = !DILocation(line: 580, column: 35, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 1)
!4152 = !DILocation(line: 580, column: 158, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 2)
!4154 = !DILocation(line: 580, column: 157, scope: !811)
!4155 = !DILocation(line: 580, column: 167, scope: !811)
!4156 = !DILocation(line: 580, column: 173, scope: !811)
!4157 = !DILocation(line: 580, column: 185, scope: !811)
!4158 = !DILocation(line: 580, column: 143, scope: !811)
!4159 = !DILocation(line: 580, column: 131, scope: !811)
!4160 = !DILocation(line: 580, column: 33, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4162, file: !4, discriminator: 4)
!4162 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 3)
!4163 = !DILocation(line: 580, column: 9, scope: !811)
!4164 = !DILocation(line: 580, column: 15, scope: !811)
!4165 = !DILocation(line: 580, column: 21, scope: !811)
!4166 = !DILocation(line: 581, column: 5, scope: !812)
!4167 = !DILocation(line: 581, column: 5, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !812, file: !4, discriminator: 1)
!4169 = !DILocation(line: 582, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !807, file: !4, line: 582, column: 9)
!4171 = !DILocation(line: 582, column: 15, scope: !4170)
!4172 = !DILocation(line: 582, column: 21, scope: !4170)
!4173 = !DILocation(line: 582, column: 9, scope: !807)
!4174 = !DILocation(line: 583, column: 9, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4170, file: !4, line: 582, column: 36)
!4176 = !DILocation(line: 584, column: 9, scope: !4175)
!4177 = !DILocation(line: 586, column: 5, scope: !807)
!4178 = !DILocation(line: 587, column: 1, scope: !807)
!4179 = !DILocation(line: 1311, column: 27, scope: !813)
!4180 = !DILocation(line: 1313, column: 25, scope: !813)
!4181 = !DILocation(line: 1313, column: 5, scope: !813)
!4182 = !DILocation(line: 1314, column: 5, scope: !813)
!4183 = !DILocation(line: 1314, column: 10, scope: !4184)
!4184 = !DILexicalBlockFile(scope: !819, file: !4, discriminator: 1)
!4185 = !DILocation(line: 1314, column: 20, scope: !819)
!4186 = !DILocation(line: 1314, column: 51, scope: !819)
!4187 = !DILocation(line: 1314, column: 57, scope: !819)
!4188 = !{!4189, !1222, i64 24}
!4189 = !{!"", !1266, i64 0, !1222, i64 16, !1222, i64 24, !1222, i64 32, !1243, i64 40, !1243, i64 48, !1347, i64 56}
!4190 = !DILocation(line: 1314, column: 38, scope: !819)
!4191 = !DILocation(line: 1314, column: 71, scope: !822)
!4192 = !DILocation(line: 1314, column: 87, scope: !822)
!4193 = !DILocation(line: 1314, column: 71, scope: !819)
!4194 = !DILocation(line: 1314, column: 102, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !822, file: !4, discriminator: 2)
!4196 = !DILocation(line: 1314, column: 107, scope: !4197)
!4197 = !DILexicalBlockFile(scope: !821, file: !4, discriminator: 4)
!4198 = !DILocation(line: 1314, column: 117, scope: !821)
!4199 = !DILocation(line: 1314, column: 147, scope: !821)
!4200 = !DILocation(line: 1314, column: 173, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !821, file: !4, line: 1314, column: 170)
!4202 = !DILocation(line: 1314, column: 190, scope: !4201)
!4203 = !DILocation(line: 1314, column: 170, scope: !4201)
!4204 = !DILocation(line: 1314, column: 200, scope: !4201)
!4205 = !DILocation(line: 1314, column: 170, scope: !821)
!4206 = !DILocation(line: 1314, column: 170, scope: !4207)
!4207 = !DILexicalBlockFile(scope: !821, file: !4, discriminator: 5)
!4208 = !DILocation(line: 1314, column: 231, scope: !4209)
!4209 = !DILexicalBlockFile(scope: !4201, file: !4, discriminator: 6)
!4210 = !DILocation(line: 1314, column: 249, scope: !4201)
!4211 = !DILocation(line: 1314, column: 259, scope: !4201)
!4212 = !DILocation(line: 1314, column: 284, scope: !4201)
!4213 = !DILocation(line: 1314, column: 215, scope: !4201)
!4214 = !DILocation(line: 1314, column: 303, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !822, file: !4, discriminator: 7)
!4216 = !DILocation(line: 1314, column: 303, scope: !821)
!4217 = !DILocation(line: 1314, column: 303, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !821, file: !4, discriminator: 8)
!4219 = !DILocation(line: 1314, column: 303, scope: !4220)
!4220 = !DILexicalBlockFile(scope: !821, file: !4, discriminator: 9)
!4221 = !DILocation(line: 1314, column: 316, scope: !4222)
!4222 = !DILexicalBlockFile(scope: !4223, file: !4, discriminator: 10)
!4223 = !DILexicalBlockFile(scope: !813, file: !4, discriminator: 3)
!4224 = !DILocation(line: 1314, column: 316, scope: !819)
!4225 = !DILocation(line: 1315, column: 5, scope: !813)
!4226 = !DILocation(line: 1315, column: 10, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !824, file: !4, discriminator: 1)
!4228 = !DILocation(line: 1315, column: 20, scope: !824)
!4229 = !DILocation(line: 1315, column: 51, scope: !824)
!4230 = !DILocation(line: 1315, column: 57, scope: !824)
!4231 = !{!4189, !1222, i64 16}
!4232 = !DILocation(line: 1315, column: 73, scope: !827)
!4233 = !DILocation(line: 1315, column: 89, scope: !827)
!4234 = !DILocation(line: 1315, column: 73, scope: !824)
!4235 = !DILocation(line: 1315, column: 104, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !827, file: !4, discriminator: 2)
!4237 = !DILocation(line: 1315, column: 109, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !826, file: !4, discriminator: 4)
!4239 = !DILocation(line: 1315, column: 119, scope: !826)
!4240 = !DILocation(line: 1315, column: 149, scope: !826)
!4241 = !DILocation(line: 1315, column: 175, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1315, column: 172)
!4243 = !DILocation(line: 1315, column: 192, scope: !4242)
!4244 = !DILocation(line: 1315, column: 172, scope: !4242)
!4245 = !DILocation(line: 1315, column: 202, scope: !4242)
!4246 = !DILocation(line: 1315, column: 172, scope: !826)
!4247 = !DILocation(line: 1315, column: 172, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !826, file: !4, discriminator: 5)
!4249 = !DILocation(line: 1315, column: 233, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !4242, file: !4, discriminator: 6)
!4251 = !DILocation(line: 1315, column: 251, scope: !4242)
!4252 = !DILocation(line: 1315, column: 261, scope: !4242)
!4253 = !DILocation(line: 1315, column: 286, scope: !4242)
!4254 = !DILocation(line: 1315, column: 217, scope: !4242)
!4255 = !DILocation(line: 1315, column: 305, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !827, file: !4, discriminator: 7)
!4257 = !DILocation(line: 1315, column: 305, scope: !826)
!4258 = !DILocation(line: 1315, column: 305, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !826, file: !4, discriminator: 8)
!4260 = !DILocation(line: 1315, column: 305, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !826, file: !4, discriminator: 9)
!4262 = !DILocation(line: 1315, column: 318, scope: !4222)
!4263 = !DILocation(line: 1315, column: 318, scope: !824)
!4264 = !DILocation(line: 1316, column: 9, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !813, file: !4, line: 1316, column: 9)
!4266 = !DILocation(line: 1316, column: 15, scope: !4265)
!4267 = !{!4189, !1222, i64 32}
!4268 = !DILocation(line: 1316, column: 19, scope: !4265)
!4269 = !DILocation(line: 1316, column: 9, scope: !813)
!4270 = !DILocation(line: 1317, column: 20, scope: !4265)
!4271 = !DILocation(line: 1317, column: 26, scope: !4265)
!4272 = !DILocation(line: 1317, column: 9, scope: !4265)
!4273 = !DILocation(line: 1318, column: 21, scope: !813)
!4274 = !DILocation(line: 1318, column: 5, scope: !813)
!4275 = !DILocation(line: 1319, column: 1, scope: !813)
!4276 = !DILocation(line: 1322, column: 28, scope: !828)
!4277 = !DILocation(line: 1322, column: 44, scope: !828)
!4278 = !DILocation(line: 1322, column: 57, scope: !828)
!4279 = !DILocation(line: 1324, column: 5, scope: !828)
!4280 = !DILocation(line: 1324, column: 14, scope: !4281)
!4281 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 1)
!4282 = !DILocation(line: 1324, column: 20, scope: !837)
!4283 = !DILocation(line: 1324, column: 14, scope: !837)
!4284 = !DILocation(line: 1324, column: 14, scope: !838)
!4285 = !DILocation(line: 1324, column: 31, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !836, file: !4, discriminator: 2)
!4287 = !DILocation(line: 1324, column: 35, scope: !836)
!4288 = !DILocation(line: 1324, column: 42, scope: !836)
!4289 = !DILocation(line: 1324, column: 61, scope: !836)
!4290 = !DILocation(line: 1324, column: 67, scope: !836)
!4291 = !DILocation(line: 1324, column: 48, scope: !836)
!4292 = !DILocation(line: 1324, column: 77, scope: !836)
!4293 = !DILocation(line: 1324, column: 87, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !836, file: !4, line: 1324, column: 87)
!4295 = !DILocation(line: 1324, column: 87, scope: !836)
!4296 = !DILocation(line: 1324, column: 100, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4294, file: !4, discriminator: 4)
!4298 = !DILocation(line: 1324, column: 93, scope: !4294)
!4299 = !DILocation(line: 1324, column: 106, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 5)
!4301 = !DILocation(line: 1324, column: 106, scope: !4302)
!4302 = !DILexicalBlockFile(scope: !4303, file: !4, discriminator: 7)
!4303 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 6)
!4304 = !DILocation(line: 1324, column: 106, scope: !836)
!4305 = !DILocation(line: 1324, column: 108, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !4307, file: !4, discriminator: 8)
!4307 = !DILexicalBlockFile(scope: !838, file: !4, discriminator: 3)
!4308 = !DILocation(line: 1325, column: 5, scope: !828)
!4309 = !DILocation(line: 1325, column: 14, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !841, file: !4, discriminator: 1)
!4311 = !DILocation(line: 1325, column: 20, scope: !841)
!4312 = !DILocation(line: 1325, column: 14, scope: !841)
!4313 = !DILocation(line: 1325, column: 14, scope: !842)
!4314 = !DILocation(line: 1325, column: 33, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !840, file: !4, discriminator: 2)
!4316 = !DILocation(line: 1325, column: 37, scope: !840)
!4317 = !DILocation(line: 1325, column: 44, scope: !840)
!4318 = !DILocation(line: 1325, column: 63, scope: !840)
!4319 = !DILocation(line: 1325, column: 69, scope: !840)
!4320 = !DILocation(line: 1325, column: 81, scope: !840)
!4321 = !DILocation(line: 1325, column: 91, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !840, file: !4, line: 1325, column: 91)
!4323 = !DILocation(line: 1325, column: 91, scope: !840)
!4324 = !DILocation(line: 1325, column: 104, scope: !4325)
!4325 = !DILexicalBlockFile(scope: !4322, file: !4, discriminator: 4)
!4326 = !DILocation(line: 1325, column: 97, scope: !4322)
!4327 = !DILocation(line: 1325, column: 110, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !841, file: !4, discriminator: 5)
!4329 = !DILocation(line: 1325, column: 110, scope: !4330)
!4330 = !DILexicalBlockFile(scope: !4331, file: !4, discriminator: 7)
!4331 = !DILexicalBlockFile(scope: !841, file: !4, discriminator: 6)
!4332 = !DILocation(line: 1325, column: 110, scope: !840)
!4333 = !DILocation(line: 1325, column: 112, scope: !4334)
!4334 = !DILexicalBlockFile(scope: !4335, file: !4, discriminator: 8)
!4335 = !DILexicalBlockFile(scope: !842, file: !4, discriminator: 3)
!4336 = !DILocation(line: 1326, column: 5, scope: !828)
!4337 = !DILocation(line: 1327, column: 1, scope: !828)
!4338 = !DILocation(line: 1330, column: 25, scope: !843)
!4339 = !DILocation(line: 1332, column: 5, scope: !843)
!4340 = !DILocation(line: 1332, column: 10, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !849, file: !4, discriminator: 1)
!4342 = !DILocation(line: 1332, column: 20, scope: !849)
!4343 = !DILocation(line: 1332, column: 43, scope: !849)
!4344 = !DILocation(line: 1332, column: 49, scope: !849)
!4345 = !DILocation(line: 1332, column: 30, scope: !849)
!4346 = !DILocation(line: 1332, column: 63, scope: !853)
!4347 = !DILocation(line: 1332, column: 71, scope: !853)
!4348 = !DILocation(line: 1332, column: 63, scope: !849)
!4349 = !DILocation(line: 1332, column: 89, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !852, file: !4, discriminator: 2)
!4351 = !DILocation(line: 1332, column: 95, scope: !852)
!4352 = !DILocation(line: 1332, column: 104, scope: !852)
!4353 = !DILocation(line: 1332, column: 118, scope: !852)
!4354 = !DILocation(line: 1332, column: 123, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !851, file: !4, discriminator: 4)
!4356 = !DILocation(line: 1332, column: 133, scope: !851)
!4357 = !DILocation(line: 1332, column: 163, scope: !851)
!4358 = !DILocation(line: 1332, column: 181, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !851, file: !4, line: 1332, column: 178)
!4360 = !DILocation(line: 1332, column: 198, scope: !4359)
!4361 = !DILocation(line: 1332, column: 178, scope: !4359)
!4362 = !DILocation(line: 1332, column: 208, scope: !4359)
!4363 = !DILocation(line: 1332, column: 178, scope: !851)
!4364 = !DILocation(line: 1332, column: 178, scope: !4365)
!4365 = !DILexicalBlockFile(scope: !851, file: !4, discriminator: 5)
!4366 = !DILocation(line: 1332, column: 239, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !4359, file: !4, discriminator: 6)
!4368 = !DILocation(line: 1332, column: 257, scope: !4359)
!4369 = !DILocation(line: 1332, column: 267, scope: !4359)
!4370 = !DILocation(line: 1332, column: 292, scope: !4359)
!4371 = !DILocation(line: 1332, column: 223, scope: !4359)
!4372 = !DILocation(line: 1332, column: 311, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !852, file: !4, discriminator: 7)
!4374 = !DILocation(line: 1332, column: 311, scope: !851)
!4375 = !DILocation(line: 1332, column: 311, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !851, file: !4, discriminator: 8)
!4377 = !DILocation(line: 1332, column: 324, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !852, file: !4, discriminator: 9)
!4379 = !DILocation(line: 1332, column: 326, scope: !4380)
!4380 = !DILexicalBlockFile(scope: !4381, file: !4, discriminator: 10)
!4381 = !DILexicalBlockFile(scope: !843, file: !4, discriminator: 3)
!4382 = !DILocation(line: 1332, column: 326, scope: !849)
!4383 = !DILocation(line: 1333, column: 5, scope: !843)
!4384 = !DILocation(line: 1333, column: 10, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !855, file: !4, discriminator: 1)
!4386 = !DILocation(line: 1333, column: 20, scope: !855)
!4387 = !DILocation(line: 1333, column: 43, scope: !855)
!4388 = !DILocation(line: 1333, column: 49, scope: !855)
!4389 = !DILocation(line: 1333, column: 65, scope: !859)
!4390 = !DILocation(line: 1333, column: 73, scope: !859)
!4391 = !DILocation(line: 1333, column: 65, scope: !855)
!4392 = !DILocation(line: 1333, column: 91, scope: !4393)
!4393 = !DILexicalBlockFile(scope: !858, file: !4, discriminator: 2)
!4394 = !DILocation(line: 1333, column: 97, scope: !858)
!4395 = !DILocation(line: 1333, column: 108, scope: !858)
!4396 = !DILocation(line: 1333, column: 122, scope: !858)
!4397 = !DILocation(line: 1333, column: 127, scope: !4398)
!4398 = !DILexicalBlockFile(scope: !857, file: !4, discriminator: 4)
!4399 = !DILocation(line: 1333, column: 137, scope: !857)
!4400 = !DILocation(line: 1333, column: 167, scope: !857)
!4401 = !DILocation(line: 1333, column: 185, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !857, file: !4, line: 1333, column: 182)
!4403 = !DILocation(line: 1333, column: 202, scope: !4402)
!4404 = !DILocation(line: 1333, column: 182, scope: !4402)
!4405 = !DILocation(line: 1333, column: 212, scope: !4402)
!4406 = !DILocation(line: 1333, column: 182, scope: !857)
!4407 = !DILocation(line: 1333, column: 182, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !857, file: !4, discriminator: 5)
!4409 = !DILocation(line: 1333, column: 243, scope: !4410)
!4410 = !DILexicalBlockFile(scope: !4402, file: !4, discriminator: 6)
!4411 = !DILocation(line: 1333, column: 261, scope: !4402)
!4412 = !DILocation(line: 1333, column: 271, scope: !4402)
!4413 = !DILocation(line: 1333, column: 296, scope: !4402)
!4414 = !DILocation(line: 1333, column: 227, scope: !4402)
!4415 = !DILocation(line: 1333, column: 315, scope: !4416)
!4416 = !DILexicalBlockFile(scope: !858, file: !4, discriminator: 7)
!4417 = !DILocation(line: 1333, column: 315, scope: !857)
!4418 = !DILocation(line: 1333, column: 315, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !857, file: !4, discriminator: 8)
!4420 = !DILocation(line: 1333, column: 328, scope: !4421)
!4421 = !DILexicalBlockFile(scope: !858, file: !4, discriminator: 9)
!4422 = !DILocation(line: 1333, column: 330, scope: !4380)
!4423 = !DILocation(line: 1333, column: 330, scope: !855)
!4424 = !DILocation(line: 1334, column: 5, scope: !843)
!4425 = !DILocation(line: 1190, column: 25, scope: !860)
!4426 = !DILocation(line: 1190, column: 41, scope: !860)
!4427 = !DILocation(line: 1192, column: 5, scope: !860)
!4428 = !DILocation(line: 1192, column: 17, scope: !860)
!4429 = !DILocation(line: 1192, column: 27, scope: !860)
!4430 = !DILocation(line: 1192, column: 33, scope: !860)
!4431 = !DILocation(line: 1193, column: 5, scope: !860)
!4432 = !DILocation(line: 1193, column: 16, scope: !860)
!4433 = !DILocation(line: 1193, column: 21, scope: !860)
!4434 = !DILocation(line: 1194, column: 5, scope: !860)
!4435 = !DILocation(line: 1194, column: 15, scope: !860)
!4436 = !DILocation(line: 1194, column: 22, scope: !860)
!4437 = !DILocation(line: 1196, column: 27, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1196, column: 9)
!4439 = !DILocation(line: 1196, column: 10, scope: !4438)
!4440 = !DILocation(line: 1196, column: 9, scope: !860)
!4441 = !DILocation(line: 1197, column: 61, scope: !4438)
!4442 = !DILocation(line: 1197, column: 43, scope: !4438)
!4443 = !DILocation(line: 1197, column: 30, scope: !4438)
!4444 = !DILocation(line: 1197, column: 96, scope: !4438)
!4445 = !DILocation(line: 1197, column: 16, scope: !4438)
!4446 = !DILocation(line: 1197, column: 9, scope: !4438)
!4447 = !DILocation(line: 1199, column: 27, scope: !860)
!4448 = !DILocation(line: 1199, column: 11, scope: !860)
!4449 = !DILocation(line: 1199, column: 9, scope: !860)
!4450 = !DILocation(line: 1200, column: 9, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1200, column: 9)
!4452 = !DILocation(line: 1200, column: 13, scope: !4451)
!4453 = !DILocation(line: 1200, column: 9, scope: !860)
!4454 = !DILocation(line: 1201, column: 9, scope: !4451)
!4455 = !DILocation(line: 1205, column: 16, scope: !860)
!4456 = !DILocation(line: 1205, column: 5, scope: !860)
!4457 = !DILocation(line: 1206, column: 12, scope: !874)
!4458 = !DILocation(line: 1206, column: 10, scope: !874)
!4459 = !DILocation(line: 1206, column: 17, scope: !4460)
!4460 = !DILexicalBlockFile(scope: !4461, file: !4, discriminator: 2)
!4461 = !DILexicalBlockFile(scope: !873, file: !4, discriminator: 1)
!4462 = !DILocation(line: 1206, column: 21, scope: !873)
!4463 = !DILocation(line: 1206, column: 19, scope: !873)
!4464 = !DILocation(line: 1206, column: 5, scope: !874)
!4465 = !DILocation(line: 1207, column: 9, scope: !872)
!4466 = !DILocation(line: 1207, column: 19, scope: !872)
!4467 = !DILocation(line: 1208, column: 9, scope: !872)
!4468 = !DILocation(line: 1208, column: 13, scope: !872)
!4469 = !DILocation(line: 1209, column: 9, scope: !872)
!4470 = !DILocation(line: 1209, column: 13, scope: !872)
!4471 = !DILocation(line: 1211, column: 36, scope: !872)
!4472 = !DILocation(line: 1211, column: 41, scope: !872)
!4473 = !DILocation(line: 1211, column: 17, scope: !872)
!4474 = !DILocation(line: 1211, column: 15, scope: !872)
!4475 = !DILocation(line: 1212, column: 13, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !872, file: !4, line: 1212, column: 13)
!4477 = !DILocation(line: 1212, column: 19, scope: !4476)
!4478 = !DILocation(line: 1212, column: 13, scope: !872)
!4479 = !DILocation(line: 1213, column: 13, scope: !4476)
!4480 = !DILocation(line: 1215, column: 17, scope: !872)
!4481 = !DILocation(line: 1215, column: 26, scope: !872)
!4482 = !DILocation(line: 1217, column: 38, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !872, file: !4, line: 1215, column: 35)
!4484 = !DILocation(line: 1217, column: 23, scope: !4483)
!4485 = !DILocation(line: 1217, column: 22, scope: !4483)
!4486 = !DILocation(line: 1217, column: 20, scope: !4483)
!4487 = !DILocation(line: 1218, column: 13, scope: !4483)
!4488 = !DILocation(line: 1220, column: 20, scope: !4483)
!4489 = !DILocation(line: 1221, column: 13, scope: !4483)
!4490 = !DILocation(line: 1223, column: 20, scope: !4483)
!4491 = !DILocation(line: 1224, column: 13, scope: !4483)
!4492 = !DILocation(line: 1227, column: 30, scope: !880)
!4493 = !DILocation(line: 1227, column: 39, scope: !880)
!4494 = !DILocation(line: 1227, column: 50, scope: !880)
!4495 = !DILocation(line: 1227, column: 59, scope: !880)
!4496 = !DILocation(line: 1227, column: 76, scope: !880)
!4497 = !DILocation(line: 1227, column: 13, scope: !872)
!4498 = !DILocation(line: 1228, column: 37, scope: !879)
!4499 = !DILocation(line: 1228, column: 43, scope: !879)
!4500 = !DILocation(line: 1228, column: 59, scope: !879)
!4501 = !DILocation(line: 1228, column: 63, scope: !879)
!4502 = !DILocation(line: 1228, column: 25, scope: !879)
!4503 = !DILocation(line: 1228, column: 23, scope: !879)
!4504 = !DILocation(line: 1229, column: 13, scope: !879)
!4505 = !DILocation(line: 1229, column: 18, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !878, file: !4, discriminator: 1)
!4507 = !DILocation(line: 1229, column: 28, scope: !878)
!4508 = !DILocation(line: 1229, column: 58, scope: !878)
!4509 = !DILocation(line: 1229, column: 74, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !878, file: !4, line: 1229, column: 71)
!4511 = !DILocation(line: 1229, column: 91, scope: !4510)
!4512 = !DILocation(line: 1229, column: 71, scope: !4510)
!4513 = !DILocation(line: 1229, column: 101, scope: !4510)
!4514 = !DILocation(line: 1229, column: 71, scope: !878)
!4515 = !DILocation(line: 1229, column: 71, scope: !4516)
!4516 = !DILexicalBlockFile(scope: !878, file: !4, discriminator: 2)
!4517 = !DILocation(line: 1229, column: 132, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4510, file: !4, discriminator: 3)
!4519 = !DILocation(line: 1229, column: 150, scope: !4510)
!4520 = !DILocation(line: 1229, column: 160, scope: !4510)
!4521 = !DILocation(line: 1229, column: 185, scope: !4510)
!4522 = !DILocation(line: 1229, column: 116, scope: !4510)
!4523 = !DILocation(line: 1229, column: 204, scope: !4524)
!4524 = !DILexicalBlockFile(scope: !879, file: !4, discriminator: 4)
!4525 = !DILocation(line: 1229, column: 204, scope: !878)
!4526 = !DILocation(line: 1229, column: 204, scope: !4527)
!4527 = !DILexicalBlockFile(scope: !878, file: !4, discriminator: 5)
!4528 = !DILocation(line: 1230, column: 9, scope: !879)
!4529 = !DILocation(line: 1231, column: 18, scope: !884)
!4530 = !DILocation(line: 1231, column: 24, scope: !884)
!4531 = !DILocation(line: 1231, column: 18, scope: !880)
!4532 = !DILocation(line: 1232, column: 37, scope: !883)
!4533 = !DILocation(line: 1232, column: 64, scope: !883)
!4534 = !DILocation(line: 1232, column: 68, scope: !883)
!4535 = !DILocation(line: 1232, column: 25, scope: !883)
!4536 = !DILocation(line: 1232, column: 23, scope: !883)
!4537 = !DILocation(line: 1233, column: 13, scope: !883)
!4538 = !DILocation(line: 1233, column: 18, scope: !4539)
!4539 = !DILexicalBlockFile(scope: !882, file: !4, discriminator: 1)
!4540 = !DILocation(line: 1233, column: 28, scope: !882)
!4541 = !DILocation(line: 1233, column: 58, scope: !882)
!4542 = !DILocation(line: 1233, column: 74, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1233, column: 71)
!4544 = !DILocation(line: 1233, column: 91, scope: !4543)
!4545 = !DILocation(line: 1233, column: 71, scope: !4543)
!4546 = !DILocation(line: 1233, column: 101, scope: !4543)
!4547 = !DILocation(line: 1233, column: 71, scope: !882)
!4548 = !DILocation(line: 1233, column: 71, scope: !4549)
!4549 = !DILexicalBlockFile(scope: !882, file: !4, discriminator: 2)
!4550 = !DILocation(line: 1233, column: 132, scope: !4551)
!4551 = !DILexicalBlockFile(scope: !4543, file: !4, discriminator: 3)
!4552 = !DILocation(line: 1233, column: 150, scope: !4543)
!4553 = !DILocation(line: 1233, column: 160, scope: !4543)
!4554 = !DILocation(line: 1233, column: 185, scope: !4543)
!4555 = !DILocation(line: 1233, column: 116, scope: !4543)
!4556 = !DILocation(line: 1233, column: 204, scope: !4557)
!4557 = !DILexicalBlockFile(scope: !883, file: !4, discriminator: 4)
!4558 = !DILocation(line: 1233, column: 204, scope: !882)
!4559 = !DILocation(line: 1233, column: 204, scope: !4560)
!4560 = !DILexicalBlockFile(scope: !882, file: !4, discriminator: 5)
!4561 = !DILocation(line: 1234, column: 9, scope: !883)
!4562 = !DILocation(line: 1236, column: 13, scope: !886)
!4563 = !DILocation(line: 1236, column: 23, scope: !886)
!4564 = !DILocation(line: 1238, column: 32, scope: !886)
!4565 = !DILocation(line: 1238, column: 19, scope: !886)
!4566 = !DILocation(line: 1238, column: 17, scope: !886)
!4567 = !DILocation(line: 1239, column: 13, scope: !886)
!4568 = !DILocation(line: 1239, column: 18, scope: !4569)
!4569 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 1)
!4570 = !DILocation(line: 1239, column: 28, scope: !888)
!4571 = !DILocation(line: 1239, column: 58, scope: !888)
!4572 = !DILocation(line: 1239, column: 74, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !888, file: !4, line: 1239, column: 71)
!4574 = !DILocation(line: 1239, column: 91, scope: !4573)
!4575 = !DILocation(line: 1239, column: 71, scope: !4573)
!4576 = !DILocation(line: 1239, column: 101, scope: !4573)
!4577 = !DILocation(line: 1239, column: 71, scope: !888)
!4578 = !DILocation(line: 1239, column: 71, scope: !4579)
!4579 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 2)
!4580 = !DILocation(line: 1239, column: 132, scope: !4581)
!4581 = !DILexicalBlockFile(scope: !4573, file: !4, discriminator: 3)
!4582 = !DILocation(line: 1239, column: 150, scope: !4573)
!4583 = !DILocation(line: 1239, column: 160, scope: !4573)
!4584 = !DILocation(line: 1239, column: 185, scope: !4573)
!4585 = !DILocation(line: 1239, column: 116, scope: !4573)
!4586 = !DILocation(line: 1239, column: 204, scope: !4587)
!4587 = !DILexicalBlockFile(scope: !886, file: !4, discriminator: 4)
!4588 = !DILocation(line: 1239, column: 204, scope: !888)
!4589 = !DILocation(line: 1239, column: 204, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 5)
!4591 = !DILocation(line: 1240, column: 17, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !886, file: !4, line: 1240, column: 17)
!4593 = !DILocation(line: 1240, column: 21, scope: !4592)
!4594 = !DILocation(line: 1240, column: 17, scope: !886)
!4595 = !DILocation(line: 1241, column: 17, scope: !4592)
!4596 = !DILocation(line: 1242, column: 37, scope: !886)
!4597 = !DILocation(line: 1242, column: 43, scope: !886)
!4598 = !DILocation(line: 1242, column: 57, scope: !886)
!4599 = !DILocation(line: 1242, column: 61, scope: !886)
!4600 = !DILocation(line: 1242, column: 25, scope: !886)
!4601 = !DILocation(line: 1242, column: 23, scope: !886)
!4602 = !DILocation(line: 1243, column: 13, scope: !886)
!4603 = !DILocation(line: 1243, column: 18, scope: !4604)
!4604 = !DILexicalBlockFile(scope: !890, file: !4, discriminator: 1)
!4605 = !DILocation(line: 1243, column: 28, scope: !890)
!4606 = !DILocation(line: 1243, column: 58, scope: !890)
!4607 = !DILocation(line: 1243, column: 72, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !890, file: !4, line: 1243, column: 69)
!4609 = !DILocation(line: 1243, column: 89, scope: !4608)
!4610 = !DILocation(line: 1243, column: 69, scope: !4608)
!4611 = !DILocation(line: 1243, column: 99, scope: !4608)
!4612 = !DILocation(line: 1243, column: 69, scope: !890)
!4613 = !DILocation(line: 1243, column: 69, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !890, file: !4, discriminator: 2)
!4615 = !DILocation(line: 1243, column: 130, scope: !4616)
!4616 = !DILexicalBlockFile(scope: !4608, file: !4, discriminator: 3)
!4617 = !DILocation(line: 1243, column: 148, scope: !4608)
!4618 = !DILocation(line: 1243, column: 158, scope: !4608)
!4619 = !DILocation(line: 1243, column: 183, scope: !4608)
!4620 = !DILocation(line: 1243, column: 114, scope: !4608)
!4621 = !DILocation(line: 1243, column: 202, scope: !4587)
!4622 = !DILocation(line: 1243, column: 202, scope: !890)
!4623 = !DILocation(line: 1243, column: 202, scope: !4624)
!4624 = !DILexicalBlockFile(scope: !890, file: !4, discriminator: 5)
!4625 = !DILocation(line: 1244, column: 9, scope: !884)
!4626 = !DILocation(line: 1244, column: 9, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !884, file: !4, discriminator: 1)
!4628 = !DILocation(line: 1245, column: 14, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !872, file: !4, line: 1245, column: 13)
!4630 = !DILocation(line: 1245, column: 13, scope: !872)
!4631 = !DILocation(line: 1246, column: 13, scope: !4629)
!4632 = !DILocation(line: 1247, column: 5, scope: !873)
!4633 = !DILocation(line: 1247, column: 5, scope: !4461)
!4634 = !DILocation(line: 1247, column: 5, scope: !872)
!4635 = !DILocation(line: 1206, column: 27, scope: !873)
!4636 = !DILocation(line: 1206, column: 5, scope: !873)
!4637 = !DILocation(line: 1251, column: 37, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1251, column: 9)
!4639 = !DILocation(line: 1251, column: 10, scope: !4638)
!4640 = !DILocation(line: 1251, column: 9, scope: !860)
!4641 = !DILocation(line: 1252, column: 9, scope: !4638)
!4642 = !DILocation(line: 1255, column: 47, scope: !860)
!4643 = !DILocation(line: 1255, column: 53, scope: !860)
!4644 = !DILocation(line: 1255, column: 38, scope: !860)
!4645 = !DILocation(line: 1255, column: 58, scope: !860)
!4646 = !DILocation(line: 1255, column: 64, scope: !860)
!4647 = !{!4189, !1243, i64 48}
!4648 = !DILocation(line: 1254, column: 12, scope: !860)
!4649 = !DILocation(line: 1254, column: 10, scope: !860)
!4650 = !DILocation(line: 1256, column: 9, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !860, file: !4, line: 1256, column: 9)
!4652 = !DILocation(line: 1256, column: 14, scope: !4651)
!4653 = !DILocation(line: 1256, column: 9, scope: !860)
!4654 = !DILocation(line: 1257, column: 9, scope: !4651)
!4655 = !DILocation(line: 1258, column: 43, scope: !860)
!4656 = !DILocation(line: 1258, column: 49, scope: !860)
!4657 = !DILocation(line: 1258, column: 60, scope: !860)
!4658 = !DILocation(line: 1258, column: 14, scope: !860)
!4659 = !DILocation(line: 1258, column: 12, scope: !860)
!4660 = !DILocation(line: 1259, column: 5, scope: !860)
!4661 = !DILocation(line: 1259, column: 10, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 1)
!4663 = !DILocation(line: 1259, column: 20, scope: !892)
!4664 = !DILocation(line: 1259, column: 50, scope: !892)
!4665 = !DILocation(line: 1259, column: 65, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !892, file: !4, line: 1259, column: 62)
!4667 = !DILocation(line: 1259, column: 82, scope: !4666)
!4668 = !DILocation(line: 1259, column: 62, scope: !4666)
!4669 = !DILocation(line: 1259, column: 92, scope: !4666)
!4670 = !DILocation(line: 1259, column: 62, scope: !892)
!4671 = !DILocation(line: 1259, column: 62, scope: !4672)
!4672 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 2)
!4673 = !DILocation(line: 1259, column: 123, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !4666, file: !4, discriminator: 3)
!4675 = !DILocation(line: 1259, column: 141, scope: !4666)
!4676 = !DILocation(line: 1259, column: 151, scope: !4666)
!4677 = !DILocation(line: 1259, column: 176, scope: !4666)
!4678 = !DILocation(line: 1259, column: 107, scope: !4666)
!4679 = !DILocation(line: 1259, column: 195, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !860, file: !4, discriminator: 4)
!4681 = !DILocation(line: 1259, column: 195, scope: !892)
!4682 = !DILocation(line: 1259, column: 195, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 5)
!4684 = !DILocation(line: 1260, column: 12, scope: !860)
!4685 = !DILocation(line: 1260, column: 5, scope: !860)
!4686 = !DILocation(line: 1261, column: 1, scope: !860)
!4687 = !DILocation(line: 1270, column: 26, scope: !945)
!4688 = !DILocation(line: 1270, column: 42, scope: !945)
!4689 = !DILocation(line: 1272, column: 5, scope: !945)
!4690 = !DILocation(line: 1272, column: 15, scope: !945)
!4691 = !DILocation(line: 1272, column: 26, scope: !945)
!4692 = !DILocation(line: 1272, column: 36, scope: !945)
!4693 = !DILocation(line: 1274, column: 33, scope: !945)
!4694 = !DILocation(line: 1274, column: 16, scope: !945)
!4695 = !DILocation(line: 1274, column: 14, scope: !945)
!4696 = !DILocation(line: 1275, column: 9, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !945, file: !4, line: 1275, column: 9)
!4698 = !DILocation(line: 1275, column: 18, scope: !4697)
!4699 = !DILocation(line: 1275, column: 9, scope: !945)
!4700 = !DILocation(line: 1276, column: 25, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !4, line: 1275, column: 33)
!4702 = !DILocation(line: 1276, column: 9, scope: !4701)
!4703 = !DILocation(line: 1278, column: 9, scope: !4701)
!4704 = !DILocation(line: 1280, column: 5, scope: !945)
!4705 = !DILocation(line: 1280, column: 35, scope: !4706)
!4706 = !DILexicalBlockFile(scope: !4707, file: !4, discriminator: 2)
!4707 = !DILexicalBlockFile(scope: !945, file: !4, discriminator: 1)
!4708 = !DILocation(line: 1280, column: 23, scope: !945)
!4709 = !DILocation(line: 1280, column: 21, scope: !945)
!4710 = !DILocation(line: 1281, column: 31, scope: !954)
!4711 = !DILocation(line: 1281, column: 37, scope: !954)
!4712 = !DILocation(line: 1281, column: 18, scope: !954)
!4713 = !DILocation(line: 1281, column: 16, scope: !954)
!4714 = !DILocation(line: 1282, column: 9, scope: !954)
!4715 = !DILocation(line: 1282, column: 14, scope: !4716)
!4716 = !DILexicalBlockFile(scope: !953, file: !4, discriminator: 1)
!4717 = !DILocation(line: 1282, column: 24, scope: !953)
!4718 = !DILocation(line: 1282, column: 54, scope: !953)
!4719 = !DILocation(line: 1282, column: 72, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !953, file: !4, line: 1282, column: 69)
!4721 = !DILocation(line: 1282, column: 89, scope: !4720)
!4722 = !DILocation(line: 1282, column: 69, scope: !4720)
!4723 = !DILocation(line: 1282, column: 99, scope: !4720)
!4724 = !DILocation(line: 1282, column: 69, scope: !953)
!4725 = !DILocation(line: 1282, column: 69, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !953, file: !4, discriminator: 2)
!4727 = !DILocation(line: 1282, column: 130, scope: !4728)
!4728 = !DILexicalBlockFile(scope: !4720, file: !4, discriminator: 3)
!4729 = !DILocation(line: 1282, column: 148, scope: !4720)
!4730 = !DILocation(line: 1282, column: 158, scope: !4720)
!4731 = !DILocation(line: 1282, column: 183, scope: !4720)
!4732 = !DILocation(line: 1282, column: 114, scope: !4720)
!4733 = !DILocation(line: 1282, column: 202, scope: !4734)
!4734 = !DILexicalBlockFile(scope: !954, file: !4, discriminator: 4)
!4735 = !DILocation(line: 1282, column: 202, scope: !953)
!4736 = !DILocation(line: 1282, column: 202, scope: !4737)
!4737 = !DILexicalBlockFile(scope: !953, file: !4, discriminator: 5)
!4738 = !DILocation(line: 1283, column: 14, scope: !958)
!4739 = !DILocation(line: 1283, column: 13, scope: !954)
!4740 = !DILocation(line: 1284, column: 13, scope: !957)
!4741 = !DILocation(line: 1284, column: 18, scope: !4742)
!4742 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 1)
!4743 = !DILocation(line: 1284, column: 28, scope: !956)
!4744 = !DILocation(line: 1284, column: 58, scope: !956)
!4745 = !DILocation(line: 1284, column: 77, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !956, file: !4, line: 1284, column: 74)
!4747 = !DILocation(line: 1284, column: 94, scope: !4746)
!4748 = !DILocation(line: 1284, column: 74, scope: !4746)
!4749 = !DILocation(line: 1284, column: 104, scope: !4746)
!4750 = !DILocation(line: 1284, column: 74, scope: !956)
!4751 = !DILocation(line: 1284, column: 74, scope: !4752)
!4752 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 2)
!4753 = !DILocation(line: 1284, column: 135, scope: !4754)
!4754 = !DILexicalBlockFile(scope: !4746, file: !4, discriminator: 3)
!4755 = !DILocation(line: 1284, column: 153, scope: !4746)
!4756 = !DILocation(line: 1284, column: 163, scope: !4746)
!4757 = !DILocation(line: 1284, column: 188, scope: !4746)
!4758 = !DILocation(line: 1284, column: 119, scope: !4746)
!4759 = !DILocation(line: 1284, column: 207, scope: !4760)
!4760 = !DILexicalBlockFile(scope: !957, file: !4, discriminator: 4)
!4761 = !DILocation(line: 1284, column: 207, scope: !956)
!4762 = !DILocation(line: 1284, column: 207, scope: !4763)
!4763 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 5)
!4764 = !DILocation(line: 1285, column: 13, scope: !957)
!4765 = !DILocation(line: 1288, column: 14, scope: !958)
!4766 = !DILocation(line: 1288, column: 19, scope: !4767)
!4767 = !DILexicalBlockFile(scope: !960, file: !4, discriminator: 1)
!4768 = !DILocation(line: 1288, column: 29, scope: !960)
!4769 = !DILocation(line: 1288, column: 59, scope: !960)
!4770 = !DILocation(line: 1288, column: 76, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !960, file: !4, line: 1288, column: 73)
!4772 = !DILocation(line: 1288, column: 93, scope: !4771)
!4773 = !DILocation(line: 1288, column: 73, scope: !4771)
!4774 = !DILocation(line: 1288, column: 103, scope: !4771)
!4775 = !DILocation(line: 1288, column: 73, scope: !960)
!4776 = !DILocation(line: 1288, column: 73, scope: !4777)
!4777 = !DILexicalBlockFile(scope: !960, file: !4, discriminator: 2)
!4778 = !DILocation(line: 1288, column: 134, scope: !4779)
!4779 = !DILexicalBlockFile(scope: !4771, file: !4, discriminator: 3)
!4780 = !DILocation(line: 1288, column: 152, scope: !4771)
!4781 = !DILocation(line: 1288, column: 162, scope: !4771)
!4782 = !DILocation(line: 1288, column: 187, scope: !4771)
!4783 = !DILocation(line: 1288, column: 118, scope: !4771)
!4784 = !DILocation(line: 1288, column: 206, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !958, file: !4, discriminator: 4)
!4786 = !DILocation(line: 1288, column: 206, scope: !960)
!4787 = !DILocation(line: 1288, column: 206, scope: !4788)
!4788 = !DILexicalBlockFile(scope: !960, file: !4, discriminator: 5)
!4789 = !DILocation(line: 1290, column: 5, scope: !945)
!4790 = !DILocation(line: 1290, column: 10, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !962, file: !4, discriminator: 1)
!4792 = !DILocation(line: 1290, column: 20, scope: !962)
!4793 = !DILocation(line: 1290, column: 50, scope: !962)
!4794 = !DILocation(line: 1290, column: 69, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !962, file: !4, line: 1290, column: 66)
!4796 = !DILocation(line: 1290, column: 86, scope: !4795)
!4797 = !DILocation(line: 1290, column: 66, scope: !4795)
!4798 = !DILocation(line: 1290, column: 96, scope: !4795)
!4799 = !DILocation(line: 1290, column: 66, scope: !962)
!4800 = !DILocation(line: 1290, column: 66, scope: !4801)
!4801 = !DILexicalBlockFile(scope: !962, file: !4, discriminator: 2)
!4802 = !DILocation(line: 1290, column: 127, scope: !4803)
!4803 = !DILexicalBlockFile(scope: !4795, file: !4, discriminator: 3)
!4804 = !DILocation(line: 1290, column: 145, scope: !4795)
!4805 = !DILocation(line: 1290, column: 155, scope: !4795)
!4806 = !DILocation(line: 1290, column: 180, scope: !4795)
!4807 = !DILocation(line: 1290, column: 111, scope: !4795)
!4808 = !DILocation(line: 1290, column: 199, scope: !4809)
!4809 = !DILexicalBlockFile(scope: !945, file: !4, discriminator: 4)
!4810 = !DILocation(line: 1290, column: 199, scope: !962)
!4811 = !DILocation(line: 1290, column: 199, scope: !4812)
!4812 = !DILexicalBlockFile(scope: !962, file: !4, discriminator: 5)
!4813 = !DILocation(line: 1291, column: 9, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !945, file: !4, line: 1291, column: 9)
!4815 = !DILocation(line: 1291, column: 9, scope: !945)
!4816 = !DILocation(line: 1292, column: 9, scope: !4814)
!4817 = !DILocation(line: 1293, column: 51, scope: !945)
!4818 = !DILocation(line: 1294, column: 5, scope: !945)
!4819 = !DILocation(line: 1295, column: 1, scope: !945)
!4820 = !DILocation(line: 999, column: 23, scope: !893)
!4821 = !DILocation(line: 1001, column: 5, scope: !893)
!4822 = !DILocation(line: 1001, column: 11, scope: !893)
!4823 = !DILocation(line: 1001, column: 19, scope: !893)
!4824 = !DILocation(line: 1002, column: 5, scope: !893)
!4825 = !DILocation(line: 1002, column: 11, scope: !893)
!4826 = !DILocation(line: 1002, column: 22, scope: !893)
!4827 = !{!4189, !1347, i64 56}
!4828 = !DILocation(line: 1003, column: 1, scope: !893)
!4829 = !DILocation(line: 1129, column: 24, scope: !896)
!4830 = !DILocation(line: 1129, column: 40, scope: !896)
!4831 = !DILocation(line: 1129, column: 52, scope: !896)
!4832 = !DILocation(line: 1129, column: 64, scope: !896)
!4833 = !DILocation(line: 1131, column: 5, scope: !896)
!4834 = !DILocation(line: 1131, column: 18, scope: !896)
!4835 = !DILocation(line: 1132, column: 5, scope: !896)
!4836 = !DILocation(line: 1132, column: 11, scope: !896)
!4837 = !DILocation(line: 1133, column: 5, scope: !896)
!4838 = !DILocation(line: 1133, column: 16, scope: !896)
!4839 = !DILocation(line: 1134, column: 5, scope: !896)
!4840 = !DILocation(line: 1134, column: 16, scope: !896)
!4841 = !DILocation(line: 1136, column: 9, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !896, file: !4, line: 1136, column: 9)
!4843 = !DILocation(line: 1136, column: 15, scope: !4842)
!4844 = !DILocation(line: 1136, column: 9, scope: !896)
!4845 = !DILocation(line: 1137, column: 47, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !4, line: 1137, column: 13)
!4847 = distinct !DILexicalBlock(scope: !4842, file: !4, line: 1136, column: 30)
!4848 = !DILocation(line: 1137, column: 31, scope: !4846)
!4849 = !DILocation(line: 1137, column: 55, scope: !4846)
!4850 = !DILocation(line: 1137, column: 61, scope: !4846)
!4851 = !DILocation(line: 1137, column: 29, scope: !4846)
!4852 = !DILocation(line: 1137, column: 29, scope: !4853)
!4853 = !DILexicalBlockFile(scope: !4846, file: !4, discriminator: 1)
!4854 = !DILocation(line: 1137, column: 104, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !4846, file: !4, discriminator: 2)
!4856 = !DILocation(line: 1137, column: 74, scope: !4846)
!4857 = !DILocation(line: 1137, column: 114, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4859, file: !4, discriminator: 4)
!4859 = !DILexicalBlockFile(scope: !4846, file: !4, discriminator: 3)
!4860 = !DILocation(line: 1137, column: 13, scope: !4847)
!4861 = !DILocation(line: 1138, column: 13, scope: !4846)
!4862 = !DILocation(line: 1139, column: 70, scope: !4847)
!4863 = !DILocation(line: 1139, column: 52, scope: !4847)
!4864 = !DILocation(line: 1139, column: 79, scope: !4847)
!4865 = !DILocation(line: 1139, column: 85, scope: !4847)
!4866 = !DILocation(line: 1139, column: 20, scope: !4847)
!4867 = !DILocation(line: 1140, column: 56, scope: !4847)
!4868 = !DILocation(line: 1140, column: 39, scope: !4847)
!4869 = !DILocation(line: 1140, column: 65, scope: !4847)
!4870 = !DILocation(line: 1140, column: 71, scope: !4847)
!4871 = !DILocation(line: 1140, column: 37, scope: !4847)
!4872 = !DILocation(line: 1140, column: 129, scope: !4873)
!4873 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 1)
!4874 = !DILocation(line: 1140, column: 113, scope: !4847)
!4875 = !DILocation(line: 1140, column: 137, scope: !4847)
!4876 = !DILocation(line: 1140, column: 143, scope: !4847)
!4877 = !DILocation(line: 1140, column: 83, scope: !4847)
!4878 = !DILocation(line: 1140, column: 178, scope: !4879)
!4879 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 3)
!4880 = !DILocation(line: 1140, column: 161, scope: !4847)
!4881 = !DILocation(line: 1140, column: 185, scope: !4847)
!4882 = !DILocation(line: 1140, column: 153, scope: !4847)
!4883 = !DILocation(line: 1140, column: 228, scope: !4884)
!4884 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 4)
!4885 = !DILocation(line: 1140, column: 202, scope: !4847)
!4886 = !DILocation(line: 1140, column: 235, scope: !4847)
!4887 = !DILocation(line: 1140, column: 194, scope: !4847)
!4888 = !DILocation(line: 1140, column: 37, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4890, file: !4, discriminator: 6)
!4890 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 5)
!4891 = !DILocation(line: 1140, column: 282, scope: !4892)
!4892 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 2)
!4893 = !DILocation(line: 1140, column: 262, scope: !4847)
!4894 = !DILocation(line: 1140, column: 291, scope: !4847)
!4895 = !DILocation(line: 1140, column: 296, scope: !4847)
!4896 = !DILocation(line: 1140, column: 20, scope: !4897)
!4897 = !DILexicalBlockFile(scope: !4898, file: !4, discriminator: 8)
!4898 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 7)
!4899 = !DILocation(line: 1141, column: 69, scope: !4847)
!4900 = !DILocation(line: 1141, column: 51, scope: !4847)
!4901 = !DILocation(line: 1141, column: 78, scope: !4847)
!4902 = !DILocation(line: 1141, column: 19, scope: !4847)
!4903 = !DILocation(line: 1142, column: 5, scope: !4847)
!4904 = !DILocation(line: 1143, column: 32, scope: !896)
!4905 = !DILocation(line: 1143, column: 38, scope: !896)
!4906 = !DILocation(line: 1143, column: 50, scope: !896)
!4907 = !DILocation(line: 1143, column: 62, scope: !896)
!4908 = !DILocation(line: 1144, column: 32, scope: !896)
!4909 = !DILocation(line: 1144, column: 45, scope: !896)
!4910 = !DILocation(line: 1143, column: 15, scope: !896)
!4911 = !DILocation(line: 1143, column: 13, scope: !896)
!4912 = !DILocation(line: 1145, column: 9, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !896, file: !4, line: 1145, column: 9)
!4914 = !DILocation(line: 1145, column: 17, scope: !4913)
!4915 = !DILocation(line: 1145, column: 9, scope: !896)
!4916 = !DILocation(line: 1146, column: 9, scope: !4913)
!4917 = !DILocation(line: 1149, column: 30, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !896, file: !4, line: 1149, column: 9)
!4919 = !DILocation(line: 1149, column: 36, scope: !4918)
!4920 = !DILocation(line: 1149, column: 10, scope: !4918)
!4921 = !DILocation(line: 1149, column: 9, scope: !896)
!4922 = !DILocation(line: 1150, column: 9, scope: !4918)
!4923 = !DILocation(line: 1152, column: 38, scope: !896)
!4924 = !DILocation(line: 1152, column: 44, scope: !896)
!4925 = !DILocation(line: 1152, column: 56, scope: !896)
!4926 = !DILocation(line: 1152, column: 68, scope: !896)
!4927 = !DILocation(line: 1153, column: 38, scope: !896)
!4928 = !DILocation(line: 1153, column: 51, scope: !896)
!4929 = !DILocation(line: 1152, column: 21, scope: !896)
!4930 = !DILocation(line: 1152, column: 5, scope: !896)
!4931 = !DILocation(line: 1152, column: 11, scope: !896)
!4932 = !DILocation(line: 1152, column: 19, scope: !896)
!4933 = !DILocation(line: 1154, column: 5, scope: !896)
!4934 = !DILocation(line: 1154, column: 11, scope: !896)
!4935 = !DILocation(line: 1154, column: 21, scope: !896)
!4936 = !DILocation(line: 1156, column: 5, scope: !896)
!4937 = !DILocation(line: 1157, column: 1, scope: !896)
!4938 = !DILocation(line: 1160, column: 39, scope: !938)
!4939 = !DILocation(line: 1162, column: 5, scope: !938)
!4940 = !DILocation(line: 1162, column: 16, scope: !938)
!4941 = !DILocation(line: 1162, column: 32, scope: !938)
!4942 = !DILocation(line: 1163, column: 5, scope: !938)
!4943 = !DILocation(line: 1163, column: 18, scope: !938)
!4944 = !DILocation(line: 1164, column: 5, scope: !938)
!4945 = !DILocation(line: 1164, column: 11, scope: !938)
!4946 = !DILocation(line: 1166, column: 70, scope: !938)
!4947 = !DILocation(line: 1166, column: 76, scope: !938)
!4948 = !DILocation(line: 1166, column: 85, scope: !938)
!4949 = !DILocation(line: 1166, column: 52, scope: !938)
!4950 = !DILocation(line: 1166, column: 103, scope: !938)
!4951 = !DILocation(line: 1166, column: 20, scope: !938)
!4952 = !DILocation(line: 1167, column: 9, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1167, column: 9)
!4954 = !DILocation(line: 1167, column: 24, scope: !4953)
!4955 = !DILocation(line: 1167, column: 9, scope: !938)
!4956 = !DILocation(line: 1168, column: 9, scope: !4953)
!4957 = !DILocation(line: 1171, column: 30, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1171, column: 9)
!4959 = !DILocation(line: 1171, column: 36, scope: !4958)
!4960 = !DILocation(line: 1171, column: 42, scope: !4958)
!4961 = !DILocation(line: 1171, column: 52, scope: !4958)
!4962 = !DILocation(line: 1171, column: 50, scope: !4958)
!4963 = !DILocation(line: 1171, column: 10, scope: !4958)
!4964 = !DILocation(line: 1171, column: 9, scope: !938)
!4965 = !DILocation(line: 1172, column: 9, scope: !4958)
!4966 = !DILocation(line: 1174, column: 65, scope: !938)
!4967 = !DILocation(line: 1174, column: 71, scope: !938)
!4968 = !DILocation(line: 1174, column: 80, scope: !938)
!4969 = !DILocation(line: 1174, column: 47, scope: !938)
!4970 = !DILocation(line: 1174, column: 98, scope: !938)
!4971 = !DILocation(line: 1174, column: 104, scope: !938)
!4972 = !DILocation(line: 1174, column: 15, scope: !938)
!4973 = !DILocation(line: 1175, column: 51, scope: !938)
!4974 = !DILocation(line: 1175, column: 57, scope: !938)
!4975 = !DILocation(line: 1175, column: 66, scope: !938)
!4976 = !DILocation(line: 1175, column: 34, scope: !938)
!4977 = !DILocation(line: 1175, column: 84, scope: !938)
!4978 = !DILocation(line: 1175, column: 90, scope: !938)
!4979 = !DILocation(line: 1175, column: 32, scope: !938)
!4980 = !DILocation(line: 1175, column: 148, scope: !4981)
!4981 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 1)
!4982 = !DILocation(line: 1175, column: 154, scope: !938)
!4983 = !DILocation(line: 1175, column: 163, scope: !938)
!4984 = !DILocation(line: 1175, column: 132, scope: !938)
!4985 = !DILocation(line: 1175, column: 180, scope: !938)
!4986 = !DILocation(line: 1175, column: 186, scope: !938)
!4987 = !DILocation(line: 1175, column: 102, scope: !938)
!4988 = !DILocation(line: 1175, column: 221, scope: !4989)
!4989 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 3)
!4990 = !DILocation(line: 1175, column: 227, scope: !938)
!4991 = !DILocation(line: 1175, column: 236, scope: !938)
!4992 = !DILocation(line: 1175, column: 204, scope: !938)
!4993 = !DILocation(line: 1175, column: 252, scope: !938)
!4994 = !DILocation(line: 1175, column: 196, scope: !938)
!4995 = !DILocation(line: 1175, column: 295, scope: !4996)
!4996 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 4)
!4997 = !DILocation(line: 1175, column: 301, scope: !938)
!4998 = !DILocation(line: 1175, column: 310, scope: !938)
!4999 = !DILocation(line: 1175, column: 269, scope: !938)
!5000 = !DILocation(line: 1175, column: 326, scope: !938)
!5001 = !DILocation(line: 1175, column: 261, scope: !938)
!5002 = !DILocation(line: 1175, column: 32, scope: !5003)
!5003 = !DILexicalBlockFile(scope: !5004, file: !4, discriminator: 6)
!5004 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 5)
!5005 = !DILocation(line: 1175, column: 373, scope: !5006)
!5006 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 2)
!5007 = !DILocation(line: 1175, column: 379, scope: !938)
!5008 = !DILocation(line: 1175, column: 388, scope: !938)
!5009 = !DILocation(line: 1175, column: 353, scope: !938)
!5010 = !DILocation(line: 1175, column: 406, scope: !938)
!5011 = !DILocation(line: 1175, column: 411, scope: !938)
!5012 = !DILocation(line: 1175, column: 15, scope: !5013)
!5013 = !DILexicalBlockFile(scope: !5014, file: !4, discriminator: 8)
!5014 = !DILexicalBlockFile(scope: !938, file: !4, discriminator: 7)
!5015 = !DILocation(line: 1176, column: 12, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1176, column: 5)
!5017 = !DILocation(line: 1176, column: 10, scope: !5016)
!5018 = !DILocation(line: 1176, column: 17, scope: !5019)
!5019 = !DILexicalBlockFile(scope: !5020, file: !4, discriminator: 2)
!5020 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 1)
!5021 = distinct !DILexicalBlock(scope: !5016, file: !4, line: 1176, column: 5)
!5022 = !DILocation(line: 1176, column: 21, scope: !5021)
!5023 = !DILocation(line: 1176, column: 19, scope: !5021)
!5024 = !DILocation(line: 1176, column: 5, scope: !5016)
!5025 = !DILocation(line: 1177, column: 53, scope: !5021)
!5026 = !DILocation(line: 1177, column: 64, scope: !5021)
!5027 = !DILocation(line: 1177, column: 52, scope: !5021)
!5028 = !DILocation(line: 1177, column: 122, scope: !5020)
!5029 = !DILocation(line: 1177, column: 109, scope: !5021)
!5030 = !DILocation(line: 1177, column: 90, scope: !5021)
!5031 = !DILocation(line: 1177, column: 130, scope: !5032)
!5032 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 2)
!5033 = !DILocation(line: 1177, column: 141, scope: !5021)
!5034 = !DILocation(line: 1177, column: 129, scope: !5021)
!5035 = !DILocation(line: 1177, column: 199, scope: !5036)
!5036 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 4)
!5037 = !DILocation(line: 1177, column: 186, scope: !5021)
!5038 = !DILocation(line: 1177, column: 168, scope: !5021)
!5039 = !DILocation(line: 1177, column: 167, scope: !5021)
!5040 = !DILocation(line: 1177, column: 237, scope: !5041)
!5041 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 5)
!5042 = !DILocation(line: 1177, column: 224, scope: !5021)
!5043 = !DILocation(line: 1177, column: 206, scope: !5021)
!5044 = !DILocation(line: 1177, column: 205, scope: !5021)
!5045 = !DILocation(line: 1177, column: 52, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !5047, file: !4, discriminator: 7)
!5047 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 6)
!5048 = !DILocation(line: 1177, column: 19, scope: !5049)
!5049 = !DILexicalBlockFile(scope: !5050, file: !4, discriminator: 8)
!5050 = !DILexicalBlockFile(scope: !5021, file: !4, discriminator: 3)
!5051 = !DILocation(line: 1177, column: 25, scope: !5021)
!5052 = !DILocation(line: 1177, column: 35, scope: !5021)
!5053 = !DILocation(line: 1177, column: 33, scope: !5021)
!5054 = !DILocation(line: 1177, column: 9, scope: !5021)
!5055 = !DILocation(line: 1177, column: 15, scope: !5021)
!5056 = !DILocation(line: 1177, column: 38, scope: !5021)
!5057 = !DILocation(line: 1176, column: 38, scope: !5021)
!5058 = !DILocation(line: 1176, column: 5, scope: !5021)
!5059 = !DILocation(line: 1178, column: 22, scope: !938)
!5060 = !DILocation(line: 1178, column: 5, scope: !938)
!5061 = !DILocation(line: 1178, column: 11, scope: !938)
!5062 = !DILocation(line: 1178, column: 19, scope: !938)
!5063 = !DILocation(line: 1180, column: 5, scope: !938)
!5064 = !DILocation(line: 1181, column: 1, scope: !938)
!5065 = !DILocation(line: 1011, column: 29, scope: !908)
!5066 = !DILocation(line: 1011, column: 48, scope: !908)
!5067 = !DILocation(line: 1011, column: 66, scope: !908)
!5068 = !DILocation(line: 1012, column: 29, scope: !908)
!5069 = !DILocation(line: 1012, column: 44, scope: !908)
!5070 = !DILocation(line: 1012, column: 62, scope: !908)
!5071 = !DILocation(line: 1013, column: 22, scope: !908)
!5072 = !DILocation(line: 1015, column: 5, scope: !908)
!5073 = !DILocation(line: 1015, column: 17, scope: !908)
!5074 = !DILocation(line: 1015, column: 27, scope: !908)
!5075 = !DILocation(line: 1015, column: 33, scope: !908)
!5076 = !DILocation(line: 1016, column: 5, scope: !908)
!5077 = !DILocation(line: 1016, column: 9, scope: !908)
!5078 = !DILocation(line: 1017, column: 5, scope: !908)
!5079 = !DILocation(line: 1017, column: 16, scope: !908)
!5080 = !DILocation(line: 1026, column: 15, scope: !908)
!5081 = !DILocation(line: 1026, column: 21, scope: !908)
!5082 = !DILocation(line: 1026, column: 13, scope: !908)
!5083 = !DILocation(line: 1029, column: 9, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1029, column: 9)
!5085 = !DILocation(line: 1029, column: 15, scope: !5084)
!5086 = !DILocation(line: 1029, column: 26, scope: !5084)
!5087 = !DILocation(line: 1029, column: 9, scope: !908)
!5088 = !DILocation(line: 1030, column: 9, scope: !5084)
!5089 = !DILocation(line: 1030, column: 18, scope: !5090)
!5090 = !DILexicalBlockFile(scope: !5091, file: !4, discriminator: 1)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !4, line: 1030, column: 18)
!5092 = distinct !DILexicalBlock(scope: !5084, file: !4, line: 1030, column: 12)
!5093 = !DILocation(line: 1030, column: 18, scope: !5092)
!5094 = !DILocation(line: 1030, column: 51, scope: !5095)
!5095 = !DILexicalBlockFile(scope: !5091, file: !4, discriminator: 2)
!5096 = !DILocation(line: 1030, column: 60, scope: !5091)
!5097 = !DILocation(line: 1030, column: 40, scope: !5091)
!5098 = !DILocation(line: 1030, column: 30, scope: !5091)
!5099 = !DILocation(line: 1030, column: 36, scope: !5091)
!5100 = !DILocation(line: 1030, column: 49, scope: !5091)
!5101 = !DILocation(line: 1030, column: 78, scope: !5102)
!5102 = !DILexicalBlockFile(scope: !5103, file: !4, discriminator: 4)
!5103 = !DILexicalBlockFile(scope: !5092, file: !4, discriminator: 3)
!5104 = !DILocation(line: 1030, column: 82, scope: !5092)
!5105 = !DILocation(line: 1030, column: 82, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !5092, file: !4, discriminator: 5)
!5107 = !DILocation(line: 1030, column: 82, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5092, file: !4, discriminator: 6)
!5109 = !DILocation(line: 1033, column: 9, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1033, column: 9)
!5111 = !DILocation(line: 1033, column: 20, scope: !5110)
!5112 = !DILocation(line: 1033, column: 24, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !5110, file: !4, discriminator: 1)
!5114 = !DILocation(line: 1033, column: 23, scope: !5110)
!5115 = !DILocation(line: 1033, column: 9, scope: !908)
!5116 = !DILocation(line: 1034, column: 9, scope: !5110)
!5117 = !DILocation(line: 1034, column: 18, scope: !5118)
!5118 = !DILexicalBlockFile(scope: !5119, file: !4, discriminator: 1)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !4, line: 1034, column: 18)
!5120 = distinct !DILexicalBlock(scope: !5110, file: !4, line: 1034, column: 12)
!5121 = !DILocation(line: 1034, column: 18, scope: !5120)
!5122 = !DILocation(line: 1034, column: 51, scope: !5123)
!5123 = !DILexicalBlockFile(scope: !5119, file: !4, discriminator: 2)
!5124 = !DILocation(line: 1034, column: 60, scope: !5119)
!5125 = !DILocation(line: 1034, column: 40, scope: !5119)
!5126 = !DILocation(line: 1034, column: 30, scope: !5119)
!5127 = !DILocation(line: 1034, column: 36, scope: !5119)
!5128 = !DILocation(line: 1034, column: 49, scope: !5119)
!5129 = !DILocation(line: 1034, column: 78, scope: !5130)
!5130 = !DILexicalBlockFile(scope: !5131, file: !4, discriminator: 4)
!5131 = !DILexicalBlockFile(scope: !5120, file: !4, discriminator: 3)
!5132 = !DILocation(line: 1034, column: 82, scope: !5120)
!5133 = !DILocation(line: 1034, column: 82, scope: !5134)
!5134 = !DILexicalBlockFile(scope: !5120, file: !4, discriminator: 5)
!5135 = !DILocation(line: 1034, column: 82, scope: !5136)
!5136 = !DILexicalBlockFile(scope: !5120, file: !4, discriminator: 6)
!5137 = !DILocation(line: 1038, column: 12, scope: !925)
!5138 = !DILocation(line: 1038, column: 10, scope: !925)
!5139 = !DILocation(line: 1038, column: 17, scope: !5140)
!5140 = !DILexicalBlockFile(scope: !5141, file: !4, discriminator: 4)
!5141 = !DILexicalBlockFile(scope: !924, file: !4, discriminator: 1)
!5142 = !DILocation(line: 1038, column: 28, scope: !924)
!5143 = !DILocation(line: 1038, column: 32, scope: !5144)
!5144 = !DILexicalBlockFile(scope: !924, file: !4, discriminator: 2)
!5145 = !DILocation(line: 1038, column: 36, scope: !924)
!5146 = !DILocation(line: 1038, column: 34, scope: !924)
!5147 = !DILocation(line: 1038, column: 5, scope: !5148)
!5148 = !DILexicalBlockFile(scope: !925, file: !4, discriminator: 3)
!5149 = !DILocation(line: 1039, column: 9, scope: !923)
!5150 = !DILocation(line: 1039, column: 17, scope: !923)
!5151 = !DILocation(line: 1039, column: 34, scope: !923)
!5152 = !DILocation(line: 1039, column: 46, scope: !923)
!5153 = !DILocation(line: 1039, column: 33, scope: !923)
!5154 = !DILocation(line: 1039, column: 105, scope: !5155)
!5155 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 1)
!5156 = !DILocation(line: 1039, column: 72, scope: !923)
!5157 = !DILocation(line: 1039, column: 91, scope: !923)
!5158 = !DILocation(line: 1039, column: 113, scope: !5159)
!5159 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 2)
!5160 = !DILocation(line: 1039, column: 125, scope: !923)
!5161 = !DILocation(line: 1039, column: 112, scope: !923)
!5162 = !DILocation(line: 1039, column: 184, scope: !5163)
!5163 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 4)
!5164 = !DILocation(line: 1039, column: 151, scope: !923)
!5165 = !DILocation(line: 1039, column: 170, scope: !923)
!5166 = !DILocation(line: 1039, column: 152, scope: !923)
!5167 = !DILocation(line: 1039, column: 223, scope: !5168)
!5168 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 5)
!5169 = !DILocation(line: 1039, column: 190, scope: !923)
!5170 = !DILocation(line: 1039, column: 209, scope: !923)
!5171 = !DILocation(line: 1039, column: 191, scope: !923)
!5172 = !DILocation(line: 1039, column: 33, scope: !5173)
!5173 = !DILexicalBlockFile(scope: !5174, file: !4, discriminator: 7)
!5174 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 6)
!5175 = !DILocation(line: 1039, column: 17, scope: !5176)
!5176 = !DILexicalBlockFile(scope: !5177, file: !4, discriminator: 8)
!5177 = !DILexicalBlockFile(scope: !923, file: !4, discriminator: 3)
!5178 = !DILocation(line: 1040, column: 9, scope: !923)
!5179 = !DILocation(line: 1040, column: 13, scope: !923)
!5180 = !DILocation(line: 1042, column: 13, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !923, file: !4, line: 1042, column: 13)
!5182 = !DILocation(line: 1042, column: 18, scope: !5181)
!5183 = !DILocation(line: 1042, column: 27, scope: !5181)
!5184 = !DILocation(line: 1042, column: 15, scope: !5181)
!5185 = !DILocation(line: 1042, column: 37, scope: !5181)
!5186 = !DILocation(line: 1043, column: 13, scope: !5181)
!5187 = !DILocation(line: 1043, column: 18, scope: !5181)
!5188 = !DILocation(line: 1043, column: 27, scope: !5181)
!5189 = !DILocation(line: 1043, column: 15, scope: !5181)
!5190 = !DILocation(line: 1043, column: 38, scope: !5181)
!5191 = !DILocation(line: 1044, column: 13, scope: !5181)
!5192 = !DILocation(line: 1044, column: 18, scope: !5181)
!5193 = !DILocation(line: 1044, column: 27, scope: !5181)
!5194 = !DILocation(line: 1044, column: 15, scope: !5181)
!5195 = !DILocation(line: 1044, column: 37, scope: !5181)
!5196 = !DILocation(line: 1046, column: 17, scope: !5181)
!5197 = !DILocation(line: 1046, column: 26, scope: !5181)
!5198 = !DILocation(line: 1046, column: 42, scope: !5181)
!5199 = !DILocation(line: 1047, column: 65, scope: !5181)
!5200 = !DILocation(line: 1047, column: 74, scope: !5181)
!5201 = !DILocation(line: 1047, column: 47, scope: !5181)
!5202 = !DILocation(line: 1047, column: 92, scope: !5181)
!5203 = !DILocation(line: 1045, column: 13, scope: !5181)
!5204 = !DILocation(line: 1047, column: 104, scope: !5181)
!5205 = !DILocation(line: 1042, column: 13, scope: !923)
!5206 = !DILocation(line: 1048, column: 17, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !4, line: 1048, column: 17)
!5208 = distinct !DILexicalBlock(scope: !5181, file: !4, line: 1047, column: 110)
!5209 = !DILocation(line: 1048, column: 26, scope: !5207)
!5210 = !DILocation(line: 1048, column: 34, scope: !5207)
!5211 = !DILocation(line: 1048, column: 17, scope: !5208)
!5212 = !DILocation(line: 1049, column: 29, scope: !5207)
!5213 = !DILocation(line: 1049, column: 17, scope: !5207)
!5214 = !DILocation(line: 1051, column: 21, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !4, line: 1051, column: 21)
!5216 = distinct !DILexicalBlock(scope: !5207, file: !4, line: 1050, column: 18)
!5217 = !DILocation(line: 1051, column: 26, scope: !5215)
!5218 = !DILocation(line: 1051, column: 35, scope: !5215)
!5219 = !DILocation(line: 1051, column: 23, scope: !5215)
!5220 = !DILocation(line: 1051, column: 21, scope: !5216)
!5221 = !DILocation(line: 1052, column: 25, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !4, line: 1052, column: 25)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !4, line: 1051, column: 46)
!5224 = !DILocation(line: 1052, column: 34, scope: !5222)
!5225 = !DILocation(line: 1052, column: 25, scope: !5223)
!5226 = !DILocation(line: 1053, column: 25, scope: !5222)
!5227 = !DILocation(line: 1053, column: 34, scope: !5228)
!5228 = !DILexicalBlockFile(scope: !5229, file: !4, discriminator: 1)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !4, line: 1053, column: 34)
!5230 = distinct !DILexicalBlock(scope: !5222, file: !4, line: 1053, column: 28)
!5231 = !DILocation(line: 1053, column: 34, scope: !5230)
!5232 = !DILocation(line: 1053, column: 67, scope: !5233)
!5233 = !DILexicalBlockFile(scope: !5229, file: !4, discriminator: 2)
!5234 = !DILocation(line: 1053, column: 76, scope: !5229)
!5235 = !DILocation(line: 1053, column: 56, scope: !5229)
!5236 = !DILocation(line: 1053, column: 46, scope: !5229)
!5237 = !DILocation(line: 1053, column: 52, scope: !5229)
!5238 = !DILocation(line: 1053, column: 65, scope: !5229)
!5239 = !DILocation(line: 1053, column: 94, scope: !5240)
!5240 = !DILexicalBlockFile(scope: !5241, file: !4, discriminator: 4)
!5241 = !DILexicalBlockFile(scope: !5230, file: !4, discriminator: 3)
!5242 = !DILocation(line: 1053, column: 98, scope: !5230)
!5243 = !DILocation(line: 1053, column: 98, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !5230, file: !4, discriminator: 5)
!5245 = !DILocation(line: 1053, column: 98, scope: !5246)
!5246 = !DILexicalBlockFile(scope: !5230, file: !4, discriminator: 6)
!5247 = !DILocation(line: 1055, column: 37, scope: !5222)
!5248 = !DILocation(line: 1056, column: 17, scope: !5223)
!5249 = !DILocation(line: 1057, column: 22, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5216, file: !4, line: 1057, column: 21)
!5251 = !DILocation(line: 1057, column: 21, scope: !5216)
!5252 = !DILocation(line: 1058, column: 22, scope: !5250)
!5253 = !DILocation(line: 1058, column: 29, scope: !5250)
!5254 = !DILocation(line: 1058, column: 21, scope: !5250)
!5255 = !DILocation(line: 1060, column: 17, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5208, file: !4, line: 1060, column: 17)
!5257 = !DILocation(line: 1060, column: 17, scope: !5208)
!5258 = !DILocation(line: 1061, column: 22, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !4, line: 1061, column: 21)
!5260 = distinct !DILexicalBlock(scope: !5256, file: !4, line: 1060, column: 30)
!5261 = !DILocation(line: 1061, column: 31, scope: !5259)
!5262 = !DILocation(line: 1061, column: 21, scope: !5260)
!5263 = !DILocation(line: 1062, column: 66, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5259, file: !4, line: 1061, column: 43)
!5265 = !DILocation(line: 1062, column: 48, scope: !5264)
!5266 = !DILocation(line: 1062, column: 35, scope: !5264)
!5267 = !DILocation(line: 1062, column: 101, scope: !5264)
!5268 = !DILocation(line: 1062, column: 21, scope: !5264)
!5269 = !DILocation(line: 1064, column: 21, scope: !5264)
!5270 = !DILocation(line: 1066, column: 17, scope: !5260)
!5271 = !DILocation(line: 1066, column: 26, scope: !5272)
!5272 = !DILexicalBlockFile(scope: !5273, file: !4, discriminator: 1)
!5273 = distinct !DILexicalBlock(scope: !5274, file: !4, line: 1066, column: 26)
!5274 = distinct !DILexicalBlock(scope: !5260, file: !4, line: 1066, column: 20)
!5275 = !DILocation(line: 1066, column: 26, scope: !5274)
!5276 = !DILocation(line: 1066, column: 59, scope: !5277)
!5277 = !DILexicalBlockFile(scope: !5273, file: !4, discriminator: 2)
!5278 = !DILocation(line: 1066, column: 68, scope: !5273)
!5279 = !DILocation(line: 1066, column: 48, scope: !5273)
!5280 = !DILocation(line: 1066, column: 38, scope: !5273)
!5281 = !DILocation(line: 1066, column: 44, scope: !5273)
!5282 = !DILocation(line: 1066, column: 57, scope: !5273)
!5283 = !DILocation(line: 1066, column: 87, scope: !5284)
!5284 = !DILexicalBlockFile(scope: !5285, file: !4, discriminator: 4)
!5285 = !DILexicalBlockFile(scope: !5274, file: !4, discriminator: 3)
!5286 = !DILocation(line: 1066, column: 91, scope: !5274)
!5287 = !DILocation(line: 1066, column: 91, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !5274, file: !4, discriminator: 5)
!5289 = !DILocation(line: 1067, column: 13, scope: !5260)
!5290 = !DILocation(line: 1068, column: 9, scope: !5208)
!5291 = !DILocation(line: 1071, column: 9, scope: !923)
!5292 = !DILocation(line: 1071, column: 18, scope: !5293)
!5293 = !DILexicalBlockFile(scope: !5294, file: !4, discriminator: 1)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !4, line: 1071, column: 18)
!5295 = distinct !DILexicalBlock(scope: !923, file: !4, line: 1071, column: 12)
!5296 = !DILocation(line: 1071, column: 18, scope: !5295)
!5297 = !DILocation(line: 1071, column: 51, scope: !5298)
!5298 = !DILexicalBlockFile(scope: !5294, file: !4, discriminator: 2)
!5299 = !DILocation(line: 1071, column: 40, scope: !5294)
!5300 = !DILocation(line: 1071, column: 30, scope: !5294)
!5301 = !DILocation(line: 1071, column: 36, scope: !5294)
!5302 = !DILocation(line: 1071, column: 49, scope: !5294)
!5303 = !DILocation(line: 1071, column: 61, scope: !5304)
!5304 = !DILexicalBlockFile(scope: !5305, file: !4, discriminator: 4)
!5305 = !DILexicalBlockFile(scope: !5295, file: !4, discriminator: 3)
!5306 = !DILocation(line: 1071, column: 65, scope: !5295)
!5307 = !DILocation(line: 1071, column: 65, scope: !5308)
!5308 = !DILexicalBlockFile(scope: !5295, file: !4, discriminator: 5)
!5309 = !DILocation(line: 1072, column: 5, scope: !924)
!5310 = !DILocation(line: 1072, column: 5, scope: !5141)
!5311 = !DILocation(line: 1072, column: 5, scope: !923)
!5312 = !DILocation(line: 1038, column: 49, scope: !924)
!5313 = !DILocation(line: 1038, column: 5, scope: !924)
!5314 = !DILocation(line: 1076, column: 9, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1076, column: 9)
!5316 = !DILocation(line: 1076, column: 11, scope: !5315)
!5317 = !DILocation(line: 1076, column: 16, scope: !5315)
!5318 = !DILocation(line: 1076, column: 19, scope: !5319)
!5319 = !DILexicalBlockFile(scope: !5315, file: !4, discriminator: 1)
!5320 = !DILocation(line: 1076, column: 9, scope: !908)
!5321 = !DILocation(line: 1077, column: 13, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !4, line: 1077, column: 13)
!5323 = distinct !DILexicalBlock(scope: !5315, file: !4, line: 1076, column: 32)
!5324 = !DILocation(line: 1077, column: 22, scope: !5322)
!5325 = !DILocation(line: 1077, column: 30, scope: !5322)
!5326 = !DILocation(line: 1077, column: 13, scope: !5323)
!5327 = !DILocation(line: 1078, column: 58, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5322, file: !4, line: 1077, column: 45)
!5329 = !DILocation(line: 1078, column: 40, scope: !5328)
!5330 = !DILocation(line: 1078, column: 27, scope: !5328)
!5331 = !DILocation(line: 1078, column: 93, scope: !5328)
!5332 = !DILocation(line: 1078, column: 13, scope: !5328)
!5333 = !DILocation(line: 1080, column: 13, scope: !5328)
!5334 = !DILocation(line: 1083, column: 14, scope: !5322)
!5335 = !DILocation(line: 1083, column: 21, scope: !5322)
!5336 = !DILocation(line: 1084, column: 5, scope: !5323)
!5337 = !DILocation(line: 1086, column: 10, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1086, column: 9)
!5339 = !DILocation(line: 1086, column: 9, scope: !5338)
!5340 = !DILocation(line: 1086, column: 9, scope: !908)
!5341 = !DILocation(line: 1087, column: 13, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5343, file: !4, line: 1087, column: 13)
!5343 = distinct !DILexicalBlock(scope: !5338, file: !4, line: 1086, column: 18)
!5344 = !DILocation(line: 1087, column: 13, scope: !5343)
!5345 = !DILocation(line: 1088, column: 13, scope: !5342)
!5346 = !DILocation(line: 1088, column: 22, scope: !5347)
!5347 = !DILexicalBlockFile(scope: !5348, file: !4, discriminator: 1)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !4, line: 1088, column: 22)
!5349 = distinct !DILexicalBlock(scope: !5342, file: !4, line: 1088, column: 16)
!5350 = !DILocation(line: 1088, column: 22, scope: !5349)
!5351 = !DILocation(line: 1088, column: 55, scope: !5352)
!5352 = !DILexicalBlockFile(scope: !5348, file: !4, discriminator: 2)
!5353 = !DILocation(line: 1088, column: 64, scope: !5348)
!5354 = !DILocation(line: 1088, column: 44, scope: !5348)
!5355 = !DILocation(line: 1088, column: 34, scope: !5348)
!5356 = !DILocation(line: 1088, column: 40, scope: !5348)
!5357 = !DILocation(line: 1088, column: 53, scope: !5348)
!5358 = !DILocation(line: 1088, column: 82, scope: !5359)
!5359 = !DILexicalBlockFile(scope: !5360, file: !4, discriminator: 4)
!5360 = !DILexicalBlockFile(scope: !5349, file: !4, discriminator: 3)
!5361 = !DILocation(line: 1088, column: 86, scope: !5349)
!5362 = !DILocation(line: 1088, column: 86, scope: !5363)
!5363 = !DILexicalBlockFile(scope: !5349, file: !4, discriminator: 5)
!5364 = !DILocation(line: 1088, column: 86, scope: !5365)
!5365 = !DILexicalBlockFile(scope: !5349, file: !4, discriminator: 6)
!5366 = !DILocation(line: 1090, column: 21, scope: !5342)
!5367 = !DILocation(line: 1091, column: 5, scope: !5343)
!5368 = !DILocation(line: 1092, column: 12, scope: !908)
!5369 = !DILocation(line: 1092, column: 5, scope: !908)
!5370 = !DILocation(line: 1094, column: 1, scope: !908)
!5371 = !DILocation(line: 1097, column: 32, scope: !927)
!5372 = !DILocation(line: 1097, column: 49, scope: !927)
!5373 = !DILocation(line: 1100, column: 9, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !927, file: !4, line: 1100, column: 9)
!5375 = !DILocation(line: 1100, column: 17, scope: !5374)
!5376 = !DILocation(line: 1100, column: 21, scope: !5374)
!5377 = !DILocation(line: 1100, column: 24, scope: !5378)
!5378 = !DILexicalBlockFile(scope: !5374, file: !4, discriminator: 1)
!5379 = !DILocation(line: 1100, column: 32, scope: !5374)
!5380 = !DILocation(line: 1100, column: 9, scope: !927)
!5381 = !DILocation(line: 1101, column: 9, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5374, file: !4, line: 1100, column: 75)
!5383 = !DILocation(line: 1102, column: 9, scope: !5382)
!5384 = !DILocation(line: 1105, column: 9, scope: !937)
!5385 = !DILocation(line: 1105, column: 19, scope: !937)
!5386 = !DILocation(line: 1105, column: 25, scope: !937)
!5387 = !{!4189, !1243, i64 40}
!5388 = !DILocation(line: 1105, column: 17, scope: !937)
!5389 = !DILocation(line: 1105, column: 9, scope: !927)
!5390 = !DILocation(line: 1106, column: 13, scope: !935)
!5391 = !DILocation(line: 1106, column: 19, scope: !935)
!5392 = !DILocation(line: 1106, column: 28, scope: !935)
!5393 = !DILocation(line: 1106, column: 13, scope: !936)
!5394 = !DILocation(line: 1107, column: 31, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !935, file: !4, line: 1106, column: 34)
!5396 = !DILocation(line: 1107, column: 39, scope: !5395)
!5397 = !DILocation(line: 1107, column: 47, scope: !5395)
!5398 = !DILocation(line: 1107, column: 52, scope: !5395)
!5399 = !DILocation(line: 1107, column: 13, scope: !5395)
!5400 = !DILocation(line: 1107, column: 19, scope: !5395)
!5401 = !DILocation(line: 1107, column: 28, scope: !5395)
!5402 = !DILocation(line: 1108, column: 17, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5395, file: !4, line: 1108, column: 17)
!5404 = !DILocation(line: 1108, column: 23, scope: !5403)
!5405 = !DILocation(line: 1108, column: 27, scope: !5403)
!5406 = !DILocation(line: 1108, column: 17, scope: !5395)
!5407 = !DILocation(line: 1109, column: 28, scope: !5403)
!5408 = !DILocation(line: 1109, column: 34, scope: !5403)
!5409 = !DILocation(line: 1109, column: 17, scope: !5403)
!5410 = !DILocation(line: 1110, column: 37, scope: !5395)
!5411 = !DILocation(line: 1110, column: 43, scope: !5395)
!5412 = !DILocation(line: 1110, column: 53, scope: !5395)
!5413 = !DILocation(line: 1110, column: 27, scope: !5395)
!5414 = !DILocation(line: 1110, column: 27, scope: !5415)
!5415 = !DILexicalBlockFile(scope: !5395, file: !4, discriminator: 1)
!5416 = !DILocation(line: 1110, column: 149, scope: !5417)
!5417 = !DILexicalBlockFile(scope: !5395, file: !4, discriminator: 2)
!5418 = !DILocation(line: 1110, column: 155, scope: !5395)
!5419 = !DILocation(line: 1110, column: 165, scope: !5395)
!5420 = !DILocation(line: 1110, column: 135, scope: !5395)
!5421 = !DILocation(line: 1110, column: 123, scope: !5395)
!5422 = !DILocation(line: 1110, column: 13, scope: !5423)
!5423 = !DILexicalBlockFile(scope: !5424, file: !4, discriminator: 4)
!5424 = !DILexicalBlockFile(scope: !5395, file: !4, discriminator: 3)
!5425 = !DILocation(line: 1110, column: 19, scope: !5395)
!5426 = !DILocation(line: 1110, column: 23, scope: !5395)
!5427 = !DILocation(line: 1111, column: 9, scope: !5395)
!5428 = !DILocation(line: 1113, column: 13, scope: !934)
!5429 = !DILocation(line: 1113, column: 22, scope: !934)
!5430 = !DILocation(line: 1113, column: 32, scope: !934)
!5431 = !DILocation(line: 1113, column: 38, scope: !934)
!5432 = !DILocation(line: 1115, column: 31, scope: !934)
!5433 = !DILocation(line: 1115, column: 39, scope: !934)
!5434 = !DILocation(line: 1115, column: 47, scope: !934)
!5435 = !DILocation(line: 1115, column: 52, scope: !934)
!5436 = !DILocation(line: 1115, column: 13, scope: !934)
!5437 = !DILocation(line: 1115, column: 19, scope: !934)
!5438 = !DILocation(line: 1115, column: 28, scope: !934)
!5439 = !DILocation(line: 1116, column: 49, scope: !934)
!5440 = !DILocation(line: 1116, column: 55, scope: !934)
!5441 = !DILocation(line: 1116, column: 65, scope: !934)
!5442 = !DILocation(line: 1116, column: 39, scope: !934)
!5443 = !DILocation(line: 1116, column: 39, scope: !5444)
!5444 = !DILexicalBlockFile(scope: !934, file: !4, discriminator: 1)
!5445 = !DILocation(line: 1116, column: 160, scope: !5446)
!5446 = !DILexicalBlockFile(scope: !934, file: !4, discriminator: 2)
!5447 = !DILocation(line: 1116, column: 159, scope: !934)
!5448 = !DILocation(line: 1116, column: 171, scope: !934)
!5449 = !DILocation(line: 1116, column: 177, scope: !934)
!5450 = !DILocation(line: 1116, column: 187, scope: !934)
!5451 = !DILocation(line: 1116, column: 145, scope: !934)
!5452 = !DILocation(line: 1116, column: 133, scope: !934)
!5453 = !DILocation(line: 1116, column: 37, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !5455, file: !4, discriminator: 4)
!5455 = !DILexicalBlockFile(scope: !934, file: !4, discriminator: 3)
!5456 = !DILocation(line: 1116, column: 13, scope: !934)
!5457 = !DILocation(line: 1116, column: 19, scope: !934)
!5458 = !DILocation(line: 1116, column: 23, scope: !934)
!5459 = !DILocation(line: 1117, column: 17, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !934, file: !4, line: 1117, column: 17)
!5461 = !DILocation(line: 1117, column: 23, scope: !5460)
!5462 = !DILocation(line: 1117, column: 27, scope: !5460)
!5463 = !DILocation(line: 1117, column: 17, scope: !934)
!5464 = !DILocation(line: 1118, column: 28, scope: !5460)
!5465 = !DILocation(line: 1118, column: 17, scope: !5460)
!5466 = !DILocation(line: 1119, column: 9, scope: !935)
!5467 = !DILocation(line: 1120, column: 13, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !936, file: !4, line: 1120, column: 13)
!5469 = !DILocation(line: 1120, column: 19, scope: !5468)
!5470 = !DILocation(line: 1120, column: 23, scope: !5468)
!5471 = !DILocation(line: 1120, column: 13, scope: !936)
!5472 = !DILocation(line: 1121, column: 13, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5468, file: !4, line: 1120, column: 38)
!5474 = !DILocation(line: 1122, column: 13, scope: !5473)
!5475 = !DILocation(line: 1124, column: 5, scope: !936)
!5476 = !DILocation(line: 1125, column: 5, scope: !927)
!5477 = !DILocation(line: 1126, column: 1, scope: !927)
!5478 = !DILocation(line: 34, column: 25, scope: !1047)
!5479 = !DILocation(line: 34, column: 38, scope: !1047)
!5480 = !DILocation(line: 34, column: 51, scope: !1047)
!5481 = !DILocation(line: 36, column: 5, scope: !1047)
!5482 = !DILocation(line: 36, column: 46, scope: !5483)
!5483 = !DILexicalBlockFile(scope: !1054, file: !4, discriminator: 1)
!5484 = !DILocation(line: 36, column: 28, scope: !1054)
!5485 = !DILocation(line: 36, column: 15, scope: !1054)
!5486 = !DILocation(line: 36, column: 51, scope: !1054)
!5487 = !DILocation(line: 36, column: 14, scope: !1054)
!5488 = !DILocation(line: 36, column: 14, scope: !1055)
!5489 = !DILocation(line: 36, column: 64, scope: !5490)
!5490 = !DILexicalBlockFile(scope: !1053, file: !4, discriminator: 2)
!5491 = !DILocation(line: 36, column: 68, scope: !1053)
!5492 = !DILocation(line: 36, column: 75, scope: !1053)
!5493 = !DILocation(line: 36, column: 126, scope: !1053)
!5494 = !DILocation(line: 36, column: 108, scope: !1053)
!5495 = !DILocation(line: 36, column: 95, scope: !1053)
!5496 = !DILocation(line: 36, column: 131, scope: !1053)
!5497 = !DILocation(line: 36, column: 143, scope: !1053)
!5498 = !DILocation(line: 36, column: 153, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !1053, file: !4, line: 36, column: 153)
!5500 = !DILocation(line: 36, column: 153, scope: !1053)
!5501 = !DILocation(line: 36, column: 166, scope: !5502)
!5502 = !DILexicalBlockFile(scope: !5499, file: !4, discriminator: 4)
!5503 = !DILocation(line: 36, column: 159, scope: !5499)
!5504 = !DILocation(line: 36, column: 172, scope: !5505)
!5505 = !DILexicalBlockFile(scope: !1054, file: !4, discriminator: 5)
!5506 = !DILocation(line: 36, column: 172, scope: !5507)
!5507 = !DILexicalBlockFile(scope: !5508, file: !4, discriminator: 7)
!5508 = !DILexicalBlockFile(scope: !1054, file: !4, discriminator: 6)
!5509 = !DILocation(line: 36, column: 172, scope: !1053)
!5510 = !DILocation(line: 36, column: 174, scope: !5511)
!5511 = !DILexicalBlockFile(scope: !5512, file: !4, discriminator: 8)
!5512 = !DILexicalBlockFile(scope: !1055, file: !4, discriminator: 3)
!5513 = !DILocation(line: 37, column: 5, scope: !1047)
!5514 = !DILocation(line: 37, column: 46, scope: !5515)
!5515 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 1)
!5516 = !DILocation(line: 37, column: 28, scope: !1058)
!5517 = !DILocation(line: 37, column: 15, scope: !1058)
!5518 = !DILocation(line: 37, column: 51, scope: !1058)
!5519 = !DILocation(line: 37, column: 14, scope: !1058)
!5520 = !DILocation(line: 37, column: 14, scope: !1059)
!5521 = !DILocation(line: 37, column: 63, scope: !5522)
!5522 = !DILexicalBlockFile(scope: !1057, file: !4, discriminator: 2)
!5523 = !DILocation(line: 37, column: 67, scope: !1057)
!5524 = !DILocation(line: 37, column: 74, scope: !1057)
!5525 = !DILocation(line: 37, column: 125, scope: !1057)
!5526 = !DILocation(line: 37, column: 107, scope: !1057)
!5527 = !DILocation(line: 37, column: 94, scope: !1057)
!5528 = !DILocation(line: 37, column: 130, scope: !1057)
!5529 = !DILocation(line: 37, column: 141, scope: !1057)
!5530 = !DILocation(line: 37, column: 151, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !1057, file: !4, line: 37, column: 151)
!5532 = !DILocation(line: 37, column: 151, scope: !1057)
!5533 = !DILocation(line: 37, column: 164, scope: !5534)
!5534 = !DILexicalBlockFile(scope: !5531, file: !4, discriminator: 4)
!5535 = !DILocation(line: 37, column: 157, scope: !5531)
!5536 = !DILocation(line: 37, column: 170, scope: !5537)
!5537 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 5)
!5538 = !DILocation(line: 37, column: 170, scope: !5539)
!5539 = !DILexicalBlockFile(scope: !5540, file: !4, discriminator: 7)
!5540 = !DILexicalBlockFile(scope: !1058, file: !4, discriminator: 6)
!5541 = !DILocation(line: 37, column: 170, scope: !1057)
!5542 = !DILocation(line: 37, column: 172, scope: !5543)
!5543 = !DILexicalBlockFile(scope: !5544, file: !4, discriminator: 8)
!5544 = !DILexicalBlockFile(scope: !1059, file: !4, discriminator: 3)
!5545 = !DILocation(line: 38, column: 5, scope: !1047)
!5546 = !DILocation(line: 39, column: 1, scope: !1047)
!5547 = !DILocation(line: 26, column: 22, scope: !1060)
!5548 = !DILocation(line: 28, column: 5, scope: !1060)
!5549 = !DILocation(line: 28, column: 10, scope: !5550)
!5550 = !DILexicalBlockFile(scope: !1064, file: !4, discriminator: 1)
!5551 = !DILocation(line: 28, column: 20, scope: !1064)
!5552 = !DILocation(line: 28, column: 75, scope: !1064)
!5553 = !DILocation(line: 28, column: 57, scope: !1064)
!5554 = !DILocation(line: 28, column: 44, scope: !1064)
!5555 = !DILocation(line: 28, column: 80, scope: !1064)
!5556 = !DILocation(line: 28, column: 96, scope: !1068)
!5557 = !DILocation(line: 28, column: 104, scope: !1068)
!5558 = !DILocation(line: 28, column: 96, scope: !1064)
!5559 = !DILocation(line: 28, column: 154, scope: !5560)
!5560 = !DILexicalBlockFile(scope: !1067, file: !4, discriminator: 2)
!5561 = !DILocation(line: 28, column: 136, scope: !1067)
!5562 = !DILocation(line: 28, column: 123, scope: !1067)
!5563 = !DILocation(line: 28, column: 159, scope: !1067)
!5564 = !DILocation(line: 28, column: 170, scope: !1067)
!5565 = !DILocation(line: 28, column: 184, scope: !1067)
!5566 = !DILocation(line: 28, column: 189, scope: !5567)
!5567 = !DILexicalBlockFile(scope: !1066, file: !4, discriminator: 4)
!5568 = !DILocation(line: 28, column: 199, scope: !1066)
!5569 = !DILocation(line: 28, column: 229, scope: !1066)
!5570 = !DILocation(line: 28, column: 247, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !1066, file: !4, line: 28, column: 244)
!5572 = !DILocation(line: 28, column: 264, scope: !5571)
!5573 = !DILocation(line: 28, column: 244, scope: !5571)
!5574 = !DILocation(line: 28, column: 274, scope: !5571)
!5575 = !DILocation(line: 28, column: 244, scope: !1066)
!5576 = !DILocation(line: 28, column: 244, scope: !5577)
!5577 = !DILexicalBlockFile(scope: !1066, file: !4, discriminator: 5)
!5578 = !DILocation(line: 28, column: 305, scope: !5579)
!5579 = !DILexicalBlockFile(scope: !5571, file: !4, discriminator: 6)
!5580 = !DILocation(line: 28, column: 323, scope: !5571)
!5581 = !DILocation(line: 28, column: 333, scope: !5571)
!5582 = !DILocation(line: 28, column: 358, scope: !5571)
!5583 = !DILocation(line: 28, column: 289, scope: !5571)
!5584 = !DILocation(line: 28, column: 377, scope: !5585)
!5585 = !DILexicalBlockFile(scope: !1067, file: !4, discriminator: 7)
!5586 = !DILocation(line: 28, column: 377, scope: !1066)
!5587 = !DILocation(line: 28, column: 377, scope: !5588)
!5588 = !DILexicalBlockFile(scope: !1066, file: !4, discriminator: 8)
!5589 = !DILocation(line: 28, column: 390, scope: !5590)
!5590 = !DILexicalBlockFile(scope: !1067, file: !4, discriminator: 9)
!5591 = !DILocation(line: 28, column: 392, scope: !5592)
!5592 = !DILexicalBlockFile(scope: !5593, file: !4, discriminator: 10)
!5593 = !DILexicalBlockFile(scope: !1060, file: !4, discriminator: 3)
!5594 = !DILocation(line: 28, column: 392, scope: !1064)
!5595 = !DILocation(line: 29, column: 5, scope: !1060)
!5596 = !DILocation(line: 29, column: 10, scope: !5597)
!5597 = !DILexicalBlockFile(scope: !1070, file: !4, discriminator: 1)
!5598 = !DILocation(line: 29, column: 20, scope: !1070)
!5599 = !DILocation(line: 29, column: 75, scope: !1070)
!5600 = !DILocation(line: 29, column: 57, scope: !1070)
!5601 = !DILocation(line: 29, column: 44, scope: !1070)
!5602 = !DILocation(line: 29, column: 80, scope: !1070)
!5603 = !DILocation(line: 29, column: 95, scope: !1074)
!5604 = !DILocation(line: 29, column: 103, scope: !1074)
!5605 = !DILocation(line: 29, column: 95, scope: !1070)
!5606 = !DILocation(line: 29, column: 153, scope: !5607)
!5607 = !DILexicalBlockFile(scope: !1073, file: !4, discriminator: 2)
!5608 = !DILocation(line: 29, column: 135, scope: !1073)
!5609 = !DILocation(line: 29, column: 122, scope: !1073)
!5610 = !DILocation(line: 29, column: 158, scope: !1073)
!5611 = !DILocation(line: 29, column: 168, scope: !1073)
!5612 = !DILocation(line: 29, column: 182, scope: !1073)
!5613 = !DILocation(line: 29, column: 187, scope: !5614)
!5614 = !DILexicalBlockFile(scope: !1072, file: !4, discriminator: 4)
!5615 = !DILocation(line: 29, column: 197, scope: !1072)
!5616 = !DILocation(line: 29, column: 227, scope: !1072)
!5617 = !DILocation(line: 29, column: 245, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !1072, file: !4, line: 29, column: 242)
!5619 = !DILocation(line: 29, column: 262, scope: !5618)
!5620 = !DILocation(line: 29, column: 242, scope: !5618)
!5621 = !DILocation(line: 29, column: 272, scope: !5618)
!5622 = !DILocation(line: 29, column: 242, scope: !1072)
!5623 = !DILocation(line: 29, column: 242, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !1072, file: !4, discriminator: 5)
!5625 = !DILocation(line: 29, column: 303, scope: !5626)
!5626 = !DILexicalBlockFile(scope: !5618, file: !4, discriminator: 6)
!5627 = !DILocation(line: 29, column: 321, scope: !5618)
!5628 = !DILocation(line: 29, column: 331, scope: !5618)
!5629 = !DILocation(line: 29, column: 356, scope: !5618)
!5630 = !DILocation(line: 29, column: 287, scope: !5618)
!5631 = !DILocation(line: 29, column: 375, scope: !5632)
!5632 = !DILexicalBlockFile(scope: !1073, file: !4, discriminator: 7)
!5633 = !DILocation(line: 29, column: 375, scope: !1072)
!5634 = !DILocation(line: 29, column: 375, scope: !5635)
!5635 = !DILexicalBlockFile(scope: !1072, file: !4, discriminator: 8)
!5636 = !DILocation(line: 29, column: 388, scope: !5637)
!5637 = !DILexicalBlockFile(scope: !1073, file: !4, discriminator: 9)
!5638 = !DILocation(line: 29, column: 390, scope: !5592)
!5639 = !DILocation(line: 29, column: 390, scope: !1070)
!5640 = !DILocation(line: 30, column: 5, scope: !1060)
!5641 = !DILocation(line: 42, column: 17, scope: !1075)
!5642 = !DILocation(line: 44, column: 27, scope: !1075)
!5643 = !DILocation(line: 44, column: 15, scope: !1075)
!5644 = !DILocation(line: 44, column: 4, scope: !1075)
!5645 = !DILocation(line: 45, column: 1, scope: !1075)
!5646 = !DILocation(line: 953, column: 22, scope: !963)
!5647 = !DILocation(line: 953, column: 40, scope: !963)
!5648 = !DILocation(line: 953, column: 56, scope: !963)
!5649 = !DILocation(line: 955, column: 5, scope: !963)
!5650 = !DILocation(line: 955, column: 16, scope: !963)
!5651 = !DILocation(line: 955, column: 28, scope: !963)
!5652 = !DILocation(line: 956, column: 5, scope: !963)
!5653 = !DILocation(line: 956, column: 17, scope: !963)
!5654 = !DILocation(line: 956, column: 40, scope: !963)
!5655 = !DILocation(line: 956, column: 26, scope: !963)
!5656 = !DILocation(line: 958, column: 10, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !963, file: !4, line: 958, column: 9)
!5658 = !DILocation(line: 958, column: 9, scope: !963)
!5659 = !DILocation(line: 959, column: 9, scope: !5657)
!5660 = !DILocation(line: 961, column: 5, scope: !963)
!5661 = !DILocation(line: 961, column: 11, scope: !963)
!5662 = !DILocation(line: 961, column: 19, scope: !963)
!5663 = !DILocation(line: 962, column: 5, scope: !963)
!5664 = !DILocation(line: 962, column: 11, scope: !963)
!5665 = !DILocation(line: 962, column: 18, scope: !963)
!5666 = !DILocation(line: 963, column: 5, scope: !963)
!5667 = !DILocation(line: 963, column: 11, scope: !963)
!5668 = !DILocation(line: 963, column: 22, scope: !963)
!5669 = !DILocation(line: 964, column: 5, scope: !963)
!5670 = !DILocation(line: 964, column: 11, scope: !963)
!5671 = !DILocation(line: 964, column: 17, scope: !963)
!5672 = !DILocation(line: 965, column: 5, scope: !963)
!5673 = !DILocation(line: 965, column: 11, scope: !963)
!5674 = !DILocation(line: 965, column: 22, scope: !963)
!5675 = !DILocation(line: 966, column: 5, scope: !963)
!5676 = !DILocation(line: 966, column: 11, scope: !963)
!5677 = !DILocation(line: 966, column: 20, scope: !963)
!5678 = !DILocation(line: 968, column: 21, scope: !974)
!5679 = !DILocation(line: 968, column: 9, scope: !974)
!5680 = !DILocation(line: 968, column: 27, scope: !974)
!5681 = !DILocation(line: 968, column: 9, scope: !963)
!5682 = !DILocation(line: 969, column: 9, scope: !973)
!5683 = !DILocation(line: 969, column: 14, scope: !5684)
!5684 = !DILexicalBlockFile(scope: !972, file: !4, discriminator: 1)
!5685 = !DILocation(line: 969, column: 24, scope: !972)
!5686 = !DILocation(line: 969, column: 54, scope: !972)
!5687 = !DILocation(line: 969, column: 41, scope: !972)
!5688 = !DILocation(line: 969, column: 69, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !972, file: !4, line: 969, column: 66)
!5690 = !DILocation(line: 969, column: 86, scope: !5689)
!5691 = !DILocation(line: 969, column: 66, scope: !5689)
!5692 = !DILocation(line: 969, column: 96, scope: !5689)
!5693 = !DILocation(line: 969, column: 66, scope: !972)
!5694 = !DILocation(line: 969, column: 66, scope: !5695)
!5695 = !DILexicalBlockFile(scope: !972, file: !4, discriminator: 2)
!5696 = !DILocation(line: 969, column: 127, scope: !5697)
!5697 = !DILexicalBlockFile(scope: !5689, file: !4, discriminator: 3)
!5698 = !DILocation(line: 969, column: 145, scope: !5689)
!5699 = !DILocation(line: 969, column: 155, scope: !5689)
!5700 = !DILocation(line: 969, column: 180, scope: !5689)
!5701 = !DILocation(line: 969, column: 111, scope: !5689)
!5702 = !DILocation(line: 969, column: 199, scope: !5703)
!5703 = !DILexicalBlockFile(scope: !973, file: !4, discriminator: 4)
!5704 = !DILocation(line: 969, column: 199, scope: !972)
!5705 = !DILocation(line: 969, column: 199, scope: !5706)
!5706 = !DILexicalBlockFile(scope: !972, file: !4, discriminator: 5)
!5707 = !DILocation(line: 970, column: 9, scope: !973)
!5708 = !DILocation(line: 973, column: 28, scope: !978)
!5709 = !DILocation(line: 973, column: 10, scope: !978)
!5710 = !DILocation(line: 973, column: 9, scope: !963)
!5711 = !DILocation(line: 974, column: 9, scope: !977)
!5712 = !DILocation(line: 974, column: 14, scope: !5713)
!5713 = !DILexicalBlockFile(scope: !976, file: !4, discriminator: 1)
!5714 = !DILocation(line: 974, column: 24, scope: !976)
!5715 = !DILocation(line: 974, column: 54, scope: !976)
!5716 = !DILocation(line: 974, column: 41, scope: !976)
!5717 = !DILocation(line: 974, column: 69, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !976, file: !4, line: 974, column: 66)
!5719 = !DILocation(line: 974, column: 86, scope: !5718)
!5720 = !DILocation(line: 974, column: 66, scope: !5718)
!5721 = !DILocation(line: 974, column: 96, scope: !5718)
!5722 = !DILocation(line: 974, column: 66, scope: !976)
!5723 = !DILocation(line: 974, column: 66, scope: !5724)
!5724 = !DILexicalBlockFile(scope: !976, file: !4, discriminator: 2)
!5725 = !DILocation(line: 974, column: 127, scope: !5726)
!5726 = !DILexicalBlockFile(scope: !5718, file: !4, discriminator: 3)
!5727 = !DILocation(line: 974, column: 145, scope: !5718)
!5728 = !DILocation(line: 974, column: 155, scope: !5718)
!5729 = !DILocation(line: 974, column: 180, scope: !5718)
!5730 = !DILocation(line: 974, column: 111, scope: !5718)
!5731 = !DILocation(line: 974, column: 199, scope: !5732)
!5732 = !DILexicalBlockFile(scope: !977, file: !4, discriminator: 4)
!5733 = !DILocation(line: 974, column: 199, scope: !976)
!5734 = !DILocation(line: 974, column: 199, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !976, file: !4, discriminator: 5)
!5736 = !DILocation(line: 975, column: 9, scope: !977)
!5737 = !DILocation(line: 977, column: 41, scope: !963)
!5738 = !DILocation(line: 977, column: 24, scope: !963)
!5739 = !DILocation(line: 977, column: 5, scope: !963)
!5740 = !DILocation(line: 977, column: 11, scope: !963)
!5741 = !DILocation(line: 977, column: 22, scope: !963)
!5742 = !DILocation(line: 978, column: 9, scope: !982)
!5743 = !DILocation(line: 978, column: 15, scope: !982)
!5744 = !DILocation(line: 978, column: 26, scope: !982)
!5745 = !DILocation(line: 978, column: 9, scope: !963)
!5746 = !DILocation(line: 979, column: 25, scope: !981)
!5747 = !DILocation(line: 979, column: 9, scope: !981)
!5748 = !DILocation(line: 981, column: 9, scope: !981)
!5749 = !DILocation(line: 981, column: 14, scope: !5750)
!5750 = !DILexicalBlockFile(scope: !980, file: !4, discriminator: 1)
!5751 = !DILocation(line: 981, column: 24, scope: !980)
!5752 = !DILocation(line: 981, column: 54, scope: !980)
!5753 = !DILocation(line: 981, column: 41, scope: !980)
!5754 = !DILocation(line: 981, column: 69, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !980, file: !4, line: 981, column: 66)
!5756 = !DILocation(line: 981, column: 86, scope: !5755)
!5757 = !DILocation(line: 981, column: 66, scope: !5755)
!5758 = !DILocation(line: 981, column: 96, scope: !5755)
!5759 = !DILocation(line: 981, column: 66, scope: !980)
!5760 = !DILocation(line: 981, column: 66, scope: !5761)
!5761 = !DILexicalBlockFile(scope: !980, file: !4, discriminator: 2)
!5762 = !DILocation(line: 981, column: 127, scope: !5763)
!5763 = !DILexicalBlockFile(scope: !5755, file: !4, discriminator: 3)
!5764 = !DILocation(line: 981, column: 145, scope: !5755)
!5765 = !DILocation(line: 981, column: 155, scope: !5755)
!5766 = !DILocation(line: 981, column: 180, scope: !5755)
!5767 = !DILocation(line: 981, column: 111, scope: !5755)
!5768 = !DILocation(line: 981, column: 199, scope: !5769)
!5769 = !DILexicalBlockFile(scope: !981, file: !4, discriminator: 4)
!5770 = !DILocation(line: 981, column: 199, scope: !980)
!5771 = !DILocation(line: 981, column: 199, scope: !5772)
!5772 = !DILexicalBlockFile(scope: !980, file: !4, discriminator: 5)
!5773 = !DILocation(line: 982, column: 9, scope: !981)
!5774 = !DILocation(line: 984, column: 49, scope: !963)
!5775 = !DILocation(line: 984, column: 58, scope: !963)
!5776 = !DILocation(line: 984, column: 35, scope: !963)
!5777 = !DILocation(line: 984, column: 21, scope: !963)
!5778 = !DILocation(line: 984, column: 5, scope: !963)
!5779 = !DILocation(line: 984, column: 11, scope: !963)
!5780 = !DILocation(line: 984, column: 19, scope: !963)
!5781 = !DILocation(line: 985, column: 9, scope: !986)
!5782 = !DILocation(line: 985, column: 15, scope: !986)
!5783 = !DILocation(line: 985, column: 23, scope: !986)
!5784 = !DILocation(line: 985, column: 9, scope: !963)
!5785 = !DILocation(line: 986, column: 9, scope: !985)
!5786 = !DILocation(line: 986, column: 14, scope: !5787)
!5787 = !DILexicalBlockFile(scope: !984, file: !4, discriminator: 1)
!5788 = !DILocation(line: 986, column: 24, scope: !984)
!5789 = !DILocation(line: 986, column: 54, scope: !984)
!5790 = !DILocation(line: 986, column: 41, scope: !984)
!5791 = !DILocation(line: 986, column: 69, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !984, file: !4, line: 986, column: 66)
!5793 = !DILocation(line: 986, column: 86, scope: !5792)
!5794 = !DILocation(line: 986, column: 66, scope: !5792)
!5795 = !DILocation(line: 986, column: 96, scope: !5792)
!5796 = !DILocation(line: 986, column: 66, scope: !984)
!5797 = !DILocation(line: 986, column: 66, scope: !5798)
!5798 = !DILexicalBlockFile(scope: !984, file: !4, discriminator: 2)
!5799 = !DILocation(line: 986, column: 127, scope: !5800)
!5800 = !DILexicalBlockFile(scope: !5792, file: !4, discriminator: 3)
!5801 = !DILocation(line: 986, column: 145, scope: !5792)
!5802 = !DILocation(line: 986, column: 155, scope: !5792)
!5803 = !DILocation(line: 986, column: 180, scope: !5792)
!5804 = !DILocation(line: 986, column: 111, scope: !5792)
!5805 = !DILocation(line: 986, column: 199, scope: !5806)
!5806 = !DILexicalBlockFile(scope: !985, file: !4, discriminator: 4)
!5807 = !DILocation(line: 986, column: 199, scope: !984)
!5808 = !DILocation(line: 986, column: 199, scope: !5809)
!5809 = !DILexicalBlockFile(scope: !984, file: !4, discriminator: 5)
!5810 = !DILocation(line: 987, column: 9, scope: !985)
!5811 = !DILocation(line: 990, column: 23, scope: !963)
!5812 = !DILocation(line: 990, column: 5, scope: !963)
!5813 = !DILocation(line: 991, column: 24, scope: !963)
!5814 = !DILocation(line: 991, column: 12, scope: !963)
!5815 = !DILocation(line: 991, column: 5, scope: !963)
!5816 = !DILocation(line: 992, column: 1, scope: !963)
!5817 = !DILocation(line: 1380, column: 22, scope: !995)
!5818 = !DILocation(line: 1380, column: 40, scope: !995)
!5819 = !DILocation(line: 1380, column: 56, scope: !995)
!5820 = !DILocation(line: 1382, column: 5, scope: !995)
!5821 = !DILocation(line: 1382, column: 16, scope: !995)
!5822 = !DILocation(line: 1382, column: 31, scope: !995)
!5823 = !DILocation(line: 1383, column: 5, scope: !995)
!5824 = !DILocation(line: 1383, column: 17, scope: !995)
!5825 = !DILocation(line: 1383, column: 40, scope: !995)
!5826 = !DILocation(line: 1383, column: 26, scope: !995)
!5827 = !DILocation(line: 1386, column: 10, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !995, file: !4, line: 1386, column: 9)
!5829 = !DILocation(line: 1386, column: 9, scope: !995)
!5830 = !DILocation(line: 1387, column: 9, scope: !5828)
!5831 = !DILocation(line: 1389, column: 5, scope: !995)
!5832 = !DILocation(line: 1389, column: 11, scope: !995)
!5833 = !DILocation(line: 1389, column: 19, scope: !995)
!5834 = !DILocation(line: 1390, column: 5, scope: !995)
!5835 = !DILocation(line: 1390, column: 11, scope: !995)
!5836 = !DILocation(line: 1390, column: 21, scope: !995)
!5837 = !DILocation(line: 1392, column: 5, scope: !995)
!5838 = !DILocation(line: 1392, column: 11, scope: !995)
!5839 = !DILocation(line: 1392, column: 15, scope: !995)
!5840 = !DILocation(line: 1393, column: 5, scope: !995)
!5841 = !DILocation(line: 1393, column: 11, scope: !995)
!5842 = !DILocation(line: 1393, column: 20, scope: !995)
!5843 = !DILocation(line: 1394, column: 5, scope: !995)
!5844 = !DILocation(line: 1394, column: 11, scope: !995)
!5845 = !DILocation(line: 1394, column: 19, scope: !995)
!5846 = !DILocation(line: 1395, column: 5, scope: !995)
!5847 = !DILocation(line: 1395, column: 11, scope: !995)
!5848 = !DILocation(line: 1395, column: 22, scope: !995)
!5849 = !DILocation(line: 1397, column: 28, scope: !1006)
!5850 = !DILocation(line: 1397, column: 10, scope: !1006)
!5851 = !DILocation(line: 1397, column: 9, scope: !995)
!5852 = !DILocation(line: 1398, column: 9, scope: !1005)
!5853 = !DILocation(line: 1398, column: 14, scope: !5854)
!5854 = !DILexicalBlockFile(scope: !1004, file: !4, discriminator: 1)
!5855 = !DILocation(line: 1398, column: 24, scope: !1004)
!5856 = !DILocation(line: 1398, column: 54, scope: !1004)
!5857 = !DILocation(line: 1398, column: 41, scope: !1004)
!5858 = !DILocation(line: 1398, column: 69, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !1004, file: !4, line: 1398, column: 66)
!5860 = !DILocation(line: 1398, column: 86, scope: !5859)
!5861 = !DILocation(line: 1398, column: 66, scope: !5859)
!5862 = !DILocation(line: 1398, column: 96, scope: !5859)
!5863 = !DILocation(line: 1398, column: 66, scope: !1004)
!5864 = !DILocation(line: 1398, column: 66, scope: !5865)
!5865 = !DILexicalBlockFile(scope: !1004, file: !4, discriminator: 2)
!5866 = !DILocation(line: 1398, column: 127, scope: !5867)
!5867 = !DILexicalBlockFile(scope: !5859, file: !4, discriminator: 3)
!5868 = !DILocation(line: 1398, column: 145, scope: !5859)
!5869 = !DILocation(line: 1398, column: 155, scope: !5859)
!5870 = !DILocation(line: 1398, column: 180, scope: !5859)
!5871 = !DILocation(line: 1398, column: 111, scope: !5859)
!5872 = !DILocation(line: 1398, column: 199, scope: !5873)
!5873 = !DILexicalBlockFile(scope: !1005, file: !4, discriminator: 4)
!5874 = !DILocation(line: 1398, column: 199, scope: !1004)
!5875 = !DILocation(line: 1398, column: 199, scope: !5876)
!5876 = !DILexicalBlockFile(scope: !1004, file: !4, discriminator: 5)
!5877 = !DILocation(line: 1399, column: 9, scope: !1005)
!5878 = !DILocation(line: 1401, column: 43, scope: !995)
!5879 = !DILocation(line: 1401, column: 23, scope: !995)
!5880 = !DILocation(line: 1401, column: 5, scope: !995)
!5881 = !DILocation(line: 1401, column: 11, scope: !995)
!5882 = !DILocation(line: 1401, column: 21, scope: !995)
!5883 = !DILocation(line: 1402, column: 9, scope: !1010)
!5884 = !DILocation(line: 1402, column: 15, scope: !1010)
!5885 = !DILocation(line: 1402, column: 25, scope: !1010)
!5886 = !DILocation(line: 1402, column: 39, scope: !1010)
!5887 = !DILocation(line: 1402, column: 60, scope: !5888)
!5888 = !DILexicalBlockFile(scope: !1010, file: !4, discriminator: 1)
!5889 = !DILocation(line: 1402, column: 66, scope: !1010)
!5890 = !DILocation(line: 1402, column: 43, scope: !1010)
!5891 = !DILocation(line: 1402, column: 9, scope: !995)
!5892 = !DILocation(line: 1403, column: 25, scope: !1009)
!5893 = !DILocation(line: 1403, column: 9, scope: !1009)
!5894 = !DILocation(line: 1405, column: 9, scope: !1009)
!5895 = !DILocation(line: 1405, column: 14, scope: !5896)
!5896 = !DILexicalBlockFile(scope: !1008, file: !4, discriminator: 1)
!5897 = !DILocation(line: 1405, column: 24, scope: !1008)
!5898 = !DILocation(line: 1405, column: 54, scope: !1008)
!5899 = !DILocation(line: 1405, column: 41, scope: !1008)
!5900 = !DILocation(line: 1405, column: 69, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !1008, file: !4, line: 1405, column: 66)
!5902 = !DILocation(line: 1405, column: 86, scope: !5901)
!5903 = !DILocation(line: 1405, column: 66, scope: !5901)
!5904 = !DILocation(line: 1405, column: 96, scope: !5901)
!5905 = !DILocation(line: 1405, column: 66, scope: !1008)
!5906 = !DILocation(line: 1405, column: 66, scope: !5907)
!5907 = !DILexicalBlockFile(scope: !1008, file: !4, discriminator: 2)
!5908 = !DILocation(line: 1405, column: 127, scope: !5909)
!5909 = !DILexicalBlockFile(scope: !5901, file: !4, discriminator: 3)
!5910 = !DILocation(line: 1405, column: 145, scope: !5901)
!5911 = !DILocation(line: 1405, column: 155, scope: !5901)
!5912 = !DILocation(line: 1405, column: 180, scope: !5901)
!5913 = !DILocation(line: 1405, column: 111, scope: !5901)
!5914 = !DILocation(line: 1405, column: 199, scope: !5915)
!5915 = !DILexicalBlockFile(scope: !1009, file: !4, discriminator: 4)
!5916 = !DILocation(line: 1405, column: 199, scope: !1008)
!5917 = !DILocation(line: 1405, column: 199, scope: !5918)
!5918 = !DILexicalBlockFile(scope: !1008, file: !4, discriminator: 5)
!5919 = !DILocation(line: 1406, column: 9, scope: !1009)
!5920 = !DILocation(line: 1408, column: 49, scope: !995)
!5921 = !DILocation(line: 1408, column: 58, scope: !995)
!5922 = !DILocation(line: 1408, column: 35, scope: !995)
!5923 = !DILocation(line: 1408, column: 21, scope: !995)
!5924 = !DILocation(line: 1408, column: 5, scope: !995)
!5925 = !DILocation(line: 1408, column: 11, scope: !995)
!5926 = !DILocation(line: 1408, column: 19, scope: !995)
!5927 = !DILocation(line: 1409, column: 9, scope: !1014)
!5928 = !DILocation(line: 1409, column: 15, scope: !1014)
!5929 = !DILocation(line: 1409, column: 23, scope: !1014)
!5930 = !DILocation(line: 1409, column: 9, scope: !995)
!5931 = !DILocation(line: 1410, column: 9, scope: !1013)
!5932 = !DILocation(line: 1410, column: 14, scope: !5933)
!5933 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 1)
!5934 = !DILocation(line: 1410, column: 24, scope: !1012)
!5935 = !DILocation(line: 1410, column: 54, scope: !1012)
!5936 = !DILocation(line: 1410, column: 41, scope: !1012)
!5937 = !DILocation(line: 1410, column: 69, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !1012, file: !4, line: 1410, column: 66)
!5939 = !DILocation(line: 1410, column: 86, scope: !5938)
!5940 = !DILocation(line: 1410, column: 66, scope: !5938)
!5941 = !DILocation(line: 1410, column: 96, scope: !5938)
!5942 = !DILocation(line: 1410, column: 66, scope: !1012)
!5943 = !DILocation(line: 1410, column: 66, scope: !5944)
!5944 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 2)
!5945 = !DILocation(line: 1410, column: 127, scope: !5946)
!5946 = !DILexicalBlockFile(scope: !5938, file: !4, discriminator: 3)
!5947 = !DILocation(line: 1410, column: 145, scope: !5938)
!5948 = !DILocation(line: 1410, column: 155, scope: !5938)
!5949 = !DILocation(line: 1410, column: 180, scope: !5938)
!5950 = !DILocation(line: 1410, column: 111, scope: !5938)
!5951 = !DILocation(line: 1410, column: 199, scope: !5952)
!5952 = !DILexicalBlockFile(scope: !1013, file: !4, discriminator: 4)
!5953 = !DILocation(line: 1410, column: 199, scope: !1012)
!5954 = !DILocation(line: 1410, column: 199, scope: !5955)
!5955 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 5)
!5956 = !DILocation(line: 1411, column: 9, scope: !1013)
!5957 = !DILocation(line: 1413, column: 23, scope: !995)
!5958 = !DILocation(line: 1413, column: 5, scope: !995)
!5959 = !DILocation(line: 1414, column: 24, scope: !995)
!5960 = !DILocation(line: 1414, column: 12, scope: !995)
!5961 = !DILocation(line: 1414, column: 5, scope: !995)
!5962 = !DILocation(line: 1415, column: 1, scope: !995)
!5963 = !DILocation(line: 1421, column: 29, scope: !1015)
!5964 = !DILocation(line: 1421, column: 47, scope: !1015)
!5965 = !DILocation(line: 1423, column: 56, scope: !1015)
!5966 = !DILocation(line: 1423, column: 38, scope: !1015)
!5967 = !DILocation(line: 1423, column: 25, scope: !1015)
!5968 = !DILocation(line: 1423, column: 91, scope: !1015)
!5969 = !DILocation(line: 1423, column: 12, scope: !1015)
!5970 = !DILocation(line: 1423, column: 5, scope: !1015)
!5971 = !DILocation(line: 1427, column: 32, scope: !1019)
!5972 = !DILocation(line: 1427, column: 50, scope: !1019)
!5973 = !DILocation(line: 1427, column: 66, scope: !1019)
!5974 = !DILocation(line: 1429, column: 5, scope: !1019)
!5975 = !DILocation(line: 1429, column: 15, scope: !1019)
!5976 = !DILocation(line: 1429, column: 26, scope: !1019)
!5977 = !DILocation(line: 1430, column: 5, scope: !1019)
!5978 = !DILocation(line: 1430, column: 15, scope: !1019)
!5979 = !DILocation(line: 1432, column: 28, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1432, column: 9)
!5981 = !DILocation(line: 1432, column: 10, scope: !5980)
!5982 = !DILocation(line: 1432, column: 9, scope: !1019)
!5983 = !DILocation(line: 1433, column: 9, scope: !5980)
!5984 = !DILocation(line: 1434, column: 27, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1434, column: 9)
!5986 = !DILocation(line: 1434, column: 39, scope: !5985)
!5987 = !DILocation(line: 1434, column: 50, scope: !5985)
!5988 = !DILocation(line: 1434, column: 59, scope: !5985)
!5989 = !DILocation(line: 1434, column: 76, scope: !5985)
!5990 = !DILocation(line: 1434, column: 9, scope: !1019)
!5991 = !DILocation(line: 1435, column: 25, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5985, file: !4, line: 1434, column: 83)
!5993 = !DILocation(line: 1435, column: 9, scope: !5992)
!5994 = !DILocation(line: 1437, column: 9, scope: !5992)
!5995 = !DILocation(line: 1439, column: 43, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1439, column: 9)
!5997 = !DILocation(line: 1439, column: 27, scope: !5996)
!5998 = !DILocation(line: 1439, column: 54, scope: !5996)
!5999 = !DILocation(line: 1439, column: 60, scope: !5996)
!6000 = !DILocation(line: 1439, column: 25, scope: !5996)
!6001 = !DILocation(line: 1439, column: 25, scope: !6002)
!6002 = !DILexicalBlockFile(scope: !5996, file: !4, discriminator: 1)
!6003 = !DILocation(line: 1439, column: 103, scope: !6004)
!6004 = !DILexicalBlockFile(scope: !5996, file: !4, discriminator: 2)
!6005 = !DILocation(line: 1439, column: 73, scope: !5996)
!6006 = !DILocation(line: 1439, column: 116, scope: !6007)
!6007 = !DILexicalBlockFile(scope: !6008, file: !4, discriminator: 4)
!6008 = !DILexicalBlockFile(scope: !5996, file: !4, discriminator: 3)
!6009 = !DILocation(line: 1439, column: 9, scope: !1019)
!6010 = !DILocation(line: 1440, column: 9, scope: !5996)
!6011 = !DILocation(line: 1441, column: 29, scope: !1019)
!6012 = !DILocation(line: 1441, column: 42, scope: !1019)
!6013 = !DILocation(line: 1441, column: 15, scope: !1019)
!6014 = !DILocation(line: 1441, column: 13, scope: !1019)
!6015 = !DILocation(line: 1442, column: 9, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !1019, file: !4, line: 1442, column: 9)
!6017 = !DILocation(line: 1442, column: 17, scope: !6016)
!6018 = !DILocation(line: 1442, column: 9, scope: !1019)
!6019 = !DILocation(line: 1443, column: 9, scope: !6016)
!6020 = !DILocation(line: 1444, column: 56, scope: !1030)
!6021 = !DILocation(line: 1444, column: 38, scope: !1030)
!6022 = !DILocation(line: 1444, column: 25, scope: !1030)
!6023 = !DILocation(line: 1444, column: 91, scope: !1030)
!6024 = !DILocation(line: 1444, column: 101, scope: !1030)
!6025 = !DILocation(line: 1444, column: 111, scope: !1030)
!6026 = !DILocation(line: 1444, column: 9, scope: !1030)
!6027 = !DILocation(line: 1444, column: 120, scope: !1030)
!6028 = !DILocation(line: 1444, column: 9, scope: !1019)
!6029 = !DILocation(line: 1445, column: 9, scope: !1029)
!6030 = !DILocation(line: 1445, column: 14, scope: !6031)
!6031 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 1)
!6032 = !DILocation(line: 1445, column: 24, scope: !1028)
!6033 = !DILocation(line: 1445, column: 54, scope: !1028)
!6034 = !DILocation(line: 1445, column: 72, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !1028, file: !4, line: 1445, column: 69)
!6036 = !DILocation(line: 1445, column: 89, scope: !6035)
!6037 = !DILocation(line: 1445, column: 69, scope: !6035)
!6038 = !DILocation(line: 1445, column: 99, scope: !6035)
!6039 = !DILocation(line: 1445, column: 69, scope: !1028)
!6040 = !DILocation(line: 1445, column: 69, scope: !6041)
!6041 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 2)
!6042 = !DILocation(line: 1445, column: 130, scope: !6043)
!6043 = !DILexicalBlockFile(scope: !6035, file: !4, discriminator: 3)
!6044 = !DILocation(line: 1445, column: 148, scope: !6035)
!6045 = !DILocation(line: 1445, column: 158, scope: !6035)
!6046 = !DILocation(line: 1445, column: 183, scope: !6035)
!6047 = !DILocation(line: 1445, column: 114, scope: !6035)
!6048 = !DILocation(line: 1445, column: 202, scope: !6049)
!6049 = !DILexicalBlockFile(scope: !1029, file: !4, discriminator: 4)
!6050 = !DILocation(line: 1445, column: 202, scope: !1028)
!6051 = !DILocation(line: 1445, column: 202, scope: !6052)
!6052 = !DILexicalBlockFile(scope: !1028, file: !4, discriminator: 5)
!6053 = !DILocation(line: 1446, column: 9, scope: !1029)
!6054 = !DILocation(line: 1448, column: 5, scope: !1019)
!6055 = !DILocation(line: 1448, column: 10, scope: !6056)
!6056 = !DILexicalBlockFile(scope: !1032, file: !4, discriminator: 1)
!6057 = !DILocation(line: 1448, column: 20, scope: !1032)
!6058 = !DILocation(line: 1448, column: 50, scope: !1032)
!6059 = !DILocation(line: 1448, column: 68, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !1032, file: !4, line: 1448, column: 65)
!6061 = !DILocation(line: 1448, column: 85, scope: !6060)
!6062 = !DILocation(line: 1448, column: 65, scope: !6060)
!6063 = !DILocation(line: 1448, column: 95, scope: !6060)
!6064 = !DILocation(line: 1448, column: 65, scope: !1032)
!6065 = !DILocation(line: 1448, column: 65, scope: !6066)
!6066 = !DILexicalBlockFile(scope: !1032, file: !4, discriminator: 2)
!6067 = !DILocation(line: 1448, column: 126, scope: !6068)
!6068 = !DILexicalBlockFile(scope: !6060, file: !4, discriminator: 3)
!6069 = !DILocation(line: 1448, column: 144, scope: !6060)
!6070 = !DILocation(line: 1448, column: 154, scope: !6060)
!6071 = !DILocation(line: 1448, column: 179, scope: !6060)
!6072 = !DILocation(line: 1448, column: 110, scope: !6060)
!6073 = !DILocation(line: 1448, column: 198, scope: !6074)
!6074 = !DILexicalBlockFile(scope: !1019, file: !4, discriminator: 4)
!6075 = !DILocation(line: 1448, column: 198, scope: !1032)
!6076 = !DILocation(line: 1448, column: 198, scope: !6077)
!6077 = !DILexicalBlockFile(scope: !1032, file: !4, discriminator: 5)
!6078 = !DILocation(line: 1449, column: 51, scope: !1019)
!6079 = !DILocation(line: 1450, column: 5, scope: !1019)
!6080 = !DILocation(line: 1451, column: 1, scope: !1019)
!6081 = !DILocation(line: 1454, column: 34, scope: !1033)
!6082 = !DILocation(line: 1454, column: 52, scope: !1033)
!6083 = !DILocation(line: 1456, column: 56, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !1033, file: !4, line: 1456, column: 9)
!6085 = !DILocation(line: 1456, column: 38, scope: !6084)
!6086 = !DILocation(line: 1456, column: 25, scope: !6084)
!6087 = !DILocation(line: 1456, column: 91, scope: !6084)
!6088 = !DILocation(line: 1456, column: 101, scope: !6084)
!6089 = !DILocation(line: 1456, column: 9, scope: !6084)
!6090 = !DILocation(line: 1456, column: 111, scope: !6084)
!6091 = !DILocation(line: 1456, column: 9, scope: !1033)
!6092 = !DILocation(line: 1457, column: 61, scope: !6084)
!6093 = !DILocation(line: 1457, column: 43, scope: !6084)
!6094 = !DILocation(line: 1457, column: 30, scope: !6084)
!6095 = !DILocation(line: 1457, column: 96, scope: !6084)
!6096 = !DILocation(line: 1457, column: 16, scope: !6084)
!6097 = !DILocation(line: 1457, column: 9, scope: !6084)
!6098 = !DILocation(line: 1458, column: 51, scope: !1033)
!6099 = !DILocation(line: 1459, column: 5, scope: !1033)
!6100 = !DILocation(line: 1460, column: 1, scope: !1033)
!6101 = !DILocation(line: 1463, column: 27, scope: !1037)
!6102 = !DILocation(line: 1463, column: 45, scope: !1037)
!6103 = !DILocation(line: 1465, column: 38, scope: !1037)
!6104 = !DILocation(line: 1465, column: 12, scope: !1037)
!6105 = !DILocation(line: 1465, column: 5, scope: !1037)
!6106 = !DILocation(line: 1469, column: 32, scope: !1041)
!6107 = !DILocation(line: 1469, column: 50, scope: !1041)
!6108 = !DILocation(line: 1471, column: 5, scope: !1041)
!6109 = !DILocation(line: 1471, column: 15, scope: !1041)
!6110 = !DILocation(line: 1472, column: 5, scope: !1041)
!6111 = !DILocation(line: 1472, column: 10, scope: !1041)
!6112 = !DILocation(line: 1472, column: 54, scope: !1041)
!6113 = !DILocation(line: 1472, column: 36, scope: !1041)
!6114 = !DILocation(line: 1472, column: 23, scope: !1041)
!6115 = !DILocation(line: 1472, column: 89, scope: !1041)
!6116 = !DILocation(line: 1474, column: 28, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !1041, file: !4, line: 1474, column: 9)
!6118 = !DILocation(line: 1474, column: 10, scope: !6117)
!6119 = !DILocation(line: 1474, column: 9, scope: !1041)
!6120 = !DILocation(line: 1475, column: 9, scope: !6117)
!6121 = !DILocation(line: 1476, column: 9, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !1041, file: !4, line: 1476, column: 9)
!6123 = !DILocation(line: 1476, column: 19, scope: !6122)
!6124 = !DILocation(line: 1476, column: 9, scope: !1041)
!6125 = !DILocation(line: 1477, column: 29, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6127, file: !4, line: 1477, column: 13)
!6127 = distinct !DILexicalBlock(scope: !6122, file: !4, line: 1476, column: 34)
!6128 = !DILocation(line: 1477, column: 42, scope: !6126)
!6129 = !DILocation(line: 1477, column: 51, scope: !6126)
!6130 = !DILocation(line: 1477, column: 13, scope: !6127)
!6131 = !DILocation(line: 1478, column: 26, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6126, file: !4, line: 1477, column: 69)
!6133 = !DILocation(line: 1478, column: 13, scope: !6132)
!6134 = !DILocation(line: 1480, column: 13, scope: !6132)
!6135 = !DILocation(line: 1482, column: 104, scope: !6127)
!6136 = !DILocation(line: 1482, column: 90, scope: !6127)
!6137 = !DILocation(line: 1482, column: 41, scope: !6127)
!6138 = !DILocation(line: 1482, column: 23, scope: !6127)
!6139 = !DILocation(line: 1482, column: 10, scope: !6127)
!6140 = !DILocation(line: 1482, column: 76, scope: !6127)
!6141 = !DILocation(line: 1482, column: 88, scope: !6127)
!6142 = !DILocation(line: 1483, column: 45, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6127, file: !4, line: 1483, column: 13)
!6144 = !DILocation(line: 1483, column: 27, scope: !6143)
!6145 = !DILocation(line: 1483, column: 14, scope: !6143)
!6146 = !DILocation(line: 1483, column: 80, scope: !6143)
!6147 = !DILocation(line: 1483, column: 92, scope: !6143)
!6148 = !DILocation(line: 1483, column: 98, scope: !6143)
!6149 = !DILocation(line: 1483, column: 101, scope: !6150)
!6150 = !DILexicalBlockFile(scope: !6143, file: !4, discriminator: 1)
!6151 = !DILocation(line: 1483, column: 13, scope: !6127)
!6152 = !DILocation(line: 1484, column: 94, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6143, file: !4, line: 1483, column: 119)
!6154 = !DILocation(line: 1484, column: 45, scope: !6153)
!6155 = !DILocation(line: 1484, column: 27, scope: !6153)
!6156 = !DILocation(line: 1484, column: 14, scope: !6153)
!6157 = !DILocation(line: 1484, column: 80, scope: !6153)
!6158 = !DILocation(line: 1484, column: 92, scope: !6153)
!6159 = !DILocation(line: 1485, column: 13, scope: !6153)
!6160 = !DILocation(line: 1487, column: 5, scope: !6127)
!6161 = !DILocation(line: 1488, column: 28, scope: !1041)
!6162 = !DILocation(line: 1488, column: 12, scope: !1041)
!6163 = !DILocation(line: 1488, column: 5, scope: !1041)
!6164 = !DILocation(line: 1489, column: 1, scope: !1041)
!6165 = !DILocation(line: 520, column: 25, scope: !987)
!6166 = !DILocation(line: 520, column: 49, scope: !987)
!6167 = !DILocation(line: 522, column: 5, scope: !987)
!6168 = !DILocation(line: 522, column: 15, scope: !987)
!6169 = !DILocation(line: 523, column: 5, scope: !987)
!6170 = !DILocation(line: 523, column: 15, scope: !987)
!6171 = !DILocation(line: 525, column: 31, scope: !987)
!6172 = !DILocation(line: 525, column: 60, scope: !987)
!6173 = !DILocation(line: 525, column: 17, scope: !987)
!6174 = !DILocation(line: 525, column: 15, scope: !987)
!6175 = !DILocation(line: 526, column: 9, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !987, file: !4, line: 526, column: 9)
!6177 = !DILocation(line: 526, column: 19, scope: !6176)
!6178 = !DILocation(line: 526, column: 9, scope: !987)
!6179 = !DILocation(line: 527, column: 9, scope: !6176)
!6180 = !DILocation(line: 528, column: 56, scope: !987)
!6181 = !DILocation(line: 528, column: 67, scope: !987)
!6182 = !DILocation(line: 528, column: 15, scope: !987)
!6183 = !DILocation(line: 528, column: 13, scope: !987)
!6184 = !DILocation(line: 529, column: 5, scope: !987)
!6185 = !DILocation(line: 529, column: 10, scope: !6186)
!6186 = !DILexicalBlockFile(scope: !994, file: !4, discriminator: 1)
!6187 = !DILocation(line: 529, column: 20, scope: !994)
!6188 = !DILocation(line: 529, column: 50, scope: !994)
!6189 = !DILocation(line: 529, column: 70, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !994, file: !4, line: 529, column: 67)
!6191 = !DILocation(line: 529, column: 87, scope: !6190)
!6192 = !DILocation(line: 529, column: 67, scope: !6190)
!6193 = !DILocation(line: 529, column: 97, scope: !6190)
!6194 = !DILocation(line: 529, column: 67, scope: !994)
!6195 = !DILocation(line: 529, column: 67, scope: !6196)
!6196 = !DILexicalBlockFile(scope: !994, file: !4, discriminator: 2)
!6197 = !DILocation(line: 529, column: 128, scope: !6198)
!6198 = !DILexicalBlockFile(scope: !6190, file: !4, discriminator: 3)
!6199 = !DILocation(line: 529, column: 146, scope: !6190)
!6200 = !DILocation(line: 529, column: 156, scope: !6190)
!6201 = !DILocation(line: 529, column: 181, scope: !6190)
!6202 = !DILocation(line: 529, column: 112, scope: !6190)
!6203 = !DILocation(line: 529, column: 200, scope: !6204)
!6204 = !DILexicalBlockFile(scope: !987, file: !4, discriminator: 4)
!6205 = !DILocation(line: 529, column: 200, scope: !994)
!6206 = !DILocation(line: 529, column: 200, scope: !6207)
!6207 = !DILexicalBlockFile(scope: !994, file: !4, discriminator: 5)
!6208 = !DILocation(line: 530, column: 12, scope: !987)
!6209 = !DILocation(line: 530, column: 5, scope: !987)
!6210 = !DILocation(line: 531, column: 1, scope: !987)
