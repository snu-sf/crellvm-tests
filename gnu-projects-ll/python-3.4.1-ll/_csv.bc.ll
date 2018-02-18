; ModuleID = './_csv.bc'
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
  %call = call i32 @PyType_Ready(%struct._typeobject* @Dialect_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @Reader_Type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @Writer_Type)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_csvmodule, i32 1013)
  store %struct._object* %call9, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %cmp10 = icmp eq %struct._object* %0, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %1 = load %struct._object*, %struct._object** %module, align 8
  %call13 = call i32 @PyModule_AddStringConstant(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %2 = load %struct._object*, %struct._object** %module, align 8
  %call17 = call i8* @PyModule_GetState(%struct._object* %2)
  %3 = bitcast i8* %call17 to %struct._csvstate*
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %3, i32 0, i32 2
  store i64 131072, i64* %field_limit, align 8
  %call18 = call %struct._object* @PyDict_New()
  %4 = load %struct._object*, %struct._object** %module, align 8
  %call19 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call19 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %5, i32 0, i32 1
  store %struct._object* %call18, %struct._object** %dialects, align 8
  %6 = load %struct._object*, %struct._object** %module, align 8
  %call20 = call i8* @PyModule_GetState(%struct._object* %6)
  %7 = bitcast i8* %call20 to %struct._csvstate*
  %dialects21 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %dialects21, align 8
  %cmp22 = icmp eq %struct._object* %8, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.16
  %9 = load %struct._object*, %struct._object** %module, align 8
  %call25 = call i8* @PyModule_GetState(%struct._object* %9)
  %10 = bitcast i8* %call25 to %struct._csvstate*
  %dialects26 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %dialects26, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct._object*, %struct._object** %module, align 8
  %14 = load %struct._object*, %struct._object** %module, align 8
  %call27 = call i8* @PyModule_GetState(%struct._object* %14)
  %15 = bitcast i8* %call27 to %struct._csvstate*
  %dialects28 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %dialects28, align 8
  %call29 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* %16)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.24
  store %struct.StyleDesc* getelementptr inbounds ([5 x %struct.StyleDesc], [5 x %struct.StyleDesc]* @quote_styles, i32 0, i32 0), %struct.StyleDesc** %style, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %17 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8
  %name = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %tobool32 = icmp ne i8* %18, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %module, align 8
  %20 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8
  %name33 = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %20, i32 0, i32 1
  %21 = load i8*, i8** %name33, align 8
  %22 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8
  %style34 = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %22, i32 0, i32 0
  %23 = load i32, i32* %style34, align 4
  %conv = zext i32 %23 to i64
  %call35 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* %21, i64 %conv)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %24 = load %struct.StyleDesc*, %struct.StyleDesc** %style, align 8
  %incdec.ptr = getelementptr %struct.StyleDesc, %struct.StyleDesc* %24, i32 1
  store %struct.StyleDesc* %incdec.ptr, %struct.StyleDesc** %style, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc40 = add i64 %25, 1
  store i64 %inc40, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %26 = load %struct._object*, %struct._object** %module, align 8
  %call41 = call i32 @PyModule_AddObject(%struct._object* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %for.end
  %call45 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* null, %struct._object* null)
  %27 = load %struct._object*, %struct._object** %module, align 8
  %call46 = call i8* @PyModule_GetState(%struct._object* %27)
  %28 = bitcast i8* %call46 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %28, i32 0, i32 0
  store %struct._object* %call45, %struct._object** %error_obj, align 8
  %29 = load %struct._object*, %struct._object** %module, align 8
  %call47 = call i8* @PyModule_GetState(%struct._object* %29)
  %30 = bitcast i8* %call47 to %struct._csvstate*
  %error_obj48 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %30, i32 0, i32 0
  %31 = load %struct._object*, %struct._object** %error_obj48, align 8
  %cmp49 = icmp eq %struct._object* %31, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.44
  %32 = load %struct._object*, %struct._object** %module, align 8
  %call53 = call i8* @PyModule_GetState(%struct._object* %32)
  %33 = bitcast i8* %call53 to %struct._csvstate*
  %error_obj54 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %33, i32 0, i32 0
  %34 = load %struct._object*, %struct._object** %error_obj54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt55, align 8
  %inc56 = add i64 %35, 1
  store i64 %inc56, i64* %ob_refcnt55, align 8
  %36 = load %struct._object*, %struct._object** %module, align 8
  %37 = load %struct._object*, %struct._object** %module, align 8
  %call57 = call i8* @PyModule_GetState(%struct._object* %37)
  %38 = bitcast i8* %call57 to %struct._csvstate*
  %error_obj58 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %38, i32 0, i32 0
  %39 = load %struct._object*, %struct._object** %error_obj58, align 8
  %call59 = call i32 @PyModule_AddObject(%struct._object* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* %39)
  %40 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.51, %if.then.43, %if.then.38, %if.then.30, %if.then.23, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #1

declare i8* @PyModule_GetState(%struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @Dialect_dealloc(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 6
  %1 = load %struct._object*, %struct._object** %lineterminator, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %10 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %11 = bitcast %struct.DialectObj* %10 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 38
  %13 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %14 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %15 = bitcast %struct.DialectObj* %14 to %struct._object*
  %16 = bitcast %struct._object* %15 to i8*
  call void %13(i8* %16)
  ret void
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp56 = alloca %struct._object*, align 8
  %_py_xincref_tmp64 = alloca %struct._object*, align 8
  %_py_xincref_tmp72 = alloca %struct._object*, align 8
  %_py_xincref_tmp80 = alloca %struct._object*, align 8
  %_py_xincref_tmp88 = alloca %struct._object*, align 8
  %_py_xincref_tmp96 = alloca %struct._object*, align 8
  %_py_xincref_tmp104 = alloca %struct._object*, align 8
  %_py_xdecref_tmp215 = alloca %struct._object*, align 8
  %_py_decref_tmp219 = alloca %struct._object*, align 8
  %_py_xdecref_tmp232 = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  %_py_xdecref_tmp249 = alloca %struct._object*, align 8
  %_py_decref_tmp253 = alloca %struct._object*, align 8
  %_py_xdecref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp270 = alloca %struct._object*, align 8
  %_py_xdecref_tmp283 = alloca %struct._object*, align 8
  %_py_decref_tmp287 = alloca %struct._object*, align 8
  %_py_xdecref_tmp300 = alloca %struct._object*, align 8
  %_py_decref_tmp304 = alloca %struct._object*, align 8
  %_py_xdecref_tmp317 = alloca %struct._object*, align 8
  %_py_decref_tmp321 = alloca %struct._object*, align 8
  %_py_xdecref_tmp334 = alloca %struct._object*, align 8
  %_py_decref_tmp338 = alloca %struct._object*, align 8
  %_py_xdecref_tmp351 = alloca %struct._object*, align 8
  %_py_decref_tmp355 = alloca %struct._object*, align 8
  %_py_xdecref_tmp368 = alloca %struct._object*, align 8
  %_py_decref_tmp372 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store %struct._object* null, %struct._object** %dialect, align 8
  store %struct._object* null, %struct._object** %delimiter, align 8
  store %struct._object* null, %struct._object** %doublequote, align 8
  store %struct._object* null, %struct._object** %escapechar, align 8
  store %struct._object* null, %struct._object** %lineterminator, align 8
  store %struct._object* null, %struct._object** %quotechar, align 8
  store %struct._object* null, %struct._object** %quoting, align 8
  store %struct._object* null, %struct._object** %skipinitialspace, align 8
  store %struct._object* null, %struct._object** %strict, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @dialect_kws, i32 0, i32 0), %struct._object** %dialect, %struct._object** %delimiter, %struct._object** %doublequote, %struct._object** %escapechar, %struct._object** %lineterminator, %struct._object** %quotechar, %struct._object** %quoting, %struct._object** %skipinitialspace, %struct._object** %strict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %dialect, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.31

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %dialect, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %dialect, align 8
  %call4 = call %struct._object* @get_dialect_from_registry(%struct._object* %6)
  store %struct._object* %call4, %struct._object** %dialect, align 8
  %7 = load %struct._object*, %struct._object** %dialect, align 8
  %cmp5 = icmp eq %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.else:                                          ; preds = %if.then.1
  %8 = load %struct._object*, %struct._object** %dialect, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end.7
  %10 = load %struct._object*, %struct._object** %dialect, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %11, @Dialect_Type
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %dialect, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %call12 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @Dialect_Type)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.8
  %14 = load %struct._object*, %struct._object** %delimiter, align 8
  %cmp14 = icmp eq %struct._object* %14, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.30

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %doublequote, align 8
  %cmp16 = icmp eq %struct._object* %15, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.30

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %16 = load %struct._object*, %struct._object** %escapechar, align 8
  %cmp18 = icmp eq %struct._object* %16, null
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.30

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %17 = load %struct._object*, %struct._object** %lineterminator, align 8
  %cmp20 = icmp eq %struct._object* %17, null
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %18 = load %struct._object*, %struct._object** %quotechar, align 8
  %cmp22 = icmp eq %struct._object* %18, null
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %19 = load %struct._object*, %struct._object** %quoting, align 8
  %cmp24 = icmp eq %struct._object* %19, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.30

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %20 = load %struct._object*, %struct._object** %skipinitialspace, align 8
  %cmp26 = icmp eq %struct._object* %20, null
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.30

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %21 = load %struct._object*, %struct._object** %strict, align 8
  %cmp28 = icmp eq %struct._object* %21, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.27
  %22 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %lor.lhs.false
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  %23 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 36
  %24 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %25 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call32 = call %struct._object* %24(%struct._typeobject* %25, i64 0)
  %26 = bitcast %struct._object* %call32 to %struct.DialectObj*
  store %struct.DialectObj* %26, %struct.DialectObj** %self, align 8
  %27 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %cmp33 = icmp eq %struct.DialectObj* %27, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.31
  br label %do.body

do.body:                                          ; preds = %if.then.34
  %28 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %29, null
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %do.body
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt38, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt38, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.37
  br label %if.end.43

if.else.41:                                       ; preds = %do.body.37
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %do.body
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.31
  %37 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %lineterminator47 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %37, i32 0, i32 6
  store %struct._object* null, %struct._object** %lineterminator47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.46
  %38 = load %struct._object*, %struct._object** %delimiter, align 8
  store %struct._object* %38, %struct._object** %_py_xincref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp49 = icmp ne %struct._object* %39, null
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt51, align 8
  %inc52 = add i64 %41, 1
  store i64 %inc52, i64* %ob_refcnt51, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %do.body.48
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %42 = load %struct._object*, %struct._object** %doublequote, align 8
  store %struct._object* %42, %struct._object** %_py_xincref_tmp56, align 8
  %43 = load %struct._object*, %struct._object** %_py_xincref_tmp56, align 8
  %cmp57 = icmp ne %struct._object* %43, null
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %do.body.55
  %44 = load %struct._object*, %struct._object** %_py_xincref_tmp56, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %45, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %do.body.55
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %46 = load %struct._object*, %struct._object** %escapechar, align 8
  store %struct._object* %46, %struct._object** %_py_xincref_tmp64, align 8
  %47 = load %struct._object*, %struct._object** %_py_xincref_tmp64, align 8
  %cmp65 = icmp ne %struct._object* %47, null
  br i1 %cmp65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %do.body.63
  %48 = load %struct._object*, %struct._object** %_py_xincref_tmp64, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt67, align 8
  %inc68 = add i64 %49, 1
  store i64 %inc68, i64* %ob_refcnt67, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %do.body.63
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %50 = load %struct._object*, %struct._object** %lineterminator, align 8
  store %struct._object* %50, %struct._object** %_py_xincref_tmp72, align 8
  %51 = load %struct._object*, %struct._object** %_py_xincref_tmp72, align 8
  %cmp73 = icmp ne %struct._object* %51, null
  br i1 %cmp73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %do.body.71
  %52 = load %struct._object*, %struct._object** %_py_xincref_tmp72, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt75, align 8
  %inc76 = add i64 %53, 1
  store i64 %inc76, i64* %ob_refcnt75, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %do.body.71
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %54 = load %struct._object*, %struct._object** %quotechar, align 8
  store %struct._object* %54, %struct._object** %_py_xincref_tmp80, align 8
  %55 = load %struct._object*, %struct._object** %_py_xincref_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %55, null
  br i1 %cmp81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %do.body.79
  %56 = load %struct._object*, %struct._object** %_py_xincref_tmp80, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt83, align 8
  %inc84 = add i64 %57, 1
  store i64 %inc84, i64* %ob_refcnt83, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %do.body.79
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %58 = load %struct._object*, %struct._object** %quoting, align 8
  store %struct._object* %58, %struct._object** %_py_xincref_tmp88, align 8
  %59 = load %struct._object*, %struct._object** %_py_xincref_tmp88, align 8
  %cmp89 = icmp ne %struct._object* %59, null
  br i1 %cmp89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %do.body.87
  %60 = load %struct._object*, %struct._object** %_py_xincref_tmp88, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt91, align 8
  %inc92 = add i64 %61, 1
  store i64 %inc92, i64* %ob_refcnt91, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %do.body.87
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.94
  %62 = load %struct._object*, %struct._object** %skipinitialspace, align 8
  store %struct._object* %62, %struct._object** %_py_xincref_tmp96, align 8
  %63 = load %struct._object*, %struct._object** %_py_xincref_tmp96, align 8
  %cmp97 = icmp ne %struct._object* %63, null
  br i1 %cmp97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %do.body.95
  %64 = load %struct._object*, %struct._object** %_py_xincref_tmp96, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt99, align 8
  %inc100 = add i64 %65, 1
  store i64 %inc100, i64* %ob_refcnt99, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %do.body.95
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %66 = load %struct._object*, %struct._object** %strict, align 8
  store %struct._object* %66, %struct._object** %_py_xincref_tmp104, align 8
  %67 = load %struct._object*, %struct._object** %_py_xincref_tmp104, align 8
  %cmp105 = icmp ne %struct._object* %67, null
  br i1 %cmp105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %do.body.103
  %68 = load %struct._object*, %struct._object** %_py_xincref_tmp104, align 8
  %ob_refcnt107 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt107, align 8
  %inc108 = add i64 %69, 1
  store i64 %inc108, i64* %ob_refcnt107, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %do.body.103
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %70 = load %struct._object*, %struct._object** %dialect, align 8
  %cmp111 = icmp ne %struct._object* %70, null
  br i1 %cmp111, label %if.then.112, label %if.end.145

if.then.112:                                      ; preds = %do.end.110
  %71 = load %struct._object*, %struct._object** %delimiter, align 8
  %cmp113 = icmp eq %struct._object* %71, null
  br i1 %cmp113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.then.112
  %72 = load %struct._object*, %struct._object** %dialect, align 8
  %call115 = call %struct._object* @PyObject_GetAttrString(%struct._object* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call115, %struct._object** %delimiter, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.then.112
  %73 = load %struct._object*, %struct._object** %doublequote, align 8
  %cmp117 = icmp eq %struct._object* %73, null
  br i1 %cmp117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.116
  %74 = load %struct._object*, %struct._object** %dialect, align 8
  %call119 = call %struct._object* @PyObject_GetAttrString(%struct._object* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* %call119, %struct._object** %doublequote, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.116
  %75 = load %struct._object*, %struct._object** %escapechar, align 8
  %cmp121 = icmp eq %struct._object* %75, null
  br i1 %cmp121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.120
  %76 = load %struct._object*, %struct._object** %dialect, align 8
  %call123 = call %struct._object* @PyObject_GetAttrString(%struct._object* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  store %struct._object* %call123, %struct._object** %escapechar, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.120
  %77 = load %struct._object*, %struct._object** %lineterminator, align 8
  %cmp125 = icmp eq %struct._object* %77, null
  br i1 %cmp125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.124
  %78 = load %struct._object*, %struct._object** %dialect, align 8
  %call127 = call %struct._object* @PyObject_GetAttrString(%struct._object* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* %call127, %struct._object** %lineterminator, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.124
  %79 = load %struct._object*, %struct._object** %quotechar, align 8
  %cmp129 = icmp eq %struct._object* %79, null
  br i1 %cmp129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.128
  %80 = load %struct._object*, %struct._object** %dialect, align 8
  %call131 = call %struct._object* @PyObject_GetAttrString(%struct._object* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* %call131, %struct._object** %quotechar, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.128
  %81 = load %struct._object*, %struct._object** %quoting, align 8
  %cmp133 = icmp eq %struct._object* %81, null
  br i1 %cmp133, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.132
  %82 = load %struct._object*, %struct._object** %dialect, align 8
  %call135 = call %struct._object* @PyObject_GetAttrString(%struct._object* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call135, %struct._object** %quoting, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.132
  %83 = load %struct._object*, %struct._object** %skipinitialspace, align 8
  %cmp137 = icmp eq %struct._object* %83, null
  br i1 %cmp137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.136
  %84 = load %struct._object*, %struct._object** %dialect, align 8
  %call139 = call %struct._object* @PyObject_GetAttrString(%struct._object* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call139, %struct._object** %skipinitialspace, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.136
  %85 = load %struct._object*, %struct._object** %strict, align 8
  %cmp141 = icmp eq %struct._object* %85, null
  br i1 %cmp141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.140
  %86 = load %struct._object*, %struct._object** %dialect, align 8
  %call143 = call %struct._object* @PyObject_GetAttrString(%struct._object* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call143, %struct._object** %strict, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.140
  call void @PyErr_Clear()
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %do.end.110
  %87 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %delimiter146 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %87, i32 0, i32 2
  %88 = load %struct._object*, %struct._object** %delimiter, align 8
  %call147 = call i32 @_set_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %delimiter146, %struct._object* %88, i32 44)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.145
  br label %err

if.end.150:                                       ; preds = %if.end.145
  %89 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %doublequote151 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %89, i32 0, i32 1
  %90 = load %struct._object*, %struct._object** %doublequote, align 8
  %call152 = call i32 @_set_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32* %doublequote151, %struct._object* %90, i32 1)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.150
  br label %err

if.end.155:                                       ; preds = %if.end.150
  %91 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %escapechar156 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %91, i32 0, i32 4
  %92 = load %struct._object*, %struct._object** %escapechar, align 8
  %call157 = call i32 @_set_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32* %escapechar156, %struct._object* %92, i32 0)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  br label %err

if.end.160:                                       ; preds = %if.end.155
  %93 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %lineterminator161 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %93, i32 0, i32 6
  %94 = load %struct._object*, %struct._object** %lineterminator, align 8
  %call162 = call i32 @_set_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._object** %lineterminator161, %struct._object* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.160
  br label %err

if.end.165:                                       ; preds = %if.end.160
  %95 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quotechar166 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %95, i32 0, i32 3
  %96 = load %struct._object*, %struct._object** %quotechar, align 8
  %call167 = call i32 @_set_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32* %quotechar166, %struct._object* %96, i32 34)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.165
  br label %err

if.end.170:                                       ; preds = %if.end.165
  %97 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quoting171 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %97, i32 0, i32 7
  %98 = load %struct._object*, %struct._object** %quoting, align 8
  %call172 = call i32 @_set_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32* %quoting171, %struct._object* %98, i32 0)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.170
  br label %err

if.end.175:                                       ; preds = %if.end.170
  %99 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %skipinitialspace176 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %99, i32 0, i32 5
  %100 = load %struct._object*, %struct._object** %skipinitialspace, align 8
  %call177 = call i32 @_set_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32* %skipinitialspace176, %struct._object* %100, i32 0)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.175
  br label %err

if.end.180:                                       ; preds = %if.end.175
  %101 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %strict181 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %101, i32 0, i32 8
  %102 = load %struct._object*, %struct._object** %strict, align 8
  %call182 = call i32 @_set_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32* %strict181, %struct._object* %102, i32 0)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.180
  br label %err

if.end.185:                                       ; preds = %if.end.180
  %103 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quoting186 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %103, i32 0, i32 7
  %104 = load i32, i32* %quoting186, align 4
  %call187 = call i32 @dialect_check_quoting(i32 %104)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.185
  br label %err

if.end.190:                                       ; preds = %if.end.185
  %105 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %delimiter191 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %105, i32 0, i32 2
  %106 = load i32, i32* %delimiter191, align 4
  %cmp192 = icmp eq i32 %106, 0
  br i1 %cmp192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.end.190
  %107 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0))
  br label %err

if.end.194:                                       ; preds = %if.end.190
  %108 = load %struct._object*, %struct._object** %quotechar, align 8
  %cmp195 = icmp eq %struct._object* %108, @_Py_NoneStruct
  br i1 %cmp195, label %land.lhs.true.196, label %if.end.200

land.lhs.true.196:                                ; preds = %if.end.194
  %109 = load %struct._object*, %struct._object** %quoting, align 8
  %cmp197 = icmp eq %struct._object* %109, null
  br i1 %cmp197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %land.lhs.true.196
  %110 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quoting199 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %110, i32 0, i32 7
  store i32 3, i32* %quoting199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %land.lhs.true.196, %if.end.194
  %111 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quoting201 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %111, i32 0, i32 7
  %112 = load i32, i32* %quoting201, align 4
  %cmp202 = icmp ne i32 %112, 3
  br i1 %cmp202, label %land.lhs.true.203, label %if.end.207

land.lhs.true.203:                                ; preds = %if.end.200
  %113 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %quotechar204 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %113, i32 0, i32 3
  %114 = load i32, i32* %quotechar204, align 4
  %cmp205 = icmp eq i32 %114, 0
  br i1 %cmp205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %land.lhs.true.203
  %115 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0))
  br label %err

if.end.207:                                       ; preds = %land.lhs.true.203, %if.end.200
  %116 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %lineterminator208 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %116, i32 0, i32 6
  %117 = load %struct._object*, %struct._object** %lineterminator208, align 8
  %cmp209 = icmp eq %struct._object* %117, null
  br i1 %cmp209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.207
  %118 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  br label %err

if.end.211:                                       ; preds = %if.end.207
  %119 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %120 = bitcast %struct.DialectObj* %119 to %struct._object*
  store %struct._object* %120, %struct._object** %ret, align 8
  %121 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %122 = bitcast %struct.DialectObj* %121 to %struct._object*
  %ob_refcnt212 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt212, align 8
  %inc213 = add i64 %123, 1
  store i64 %inc213, i64* %ob_refcnt212, align 8
  br label %err

err:                                              ; preds = %if.end.211, %if.then.210, %if.then.206, %if.then.193, %if.then.189, %if.then.184, %if.then.179, %if.then.174, %if.then.169, %if.then.164, %if.then.159, %if.then.154, %if.then.149
  br label %do.body.214

do.body.214:                                      ; preds = %err
  %124 = load %struct.DialectObj*, %struct.DialectObj** %self, align 8
  %125 = bitcast %struct.DialectObj* %124 to %struct._object*
  store %struct._object* %125, %struct._object** %_py_xdecref_tmp215, align 8
  %126 = load %struct._object*, %struct._object** %_py_xdecref_tmp215, align 8
  %cmp216 = icmp ne %struct._object* %126, null
  br i1 %cmp216, label %if.then.217, label %if.end.229

if.then.217:                                      ; preds = %do.body.214
  br label %do.body.218

do.body.218:                                      ; preds = %if.then.217
  %127 = load %struct._object*, %struct._object** %_py_xdecref_tmp215, align 8
  store %struct._object* %127, %struct._object** %_py_decref_tmp219, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_refcnt220 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt220, align 8
  %dec221 = add i64 %129, -1
  store i64 %dec221, i64* %ob_refcnt220, align 8
  %cmp222 = icmp ne i64 %dec221, 0
  br i1 %cmp222, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.218
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.218
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  call void %132(%struct._object* %133)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.228, %do.body.214
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %134 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %134, %struct._object** %_py_xdecref_tmp232, align 8
  %135 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  %cmp233 = icmp ne %struct._object* %135, null
  br i1 %cmp233, label %if.then.234, label %if.end.246

if.then.234:                                      ; preds = %do.body.231
  br label %do.body.235

do.body.235:                                      ; preds = %if.then.234
  %136 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp236, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %138, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %do.body.235
  br label %if.end.244

if.else.241:                                      ; preds = %do.body.235
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type242 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type242, align 8
  %tp_dealloc243 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc243, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %141(%struct._object* %142)
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.241, %if.then.240
  br label %do.end.245

do.end.245:                                       ; preds = %if.end.244
  br label %if.end.246

if.end.246:                                       ; preds = %do.end.245, %do.body.231
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.246
  br label %do.body.248

do.body.248:                                      ; preds = %do.end.247
  %143 = load %struct._object*, %struct._object** %delimiter, align 8
  store %struct._object* %143, %struct._object** %_py_xdecref_tmp249, align 8
  %144 = load %struct._object*, %struct._object** %_py_xdecref_tmp249, align 8
  %cmp250 = icmp ne %struct._object* %144, null
  br i1 %cmp250, label %if.then.251, label %if.end.263

if.then.251:                                      ; preds = %do.body.248
  br label %do.body.252

do.body.252:                                      ; preds = %if.then.251
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp249, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp253, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt254, align 8
  %dec255 = add i64 %147, -1
  store i64 %dec255, i64* %ob_refcnt254, align 8
  %cmp256 = icmp ne i64 %dec255, 0
  br i1 %cmp256, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.252
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.252
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  call void %150(%struct._object* %151)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  br label %if.end.263

if.end.263:                                       ; preds = %do.end.262, %do.body.248
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  br label %do.body.265

do.body.265:                                      ; preds = %do.end.264
  %152 = load %struct._object*, %struct._object** %doublequote, align 8
  store %struct._object* %152, %struct._object** %_py_xdecref_tmp266, align 8
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8
  %cmp267 = icmp ne %struct._object* %153, null
  br i1 %cmp267, label %if.then.268, label %if.end.280

if.then.268:                                      ; preds = %do.body.265
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8
  store %struct._object* %154, %struct._object** %_py_decref_tmp270, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_refcnt271 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0
  %156 = load i64, i64* %ob_refcnt271, align 8
  %dec272 = add i64 %156, -1
  store i64 %dec272, i64* %ob_refcnt271, align 8
  %cmp273 = icmp ne i64 %dec272, 0
  br i1 %cmp273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %do.body.269
  br label %if.end.278

if.else.275:                                      ; preds = %do.body.269
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_type276 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type276, align 8
  %tp_dealloc277 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc277, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  call void %159(%struct._object* %160)
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.275, %if.then.274
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %do.body.265
  br label %do.end.281

do.end.281:                                       ; preds = %if.end.280
  br label %do.body.282

do.body.282:                                      ; preds = %do.end.281
  %161 = load %struct._object*, %struct._object** %escapechar, align 8
  store %struct._object* %161, %struct._object** %_py_xdecref_tmp283, align 8
  %162 = load %struct._object*, %struct._object** %_py_xdecref_tmp283, align 8
  %cmp284 = icmp ne %struct._object* %162, null
  br i1 %cmp284, label %if.then.285, label %if.end.297

if.then.285:                                      ; preds = %do.body.282
  br label %do.body.286

do.body.286:                                      ; preds = %if.then.285
  %163 = load %struct._object*, %struct._object** %_py_xdecref_tmp283, align 8
  store %struct._object* %163, %struct._object** %_py_decref_tmp287, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_refcnt288 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 0
  %165 = load i64, i64* %ob_refcnt288, align 8
  %dec289 = add i64 %165, -1
  store i64 %dec289, i64* %ob_refcnt288, align 8
  %cmp290 = icmp ne i64 %dec289, 0
  br i1 %cmp290, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %do.body.286
  br label %if.end.295

if.else.292:                                      ; preds = %do.body.286
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_type293 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 1
  %167 = load %struct._typeobject*, %struct._typeobject** %ob_type293, align 8
  %tp_dealloc294 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %167, i32 0, i32 4
  %168 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc294, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  call void %168(%struct._object* %169)
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.292, %if.then.291
  br label %do.end.296

do.end.296:                                       ; preds = %if.end.295
  br label %if.end.297

if.end.297:                                       ; preds = %do.end.296, %do.body.282
  br label %do.end.298

do.end.298:                                       ; preds = %if.end.297
  br label %do.body.299

do.body.299:                                      ; preds = %do.end.298
  %170 = load %struct._object*, %struct._object** %lineterminator, align 8
  store %struct._object* %170, %struct._object** %_py_xdecref_tmp300, align 8
  %171 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8
  %cmp301 = icmp ne %struct._object* %171, null
  br i1 %cmp301, label %if.then.302, label %if.end.314

if.then.302:                                      ; preds = %do.body.299
  br label %do.body.303

do.body.303:                                      ; preds = %if.then.302
  %172 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8
  store %struct._object* %172, %struct._object** %_py_decref_tmp304, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8
  %ob_refcnt305 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 0
  %174 = load i64, i64* %ob_refcnt305, align 8
  %dec306 = add i64 %174, -1
  store i64 %dec306, i64* %ob_refcnt305, align 8
  %cmp307 = icmp ne i64 %dec306, 0
  br i1 %cmp307, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %do.body.303
  br label %if.end.312

if.else.309:                                      ; preds = %do.body.303
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8
  %ob_type310 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 1
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type310, align 8
  %tp_dealloc311 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i32 0, i32 4
  %177 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc311, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp304, align 8
  call void %177(%struct._object* %178)
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.309, %if.then.308
  br label %do.end.313

do.end.313:                                       ; preds = %if.end.312
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.313, %do.body.299
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.314
  br label %do.body.316

do.body.316:                                      ; preds = %do.end.315
  %179 = load %struct._object*, %struct._object** %quotechar, align 8
  store %struct._object* %179, %struct._object** %_py_xdecref_tmp317, align 8
  %180 = load %struct._object*, %struct._object** %_py_xdecref_tmp317, align 8
  %cmp318 = icmp ne %struct._object* %180, null
  br i1 %cmp318, label %if.then.319, label %if.end.331

if.then.319:                                      ; preds = %do.body.316
  br label %do.body.320

do.body.320:                                      ; preds = %if.then.319
  %181 = load %struct._object*, %struct._object** %_py_xdecref_tmp317, align 8
  store %struct._object* %181, %struct._object** %_py_decref_tmp321, align 8
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  %ob_refcnt322 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 0
  %183 = load i64, i64* %ob_refcnt322, align 8
  %dec323 = add i64 %183, -1
  store i64 %dec323, i64* %ob_refcnt322, align 8
  %cmp324 = icmp ne i64 %dec323, 0
  br i1 %cmp324, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %do.body.320
  br label %if.end.329

if.else.326:                                      ; preds = %do.body.320
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  %ob_type327 = getelementptr inbounds %struct._object, %struct._object* %184, i32 0, i32 1
  %185 = load %struct._typeobject*, %struct._typeobject** %ob_type327, align 8
  %tp_dealloc328 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %185, i32 0, i32 4
  %186 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc328, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp321, align 8
  call void %186(%struct._object* %187)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.325
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  br label %if.end.331

if.end.331:                                       ; preds = %do.end.330, %do.body.316
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.331
  br label %do.body.333

do.body.333:                                      ; preds = %do.end.332
  %188 = load %struct._object*, %struct._object** %quoting, align 8
  store %struct._object* %188, %struct._object** %_py_xdecref_tmp334, align 8
  %189 = load %struct._object*, %struct._object** %_py_xdecref_tmp334, align 8
  %cmp335 = icmp ne %struct._object* %189, null
  br i1 %cmp335, label %if.then.336, label %if.end.348

if.then.336:                                      ; preds = %do.body.333
  br label %do.body.337

do.body.337:                                      ; preds = %if.then.336
  %190 = load %struct._object*, %struct._object** %_py_xdecref_tmp334, align 8
  store %struct._object* %190, %struct._object** %_py_decref_tmp338, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  %ob_refcnt339 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 0
  %192 = load i64, i64* %ob_refcnt339, align 8
  %dec340 = add i64 %192, -1
  store i64 %dec340, i64* %ob_refcnt339, align 8
  %cmp341 = icmp ne i64 %dec340, 0
  br i1 %cmp341, label %if.then.342, label %if.else.343

if.then.342:                                      ; preds = %do.body.337
  br label %if.end.346

if.else.343:                                      ; preds = %do.body.337
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  %ob_type344 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 1
  %194 = load %struct._typeobject*, %struct._typeobject** %ob_type344, align 8
  %tp_dealloc345 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %194, i32 0, i32 4
  %195 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc345, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  call void %195(%struct._object* %196)
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.343, %if.then.342
  br label %do.end.347

do.end.347:                                       ; preds = %if.end.346
  br label %if.end.348

if.end.348:                                       ; preds = %do.end.347, %do.body.333
  br label %do.end.349

do.end.349:                                       ; preds = %if.end.348
  br label %do.body.350

do.body.350:                                      ; preds = %do.end.349
  %197 = load %struct._object*, %struct._object** %skipinitialspace, align 8
  store %struct._object* %197, %struct._object** %_py_xdecref_tmp351, align 8
  %198 = load %struct._object*, %struct._object** %_py_xdecref_tmp351, align 8
  %cmp352 = icmp ne %struct._object* %198, null
  br i1 %cmp352, label %if.then.353, label %if.end.365

if.then.353:                                      ; preds = %do.body.350
  br label %do.body.354

do.body.354:                                      ; preds = %if.then.353
  %199 = load %struct._object*, %struct._object** %_py_xdecref_tmp351, align 8
  store %struct._object* %199, %struct._object** %_py_decref_tmp355, align 8
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp355, align 8
  %ob_refcnt356 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 0
  %201 = load i64, i64* %ob_refcnt356, align 8
  %dec357 = add i64 %201, -1
  store i64 %dec357, i64* %ob_refcnt356, align 8
  %cmp358 = icmp ne i64 %dec357, 0
  br i1 %cmp358, label %if.then.359, label %if.else.360

if.then.359:                                      ; preds = %do.body.354
  br label %if.end.363

if.else.360:                                      ; preds = %do.body.354
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp355, align 8
  %ob_type361 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 1
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type361, align 8
  %tp_dealloc362 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i32 0, i32 4
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc362, align 8
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp355, align 8
  call void %204(%struct._object* %205)
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.360, %if.then.359
  br label %do.end.364

do.end.364:                                       ; preds = %if.end.363
  br label %if.end.365

if.end.365:                                       ; preds = %do.end.364, %do.body.350
  br label %do.end.366

do.end.366:                                       ; preds = %if.end.365
  br label %do.body.367

do.body.367:                                      ; preds = %do.end.366
  %206 = load %struct._object*, %struct._object** %strict, align 8
  store %struct._object* %206, %struct._object** %_py_xdecref_tmp368, align 8
  %207 = load %struct._object*, %struct._object** %_py_xdecref_tmp368, align 8
  %cmp369 = icmp ne %struct._object* %207, null
  br i1 %cmp369, label %if.then.370, label %if.end.382

if.then.370:                                      ; preds = %do.body.367
  br label %do.body.371

do.body.371:                                      ; preds = %if.then.370
  %208 = load %struct._object*, %struct._object** %_py_xdecref_tmp368, align 8
  store %struct._object* %208, %struct._object** %_py_decref_tmp372, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  %ob_refcnt373 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0
  %210 = load i64, i64* %ob_refcnt373, align 8
  %dec374 = add i64 %210, -1
  store i64 %dec374, i64* %ob_refcnt373, align 8
  %cmp375 = icmp ne i64 %dec374, 0
  br i1 %cmp375, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %do.body.371
  br label %if.end.380

if.else.377:                                      ; preds = %do.body.371
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  %ob_type378 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type378, align 8
  %tp_dealloc379 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc379, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  call void %213(%struct._object* %214)
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.377, %if.then.376
  br label %do.end.381

do.end.381:                                       ; preds = %if.end.380
  br label %if.end.382

if.end.382:                                       ; preds = %do.end.381, %do.body.367
  br label %do.end.383

do.end.383:                                       ; preds = %if.end.382
  %215 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %215, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.383, %do.end.45, %if.then.29, %if.then.6, %if.then
  %216 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %216
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_delimiter(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 2
  %1 = load i32, i32* %delimiter, align 4
  %call = call %struct._object* @get_nullchar_as_None(i32 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_escapechar(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 4
  %1 = load i32, i32* %escapechar, align 4
  %call = call %struct._object* @get_nullchar_as_None(i32 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_lineterminator(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 6
  %1 = load %struct._object*, %struct._object** %lineterminator, align 8
  %call = call %struct._object* @get_string(%struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_quotechar(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 3
  %1 = load i32, i32* %quotechar, align 4
  %call = call %struct._object* @get_nullchar_as_None(i32 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Dialect_get_quoting(%struct.DialectObj* %self) #0 {
entry:
  %self.addr = alloca %struct.DialectObj*, align 8
  store %struct.DialectObj* %self, %struct.DialectObj** %self.addr, align 8
  %0 = load %struct.DialectObj*, %struct.DialectObj** %self.addr, align 8
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %0, i32 0, i32 7
  %1 = load i32, i32* %quoting, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_nullchar_as_None(i32 %c) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %call = call %struct._object* @PyUnicode_FromOrdinal(i32 %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyUnicode_FromOrdinal(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_string(%struct._object* %str) #0 {
entry:
  %str.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %str, %struct._object** %str.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %str.addr, align 8
  store %struct._object* %0, %struct._object** %_py_xincref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %str.addr, align 8
  ret %struct._object* %4
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_dialect_from_registry(%struct._object* %name_obj) #0 {
entry:
  %name_obj.addr = alloca %struct._object*, align 8
  %dialect_obj = alloca %struct._object*, align 8
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dialects, align 8
  %2 = load %struct._object*, %struct._object** %name_obj.addr, align 8
  %call2 = call %struct._object* @PyDict_GetItem(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call2, %struct._object** %dialect_obj, align 8
  %3 = load %struct._object*, %struct._object** %dialect_obj, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %call5 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call6 = call i8* @PyModule_GetState(%struct._object* %call5)
  %4 = bitcast i8* %call6 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %error_obj, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %dialect_obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %8 = load %struct._object*, %struct._object** %dialect_obj, align 8
  ret %struct._object* %8
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal i32 @_set_char(i8* %name, i32* %target, %struct._object* %src, i32 %dflt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %target.addr = alloca i32*, align 8
  %src.addr = alloca %struct._object*, align 8
  %dflt.addr = alloca i32, align 4
  %len = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %target, i32** %target.addr, align 8
  store %struct._object* %src, %struct._object** %src.addr, align 8
  store i32 %dflt, i32* %dflt.addr, align 4
  %0 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4
  %2 = load i32*, i32** %target.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end.91

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %target.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp1 = icmp ne %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end.90

if.then.2:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* %9, i8* %12)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %13 = load %struct._object*, %struct._object** %src.addr, align 8
  %call6 = call i64 @PyUnicode_GetLength(%struct._object* %13)
  store i64 %call6, i64* %len, align 8
  %14 = load i64, i64* %len, align 8
  %cmp7 = icmp sgt i64 %14, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* %16)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %17 = load i64, i64* %len, align 8
  %cmp11 = icmp sgt i64 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.89

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** %src.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3
  %20 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %20, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp13 = icmp eq i32 %bf.clear, 1
  br i1 %cmp13, label %cond.true, label %cond.false.29

cond.true:                                        ; preds = %if.then.12
  %21 = load %struct._object*, %struct._object** %src.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*
  %state14 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3
  %23 = bitcast %struct.anon* %state14 to i32*
  %bf.load15 = load i32, i32* %23, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 5
  %bf.clear17 = and i32 %bf.lshr16, 1
  %tobool = icmp ne i32 %bf.clear17, 0
  br i1 %tobool, label %cond.true.18, label %cond.false.26

cond.true.18:                                     ; preds = %cond.true
  %24 = load %struct._object*, %struct._object** %src.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3
  %26 = bitcast %struct.anon* %state19 to i32*
  %bf.load20 = load i32, i32* %26, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 6
  %bf.clear22 = and i32 %bf.lshr21, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true.18
  %27 = load %struct._object*, %struct._object** %src.addr, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i64 1
  %29 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.18
  %30 = load %struct._object*, %struct._object** %src.addr, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyCompactUnicodeObject*
  %add.ptr25 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %31, i64 1
  %32 = bitcast %struct.PyCompactUnicodeObject* %add.ptr25 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i8* [ %29, %cond.true.24 ], [ %32, %cond.false ]
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.true
  %33 = load %struct._object*, %struct._object** %src.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %34, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %35 = load i8*, i8** %any, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %35, %cond.false.26 ]
  %arrayidx = getelementptr i8, i8* %cond28, i64 0
  %36 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %36 to i32
  br label %cond.end.87

cond.false.29:                                    ; preds = %if.then.12
  %37 = load %struct._object*, %struct._object** %src.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3
  %39 = bitcast %struct.anon* %state30 to i32*
  %bf.load31 = load i32, i32* %39, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 2
  %bf.clear33 = and i32 %bf.lshr32, 7
  %cmp34 = icmp eq i32 %bf.clear33, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.61

cond.true.36:                                     ; preds = %cond.false.29
  %40 = load %struct._object*, %struct._object** %src.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %state37 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 3
  %42 = bitcast %struct.anon* %state37 to i32*
  %bf.load38 = load i32, i32* %42, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 5
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.54

cond.true.42:                                     ; preds = %cond.true.36
  %43 = load %struct._object*, %struct._object** %src.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyASCIIObject*
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i32 0, i32 3
  %45 = bitcast %struct.anon* %state43 to i32*
  %bf.load44 = load i32, i32* %45, align 4
  %bf.lshr45 = lshr i32 %bf.load44, 6
  %bf.clear46 = and i32 %bf.lshr45, 1
  %tobool47 = icmp ne i32 %bf.clear46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.true.42
  %46 = load %struct._object*, %struct._object** %src.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*
  %add.ptr49 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i64 1
  %48 = bitcast %struct.PyASCIIObject* %add.ptr49 to i8*
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.true.42
  %49 = load %struct._object*, %struct._object** %src.addr, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyCompactUnicodeObject*
  %add.ptr51 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %50, i64 1
  %51 = bitcast %struct.PyCompactUnicodeObject* %add.ptr51 to i8*
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi i8* [ %48, %cond.true.48 ], [ %51, %cond.false.50 ]
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.true.36
  %52 = load %struct._object*, %struct._object** %src.addr, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyUnicodeObject*
  %data55 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %53, i32 0, i32 1
  %any56 = bitcast %union.anon* %data55 to i8**
  %54 = load i8*, i8** %any56, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.end.52
  %cond58 = phi i8* [ %cond53, %cond.end.52 ], [ %54, %cond.false.54 ]
  %55 = bitcast i8* %cond58 to i16*
  %arrayidx59 = getelementptr i16, i16* %55, i64 0
  %56 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %56 to i32
  br label %cond.end.85

cond.false.61:                                    ; preds = %cond.false.29
  %57 = load %struct._object*, %struct._object** %src.addr, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %58, i32 0, i32 3
  %59 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %59, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 5
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.79

cond.true.67:                                     ; preds = %cond.false.61
  %60 = load %struct._object*, %struct._object** %src.addr, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %61, i32 0, i32 3
  %62 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %62, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 6
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.true.67
  %63 = load %struct._object*, %struct._object** %src.addr, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyASCIIObject*
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %64, i64 1
  %65 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.true.67
  %66 = load %struct._object*, %struct._object** %src.addr, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyCompactUnicodeObject*
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %67, i64 1
  %68 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %65, %cond.true.73 ], [ %68, %cond.false.75 ]
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.61
  %69 = load %struct._object*, %struct._object** %src.addr, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyUnicodeObject*
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %70, i32 0, i32 1
  %any81 = bitcast %union.anon* %data80 to i8**
  %71 = load i8*, i8** %any81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %71, %cond.false.79 ]
  %72 = bitcast i8* %cond83 to i32*
  %arrayidx84 = getelementptr i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.82, %cond.end.57
  %cond86 = phi i32 [ %conv60, %cond.end.57 ], [ %73, %cond.end.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.27
  %cond88 = phi i32 [ %conv, %cond.end.27 ], [ %cond86, %cond.end.85 ]
  %74 = load i32*, i32** %target.addr, align 8
  store i32 %cond88, i32* %74, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.87, %if.end.10
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.else
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.then.8, %if.then.4
  %75 = load i32, i32* %retval
  ret i32 %75
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
  store i8* %name, i8** %name.addr, align 8
  store i32* %target, i32** %target.addr, align 8
  store %struct._object* %src, %struct._object** %src.addr, align 8
  store i32 %dflt, i32* %dflt.addr, align 4
  %0 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4
  %2 = load i32*, i32** %target.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %src.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %3)
  store i32 %call, i32* %b, align 4
  %4 = load i32, i32* %b, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %5 = load i32, i32* %b, align 4
  %6 = load i32*, i32** %target.addr, align 8
  store i32 %5, i32* %6, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %7 = load i32, i32* %retval
  ret i32 %7
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
  store i8* %name, i8** %name.addr, align 8
  store %struct._object** %target, %struct._object*** %target.addr, align 8
  store %struct._object* %src, %struct._object** %src.addr, align 8
  store i8* %dflt, i8** %dflt.addr, align 8
  %0 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dflt.addr, align 8
  %2 = load i8*, i8** %dflt.addr, align 8
  %call = call i64 @strlen(i8* %2) #3
  %call1 = call %struct._object* @PyUnicode_DecodeASCII(i8* %1, i64 %call, i8* null)
  %3 = load %struct._object**, %struct._object*** %target.addr, align 8
  store %struct._object* %call1, %struct._object** %3, align 8
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp2 = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object**, %struct._object*** %target.addr, align 8
  store %struct._object* null, %struct._object** %5, align 8
  br label %if.end.24

if.else.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 268435456
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.else.8, label %if.then.6

if.then.6:                                        ; preds = %if.else.4
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* %10)
  store i32 -1, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %11 = load %struct._object*, %struct._object** %src.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %13, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.8
  br label %cond.end

cond.false:                                       ; preds = %if.else.8
  %14 = load %struct._object*, %struct._object** %src.addr, align 8
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %cmp10 = icmp eq i32 %cond, -1
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._object**, %struct._object*** %target.addr, align 8
  %16 = load %struct._object*, %struct._object** %15, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %do.body
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.19

if.else.17:                                       ; preds = %do.body.14
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt22, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt22, align 8
  %27 = load %struct._object*, %struct._object** %src.addr, align 8
  %28 = load %struct._object**, %struct._object*** %target.addr, align 8
  store %struct._object* %27, %struct._object** %28, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.3
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.11, %if.then.6
  %29 = load i32, i32* %retval
  ret i32 %29
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
  store i8* %name, i8** %name.addr, align 8
  store i32* %target, i32** %target.addr, align 8
  store %struct._object* %src, %struct._object** %src.addr, align 8
  store i32 %dflt, i32* %dflt.addr, align 4
  %0 = load %struct._object*, %struct._object** %src.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dflt.addr, align 4
  %2 = load i32*, i32** %target.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end.13

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %src.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %4, @PyLong_Type
  br i1 %cmp1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* %6)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %src.addr, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %7)
  store i64 %call3, i64* %value, align 8
  %8 = load i64, i64* %value, align 8
  %cmp4 = icmp eq i64 %8, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %value, align 8
  %cmp8 = icmp sgt i64 %9, 2147483647
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %10 = load i64, i64* %value, align 8
  %cmp9 = icmp slt i64 %10, -2147483648
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %12)
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %13 = load i64, i64* %value, align 8
  %conv = trunc i64 %13 to i32
  %14 = load i32*, i32** %target.addr, align 8
  store i32 %conv, i32* %14, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.10, %if.then.6, %if.then.2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @dialect_check_quoting(i32 %quoting) #0 {
entry:
  %retval = alloca i32, align 4
  %quoting.addr = alloca i32, align 4
  %qs = alloca %struct.StyleDesc*, align 8
  store i32 %quoting, i32* %quoting.addr, align 4
  store %struct.StyleDesc* getelementptr inbounds ([5 x %struct.StyleDesc], [5 x %struct.StyleDesc]* @quote_styles, i32 0, i32 0), %struct.StyleDesc** %qs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8
  %name = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8
  %style = getelementptr inbounds %struct.StyleDesc, %struct.StyleDesc* %2, i32 0, i32 0
  %3 = load i32, i32* %style, align 4
  %4 = load i32, i32* %quoting.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.StyleDesc*, %struct.StyleDesc** %qs, align 8
  %incdec.ptr = getelementptr %struct.StyleDesc, %struct.StyleDesc* %5, i32 1
  store %struct.StyleDesc* %incdec.ptr, %struct.StyleDesc** %qs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyUnicode_GetLength(%struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @Reader_dealloc(%struct.ReaderObj* %self) #0 {
entry:
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %1 = bitcast %struct.ReaderObj* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %2, i32 0, i32 2
  %3 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %4 = bitcast %struct.DialectObj* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %input_iter, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp7, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp11, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %18, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %21(%struct._object* %22)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %23 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %23, i32 0, i32 3
  %24 = load %struct._object*, %struct._object** %fields, align 8
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp24, align 8
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %25, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp28, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %28, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %31(%struct._object* %32)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %33 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %33, i32 0, i32 5
  %34 = load i32*, i32** %field, align 8
  %cmp40 = icmp ne i32* %34, null
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end.39
  %35 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field42 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %35, i32 0, i32 5
  %36 = load i32*, i32** %field42, align 8
  %37 = bitcast i32* %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end.39
  %38 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %39 = bitcast %struct.ReaderObj* %38 to i8*
  call void @PyObject_GC_Del(i8* %39)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Reader_traverse(%struct.ReaderObj* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %tobool = icmp ne %struct.DialectObj* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 2
  %4 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8
  %5 = bitcast %struct.DialectObj* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %input_iter, align 8
  %tobool6 = icmp ne %struct._object* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter9 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %input_iter9, align 8
  %14 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %11(%struct._object* %13, i8* %14)
  store i32 %call10, i32* %vret8, align 4
  %15 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %16 = load i32, i32* %vret8, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %17 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %17, i32 0, i32 3
  %18 = load %struct._object*, %struct._object** %fields, align 8
  %tobool17 = icmp ne %struct._object* %18, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %19 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields20 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %fields20, align 8
  %22 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %19(%struct._object* %21, i8* %22)
  store i32 %call21, i32* %vret19, align 4
  %23 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %24 = load i32, i32* %vret19, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @Reader_clear(%struct.ReaderObj* %self) #0 {
entry:
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %2 = bitcast %struct.DialectObj* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %4, i32 0, i32 2
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %12 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %input_iter, align 8
  store %struct._object* %13, %struct._object** %_py_tmp8, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter11 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 1
  store %struct._object* null, %struct._object** %input_iter11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %16 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %18, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %23 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %23, i32 0, i32 3
  %24 = load %struct._object*, %struct._object** %fields, align 8
  store %struct._object* %24, %struct._object** %_py_tmp26, align 8
  %25 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %25, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %26 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields29 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %26, i32 0, i32 3
  store %struct._object* null, %struct._object** %fields29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %27 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp31, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %29, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %32(%struct._object* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  ret i32 0
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp129 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  store %struct._object* null, %struct._object** %fields, align 8
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call = call i32 @parse_reset(%struct.ReaderObj* %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %input_iter, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %lineobj, align 8
  %3 = load %struct._object*, %struct._object** %lineobj, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %do.body
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.3
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %4, i32 0, i32 7
  %5 = load i64, i64* %field_len, align 8
  %cmp5 = icmp ne i64 %5, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %6, i32 0, i32 4
  %7 = load i32, i32* %state, align 4
  %cmp6 = icmp eq i32 %7, 4
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 2
  %9 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %strict = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %9, i32 0, i32 8
  %10 = load i32, i32* %strict, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %call10 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call11 = call i8* @PyModule_GetState(%struct._object* %call10)
  %11 = bitcast i8* %call11 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %11, i32 0, i32 0
  %12 = load %struct._object*, %struct._object** %error_obj, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call12 = call i32 @parse_save_field(%struct.ReaderObj* %13)
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  br label %do.end.148

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false, %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %lineobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 268435456
  %cmp19 = icmp ne i64 %and, 0
  br i1 %cmp19, label %if.end.32, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %call21 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call22 = call i8* @PyModule_GetState(%struct._object* %call21)
  %17 = bitcast i8* %call22 to %struct._csvstate*
  %error_obj23 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %17, i32 0, i32 0
  %18 = load %struct._object*, %struct._object** %error_obj23, align 8
  %19 = load %struct._object*, %struct._object** %lineobj, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0), i8* %21)
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.20
  %22 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.31

if.else.29:                                       ; preds = %do.body.26
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.18
  %29 = load %struct._object*, %struct._object** %lineobj, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %state33 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3
  %31 = bitcast %struct.anon* %state33 to i32*
  %bf.load = load i32, i32* %31, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool34 = icmp ne i32 %bf.clear, 0
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %32 = load %struct._object*, %struct._object** %lineobj, align 8
  %call35 = call i32 @_PyUnicode_Ready(%struct._object* %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call35, %cond.false ]
  %cmp36 = icmp eq i32 %cond, -1
  br i1 %cmp36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %cond.end
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %33 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp39, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %35, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %38(%struct._object* %39)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %cond.end
  %40 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %line_num = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %40, i32 0, i32 9
  %41 = load i64, i64* %line_num, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %line_num, align 8
  %42 = load %struct._object*, %struct._object** %lineobj, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %state50 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i32 0, i32 3
  %44 = bitcast %struct.anon* %state50 to i32*
  %bf.load51 = load i32, i32* %44, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 2
  %bf.clear53 = and i32 %bf.lshr52, 7
  store i32 %bf.clear53, i32* %kind, align 4
  %45 = load %struct._object*, %struct._object** %lineobj, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyASCIIObject*
  %state54 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %46, i32 0, i32 3
  %47 = bitcast %struct.anon* %state54 to i32*
  %bf.load55 = load i32, i32* %47, align 4
  %bf.lshr56 = lshr i32 %bf.load55, 5
  %bf.clear57 = and i32 %bf.lshr56, 1
  %tobool58 = icmp ne i32 %bf.clear57, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.70

cond.true.59:                                     ; preds = %if.end.49
  %48 = load %struct._object*, %struct._object** %lineobj, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyASCIIObject*
  %state60 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %49, i32 0, i32 3
  %50 = bitcast %struct.anon* %state60 to i32*
  %bf.load61 = load i32, i32* %50, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 6
  %bf.clear63 = and i32 %bf.lshr62, 1
  %tobool64 = icmp ne i32 %bf.clear63, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.true.59
  %51 = load %struct._object*, %struct._object** %lineobj, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %52, i64 1
  %53 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.68

cond.false.66:                                    ; preds = %cond.true.59
  %54 = load %struct._object*, %struct._object** %lineobj, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyCompactUnicodeObject*
  %add.ptr67 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %55, i64 1
  %56 = bitcast %struct.PyCompactUnicodeObject* %add.ptr67 to i8*
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.66, %cond.true.65
  %cond69 = phi i8* [ %53, %cond.true.65 ], [ %56, %cond.false.66 ]
  br label %cond.end.72

cond.false.70:                                    ; preds = %if.end.49
  %57 = load %struct._object*, %struct._object** %lineobj, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyUnicodeObject*
  %data71 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %58, i32 0, i32 1
  %any = bitcast %union.anon* %data71 to i8**
  %59 = load i8*, i8** %any, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.end.68
  %cond73 = phi i8* [ %cond69, %cond.end.68 ], [ %59, %cond.false.70 ]
  store i8* %cond73, i8** %data, align 8
  store i64 0, i64* %pos, align 8
  %60 = load %struct._object*, %struct._object** %lineobj, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %61, i32 0, i32 1
  %62 = load i64, i64* %length, align 8
  store i64 %62, i64* %linelen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.126, %cond.end.72
  %63 = load i64, i64* %linelen, align 8
  %dec74 = add i64 %63, -1
  store i64 %dec74, i64* %linelen, align 8
  %tobool75 = icmp ne i64 %63, 0
  br i1 %tobool75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = load i32, i32* %kind, align 4
  %cmp76 = icmp eq i32 %64, 1
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %while.body
  %65 = load i64, i64* %pos, align 8
  %66 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %66, i64 %65
  %67 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %67 to i32
  br label %cond.end.88

cond.false.78:                                    ; preds = %while.body
  %68 = load i32, i32* %kind, align 4
  %cmp79 = icmp eq i32 %68, 2
  br i1 %cmp79, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %cond.false.78
  %69 = load i64, i64* %pos, align 8
  %70 = load i8*, i8** %data, align 8
  %71 = bitcast i8* %70 to i16*
  %arrayidx82 = getelementptr i16, i16* %71, i64 %69
  %72 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %72 to i32
  br label %cond.end.86

cond.false.84:                                    ; preds = %cond.false.78
  %73 = load i64, i64* %pos, align 8
  %74 = load i8*, i8** %data, align 8
  %75 = bitcast i8* %74 to i32*
  %arrayidx85 = getelementptr i32, i32* %75, i64 %73
  %76 = load i32, i32* %arrayidx85, align 4
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.81
  %cond87 = phi i32 [ %conv83, %cond.true.81 ], [ %76, %cond.false.84 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.77
  %cond89 = phi i32 [ %conv, %cond.true.77 ], [ %cond87, %cond.end.86 ]
  store i32 %cond89, i32* %c, align 4
  %77 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %77, 0
  br i1 %cmp90, label %if.then.92, label %if.end.109

if.then.92:                                       ; preds = %cond.end.88
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %78 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp94, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %80, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %83(%struct._object* %84)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  %call105 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call106 = call i8* @PyModule_GetState(%struct._object* %call105)
  %85 = bitcast i8* %call106 to %struct._csvstate*
  %error_obj107 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %85, i32 0, i32 0
  %86 = load %struct._object*, %struct._object** %error_obj107, align 8
  %call108 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0))
  br label %err

if.end.109:                                       ; preds = %cond.end.88
  %87 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %88 = load i32, i32* %c, align 4
  %call110 = call i32 @parse_process_char(%struct.ReaderObj* %87, i32 %88)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.126

if.then.113:                                      ; preds = %if.end.109
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %89 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp115, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %91, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.114
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %94(%struct._object* %95)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %err

if.end.126:                                       ; preds = %if.end.109
  %96 = load i64, i64* %pos, align 8
  %inc127 = add i64 %96, 1
  store i64 %inc127, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.128

do.body.128:                                      ; preds = %while.end
  %97 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp129, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt130, align 8
  %dec131 = add i64 %99, -1
  store i64 %dec131, i64* %ob_refcnt130, align 8
  %cmp132 = icmp ne i64 %dec131, 0
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.128
  br label %if.end.138

if.else.135:                                      ; preds = %do.body.128
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  %ob_type136 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type136, align 8
  %tp_dealloc137 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc137, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp129, align 8
  call void %102(%struct._object* %103)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %104 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call140 = call i32 @parse_process_char(%struct.ReaderObj* %104, i32 0)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %do.end.139
  br label %err

if.end.144:                                       ; preds = %do.end.139
  br label %do.cond

do.cond:                                          ; preds = %if.end.144
  %105 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state145 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %105, i32 0, i32 4
  %106 = load i32, i32* %state145, align 4
  %cmp146 = icmp ne i32 %106, 0
  br i1 %cmp146, label %do.body, label %do.end.148

do.end.148:                                       ; preds = %do.cond, %if.then.14
  %107 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields149 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %107, i32 0, i32 3
  %108 = load %struct._object*, %struct._object** %fields149, align 8
  store %struct._object* %108, %struct._object** %fields, align 8
  %109 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields150 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %109, i32 0, i32 3
  store %struct._object* null, %struct._object** %fields150, align 8
  br label %err

err:                                              ; preds = %do.end.148, %if.then.143, %do.end.125, %do.end.104
  %110 = load %struct._object*, %struct._object** %fields, align 8
  store %struct._object* %110, %struct._object** %retval
  br label %return

return:                                           ; preds = %err, %do.end.48, %do.end, %if.end.17, %if.then
  %111 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %111
}

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyMem_Free(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_reset(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %fields, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %call = call %struct._object* @PyList_New(i64 0)
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields6 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 3
  store %struct._object* %call, %struct._object** %fields6, align 8
  %11 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %fields7, align 8
  %cmp8 = icmp eq %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.5
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.end.5
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %13, i32 0, i32 7
  store i64 0, i64* %field_len, align 8
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 4
  store i32 0, i32* %state, align 4
  %15 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %15, i32 0, i32 8
  store i32 0, i32* %numeric_field, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_save_field(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %field = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 5
  %1 = load i32*, i32** %field1, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 7
  %4 = load i64, i64* %field_len, align 8
  %call = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %2, i64 %4)
  store %struct._object* %call, %struct._object** %field, align 8
  %5 = load %struct._object*, %struct._object** %field, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len2 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %6, i32 0, i32 7
  store i64 0, i64* %field_len2, align 8
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %7, i32 0, i32 8
  %8 = load i32, i32* %numeric_field, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %numeric_field4 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %9, i32 0, i32 8
  store i32 0, i32* %numeric_field4, align 4
  %10 = load %struct._object*, %struct._object** %field, align 8
  %call5 = call %struct._object* @PyNumber_Float(%struct._object* %10)
  store %struct._object* %call5, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %11 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %18 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp10 = icmp eq %struct._object* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %do.end
  %19 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %19, %struct._object** %field, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %fields, align 8
  %22 = load %struct._object*, %struct._object** %field, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %21, %struct._object* %22)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %if.end.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %23 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp19, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %25, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.17
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.17
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %28(%struct._object* %29)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.13
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %30 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp32, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %32, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.30
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.30
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %35(%struct._object* %36)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.41, %do.end.28, %if.then.11, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_process_char(%struct.ReaderObj* %self, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %c.addr = alloca i32, align 4
  %dialect = alloca %struct.DialectObj*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8
  store %struct.DialectObj* %1, %struct.DialectObj** %dialect, align 8
  %2 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %2, i32 0, i32 4
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.55
    i32 8, label %sw.bb.74
    i32 3, label %sw.bb.78
    i32 4, label %sw.bb.114
    i32 5, label %sw.bb.143
    i32 6, label %sw.bb.152
    i32 7, label %sw.bb.205
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %5 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %5, 10
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %6 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %6, 13
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.else
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state5 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %7, i32 0, i32 4
  store i32 7, i32* %state5, align 4
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 4
  store i32 1, i32* %state7, align 4
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %if.end.6
  %9 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %9, 10
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %sw.bb.8
  %10 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp eq i32 %10, 13
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %11 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %sw.bb.8
  %12 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call = call i32 @parse_save_field(%struct.ReaderObj* %12)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.14
  %13 = load i32, i32* %c.addr, align 4
  %cmp18 = icmp eq i32 %13, 0
  %cond = select i1 %cmp18, i32 0, i32 7
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state19 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 4
  store i32 %cond, i32* %state19, align 4
  br label %if.end.54

if.else.20:                                       ; preds = %lor.lhs.false.12
  %15 = load i32, i32* %c.addr, align 4
  %16 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %16, i32 0, i32 3
  %17 = load i32, i32* %quotechar, align 4
  %cmp21 = icmp eq i32 %15, %17
  br i1 %cmp21, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.20
  %18 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %18, i32 0, i32 7
  %19 = load i32, i32* %quoting, align 4
  %cmp22 = icmp ne i32 %19, 3
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %land.lhs.true
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state24 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %20, i32 0, i32 4
  store i32 4, i32* %state24, align 4
  br label %if.end.53

if.else.25:                                       ; preds = %land.lhs.true, %if.else.20
  %21 = load i32, i32* %c.addr, align 4
  %22 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %22, i32 0, i32 4
  %23 = load i32, i32* %escapechar, align 4
  %cmp26 = icmp eq i32 %21, %23
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.25
  %24 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state28 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %24, i32 0, i32 4
  store i32 2, i32* %state28, align 4
  br label %if.end.52

if.else.29:                                       ; preds = %if.else.25
  %25 = load i32, i32* %c.addr, align 4
  %cmp30 = icmp eq i32 %25, 32
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.33

land.lhs.true.31:                                 ; preds = %if.else.29
  %26 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %skipinitialspace = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %26, i32 0, i32 5
  %27 = load i32, i32* %skipinitialspace, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.31
  br label %if.end.51

if.else.33:                                       ; preds = %land.lhs.true.31, %if.else.29
  %28 = load i32, i32* %c.addr, align 4
  %29 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %29, i32 0, i32 2
  %30 = load i32, i32* %delimiter, align 4
  %cmp34 = icmp eq i32 %28, %30
  br i1 %cmp34, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.33
  %31 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call36 = call i32 @parse_save_field(%struct.ReaderObj* %31)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.35
  br label %if.end.50

if.else.40:                                       ; preds = %if.else.33
  %32 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting41 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %32, i32 0, i32 7
  %33 = load i32, i32* %quoting41, align 4
  %cmp42 = icmp eq i32 %33, 2
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.40
  %34 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %numeric_field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %34, i32 0, i32 8
  store i32 1, i32* %numeric_field, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  %35 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %36 = load i32, i32* %c.addr, align 4
  %call45 = call i32 @parse_add_char(%struct.ReaderObj* %35, i32 %36)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %37 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state49 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %37, i32 0, i32 4
  store i32 3, i32* %state49, align 4
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
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry
  %38 = load i32, i32* %c.addr, align 4
  %cmp56 = icmp eq i32 %38, 10
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %sw.bb.55
  %39 = load i32, i32* %c.addr, align 4
  %cmp58 = icmp eq i32 %39, 13
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %lor.lhs.false.57, %sw.bb.55
  %40 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %41 = load i32, i32* %c.addr, align 4
  %call60 = call i32 @parse_add_char(%struct.ReaderObj* %40, i32 %41)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.59
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.59
  %42 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state64 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %42, i32 0, i32 4
  store i32 8, i32* %state64, align 4
  br label %sw.epilog

if.end.65:                                        ; preds = %lor.lhs.false.57
  %43 = load i32, i32* %c.addr, align 4
  %cmp66 = icmp eq i32 %43, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  store i32 10, i32* %c.addr, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %44 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %45 = load i32, i32* %c.addr, align 4
  %call69 = call i32 @parse_add_char(%struct.ReaderObj* %44, i32 %45)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.68
  %46 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state73 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %46, i32 0, i32 4
  store i32 3, i32* %state73, align 4
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %47 = load i32, i32* %c.addr, align 4
  %cmp75 = icmp eq i32 %47, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.74
  br label %sw.epilog

if.end.77:                                        ; preds = %sw.bb.74
  br label %sw.bb.78

sw.bb.78:                                         ; preds = %entry, %if.end.77
  %48 = load i32, i32* %c.addr, align 4
  %cmp79 = icmp eq i32 %48, 10
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %sw.bb.78
  %49 = load i32, i32* %c.addr, align 4
  %cmp81 = icmp eq i32 %49, 13
  br i1 %cmp81, label %if.then.84, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.80
  %50 = load i32, i32* %c.addr, align 4
  %cmp83 = icmp eq i32 %50, 0
  br i1 %cmp83, label %if.then.84, label %if.else.92

if.then.84:                                       ; preds = %lor.lhs.false.82, %lor.lhs.false.80, %sw.bb.78
  %51 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call85 = call i32 @parse_save_field(%struct.ReaderObj* %51)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.then.84
  %52 = load i32, i32* %c.addr, align 4
  %cmp89 = icmp eq i32 %52, 0
  %cond90 = select i1 %cmp89, i32 0, i32 7
  %53 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state91 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %53, i32 0, i32 4
  store i32 %cond90, i32* %state91, align 4
  br label %if.end.113

if.else.92:                                       ; preds = %lor.lhs.false.82
  %54 = load i32, i32* %c.addr, align 4
  %55 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar93 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %55, i32 0, i32 4
  %56 = load i32, i32* %escapechar93, align 4
  %cmp94 = icmp eq i32 %54, %56
  br i1 %cmp94, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.else.92
  %57 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state96 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %57, i32 0, i32 4
  store i32 2, i32* %state96, align 4
  br label %if.end.112

if.else.97:                                       ; preds = %if.else.92
  %58 = load i32, i32* %c.addr, align 4
  %59 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter98 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %59, i32 0, i32 2
  %60 = load i32, i32* %delimiter98, align 4
  %cmp99 = icmp eq i32 %58, %60
  br i1 %cmp99, label %if.then.100, label %if.else.106

if.then.100:                                      ; preds = %if.else.97
  %61 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call101 = call i32 @parse_save_field(%struct.ReaderObj* %61)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.100
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.100
  %62 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state105 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %62, i32 0, i32 4
  store i32 1, i32* %state105, align 4
  br label %if.end.111

if.else.106:                                      ; preds = %if.else.97
  %63 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %64 = load i32, i32* %c.addr, align 4
  %call107 = call i32 @parse_add_char(%struct.ReaderObj* %63, i32 %64)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.else.106
  store i32 -1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.else.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.104
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.95
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.88
  br label %sw.epilog

sw.bb.114:                                        ; preds = %entry
  %65 = load i32, i32* %c.addr, align 4
  %cmp115 = icmp eq i32 %65, 0
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %sw.bb.114
  br label %if.end.142

if.else.117:                                      ; preds = %sw.bb.114
  %66 = load i32, i32* %c.addr, align 4
  %67 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar118 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %67, i32 0, i32 4
  %68 = load i32, i32* %escapechar118, align 4
  %cmp119 = icmp eq i32 %66, %68
  br i1 %cmp119, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %if.else.117
  %69 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state121 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %69, i32 0, i32 4
  store i32 5, i32* %state121, align 4
  br label %if.end.141

if.else.122:                                      ; preds = %if.else.117
  %70 = load i32, i32* %c.addr, align 4
  %71 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar123 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %71, i32 0, i32 3
  %72 = load i32, i32* %quotechar123, align 4
  %cmp124 = icmp eq i32 %70, %72
  br i1 %cmp124, label %land.lhs.true.125, label %if.else.135

land.lhs.true.125:                                ; preds = %if.else.122
  %73 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting126 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %73, i32 0, i32 7
  %74 = load i32, i32* %quoting126, align 4
  %cmp127 = icmp ne i32 %74, 3
  br i1 %cmp127, label %if.then.128, label %if.else.135

if.then.128:                                      ; preds = %land.lhs.true.125
  %75 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %doublequote = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %75, i32 0, i32 1
  %76 = load i32, i32* %doublequote, align 4
  %tobool129 = icmp ne i32 %76, 0
  br i1 %tobool129, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %if.then.128
  %77 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state131 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %77, i32 0, i32 4
  store i32 6, i32* %state131, align 4
  br label %if.end.134

if.else.132:                                      ; preds = %if.then.128
  %78 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state133 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %78, i32 0, i32 4
  store i32 3, i32* %state133, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.130
  br label %if.end.140

if.else.135:                                      ; preds = %land.lhs.true.125, %if.else.122
  %79 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %80 = load i32, i32* %c.addr, align 4
  %call136 = call i32 @parse_add_char(%struct.ReaderObj* %79, i32 %80)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.else.135
  store i32 -1, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.else.135
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.134
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.120
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.116
  br label %sw.epilog

sw.bb.143:                                        ; preds = %entry
  %81 = load i32, i32* %c.addr, align 4
  %cmp144 = icmp eq i32 %81, 0
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %sw.bb.143
  store i32 10, i32* %c.addr, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %sw.bb.143
  %82 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %83 = load i32, i32* %c.addr, align 4
  %call147 = call i32 @parse_add_char(%struct.ReaderObj* %82, i32 %83)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.146
  store i32 -1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.146
  %84 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state151 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %84, i32 0, i32 4
  store i32 4, i32* %state151, align 4
  br label %sw.epilog

sw.bb.152:                                        ; preds = %entry
  %85 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting153 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %85, i32 0, i32 7
  %86 = load i32, i32* %quoting153, align 4
  %cmp154 = icmp ne i32 %86, 3
  br i1 %cmp154, label %land.lhs.true.155, label %if.else.164

land.lhs.true.155:                                ; preds = %sw.bb.152
  %87 = load i32, i32* %c.addr, align 4
  %88 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar156 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %88, i32 0, i32 3
  %89 = load i32, i32* %quotechar156, align 4
  %cmp157 = icmp eq i32 %87, %89
  br i1 %cmp157, label %if.then.158, label %if.else.164

if.then.158:                                      ; preds = %land.lhs.true.155
  %90 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %91 = load i32, i32* %c.addr, align 4
  %call159 = call i32 @parse_add_char(%struct.ReaderObj* %90, i32 %91)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.158
  store i32 -1, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.then.158
  %92 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state163 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %92, i32 0, i32 4
  store i32 4, i32* %state163, align 4
  br label %if.end.204

if.else.164:                                      ; preds = %land.lhs.true.155, %sw.bb.152
  %93 = load i32, i32* %c.addr, align 4
  %94 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter165 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %94, i32 0, i32 2
  %95 = load i32, i32* %delimiter165, align 4
  %cmp166 = icmp eq i32 %93, %95
  br i1 %cmp166, label %if.then.167, label %if.else.173

if.then.167:                                      ; preds = %if.else.164
  %96 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call168 = call i32 @parse_save_field(%struct.ReaderObj* %96)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.then.167
  store i32 -1, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.then.167
  %97 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state172 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %97, i32 0, i32 4
  store i32 1, i32* %state172, align 4
  br label %if.end.203

if.else.173:                                      ; preds = %if.else.164
  %98 = load i32, i32* %c.addr, align 4
  %cmp174 = icmp eq i32 %98, 10
  br i1 %cmp174, label %if.then.179, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.else.173
  %99 = load i32, i32* %c.addr, align 4
  %cmp176 = icmp eq i32 %99, 13
  br i1 %cmp176, label %if.then.179, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.175
  %100 = load i32, i32* %c.addr, align 4
  %cmp178 = icmp eq i32 %100, 0
  br i1 %cmp178, label %if.then.179, label %if.else.187

if.then.179:                                      ; preds = %lor.lhs.false.177, %lor.lhs.false.175, %if.else.173
  %101 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call180 = call i32 @parse_save_field(%struct.ReaderObj* %101)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.179
  store i32 -1, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.then.179
  %102 = load i32, i32* %c.addr, align 4
  %cmp184 = icmp eq i32 %102, 0
  %cond185 = select i1 %cmp184, i32 0, i32 7
  %103 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state186 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %103, i32 0, i32 4
  store i32 %cond185, i32* %state186, align 4
  br label %if.end.202

if.else.187:                                      ; preds = %lor.lhs.false.177
  %104 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %strict = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %104, i32 0, i32 8
  %105 = load i32, i32* %strict, align 4
  %tobool188 = icmp ne i32 %105, 0
  br i1 %tobool188, label %if.else.195, label %if.then.189

if.then.189:                                      ; preds = %if.else.187
  %106 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %107 = load i32, i32* %c.addr, align 4
  %call190 = call i32 @parse_add_char(%struct.ReaderObj* %106, i32 %107)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.then.189
  store i32 -1, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.then.189
  %108 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state194 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %108, i32 0, i32 4
  store i32 3, i32* %state194, align 4
  br label %if.end.201

if.else.195:                                      ; preds = %if.else.187
  %call196 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call197 = call i8* @PyModule_GetState(%struct._object* %call196)
  %109 = bitcast i8* %call197 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %109, i32 0, i32 0
  %110 = load %struct._object*, %struct._object** %error_obj, align 8
  %111 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter198 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %111, i32 0, i32 2
  %112 = load i32, i32* %delimiter198, align 4
  %113 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar199 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %113, i32 0, i32 3
  %114 = load i32, i32* %quotechar199, align 4
  %call200 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %112, i32 %114)
  store i32 -1, i32* %retval
  br label %return

if.end.201:                                       ; preds = %if.end.193
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.183
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.171
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.162
  br label %sw.epilog

sw.bb.205:                                        ; preds = %entry
  %115 = load i32, i32* %c.addr, align 4
  %cmp206 = icmp eq i32 %115, 10
  br i1 %cmp206, label %if.then.209, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %sw.bb.205
  %116 = load i32, i32* %c.addr, align 4
  %cmp208 = icmp eq i32 %116, 13
  br i1 %cmp208, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %lor.lhs.false.207, %sw.bb.205
  br label %if.end.220

if.else.210:                                      ; preds = %lor.lhs.false.207
  %117 = load i32, i32* %c.addr, align 4
  %cmp211 = icmp eq i32 %117, 0
  br i1 %cmp211, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %if.else.210
  %118 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %state213 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %118, i32 0, i32 4
  store i32 0, i32* %state213, align 4
  br label %if.end.219

if.else.214:                                      ; preds = %if.else.210
  %call215 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call216 = call i8* @PyModule_GetState(%struct._object* %call215)
  %119 = bitcast i8* %call216 to %struct._csvstate*
  %error_obj217 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %119, i32 0, i32 0
  %120 = load %struct._object*, %struct._object** %error_obj217, align 8
  %call218 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %120, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.33, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.then.212
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.209
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.220, %if.end.204, %if.end.150, %if.end.142, %if.end.113, %if.then.76, %if.end.72, %if.end.63, %if.end.54, %if.then.4, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.214, %if.else.195, %if.then.192, %if.then.182, %if.then.170, %if.then.161, %if.then.149, %if.then.138, %if.then.109, %if.then.103, %if.then.87, %if.then.71, %if.then.62, %if.then.47, %if.then.38, %if.then.16
  %121 = load i32, i32* %retval
  ret i32 %121
}

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

declare %struct._object* @PyNumber_Float(%struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_add_char(%struct.ReaderObj* %self, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %c.addr = alloca i32, align 4
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 7
  %1 = load i64, i64* %field_len, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %2 = bitcast i8* %call1 to %struct._csvstate*
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %2, i32 0, i32 2
  %3 = load i64, i64* %field_limit, align 8
  %cmp = icmp sge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2)
  %4 = bitcast i8* %call3 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %error_obj, align 8
  %call4 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call5 = call i8* @PyModule_GetState(%struct._object* %call4)
  %6 = bitcast i8* %call5 to %struct._csvstate*
  %field_limit6 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %6, i32 0, i32 2
  %7 = load i64, i64* %field_limit6, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i64 %7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len8 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 7
  %9 = load i64, i64* %field_len8, align 8
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 6
  %11 = load i64, i64* %field_size, align 8
  %cmp9 = icmp eq i64 %9, %11
  br i1 %cmp9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %call10 = call i32 @parse_grow_buff(%struct.ReaderObj* %12)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %13 = load i32, i32* %c.addr, align 4
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_len13 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 7
  %15 = load i64, i64* %field_len13, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %field_len13, align 8
  %16 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %16, i32 0, i32 5
  %17 = load i32*, i32** %field, align 8
  %arrayidx = getelementptr i32, i32* %17, i64 %15
  store i32 %13, i32* %arrayidx, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_grow_buff(%struct.ReaderObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ReaderObj*, align 8
  %field9 = alloca i32*, align 8
  store %struct.ReaderObj* %self, %struct.ReaderObj** %self.addr, align 8
  %0 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %0, i32 0, i32 6
  %1 = load i64, i64* %field_size, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %2, i32 0, i32 6
  store i64 4096, i64* %field_size1, align 8
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 5
  %4 = load i32*, i32** %field, align 8
  %cmp2 = icmp ne i32* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field4 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %5, i32 0, i32 5
  %6 = load i32*, i32** %field4, align 8
  %7 = bitcast i32* %6 to i8*
  call void @PyMem_Free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size5 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %8, i32 0, i32 6
  %9 = load i64, i64* %field_size5, align 8
  %cmp6 = icmp ugt i64 %9, 2305843009213693951
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size7 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %10, i32 0, i32 6
  %11 = load i64, i64* %field_size7, align 8
  %mul = mul i64 %11, 4
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %12 = bitcast i8* %call to i32*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ null, %cond.true ], [ %12, %cond.false ]
  %13 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field8 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %13, i32 0, i32 5
  store i32* %cond, i32** %field8, align 8
  br label %if.end.28

if.else:                                          ; preds = %entry
  %14 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field10 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %14, i32 0, i32 5
  %15 = load i32*, i32** %field10, align 8
  store i32* %15, i32** %field9, align 8
  %16 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size11 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %16, i32 0, i32 6
  %17 = load i64, i64* %field_size11, align 8
  %cmp12 = icmp sgt i64 %17, 4611686018427387903
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else
  %call14 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else
  %18 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size16 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %18, i32 0, i32 6
  %19 = load i64, i64* %field_size16, align 8
  %mul17 = mul i64 %19, 2
  store i64 %mul17, i64* %field_size16, align 8
  %20 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size18 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %20, i32 0, i32 6
  %21 = load i64, i64* %field_size18, align 8
  %cmp19 = icmp ugt i64 %21, 2305843009213693951
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end.15
  br label %cond.end.25

cond.false.21:                                    ; preds = %if.end.15
  %22 = load i32*, i32** %field9, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field_size22 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %24, i32 0, i32 6
  %25 = load i64, i64* %field_size22, align 8
  %mul23 = mul i64 %25, 4
  %call24 = call i8* @PyMem_Realloc(i8* %23, i64 %mul23)
  %26 = bitcast i8* %call24 to i32*
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32* [ null, %cond.true.20 ], [ %26, %cond.false.21 ]
  store i32* %cond26, i32** %field9, align 8
  %27 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field27 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %27, i32 0, i32 5
  store i32* %cond26, i32** %field27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.25, %cond.end
  %28 = load %struct.ReaderObj*, %struct.ReaderObj** %self.addr, align 8
  %field29 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %28, i32 0, i32 5
  %29 = load i32*, i32** %field29, align 8
  %cmp30 = icmp eq i32* %29, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %call32 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.31, %if.then.13
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyMem_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @Writer_dealloc(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %1 = bitcast %struct.WriterObj* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %2, i32 0, i32 2
  %3 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %4 = bitcast %struct.DialectObj* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %13 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %writeline, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp7, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp11, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %18, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %21(%struct._object* %22)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %23 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %23, i32 0, i32 3
  %24 = load i32*, i32** %rec, align 8
  %cmp23 = icmp ne i32* %24, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.end.22
  %25 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec25 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %25, i32 0, i32 3
  %26 = load i32*, i32** %rec25, align 8
  %27 = bitcast i32* %26 to i8*
  call void @PyMem_Free(i8* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.end.22
  %28 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %29 = bitcast %struct.WriterObj* %28 to i8*
  call void @PyObject_GC_Del(i8* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Writer_traverse(%struct.WriterObj* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %tobool = icmp ne %struct.DialectObj* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %3, i32 0, i32 2
  %4 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8
  %5 = bitcast %struct.DialectObj* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %writeline, align 8
  %tobool6 = icmp ne %struct._object* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline9 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %writeline9, align 8
  %14 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %11(%struct._object* %13, i8* %14)
  store i32 %call10, i32* %vret8, align 4
  %15 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %16 = load i32, i32* %vret8, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @Writer_clear(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %2 = bitcast %struct.DialectObj* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %4, i32 0, i32 2
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %12 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %writeline, align 8
  store %struct._object* %13, %struct._object** %_py_tmp8, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %15 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline11 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %15, i32 0, i32 1
  store %struct._object* null, %struct._object** %writeline11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %16 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %18, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  ret i32 0
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
  %field = alloca %struct._object*, align 8
  %append_ok = alloca i32, align 4
  %quoted = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8
  store %struct.DialectObj* %1, %struct.DialectObj** %dialect, align 8
  %2 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call = call i32 @PySequence_Check(%struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call2)
  %3 = bitcast i8* %call3 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %error_obj, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call5 = call i64 @PySequence_Size(%struct._object* %5)
  store i64 %call5, i64* %len, align 8
  %6 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  call void @join_reset(%struct.WriterObj* %7)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %len, align 8
  %cmp8 = icmp slt i64 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._object*, %struct._object** %seq.addr, align 8
  %11 = load i64, i64* %i, align 8
  %call9 = call %struct._object* @PySequence_GetItem(%struct._object* %10, i64 %11)
  store %struct._object* %call9, %struct._object** %field, align 8
  %12 = load %struct._object*, %struct._object** %field, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  %13 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %13, i32 0, i32 7
  %14 = load i32, i32* %quoting, align 4
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end.12
  %15 = load %struct._object*, %struct._object** %field, align 8
  %call13 = call i32 @PyNumber_Check(%struct._object* %15)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.12
  store i32 1, i32* %quoted, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  store i32 0, i32* %quoted, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb
  %16 = load %struct._object*, %struct._object** %field, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags, align 8
  %and = and i64 %18, 268435456
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.else.25

if.then.17:                                       ; preds = %sw.epilog
  %19 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %20 = load %struct._object*, %struct._object** %field, align 8
  %21 = load i64, i64* %len, align 8
  %cmp18 = icmp eq i64 %21, 1
  %conv = zext i1 %cmp18 to i32
  %call19 = call i32 @join_append(%struct.WriterObj* %19, %struct._object* %20, i32* %quoted, i32 %conv)
  store i32 %call19, i32* %append_ok, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %if.end.78

if.else.25:                                       ; preds = %sw.epilog
  %29 = load %struct._object*, %struct._object** %field, align 8
  %cmp26 = icmp eq %struct._object* %29, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.28, label %if.else.44

if.then.28:                                       ; preds = %if.else.25
  %30 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %31 = load i64, i64* %len, align 8
  %cmp29 = icmp eq i64 %31, 1
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @join_append(%struct.WriterObj* %30, %struct._object* null, i32* %quoted, i32 %conv30)
  store i32 %call31, i32* %append_ok, align 4
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.28
  %32 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp33, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %34, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %37(%struct._object* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.77

if.else.44:                                       ; preds = %if.else.25
  %39 = load %struct._object*, %struct._object** %field, align 8
  %call45 = call %struct._object* @PyObject_Str(%struct._object* %39)
  store %struct._object* %call45, %struct._object** %str, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %if.else.44
  %40 = load %struct._object*, %struct._object** %field, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp47, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %42, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.46
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %45(%struct._object* %46)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %47 = load %struct._object*, %struct._object** %str, align 8
  %cmp58 = icmp eq %struct._object* %47, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %do.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %do.end.57
  %48 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %49 = load %struct._object*, %struct._object** %str, align 8
  %50 = load i64, i64* %len, align 8
  %cmp62 = icmp eq i64 %50, 1
  %conv63 = zext i1 %cmp62 to i32
  %call64 = call i32 @join_append(%struct.WriterObj* %48, %struct._object* %49, i32* %quoted, i32 %conv63)
  store i32 %call64, i32* %append_ok, align 4
  br label %do.body.65

do.body.65:                                       ; preds = %if.end.61
  %51 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp66, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %53, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.65
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.65
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %56(%struct._object* %57)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.end.43
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %do.end
  %58 = load i32, i32* %append_ok, align 4
  %tobool79 = icmp ne i32 %58, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.78
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %if.end.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %59 = load i64, i64* %i, align 8
  %inc = add i64 %59, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %call82 = call i32 @join_append_lineterminator(%struct.WriterObj* %60)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.85:                                        ; preds = %for.end
  %61 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %61, i32 0, i32 3
  %62 = load i32*, i32** %rec, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %64, i32 0, i32 5
  %65 = load i64, i64* %rec_len, align 8
  %call86 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %63, i64 %65)
  store %struct._object* %call86, %struct._object** %line, align 8
  %66 = load %struct._object*, %struct._object** %line, align 8
  %cmp87 = icmp eq %struct._object* %66, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.85
  %67 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %67, i32 0, i32 1
  %68 = load %struct._object*, %struct._object** %writeline, align 8
  %69 = load %struct._object*, %struct._object** %line, align 8
  %call91 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %68, %struct._object* %69, i8* null)
  store %struct._object* %call91, %struct._object** %result, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.90
  %70 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp93, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %72, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %75(%struct._object* %76)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %77 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %77, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.103, %if.then.89, %if.then.84, %if.then.80, %if.then.60, %if.then.11, %if.then.6, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store %struct._object* %seqseq, %struct._object** %seqseq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seqseq.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %row_iter, align 8
  %1 = load %struct._object*, %struct._object** %row_iter, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end
  %3 = load %struct._object*, %struct._object** %row_iter, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %3)
  store %struct._object* %call1, %struct._object** %row_obj, align 8
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %row_obj, align 8
  %call2 = call %struct._object* @csv_writerow(%struct.WriterObj* %4, %struct._object* %5)
  store %struct._object* %call2, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %6 = load %struct._object*, %struct._object** %row_obj, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %13, null
  br i1 %tobool6, label %if.else.19, label %if.then.7

if.then.7:                                        ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %14 = load %struct._object*, %struct._object** %row_iter, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp9, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %16, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.19:                                       ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.else.19
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp21, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %23, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %26(%struct._object* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.32

do.body.32:                                       ; preds = %while.end
  %28 = load %struct._object*, %struct._object** %row_iter, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp33, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %30, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %33(%struct._object* %34)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %call43 = call %struct._object* @PyErr_Occurred()
  %tobool44 = icmp ne %struct._object* %call43, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %do.end.42
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.45, %do.end.18, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

declare i32 @PySequence_Check(%struct._object*) #1

declare i64 @PySequence_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @join_reset(%struct.WriterObj* %self) #0 {
entry:
  %self.addr = alloca %struct.WriterObj*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 5
  store i64 0, i64* %rec_len, align 8
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %1, i32 0, i32 6
  store i32 0, i32* %num_fields, align 4
  ret void
}

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyNumber_Check(%struct._object*) #1

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
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store %struct._object* %field, %struct._object** %field.addr, align 8
  store i32* %quoted, i32** %quoted.addr, align 8
  store i32 %quote_empty, i32* %quote_empty.addr, align 4
  store i32 -1, i32* %field_kind, align 4
  store i8* null, i8** %field_data, align 8
  store i64 0, i64* %field_len, align 8
  %0 = load %struct._object*, %struct._object** %field.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %field.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 3
  %3 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %field.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp1 = icmp eq i32 %cond, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %field.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state3 to i32*
  %bf.load4 = load i32, i32* %7, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 2
  %bf.clear6 = and i32 %bf.lshr5, 7
  store i32 %bf.clear6, i32* %field_kind, align 4
  %8 = load %struct._object*, %struct._object** %field.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %10, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 5
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.23

cond.true.12:                                     ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %field.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state13 to i32*
  %bf.load14 = load i32, i32* %13, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 6
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.true.12
  %14 = load %struct._object*, %struct._object** %field.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.true.12
  %17 = load %struct._object*, %struct._object** %field.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr20 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr20 to i8*
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.18
  %cond22 = phi i8* [ %16, %cond.true.18 ], [ %19, %cond.false.19 ]
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %field.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.end.21
  %cond25 = phi i8* [ %cond22, %cond.end.21 ], [ %22, %cond.false.23 ]
  store i8* %cond25, i8** %field_data, align 8
  %23 = load %struct._object*, %struct._object** %field.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 1
  %25 = load i64, i64* %length, align 8
  store i64 %25, i64* %field_len, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.24, %entry
  %26 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %27 = load i32, i32* %field_kind, align 4
  %28 = load i8*, i8** %field_data, align 8
  %29 = load i64, i64* %field_len, align 8
  %30 = load i32, i32* %quote_empty.addr, align 4
  %31 = load i32*, i32** %quoted.addr, align 8
  %call27 = call i64 @join_append_data(%struct.WriterObj* %26, i32 %27, i8* %28, i64 %29, i32 %30, i32* %31, i32 0)
  store i64 %call27, i64* %rec_len, align 8
  %32 = load i64, i64* %rec_len, align 8
  %cmp28 = icmp slt i64 %32, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %33 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %34 = load i64, i64* %rec_len, align 8
  %call31 = call i32 @join_check_rec_size(%struct.WriterObj* %33, i64 %34)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.30
  %35 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %36 = load i32, i32* %field_kind, align 4
  %37 = load i8*, i8** %field_data, align 8
  %38 = load i64, i64* %field_len, align 8
  %39 = load i32, i32* %quote_empty.addr, align 4
  %40 = load i32*, i32** %quoted.addr, align 8
  %call35 = call i64 @join_append_data(%struct.WriterObj* %35, i32 %36, i8* %37, i64 %38, i32 %39, i32* %40, i32 1)
  %41 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len36 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %41, i32 0, i32 5
  store i64 %call35, i64* %rec_len36, align 8
  %42 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %42, i32 0, i32 6
  %43 = load i32, i32* %num_fields, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %num_fields, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.33, %if.then.29, %if.then.2
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare %struct._object* @PyObject_Str(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @join_append_lineterminator(%struct.WriterObj* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %terminator_len = alloca i64, align 8
  %i = alloca i64, align 8
  %term_kind = alloca i32, align 4
  %term_data = alloca i8*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %1, i32 0, i32 6
  %2 = load %struct._object*, %struct._object** %lineterminator, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  store i64 %4, i64* %terminator_len, align 8
  %5 = load i64, i64* %terminator_len, align 8
  %cmp = icmp eq i64 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %7, i32 0, i32 5
  %8 = load i64, i64* %rec_len, align 8
  %9 = load i64, i64* %terminator_len, align 8
  %add = add i64 %8, %9
  %call = call i32 @join_check_rec_size(%struct.WriterObj* %6, i64 %add)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %10 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect3 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %10, i32 0, i32 2
  %11 = load %struct.DialectObj*, %struct.DialectObj** %dialect3, align 8
  %lineterminator4 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %11, i32 0, i32 6
  %12 = load %struct._object*, %struct._object** %lineterminator4, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3
  %14 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %14, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %term_kind, align 4
  %15 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect5 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %15, i32 0, i32 2
  %16 = load %struct.DialectObj*, %struct.DialectObj** %dialect5, align 8
  %lineterminator6 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %16, i32 0, i32 6
  %17 = load %struct._object*, %struct._object** %lineterminator6, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3
  %19 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %19, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 5
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true, label %cond.false.25

cond.true:                                        ; preds = %if.end.2
  %20 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %20, i32 0, i32 2
  %21 = load %struct.DialectObj*, %struct.DialectObj** %dialect12, align 8
  %lineterminator13 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %21, i32 0, i32 6
  %22 = load %struct._object*, %struct._object** %lineterminator13, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %state14 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3
  %24 = bitcast %struct.anon* %state14 to i32*
  %bf.load15 = load i32, i32* %24, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 6
  %bf.clear17 = and i32 %bf.lshr16, 1
  %tobool18 = icmp ne i32 %bf.clear17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false

cond.true.19:                                     ; preds = %cond.true
  %25 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect20 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %25, i32 0, i32 2
  %26 = load %struct.DialectObj*, %struct.DialectObj** %dialect20, align 8
  %lineterminator21 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %26, i32 0, i32 6
  %27 = load %struct._object*, %struct._object** %lineterminator21, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i64 1
  %29 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %30 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect22 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %30, i32 0, i32 2
  %31 = load %struct.DialectObj*, %struct.DialectObj** %dialect22, align 8
  %lineterminator23 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %31, i32 0, i32 6
  %32 = load %struct._object*, %struct._object** %lineterminator23, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyCompactUnicodeObject*
  %add.ptr24 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %33, i64 1
  %34 = bitcast %struct.PyCompactUnicodeObject* %add.ptr24 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.19
  %cond = phi i8* [ %29, %cond.true.19 ], [ %34, %cond.false ]
  br label %cond.end.28

cond.false.25:                                    ; preds = %if.end.2
  %35 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect26 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %35, i32 0, i32 2
  %36 = load %struct.DialectObj*, %struct.DialectObj** %dialect26, align 8
  %lineterminator27 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %36, i32 0, i32 6
  %37 = load %struct._object*, %struct._object** %lineterminator27, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %38, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %39 = load i8*, i8** %any, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.25, %cond.end
  %cond29 = phi i8* [ %cond, %cond.end ], [ %39, %cond.false.25 ]
  store i8* %cond29, i8** %term_data, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.28
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %terminator_len, align 8
  %cmp30 = icmp slt i64 %40, %41
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %term_kind, align 4
  %cmp31 = icmp eq i32 %42, 1
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %for.body
  %43 = load i64, i64* %i, align 8
  %44 = load i8*, i8** %term_data, align 8
  %arrayidx = getelementptr i8, i8* %44, i64 %43
  %45 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %45 to i32
  br label %cond.end.43

cond.false.33:                                    ; preds = %for.body
  %46 = load i32, i32* %term_kind, align 4
  %cmp34 = icmp eq i32 %46, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.33
  %47 = load i64, i64* %i, align 8
  %48 = load i8*, i8** %term_data, align 8
  %49 = bitcast i8* %48 to i16*
  %arrayidx37 = getelementptr i16, i16* %49, i64 %47
  %50 = load i16, i16* %arrayidx37, align 2
  %conv38 = zext i16 %50 to i32
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.false.33
  %51 = load i64, i64* %i, align 8
  %52 = load i8*, i8** %term_data, align 8
  %53 = bitcast i8* %52 to i32*
  %arrayidx40 = getelementptr i32, i32* %53, i64 %51
  %54 = load i32, i32* %arrayidx40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %conv38, %cond.true.36 ], [ %54, %cond.false.39 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.32
  %cond44 = phi i32 [ %conv, %cond.true.32 ], [ %cond42, %cond.end.41 ]
  %55 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len45 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %55, i32 0, i32 5
  %56 = load i64, i64* %rec_len45, align 8
  %57 = load i64, i64* %i, align 8
  %add46 = add i64 %56, %57
  %58 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %58, i32 0, i32 3
  %59 = load i32*, i32** %rec, align 8
  %arrayidx47 = getelementptr i32, i32* %59, i64 %add46
  store i32 %cond44, i32* %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.43
  %60 = load i64, i64* %i, align 8
  %inc = add i64 %60, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i64, i64* %terminator_len, align 8
  %62 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len48 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %62, i32 0, i32 5
  %63 = load i64, i64* %rec_len48, align 8
  %add49 = add i64 %63, %61
  store i64 %add49, i64* %rec_len48, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.1, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

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
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store i32 %field_kind, i32* %field_kind.addr, align 4
  store i8* %field_data, i8** %field_data.addr, align 8
  store i64 %field_len, i64* %field_len.addr, align 8
  store i32 %quote_empty, i32* %quote_empty.addr, align 4
  store i32* %quoted, i32** %quoted.addr, align 8
  store i32 %copy_phase, i32* %copy_phase.addr, align 4
  %0 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %0, i32 0, i32 2
  %1 = load %struct.DialectObj*, %struct.DialectObj** %dialect1, align 8
  store %struct.DialectObj* %1, %struct.DialectObj** %dialect, align 8
  %2 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_len2 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %2, i32 0, i32 5
  %3 = load i64, i64* %rec_len2, align 8
  store i64 %3, i64* %rec_len, align 8
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %4, i32 0, i32 6
  %5 = load i32, i32* %num_fields, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load i32, i32* %copy_phase.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %7 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %7, i32 0, i32 2
  %8 = load i32, i32* %delimiter, align 4
  %9 = load i64, i64* %rec_len, align 8
  %10 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %10, i32 0, i32 3
  %11 = load i32*, i32** %rec, align 8
  %arrayidx = getelementptr i32, i32* %11, i64 %9
  store i32 %8, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  %12 = load i64, i64* %rec_len, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %rec_len, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  %13 = load i32, i32* %copy_phase.addr, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.4
  %14 = load i32*, i32** %quoted.addr, align 8
  %15 = load i32, i32* %14, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %16 = load i32, i32* %copy_phase.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %do.body.8
  %17 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %17, i32 0, i32 3
  %18 = load i32, i32* %quotechar, align 4
  %19 = load i64, i64* %rec_len, align 8
  %20 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec11 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %20, i32 0, i32 3
  %21 = load i32*, i32** %rec11, align 8
  %arrayidx12 = getelementptr i32, i32* %21, i64 %19
  store i32 %18, i32* %arrayidx12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %do.body.8
  %22 = load i64, i64* %rec_len, align 8
  %inc14 = add i64 %22, 1
  store i64 %inc14, i64* %rec_len, align 8
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.13
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %land.lhs.true, %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %23 = load i8*, i8** %field_data.addr, align 8
  %tobool17 = icmp ne i8* %23, null
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %conv = sext i32 %24 to i64
  %25 = load i64, i64* %field_len.addr, align 8
  %cmp18 = icmp slt i64 %conv, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %27 = load i32, i32* %field_kind.addr, align 4
  %cmp20 = icmp eq i32 %27, 1
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %field_data.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %29, i64 %idxprom
  %30 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  br label %cond.end.33

cond.false:                                       ; preds = %for.body
  %31 = load i32, i32* %field_kind.addr, align 4
  %cmp24 = icmp eq i32 %31, 2
  br i1 %cmp24, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.false
  %32 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load i8*, i8** %field_data.addr, align 8
  %34 = bitcast i8* %33 to i16*
  %arrayidx28 = getelementptr i16, i16* %34, i64 %idxprom27
  %35 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %35 to i32
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load i8*, i8** %field_data.addr, align 8
  %38 = bitcast i8* %37 to i32*
  %arrayidx32 = getelementptr i32, i32* %38, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.26
  %cond = phi i32 [ %conv29, %cond.true.26 ], [ %39, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi i32 [ %conv23, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond34, i32* %c, align 4
  store i32 0, i32* %want_escape, align 4
  %40 = load i32, i32* %c, align 4
  %41 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %delimiter35 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %41, i32 0, i32 2
  %42 = load i32, i32* %delimiter35, align 4
  %cmp36 = icmp eq i32 %40, %42
  br i1 %cmp36, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.33
  %43 = load i32, i32* %c, align 4
  %44 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %44, i32 0, i32 4
  %45 = load i32, i32* %escapechar, align 4
  %cmp38 = icmp eq i32 %43, %45
  br i1 %cmp38, label %if.then.48, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %46 = load i32, i32* %c, align 4
  %47 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar41 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %47, i32 0, i32 3
  %48 = load i32, i32* %quotechar41, align 4
  %cmp42 = icmp eq i32 %46, %48
  br i1 %cmp42, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %49 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %lineterminator = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %49, i32 0, i32 6
  %50 = load %struct._object*, %struct._object** %lineterminator, align 8
  %51 = load i32, i32* %c, align 4
  %52 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %lineterminator45 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %52, i32 0, i32 6
  %53 = load %struct._object*, %struct._object** %lineterminator45, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 1
  %55 = load i64, i64* %length, align 8
  %call = call i64 @PyUnicode_FindChar(%struct._object* %50, i32 %51, i64 0, i64 %55, i32 1)
  %cmp46 = icmp sge i64 %call, 0
  br i1 %cmp46, label %if.then.48, label %if.end.93

if.then.48:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false, %cond.end.33
  %56 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %56, i32 0, i32 7
  %57 = load i32, i32* %quoting, align 4
  %cmp49 = icmp eq i32 %57, 3
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.48
  store i32 1, i32* %want_escape, align 4
  br label %if.end.73

if.else:                                          ; preds = %if.then.48
  %58 = load i32, i32* %c, align 4
  %59 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar52 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %59, i32 0, i32 3
  %60 = load i32, i32* %quotechar52, align 4
  %cmp53 = icmp eq i32 %58, %60
  br i1 %cmp53, label %if.then.55, label %if.end.69

if.then.55:                                       ; preds = %if.else
  %61 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %doublequote = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %61, i32 0, i32 1
  %62 = load i32, i32* %doublequote, align 4
  %tobool56 = icmp ne i32 %62, 0
  br i1 %tobool56, label %if.then.57, label %if.else.67

if.then.57:                                       ; preds = %if.then.55
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %63 = load i32, i32* %copy_phase.addr, align 4
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %do.body.58
  %64 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar61 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %64, i32 0, i32 3
  %65 = load i32, i32* %quotechar61, align 4
  %66 = load i64, i64* %rec_len, align 8
  %67 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec62 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %67, i32 0, i32 3
  %68 = load i32*, i32** %rec62, align 8
  %arrayidx63 = getelementptr i32, i32* %68, i64 %66
  store i32 %65, i32* %arrayidx63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %do.body.58
  %69 = load i64, i64* %rec_len, align 8
  %inc65 = add i64 %69, 1
  store i64 %inc65, i64* %rec_len, align 8
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.64
  br label %if.end.68

if.else.67:                                       ; preds = %if.then.55
  store i32 1, i32* %want_escape, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %do.end.66
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.else
  %70 = load i32, i32* %want_escape, align 4
  %tobool70 = icmp ne i32 %70, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  %71 = load i32*, i32** %quoted.addr, align 8
  store i32 1, i32* %71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.51
  %72 = load i32, i32* %want_escape, align 4
  %tobool74 = icmp ne i32 %72, 0
  br i1 %tobool74, label %if.then.75, label %if.end.92

if.then.75:                                       ; preds = %if.end.73
  %73 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar76 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %73, i32 0, i32 4
  %74 = load i32, i32* %escapechar76, align 4
  %tobool77 = icmp ne i32 %74, 0
  br i1 %tobool77, label %if.end.82, label %if.then.78

if.then.78:                                       ; preds = %if.then.75
  %call79 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call80 = call i8* @PyModule_GetState(%struct._object* %call79)
  %75 = bitcast i8* %call80 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %75, i32 0, i32 0
  %76 = load %struct._object*, %struct._object** %error_obj, align 8
  %call81 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.75
  br label %do.body.83

do.body.83:                                       ; preds = %if.end.82
  %77 = load i32, i32* %copy_phase.addr, align 4
  %tobool84 = icmp ne i32 %77, 0
  br i1 %tobool84, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %do.body.83
  %78 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %escapechar86 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %78, i32 0, i32 4
  %79 = load i32, i32* %escapechar86, align 4
  %80 = load i64, i64* %rec_len, align 8
  %81 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec87 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %81, i32 0, i32 3
  %82 = load i32*, i32** %rec87, align 8
  %arrayidx88 = getelementptr i32, i32* %82, i64 %80
  store i32 %79, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %do.body.83
  %83 = load i64, i64* %rec_len, align 8
  %inc90 = add i64 %83, 1
  store i64 %inc90, i64* %rec_len, align 8
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.89
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %if.end.73
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %lor.lhs.false.44
  br label %do.body.94

do.body.94:                                       ; preds = %if.end.93
  %84 = load i32, i32* %copy_phase.addr, align 4
  %tobool95 = icmp ne i32 %84, 0
  br i1 %tobool95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %do.body.94
  %85 = load i32, i32* %c, align 4
  %86 = load i64, i64* %rec_len, align 8
  %87 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec97 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %87, i32 0, i32 3
  %88 = load i32*, i32** %rec97, align 8
  %arrayidx98 = getelementptr i32, i32* %88, i64 %86
  store i32 %85, i32* %arrayidx98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %do.body.94
  %89 = load i64, i64* %rec_len, align 8
  %inc100 = add i64 %89, 1
  store i64 %inc100, i64* %rec_len, align 8
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.99
  br label %for.inc

for.inc:                                          ; preds = %do.end.101
  %90 = load i32, i32* %i, align 4
  %inc102 = add i32 %90, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %91 = load i32, i32* %i, align 4
  %cmp103 = icmp eq i32 %91, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.118

land.lhs.true.105:                                ; preds = %for.end
  %92 = load i32, i32* %quote_empty.addr, align 4
  %tobool106 = icmp ne i32 %92, 0
  br i1 %tobool106, label %if.then.107, label %if.end.118

if.then.107:                                      ; preds = %land.lhs.true.105
  %93 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quoting108 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %93, i32 0, i32 7
  %94 = load i32, i32* %quoting108, align 4
  %cmp109 = icmp eq i32 %94, 3
  br i1 %cmp109, label %if.then.111, label %if.else.116

if.then.111:                                      ; preds = %if.then.107
  %call112 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call113 = call i8* @PyModule_GetState(%struct._object* %call112)
  %95 = bitcast i8* %call113 to %struct._csvstate*
  %error_obj114 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %95, i32 0, i32 0
  %96 = load %struct._object*, %struct._object** %error_obj114, align 8
  %call115 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.else.116:                                      ; preds = %if.then.107
  %97 = load i32*, i32** %quoted.addr, align 8
  store i32 1, i32* %97, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.116
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.105, %for.end
  %98 = load i32*, i32** %quoted.addr, align 8
  %99 = load i32, i32* %98, align 4
  %tobool119 = icmp ne i32 %99, 0
  br i1 %tobool119, label %if.then.120, label %if.end.134

if.then.120:                                      ; preds = %if.end.118
  %100 = load i32, i32* %copy_phase.addr, align 4
  %tobool121 = icmp ne i32 %100, 0
  br i1 %tobool121, label %if.then.122, label %if.else.132

if.then.122:                                      ; preds = %if.then.120
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %101 = load i32, i32* %copy_phase.addr, align 4
  %tobool124 = icmp ne i32 %101, 0
  br i1 %tobool124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %do.body.123
  %102 = load %struct.DialectObj*, %struct.DialectObj** %dialect, align 8
  %quotechar126 = getelementptr inbounds %struct.DialectObj, %struct.DialectObj* %102, i32 0, i32 3
  %103 = load i32, i32* %quotechar126, align 4
  %104 = load i64, i64* %rec_len, align 8
  %105 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec127 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %105, i32 0, i32 3
  %106 = load i32*, i32** %rec127, align 8
  %arrayidx128 = getelementptr i32, i32* %106, i64 %104
  store i32 %103, i32* %arrayidx128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %do.body.123
  %107 = load i64, i64* %rec_len, align 8
  %inc130 = add i64 %107, 1
  store i64 %inc130, i64* %rec_len, align 8
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.129
  br label %if.end.133

if.else.132:                                      ; preds = %if.then.120
  %108 = load i64, i64* %rec_len, align 8
  %add = add i64 %108, 2
  store i64 %add, i64* %rec_len, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %do.end.131
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.118
  %109 = load i64, i64* %rec_len, align 8
  store i64 %109, i64* %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then.111, %if.then.78
  %110 = load i64, i64* %retval
  ret i64 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @join_check_rec_size(%struct.WriterObj* %self, i64 %rec_len) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.WriterObj*, align 8
  %rec_len.addr = alloca i64, align 8
  %old_rec = alloca i32*, align 8
  store %struct.WriterObj* %self, %struct.WriterObj** %self.addr, align 8
  store i64 %rec_len, i64* %rec_len.addr, align 8
  %0 = load i64, i64* %rec_len.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %rec_len.addr, align 8
  %cmp1 = icmp sgt i64 %1, 9223372036854743039
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %rec_len.addr, align 8
  %3 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %3, i32 0, i32 4
  %4 = load i64, i64* %rec_size, align 8
  %cmp2 = icmp sgt i64 %2, %4
  br i1 %cmp2, label %if.then.3, label %if.end.43

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size4 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 4
  %6 = load i64, i64* %rec_size4, align 8
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %7 = load i64, i64* %rec_len.addr, align 8
  %div = sdiv i64 %7, 32768
  %add = add i64 %div, 1
  %mul = mul i64 %add, 32768
  %8 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size7 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %8, i32 0, i32 4
  store i64 %mul, i64* %rec_size7, align 8
  %9 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %9, i32 0, i32 3
  %10 = load i32*, i32** %rec, align 8
  %cmp8 = icmp ne i32* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.6
  %11 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec10 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %11, i32 0, i32 3
  %12 = load i32*, i32** %rec10, align 8
  %13 = bitcast i32* %12 to i8*
  call void @PyMem_Free(i8* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  %14 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %14, i32 0, i32 4
  %15 = load i64, i64* %rec_size12, align 8
  %cmp13 = icmp ugt i64 %15, 2305843009213693951
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %16 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size14 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %16, i32 0, i32 4
  %17 = load i64, i64* %rec_size14, align 8
  %mul15 = mul i64 %17, 4
  %call16 = call i8* @PyMem_Malloc(i64 %mul15)
  %18 = bitcast i8* %call16 to i32*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ null, %cond.true ], [ %18, %cond.false ]
  %19 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec17 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %19, i32 0, i32 3
  store i32* %cond, i32** %rec17, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.then.3
  %20 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec18 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %20, i32 0, i32 3
  %21 = load i32*, i32** %rec18, align 8
  store i32* %21, i32** %old_rec, align 8
  %22 = load i64, i64* %rec_len.addr, align 8
  %div19 = sdiv i64 %22, 32768
  %add20 = add i64 %div19, 1
  %mul21 = mul i64 %add20, 32768
  %23 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size22 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %23, i32 0, i32 4
  store i64 %mul21, i64* %rec_size22, align 8
  %24 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size23 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %24, i32 0, i32 4
  %25 = load i64, i64* %rec_size23, align 8
  %cmp24 = icmp ugt i64 %25, 2305843009213693951
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.else
  br label %cond.end.30

cond.false.26:                                    ; preds = %if.else
  %26 = load i32*, i32** %old_rec, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec_size27 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %28, i32 0, i32 4
  %29 = load i64, i64* %rec_size27, align 8
  %mul28 = mul i64 %29, 4
  %call29 = call i8* @PyMem_Realloc(i8* %27, i64 %mul28)
  %30 = bitcast i8* %call29 to i32*
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.25
  %cond31 = phi i32* [ null, %cond.true.25 ], [ %30, %cond.false.26 ]
  store i32* %cond31, i32** %old_rec, align 8
  %31 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec32 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %31, i32 0, i32 3
  store i32* %cond31, i32** %rec32, align 8
  %32 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec33 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %32, i32 0, i32 3
  %33 = load i32*, i32** %rec33, align 8
  %cmp34 = icmp eq i32* %33, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cond.end.30
  %34 = load i32*, i32** %old_rec, align 8
  %35 = bitcast i32* %34 to i8*
  call void @PyMem_Free(i8* %35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %cond.end.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %cond.end
  %36 = load %struct.WriterObj*, %struct.WriterObj** %self.addr, align 8
  %rec38 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %36, i32 0, i32 3
  %37 = load i32*, i32** %rec38, align 8
  %cmp39 = icmp eq i32* %37, null
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %call41 = call %struct._object* @PyErr_NoMemory()
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.40, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_csv_traverse(%struct._object* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret11 = alloca i32, align 4
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %error_obj, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call1 to %struct._csvstate*
  %error_obj2 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %error_obj2, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call3 = call i32 %3(%struct._object* %6, i8* %7)
  store i32 %call3, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %m.addr, align 8
  %call8 = call i8* @PyModule_GetState(%struct._object* %10)
  %11 = bitcast i8* %call8 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %dialects, align 8
  %tobool9 = icmp ne %struct._object* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %do.body.7
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %14 = load %struct._object*, %struct._object** %m.addr, align 8
  %call12 = call i8* @PyModule_GetState(%struct._object* %14)
  %15 = bitcast i8* %call12 to %struct._csvstate*
  %dialects13 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %dialects13, align 8
  %17 = load i8*, i8** %arg.addr, align 8
  %call14 = call i32 %13(%struct._object* %16, i8* %17)
  store i32 %call14, i32* %vret11, align 4
  %18 = load i32, i32* %vret11, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.10
  %19 = load i32, i32* %vret11, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body.7
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.then.16, %if.then.5
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @_csv_clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %error_obj, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call1 to %struct._csvstate*
  %error_obj2 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %5, i32 0, i32 0
  store %struct._object* null, %struct._object** %error_obj2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %13 = load %struct._object*, %struct._object** %m.addr, align 8
  %call10 = call i8* @PyModule_GetState(%struct._object* %13)
  %14 = bitcast i8* %call10 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %dialects, align 8
  store %struct._object* %15, %struct._object** %_py_tmp9, align 8
  %16 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  %cmp11 = icmp ne %struct._object* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %m.addr, align 8
  %call13 = call i8* @PyModule_GetState(%struct._object* %17)
  %18 = bitcast i8* %call13 to %struct._csvstate*
  %dialects14 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %18, i32 0, i32 1
  store %struct._object* null, %struct._object** %dialects14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %21, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %24(%struct._object* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.8
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_csv_free(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8
  %0 = load i8*, i8** %m.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %call = call i32 @_csv_clear(%struct._object* %1)
  ret void
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keyword_args, %struct._object** %keyword_args.addr, align 8
  store %struct._object* null, %struct._object** %dialect, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Reader_Type)
  %0 = bitcast %struct._object* %call to %struct.ReaderObj*
  store %struct.ReaderObj* %0, %struct.ReaderObj** %self, align 8
  %1 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %tobool = icmp ne %struct.ReaderObj* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %dialect1 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %2, i32 0, i32 2
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8
  %3 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %fields = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %3, i32 0, i32 3
  store %struct._object* null, %struct._object** %fields, align 8
  %4 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %input_iter = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %input_iter, align 8
  %5 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %field = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %5, i32 0, i32 5
  store i32* null, i32** %field, align 8
  %6 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %field_size = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %6, i32 0, i32 6
  store i64 0, i64* %field_size, align 8
  %7 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %line_num = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %7, i32 0, i32 9
  store i64 0, i64* %line_num, align 8
  %8 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %call2 = call i32 @parse_reset(%struct.ReaderObj* %8)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %9 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %10 = bitcast %struct.ReaderObj* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %iterator, %struct._object** %dialect)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.22, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %18 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %19 = bitcast %struct.ReaderObj* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp12, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %21, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %24(%struct._object* %25)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.7
  %26 = load %struct._object*, %struct._object** %iterator, align 8
  %call23 = call %struct._object* @PyObject_GetIter(%struct._object* %26)
  %27 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %input_iter24 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %27, i32 0, i32 1
  store %struct._object* %call23, %struct._object** %input_iter24, align 8
  %28 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %input_iter25 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %28, i32 0, i32 1
  %29 = load %struct._object*, %struct._object** %input_iter25, align 8
  %cmp26 = icmp eq %struct._object* %29, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.22
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0))
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %31 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %32 = bitcast %struct.ReaderObj* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %_py_decref_tmp29, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %34, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.22
  %39 = load %struct._object*, %struct._object** %dialect, align 8
  %40 = load %struct._object*, %struct._object** %keyword_args.addr, align 8
  %call40 = call %struct._object* @_call_dialect(%struct._object* %39, %struct._object* %40)
  %41 = bitcast %struct._object* %call40 to %struct.DialectObj*
  %42 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %dialect41 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %42, i32 0, i32 2
  store %struct.DialectObj* %41, %struct.DialectObj** %dialect41, align 8
  %43 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %dialect42 = getelementptr inbounds %struct.ReaderObj, %struct.ReaderObj* %43, i32 0, i32 2
  %44 = load %struct.DialectObj*, %struct.DialectObj** %dialect42, align 8
  %cmp43 = icmp eq %struct.DialectObj* %44, null
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.end.39
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %45 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %46 = bitcast %struct.ReaderObj* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %_py_decref_tmp46, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %48, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %51(%struct._object* %52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.39
  %53 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %54 = bitcast %struct.ReaderObj* %53 to i8*
  call void @PyObject_GC_Track(i8* %54)
  %55 = load %struct.ReaderObj*, %struct.ReaderObj** %self, align 8
  %56 = bitcast %struct.ReaderObj* %55 to %struct._object*
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.56, %do.end.55, %do.end.38, %do.end.21, %do.end, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keyword_args, %struct._object** %keyword_args.addr, align 8
  store %struct._object* null, %struct._object** %dialect, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Writer_Type)
  %0 = bitcast %struct._object* %call to %struct.WriterObj*
  store %struct.WriterObj* %0, %struct.WriterObj** %self, align 8
  %1 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %tobool = icmp ne %struct.WriterObj* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %dialect1 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %2, i32 0, i32 2
  store %struct.DialectObj* null, %struct.DialectObj** %dialect1, align 8
  %3 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %writeline = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %writeline, align 8
  %4 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %rec = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %4, i32 0, i32 3
  store i32* null, i32** %rec, align 8
  %5 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %rec_size = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %5, i32 0, i32 4
  store i64 0, i64* %rec_size, align 8
  %6 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %rec_len = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %6, i32 0, i32 5
  store i64 0, i64* %rec_len, align 8
  %7 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %num_fields = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %7, i32 0, i32 6
  store i32 0, i32* %num_fields, align 4
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %output_file, %struct._object** %dialect)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %9 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %10 = bitcast %struct.WriterObj* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %output_file, align 8
  %call8 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %17, %struct._Py_Identifier* @csv_writer.PyId_write)
  %18 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %writeline9 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %18, i32 0, i32 1
  store %struct._object* %call8, %struct._object** %writeline9, align 8
  %19 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %writeline10 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %writeline10, align 8
  %cmp11 = icmp eq %struct._object* %20, null
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %21 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %writeline12 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %writeline12, align 8
  %call13 = call i32 @PyCallable_Check(%struct._object* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.27, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.7
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i32 0, i32 0))
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %24 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %25 = bitcast %struct.WriterObj* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %_py_decref_tmp17, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %27, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  %32 = load %struct._object*, %struct._object** %dialect, align 8
  %33 = load %struct._object*, %struct._object** %keyword_args.addr, align 8
  %call28 = call %struct._object* @_call_dialect(%struct._object* %32, %struct._object* %33)
  %34 = bitcast %struct._object* %call28 to %struct.DialectObj*
  %35 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %dialect29 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %35, i32 0, i32 2
  store %struct.DialectObj* %34, %struct.DialectObj** %dialect29, align 8
  %36 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %dialect30 = getelementptr inbounds %struct.WriterObj, %struct.WriterObj* %36, i32 0, i32 2
  %37 = load %struct.DialectObj*, %struct.DialectObj** %dialect30, align 8
  %cmp31 = icmp eq %struct.DialectObj* %37, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.end.27
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %38 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %39 = bitcast %struct.WriterObj* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %_py_decref_tmp34, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %41, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %44(%struct._object* %45)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.27
  %46 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %47 = bitcast %struct.WriterObj* %46 to i8*
  call void @PyObject_GC_Track(i8* %47)
  %48 = load %struct.WriterObj*, %struct.WriterObj** %self, align 8
  %49 = bitcast %struct.WriterObj* %48 to %struct._object*
  store %struct._object* %49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %do.end.43, %do.end.26, %do.end, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_list_dialects(%struct._object* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dialects, align 8
  %call2 = call %struct._object* @PyDict_Keys(%struct._object* %1)
  ret %struct._object* %call2
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %dialect_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i32 0, i32 0), i64 1, i64 2, %struct._object** %name_obj, %struct._object** %dialect_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %name_obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %name_obj, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool3 = icmp ne i32 %bf.clear, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %name_obj, align 8
  %call4 = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call4, %cond.false ]
  %cmp5 = icmp eq i32 %cond, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %dialect_obj, align 8
  %10 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call8 = call %struct._object* @_call_dialect(%struct._object* %9, %struct._object* %10)
  store %struct._object* %call8, %struct._object** %dialect, align 8
  %11 = load %struct._object*, %struct._object** %dialect, align 8
  %cmp9 = icmp eq %struct._object* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %call12 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call13 = call i8* @PyModule_GetState(%struct._object* %call12)
  %12 = bitcast i8* %call13 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %dialects, align 8
  %14 = load %struct._object*, %struct._object** %name_obj, align 8
  %15 = load %struct._object*, %struct._object** %dialect, align 8
  %call14 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* %15)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %16 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.11
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %23 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp23, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %25, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %28(%struct._object* %29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.32, %do.end, %if.then.10, %if.then.6, %if.then.1, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_unregister_dialect(%struct._object* %module, %struct._object* %name_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %name_obj.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct._csvstate*
  %dialects = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dialects, align 8
  %2 = load %struct._object*, %struct._object** %name_obj.addr, align 8
  %call2 = call i32 @PyDict_DelItem(%struct._object* %1, %struct._object* %2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3)
  %3 = bitcast i8* %call4 to %struct._csvstate*
  %error_obj = getelementptr inbounds %struct._csvstate, %struct._csvstate* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %error_obj, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_get_dialect(%struct._object* %module, %struct._object* %name_obj) #0 {
entry:
  %module.addr = alloca %struct._object*, align 8
  %name_obj.addr = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %name_obj, %struct._object** %name_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %name_obj.addr, align 8
  %call = call %struct._object* @get_dialect_from_registry(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @csv_field_size_limit(%struct._object* %module, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_limit = alloca %struct._object*, align 8
  %old_limit = alloca i64, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %new_limit, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct._csvstate*
  %field_limit = getelementptr inbounds %struct._csvstate, %struct._csvstate* %0, i32 0, i32 2
  %1 = load i64, i64* %field_limit, align 8
  store i64 %1, i64* %old_limit, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i64 0, i64 1, %struct._object** %new_limit)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %new_limit, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.23

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %new_limit, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %5, @PyLong_Type
  br i1 %cmp4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %new_limit, align 8
  %call8 = call i64 @PyLong_AsLong(%struct._object* %7)
  %call9 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call10 = call i8* @PyModule_GetState(%struct._object* %call9)
  %8 = bitcast i8* %call10 to %struct._csvstate*
  %field_limit11 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %8, i32 0, i32 2
  store i64 %call8, i64* %field_limit11, align 8
  %call12 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call13 = call i8* @PyModule_GetState(%struct._object* %call12)
  %9 = bitcast i8* %call13 to %struct._csvstate*
  %field_limit14 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %9, i32 0, i32 2
  %10 = load i64, i64* %field_limit14, align 8
  %cmp15 = icmp eq i64 %10, -1
  br i1 %cmp15, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.7
  %call16 = call %struct._object* @PyErr_Occurred()
  %tobool17 = icmp ne %struct._object* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %11 = load i64, i64* %old_limit, align 8
  %call19 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_csvmodule)
  %call20 = call i8* @PyModule_GetState(%struct._object* %call19)
  %12 = bitcast i8* %call20 to %struct._csvstate*
  %field_limit21 = getelementptr inbounds %struct._csvstate, %struct._csvstate* %12, i32 0, i32 2
  store i64 %11, i64* %field_limit21, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.7
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %13 = load i64, i64* %old_limit, align 8
  %call24 = call %struct._object* @PyLong_FromLong(i64 %13)
  store %struct._object* %call24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.18, %if.then.5, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_call_dialect(%struct._object* %dialect_inst, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dialect_inst.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %ctor_args = alloca %struct._object*, align 8
  %dialect = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %dialect_inst, %struct._object** %dialect_inst.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %dialect_inst.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0)
  %1 = load %struct._object*, %struct._object** %dialect_inst.addr, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* %cond, %struct._object* %1)
  store %struct._object* %call, %struct._object** %ctor_args, align 8
  %2 = load %struct._object*, %struct._object** %ctor_args, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %ctor_args, align 8
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call1 = call %struct._object* @PyObject_Call(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Dialect_Type, i32 0, i32 0, i32 0), %struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %dialect, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %ctor_args, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %dialect, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare void @PyObject_GC_Track(i8*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare %struct._object* @PyDict_Keys(%struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
