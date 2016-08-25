; ModuleID = './marshal.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.WFILE = type { %struct._IO_FILE*, i32, i32, %struct._object*, %struct._object*, %struct._object*, i8*, i8*, i8*, i64, %struct._object*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Py_complex = type { double, double }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyFloatObject = type { %struct._object, double }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@PyExc_OverflowError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [35 x i8] c"too much marshal data for a string\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unmarshallable object\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"object too deeply nested to marshal\00", align 1
@marshalmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1171 x i8], [1171 x i8]* @module_doc, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @marshal_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_StopIteration = external global %struct._object*, align 8
@_Py_EllipsisObject = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"too many objects\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyComplex_Type = external global %struct._typeobject, align 8
@PyBytes_Type = external global %struct._typeobject, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"surrogatepass\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyList_Type = external global %struct._typeobject, align 8
@PyDict_Type = external global %struct._typeobject, align 8
@PySet_Type = external global %struct._typeobject, align 8
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@PyCode_Type = external global %struct._typeobject, align 8
@PyExc_EOFError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"marshal data too short\00", align 1
@r_string.PyId_readinto = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"read() returned too much data: %zd bytes requested, %zd returned\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"EOF read where not expected\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"EOF read where object expected\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"recursion limit exceeded\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"bad marshal data (string size out of range)\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"bad marshal data (unicode size out of range)\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"bad marshal data (tuple size out of range)\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"NULL object in marshal data for tuple\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"bad marshal data (list size out of range)\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"NULL object in marshal data for list\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"bad marshal data (set size out of range)\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"NULL object in marshal data for set\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"bad marshal data (invalid reference)\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"bad marshal data (unknown type code)\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"bad marshal data (long size out of range)\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"bad marshal data (unnormalized long data)\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"bad marshal data (digit out of range in long)\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"bad marshal data (index list too large)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"marshal\00", align 1
@module_doc = internal global [1171 x i8] c"This module contains functions that can read and write Python values in\0Aa binary format. The format is specific to Python, but independent of\0Amachine architecture issues.\0A\0ANot all Python object types are supported; in general, only objects\0Awhose value is independent from a particular invocation of Python can be\0Awritten and read by this module. The following types are supported:\0ANone, integers, floating point numbers, strings, bytes, bytearrays,\0Atuples, lists, sets, dictionaries, and code objects, where it\0Ashould be understood that tuples, lists and dictionaries are only\0Asupported as long as the values contained therein are themselves\0Asupported; and recursive lists and dictionaries should not be written\0A(they will cause infinite loops).\0A\0AVariables:\0A\0Aversion -- indicates the format that the module uses. Version 0 is the\0A    historical format, version 1 shares interned strings and version 2\0A    uses a binary format for floating point numbers.\0A    Version 3 shares common object references (New in version 3.4).\0A\0AFunctions:\0A\0Adump() -- write value to a file\0Aload() -- read value from a file\0Adumps() -- write value to a string\0Aloads() -- read value from a string\00", align 16
@marshal_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @marshal_dump, i32 1, i8* getelementptr inbounds ([525 x i8], [525 x i8]* @dump_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @marshal_load, i32 8, i8* getelementptr inbounds ([428 x i8], [428 x i8]* @load_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @marshal_dumps, i32 1, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @dumps_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @marshal_loads, i32 1, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @loads_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@dump_doc = internal global [525 x i8] c"dump(value, file[, version])\0A\0AWrite the value on the open file. The value must be a supported type.\0AThe file must be an open file object such as sys.stdout or returned by\0Aopen() or os.popen(). It must be opened in binary mode ('wb' or 'w+b').\0A\0AIf the value has (or contains an object that has) an unsupported type, a\0AValueError exception is raised \E2\80\94 but garbage data will also be written\0Ato the file. The object will not be properly read back by load()\0A\0AThe version argument indicates the data format that dump should use.\00", align 16
@.str.30 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@load_doc = internal global [428 x i8] c"load(file)\0A\0ARead one value from the open file and return it. If no valid value is\0Aread (e.g. because the data has a different Python version\E2\80\99s\0Aincompatible marshal format), raise EOFError, ValueError or TypeError.\0AThe file must be an open file object opened in binary mode ('rb' or\0A'r+b').\0A\0ANote: If an object containing an unsupported type was marshalled with\0Adump(), load() will substitute None for the unmarshallable type.\00", align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"dumps\00", align 1
@dumps_doc = internal global [300 x i8] c"dumps(value[, version])\0A\0AReturn the string that would be written to a file by dump(value, file).\0AThe value must be a supported type. Raise a ValueError exception if\0Avalue has (or contains an object that has) an unsupported type.\0A\0AThe version argument indicates the data format that dumps should use.\00", align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"loads\00", align 1
@loads_doc = internal global [163 x i8] c"loads(bytes)\0A\0AConvert the bytes object to a value. If no valid value is found, raise\0AEOFError, ValueError or TypeError. Extra characters in the input are\0Aignored.\00", align 16
@marshal_dump.PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"OO|i:dump\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@marshal_load.PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* null }, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"f.read() returned not bytes but %.100s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [42 x i8] c"XXX readobject called with exception set\0A\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"NULL object in marshal data for object\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"O|i:dumps\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"y*:loads\00", align 1

; Function Attrs: nounwind uwtable
define void @PyMarshal_WriteLongToFile(i64 %x, %struct._IO_FILE* %fp, i32 %version) #0 {
entry:
  %x.addr = alloca i64, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %version.addr = alloca i32, align 4
  %wf = alloca %struct.WFILE, align 8
  store i64 %x, i64* %x.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  store i32 0, i32* %error, align 4
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  store %struct._object* null, %struct._object** %refs, align 8
  %1 = load i32, i32* %version.addr, align 4
  %version2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 11
  store i32 %1, i32* %version2, align 4
  %2 = load i64, i64* %x.addr, align 8
  call void @w_long(i64 %2, %struct.WFILE* %wf)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @w_long(i64 %x, %struct.WFILE* %p) #0 {
entry:
  %x.addr = alloca i64, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  store i64 %x, i64* %x.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %x.addr, align 8
  %and = and i64 %2, 255
  %conv = trunc i64 %and to i8
  %conv1 = sext i8 %conv to i32
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call = call i32 @_IO_putc(i32 %conv1, %struct._IO_FILE* %4)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %5, i32 0, i32 6
  %6 = load i8*, i8** %ptr, align 8
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 7
  %8 = load i8*, i8** %end, align 8
  %cmp = icmp ne i8* %6, %8
  br i1 %cmp, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %9 = load i64, i64* %x.addr, align 8
  %and5 = and i64 %9, 255
  %conv6 = trunc i64 %and5 to i8
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 6
  %11 = load i8*, i8** %ptr7, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8
  store i8 %conv6, i8* %11, align 1
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %12 = load i64, i64* %x.addr, align 8
  %and9 = and i64 %12, 255
  %conv10 = trunc i64 %and9 to i8
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv10, %struct.WFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %14 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp12 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.end.11
  %16 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %16, 8
  %and15 = and i64 %shr, 255
  %conv16 = trunc i64 %and15 to i8
  %conv17 = sext i8 %conv16 to i32
  %17 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @_IO_putc(i32 %conv17, %struct._IO_FILE* %18)
  br label %if.end.36

if.else.20:                                       ; preds = %if.end.11
  %19 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr21 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %19, i32 0, i32 6
  %20 = load i8*, i8** %ptr21, align 8
  %21 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end22 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %21, i32 0, i32 7
  %22 = load i8*, i8** %end22, align 8
  %cmp23 = icmp ne i8* %20, %22
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else.20
  %23 = load i64, i64* %x.addr, align 8
  %shr26 = ashr i64 %23, 8
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i8
  %24 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr29 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %24, i32 0, i32 6
  %25 = load i8*, i8** %ptr29, align 8
  %incdec.ptr30 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %ptr29, align 8
  store i8 %conv28, i8* %25, align 1
  br label %if.end.35

if.else.31:                                       ; preds = %if.else.20
  %26 = load i64, i64* %x.addr, align 8
  %shr32 = ashr i64 %26, 8
  %and33 = and i64 %shr32, 255
  %conv34 = trunc i64 %and33 to i8
  %27 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv34, %struct.WFILE* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  %28 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp37 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp37, align 8
  %tobool38 = icmp ne %struct._IO_FILE* %29, null
  br i1 %tobool38, label %if.then.39, label %if.else.46

if.then.39:                                       ; preds = %if.end.36
  %30 = load i64, i64* %x.addr, align 8
  %shr40 = ashr i64 %30, 16
  %and41 = and i64 %shr40, 255
  %conv42 = trunc i64 %and41 to i8
  %conv43 = sext i8 %conv42 to i32
  %31 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp44 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp44, align 8
  %call45 = call i32 @_IO_putc(i32 %conv43, %struct._IO_FILE* %32)
  br label %if.end.62

if.else.46:                                       ; preds = %if.end.36
  %33 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr47 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %33, i32 0, i32 6
  %34 = load i8*, i8** %ptr47, align 8
  %35 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end48 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %35, i32 0, i32 7
  %36 = load i8*, i8** %end48, align 8
  %cmp49 = icmp ne i8* %34, %36
  br i1 %cmp49, label %if.then.51, label %if.else.57

if.then.51:                                       ; preds = %if.else.46
  %37 = load i64, i64* %x.addr, align 8
  %shr52 = ashr i64 %37, 16
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %38 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr55 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %38, i32 0, i32 6
  %39 = load i8*, i8** %ptr55, align 8
  %incdec.ptr56 = getelementptr i8, i8* %39, i32 1
  store i8* %incdec.ptr56, i8** %ptr55, align 8
  store i8 %conv54, i8* %39, align 1
  br label %if.end.61

if.else.57:                                       ; preds = %if.else.46
  %40 = load i64, i64* %x.addr, align 8
  %shr58 = ashr i64 %40, 16
  %and59 = and i64 %shr58, 255
  %conv60 = trunc i64 %and59 to i8
  %41 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv60, %struct.WFILE* %41)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.51
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.39
  %42 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp63 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %42, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp63, align 8
  %tobool64 = icmp ne %struct._IO_FILE* %43, null
  br i1 %tobool64, label %if.then.65, label %if.else.72

if.then.65:                                       ; preds = %if.end.62
  %44 = load i64, i64* %x.addr, align 8
  %shr66 = ashr i64 %44, 24
  %and67 = and i64 %shr66, 255
  %conv68 = trunc i64 %and67 to i8
  %conv69 = sext i8 %conv68 to i32
  %45 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp70 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %45, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp70, align 8
  %call71 = call i32 @_IO_putc(i32 %conv69, %struct._IO_FILE* %46)
  br label %if.end.88

if.else.72:                                       ; preds = %if.end.62
  %47 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr73 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %47, i32 0, i32 6
  %48 = load i8*, i8** %ptr73, align 8
  %49 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end74 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %49, i32 0, i32 7
  %50 = load i8*, i8** %end74, align 8
  %cmp75 = icmp ne i8* %48, %50
  br i1 %cmp75, label %if.then.77, label %if.else.83

if.then.77:                                       ; preds = %if.else.72
  %51 = load i64, i64* %x.addr, align 8
  %shr78 = ashr i64 %51, 24
  %and79 = and i64 %shr78, 255
  %conv80 = trunc i64 %and79 to i8
  %52 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr81 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %52, i32 0, i32 6
  %53 = load i8*, i8** %ptr81, align 8
  %incdec.ptr82 = getelementptr i8, i8* %53, i32 1
  store i8* %incdec.ptr82, i8** %ptr81, align 8
  store i8 %conv80, i8* %53, align 1
  br label %if.end.87

if.else.83:                                       ; preds = %if.else.72
  %54 = load i64, i64* %x.addr, align 8
  %shr84 = ashr i64 %54, 24
  %and85 = and i64 %shr84, 255
  %conv86 = trunc i64 %and85 to i8
  %55 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv86, %struct.WFILE* %55)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.65
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyMarshal_WriteObjectToFile(%struct._object* %x, %struct._IO_FILE* %fp, i32 %version) #0 {
entry:
  %x.addr = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %version.addr = alloca i32, align 4
  %wf = alloca %struct.WFILE, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  store i32 0, i32* %error, align 4
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %1 = load i32, i32* %version.addr, align 4
  %cmp = icmp sge i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  store %struct._object* %call, %struct._object** %refs, align 8
  %cmp2 = icmp eq %struct._object* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %do.end.16

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %refs4 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  store %struct._object* null, %struct._object** %refs4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %2 = load i32, i32* %version.addr, align 4
  %version6 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 11
  store i32 %2, i32* %version6, align 4
  %3 = load %struct._object*, %struct._object** %x.addr, align 8
  call void @w_object(%struct._object* %3, %struct.WFILE* %wf)
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %refs7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  %4 = load %struct._object*, %struct._object** %refs7, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.10
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.then.3, %if.end.15
  ret void
}

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal void @w_object(%struct._object* %v, %struct.WFILE* %p) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %flag = alloca i8, align 1
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i8 0, i8* %flag, align 1
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 2
  %1 = load i32, i32* %depth, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %depth, align 4
  %2 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %2, i32 0, i32 2
  %3 = load i32, i32* %depth1, align 4
  %cmp = icmp sgt i32 %3, 2000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %4, i32 0, i32 1
  store i32 2, i32* %error, align 4
  br label %if.end.113

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.else.12

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.then.3
  %8 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp5 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %8, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call = call i32 @_IO_putc(i32 48, %struct._IO_FILE* %9)
  br label %if.end.11

if.else.6:                                        ; preds = %if.then.3
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 6
  %11 = load i8*, i8** %ptr, align 8
  %12 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %12, i32 0, i32 7
  %13 = load i8*, i8** %end, align 8
  %cmp7 = icmp ne i8* %11, %13
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.6
  %14 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr9 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %14, i32 0, i32 6
  %15 = load i8*, i8** %ptr9, align 8
  %incdec.ptr = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr9, align 8
  store i8 48, i8* %15, align 1
  br label %if.end

if.else.10:                                       ; preds = %if.else.6
  %16 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 48, %struct.WFILE* %16)
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  br label %if.end.112

if.else.12:                                       ; preds = %if.else
  %17 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp13 = icmp eq %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp13, label %if.then.14, label %if.else.30

if.then.14:                                       ; preds = %if.else.12
  %18 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp15 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %18, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp15, align 8
  %tobool16 = icmp ne %struct._IO_FILE* %19, null
  br i1 %tobool16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.then.14
  %20 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %20, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @_IO_putc(i32 78, %struct._IO_FILE* %21)
  br label %if.end.29

if.else.20:                                       ; preds = %if.then.14
  %22 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr21 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %22, i32 0, i32 6
  %23 = load i8*, i8** %ptr21, align 8
  %24 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end22 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %24, i32 0, i32 7
  %25 = load i8*, i8** %end22, align 8
  %cmp23 = icmp ne i8* %23, %25
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.else.20
  %26 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr25 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %26, i32 0, i32 6
  %27 = load i8*, i8** %ptr25, align 8
  %incdec.ptr26 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr26, i8** %ptr25, align 8
  store i8 78, i8* %27, align 1
  br label %if.end.28

if.else.27:                                       ; preds = %if.else.20
  %28 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 78, %struct.WFILE* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  br label %if.end.111

if.else.30:                                       ; preds = %if.else.12
  %29 = load %struct._object*, %struct._object** %v.addr, align 8
  %30 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %cmp31 = icmp eq %struct._object* %29, %30
  br i1 %cmp31, label %if.then.32, label %if.else.48

if.then.32:                                       ; preds = %if.else.30
  %31 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp33 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp33, align 8
  %tobool34 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool34, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.then.32
  %33 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp36 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %33, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp36, align 8
  %call37 = call i32 @_IO_putc(i32 83, %struct._IO_FILE* %34)
  br label %if.end.47

if.else.38:                                       ; preds = %if.then.32
  %35 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr39 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %35, i32 0, i32 6
  %36 = load i8*, i8** %ptr39, align 8
  %37 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end40 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %37, i32 0, i32 7
  %38 = load i8*, i8** %end40, align 8
  %cmp41 = icmp ne i8* %36, %38
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.38
  %39 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr43 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %39, i32 0, i32 6
  %40 = load i8*, i8** %ptr43, align 8
  %incdec.ptr44 = getelementptr i8, i8* %40, i32 1
  store i8* %incdec.ptr44, i8** %ptr43, align 8
  store i8 83, i8* %40, align 1
  br label %if.end.46

if.else.45:                                       ; preds = %if.else.38
  %41 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 83, %struct.WFILE* %41)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  br label %if.end.110

if.else.48:                                       ; preds = %if.else.30
  %42 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp49 = icmp eq %struct._object* %42, @_Py_EllipsisObject
  br i1 %cmp49, label %if.then.50, label %if.else.66

if.then.50:                                       ; preds = %if.else.48
  %43 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp51 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %43, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8
  %tobool52 = icmp ne %struct._IO_FILE* %44, null
  br i1 %tobool52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.then.50
  %45 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp54 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %45, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp54, align 8
  %call55 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %46)
  br label %if.end.65

if.else.56:                                       ; preds = %if.then.50
  %47 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr57 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %47, i32 0, i32 6
  %48 = load i8*, i8** %ptr57, align 8
  %49 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end58 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %49, i32 0, i32 7
  %50 = load i8*, i8** %end58, align 8
  %cmp59 = icmp ne i8* %48, %50
  br i1 %cmp59, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else.56
  %51 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr61 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %51, i32 0, i32 6
  %52 = load i8*, i8** %ptr61, align 8
  %incdec.ptr62 = getelementptr i8, i8* %52, i32 1
  store i8* %incdec.ptr62, i8** %ptr61, align 8
  store i8 46, i8* %52, align 1
  br label %if.end.64

if.else.63:                                       ; preds = %if.else.56
  %53 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 46, %struct.WFILE* %53)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.53
  br label %if.end.109

if.else.66:                                       ; preds = %if.else.48
  %54 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp67 = icmp eq %struct._object* %54, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp67, label %if.then.68, label %if.else.84

if.then.68:                                       ; preds = %if.else.66
  %55 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp69 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %55, i32 0, i32 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8
  %tobool70 = icmp ne %struct._IO_FILE* %56, null
  br i1 %tobool70, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.then.68
  %57 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp72 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %57, i32 0, i32 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp72, align 8
  %call73 = call i32 @_IO_putc(i32 70, %struct._IO_FILE* %58)
  br label %if.end.83

if.else.74:                                       ; preds = %if.then.68
  %59 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr75 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %59, i32 0, i32 6
  %60 = load i8*, i8** %ptr75, align 8
  %61 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end76 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %61, i32 0, i32 7
  %62 = load i8*, i8** %end76, align 8
  %cmp77 = icmp ne i8* %60, %62
  br i1 %cmp77, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.else.74
  %63 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr79 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %63, i32 0, i32 6
  %64 = load i8*, i8** %ptr79, align 8
  %incdec.ptr80 = getelementptr i8, i8* %64, i32 1
  store i8* %incdec.ptr80, i8** %ptr79, align 8
  store i8 70, i8* %64, align 1
  br label %if.end.82

if.else.81:                                       ; preds = %if.else.74
  %65 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 70, %struct.WFILE* %65)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.71
  br label %if.end.108

if.else.84:                                       ; preds = %if.else.66
  %66 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp85 = icmp eq %struct._object* %66, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp85, label %if.then.86, label %if.else.102

if.then.86:                                       ; preds = %if.else.84
  %67 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp87 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %67, i32 0, i32 0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp87, align 8
  %tobool88 = icmp ne %struct._IO_FILE* %68, null
  br i1 %tobool88, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %if.then.86
  %69 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp90 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %69, i32 0, i32 0
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp90, align 8
  %call91 = call i32 @_IO_putc(i32 84, %struct._IO_FILE* %70)
  br label %if.end.101

if.else.92:                                       ; preds = %if.then.86
  %71 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr93 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %71, i32 0, i32 6
  %72 = load i8*, i8** %ptr93, align 8
  %73 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end94 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %73, i32 0, i32 7
  %74 = load i8*, i8** %end94, align 8
  %cmp95 = icmp ne i8* %72, %74
  br i1 %cmp95, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %if.else.92
  %75 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr97 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %75, i32 0, i32 6
  %76 = load i8*, i8** %ptr97, align 8
  %incdec.ptr98 = getelementptr i8, i8* %76, i32 1
  store i8* %incdec.ptr98, i8** %ptr97, align 8
  store i8 84, i8* %76, align 1
  br label %if.end.100

if.else.99:                                       ; preds = %if.else.92
  %77 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 84, %struct.WFILE* %77)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.89
  br label %if.end.107

if.else.102:                                      ; preds = %if.else.84
  %78 = load %struct._object*, %struct._object** %v.addr, align 8
  %79 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call103 = call i32 @w_ref(%struct._object* %78, i8* %flag, %struct.WFILE* %79)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.102
  %80 = load %struct._object*, %struct._object** %v.addr, align 8
  %81 = load i8, i8* %flag, align 1
  %82 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_complex_object(%struct._object* %80, i8 signext %81, %struct.WFILE* %82)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.else.102
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.83
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.65
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.47
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.29
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.11
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then
  %83 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth114 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %83, i32 0, i32 2
  %84 = load i32, i32* %depth114, align 4
  %dec = add i32 %84, -1
  store i32 %dec, i32* %depth114, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %rf = alloca %struct.WFILE, align 8
  %res = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* null, i8** %ptr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* null, i8** %end, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  store i8* null, i8** %buf, align 8
  %call = call i32 @r_short(%struct.WFILE* %rf)
  store i32 %call, i32* %res, align 4
  %buf2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %1 = load i8*, i8** %buf2, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %buf3 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %2 = load i8*, i8** %buf3, align 8
  call void @PyMem_Free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %res, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @r_short(%struct.WFILE* %p) #0 {
entry:
  %p.addr = alloca %struct.WFILE*, align 8
  %x = alloca i16, align 2
  %buffer = alloca i8*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i16 -1, i16* %x, align 2
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call = call i8* @r_string(i64 2, %struct.WFILE* %0)
  store i8* %call, i8** %buffer, align 8
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i16
  store i16 %conv, i16* %x, align 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx1 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl i32 %conv2, 8
  %6 = load i16, i16* %x, align 2
  %conv3 = sext i16 %6 to i32
  %or = or i32 %conv3, %shl
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %x, align 2
  %7 = load i16, i16* %x, align 2
  %conv5 = sext i16 %7 to i32
  %and = and i32 %conv5, 32768
  %sub = sub i32 0, %and
  %8 = load i16, i16* %x, align 2
  %conv6 = sext i16 %8 to i32
  %or7 = or i32 %conv6, %sub
  %conv8 = trunc i32 %or7 to i16
  store i16 %conv8, i16* %x, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %x, align 2
  %conv9 = sext i16 %9 to i32
  ret i32 %conv9
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %rf = alloca %struct.WFILE, align 8
  %res = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* null, i8** %end, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* null, i8** %ptr, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  store i8* null, i8** %buf, align 8
  %call = call i64 @r_long(%struct.WFILE* %rf)
  store i64 %call, i64* %res, align 8
  %buf2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %1 = load i8*, i8** %buf2, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %buf3 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %2 = load i8*, i8** %buf3, align 8
  call void @PyMem_Free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %res, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @r_long(%struct.WFILE* %p) #0 {
entry:
  %p.addr = alloca %struct.WFILE*, align 8
  %x = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i64 -1, i64* %x, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call = call i8* @r_string(i64 4, %struct.WFILE* %0)
  store i8* %call, i8** %buffer, align 8
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i64
  store i64 %conv, i64* %x, align 8
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx1 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i64
  %shl = shl i64 %conv2, 8
  %6 = load i64, i64* %x, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %x, align 8
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx3 = getelementptr i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i64
  %shl5 = shl i64 %conv4, 16
  %9 = load i64, i64* %x, align 8
  %or6 = or i64 %9, %shl5
  store i64 %or6, i64* %x, align 8
  %10 = load i8*, i8** %buffer, align 8
  %arrayidx7 = getelementptr i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %11 to i64
  %shl9 = shl i64 %conv8, 24
  %12 = load i64, i64* %x, align 8
  %or10 = or i64 %12, %shl9
  store i64 %or10, i64* %x, align 8
  %13 = load i64, i64* %x, align 8
  %and = and i64 %13, 2147483648
  %sub = sub i64 0, %and
  %14 = load i64, i64* %x, align 8
  %or11 = or i64 %14, %sub
  store i64 %or11, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i64, i64* %x, align 8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMarshal_ReadLastObjectFromFile(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filesize = alloca i64, align 8
  %pBuf = alloca i8*, align 8
  %n = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @getfilesize(%struct._IO_FILE* %0)
  store i64 %call, i64* %filesize, align 8
  %1 = load i64, i64* %filesize, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %filesize, align 8
  %cmp1 = icmp sle i64 %2, 262144
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %filesize, align 8
  %call2 = call i8* @PyMem_Malloc(i64 %3)
  store i8* %call2, i8** %pBuf, align 8
  %4 = load i8*, i8** %pBuf, align 8
  %cmp3 = icmp ne i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %pBuf, align 8
  %6 = load i64, i64* %filesize, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i64 @fread(i8* %5, i64 1, i64 %6, %struct._IO_FILE* %7)
  store i64 %call5, i64* %n, align 8
  %8 = load i8*, i8** %pBuf, align 8
  %9 = load i64, i64* %n, align 8
  %call6 = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %8, i64 %9)
  store %struct._object* %call6, %struct._object** %v, align 8
  %10 = load i8*, i8** %pBuf, align 8
  call void @PyMem_Free(i8* %10)
  %11 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call %struct._object* @PyMarshal_ReadObjectFromFile(%struct._IO_FILE* %12)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.4
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal i64 @getfilesize(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i64, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %st = alloca %struct.stat, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %0) #4
  %call1 = call i32 @fstat64(i32 %call, %struct.stat* %st) #4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  store i64 %1, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

declare i8* @PyMem_Malloc(i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMarshal_ReadObjectFromString(i8* %str, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rf = alloca %struct.WFILE, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* %0, i8** %ptr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* %add.ptr, i8** %end, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  store i8* null, i8** %buf, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  store %struct._object* %call, %struct._object** %refs, align 8
  %refs1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %3 = load %struct._object*, %struct._object** %refs1, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @r_object(%struct.WFILE* %rf)
  store %struct._object* %call2, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %refs3 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %4 = load %struct._object*, %struct._object** %refs3, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %buf7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %11 = load i8*, i8** %buf7, align 8
  %cmp8 = icmp ne i8* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %do.end
  %buf10 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %12 = load i8*, i8** %buf10, align 8
  call void @PyMem_Free(i8* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %do.end
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMarshal_ReadObjectFromFile(%struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %rf = alloca %struct.WFILE, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* null, i8** %end, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* null, i8** %ptr, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  store i8* null, i8** %buf, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  store %struct._object* %call, %struct._object** %refs, align 8
  %refs2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %1 = load %struct._object*, %struct._object** %refs2, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call %struct._object* @r_object(%struct.WFILE* %rf)
  store %struct._object* %call3, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %refs4 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %2 = load %struct._object*, %struct._object** %refs4, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %buf8 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %9 = load i8*, i8** %buf8, align 8
  %cmp9 = icmp ne i8* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.end
  %buf11 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %10 = load i8*, i8** %buf11, align 8
  call void @PyMem_Free(i8* %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.end
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @r_object(%struct.WFILE* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %v = alloca %struct._object*, align 8
  %v2 = alloca %struct._object*, align 8
  %idx = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %type = alloca i32, align 4
  %code = alloca i32, align 4
  %flag = alloca i32, align 4
  %is_interned = alloca i32, align 4
  %retval1 = alloca %struct._object*, align 8
  %buf = alloca [256 x i8], align 16
  %ptr = alloca i8*, align 8
  %dx = alloca double, align 8
  %buf60 = alloca i8*, align 8
  %x = alloca double, align 8
  %buf82 = alloca [256 x i8], align 16
  %ptr83 = alloca i8*, align 8
  %c = alloca %struct.Py_complex, align 8
  %buf136 = alloca i8*, align 8
  %c137 = alloca %struct.Py_complex, align 8
  %ptr176 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ptr235 = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %_py_decref_tmp337 = alloca %struct._object*, align 8
  %_py_decref_tmp388 = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp428 = alloca %struct._object*, align 8
  %_py_decref_tmp445 = alloca %struct._object*, align 8
  %_py_decref_tmp457 = alloca %struct._object*, align 8
  %_py_decref_tmp470 = alloca %struct._object*, align 8
  %_py_decref_tmp482 = alloca %struct._object*, align 8
  %_py_decref_tmp498 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp550 = alloca %struct._object*, align 8
  %_py_decref_tmp582 = alloca %struct._object*, align 8
  %_py_decref_tmp599 = alloca %struct._object*, align 8
  %_py_decref_tmp611 = alloca %struct._object*, align 8
  %_py_decref_tmp624 = alloca %struct._object*, align 8
  %argcount = alloca i32, align 4
  %kwonlyargcount = alloca i32, align 4
  %nlocals = alloca i32, align 4
  %stacksize = alloca i32, align 4
  %flags = alloca i32, align 4
  %code644 = alloca %struct._object*, align 8
  %consts = alloca %struct._object*, align 8
  %names = alloca %struct._object*, align 8
  %varnames = alloca %struct._object*, align 8
  %freevars = alloca %struct._object*, align 8
  %cellvars = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %firstlineno = alloca i32, align 4
  %lnotab = alloca %struct._object*, align 8
  %_py_decref_tmp727 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp773 = alloca %struct._object*, align 8
  %_py_xdecref_tmp787 = alloca %struct._object*, align 8
  %_py_decref_tmp792 = alloca %struct._object*, align 8
  %_py_xdecref_tmp806 = alloca %struct._object*, align 8
  %_py_decref_tmp811 = alloca %struct._object*, align 8
  %_py_xdecref_tmp825 = alloca %struct._object*, align 8
  %_py_decref_tmp830 = alloca %struct._object*, align 8
  %_py_xdecref_tmp844 = alloca %struct._object*, align 8
  %_py_decref_tmp849 = alloca %struct._object*, align 8
  %_py_xdecref_tmp863 = alloca %struct._object*, align 8
  %_py_decref_tmp868 = alloca %struct._object*, align 8
  %_py_xdecref_tmp882 = alloca %struct._object*, align 8
  %_py_decref_tmp887 = alloca %struct._object*, align 8
  %_py_xdecref_tmp901 = alloca %struct._object*, align 8
  %_py_decref_tmp906 = alloca %struct._object*, align 8
  %_py_xdecref_tmp920 = alloca %struct._object*, align 8
  %_py_decref_tmp925 = alloca %struct._object*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i64 0, i64* %idx, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call = call i32 @r_byte(%struct.WFILE* %0)
  store i32 %call, i32* %code, align 4
  store i32 0, i32* %is_interned, align 4
  store %struct._object* null, %struct._object** %retval1, align 8
  %1 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 2
  %4 = load i32, i32* %depth, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %depth, align 4
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %5, i32 0, i32 2
  %6 = load i32, i32* %depth2, align 4
  %cmp3 = icmp sgt i32 %6, 2000
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth5 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 2
  %8 = load i32, i32* %depth5, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %depth5, align 4
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %code, align 4
  %and = and i32 %10, -128
  store i32 %and, i32* %flag, align 4
  %11 = load i32, i32* %code, align 4
  %and7 = and i32 %11, 127
  store i32 %and7, i32* %type, align 4
  %12 = load i32, i32* %type, align 4
  switch i32 %12, label %sw.default [
    i32 48, label %sw.bb
    i32 78, label %sw.bb.8
    i32 83, label %sw.bb.10
    i32 46, label %sw.bb.12
    i32 70, label %sw.bb.14
    i32 84, label %sw.bb.16
    i32 105, label %sw.bb.18
    i32 108, label %sw.bb.26
    i32 102, label %sw.bb.34
    i32 103, label %sw.bb.59
    i32 120, label %sw.bb.81
    i32 121, label %sw.bb.135
    i32 115, label %sw.bb.175
    i32 65, label %sw.bb.213
    i32 97, label %sw.bb.214
    i32 90, label %sw.bb.227
    i32 122, label %sw.bb.228
    i32 116, label %sw.bb.255
    i32 117, label %sw.bb.256
    i32 41, label %sw.bb.294
    i32 40, label %sw.bb.302
    i32 91, label %sw.bb.351
    i32 123, label %sw.bb.405
    i32 60, label %sw.bb.510
    i32 62, label %sw.bb.510
    i32 99, label %sw.bb.643
    i32 114, label %sw.bb.938
  ]

sw.bb:                                            ; preds = %if.end.6
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.6
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc9 = add i64 %13, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc11 = add i64 %15, 1
  store i64 %inc11, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  store %struct._object* %16, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.6
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8
  %inc13 = add i64 %17, 1
  store i64 %inc13, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8
  store %struct._object* @_Py_EllipsisObject, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.6
  %18 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc15 = add i64 %18, 1
  store i64 %inc15, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.6
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc17 = add i64 %19, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.6
  %20 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call19 = call i64 @r_long(%struct.WFILE* %20)
  store i64 %call19, i64* %n, align 8
  %call20 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call20, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.18
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.18
  %21 = load i64, i64* %n, align 8
  %call21 = call %struct._object* @PyLong_FromLong(i64 %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %call21, %cond.false ]
  store %struct._object* %cond, %struct._object** %retval1, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %22 = load i32, i32* %flag, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %retval1, align 8
  %24 = load i32, i32* %flag, align 4
  %25 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call24 = call %struct._object* @r_ref(%struct._object* %23, i32 %24, %struct.WFILE* %25)
  store %struct._object* %call24, %struct._object** %retval1, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.6
  %26 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call27 = call %struct._object* @r_PyLong(%struct.WFILE* %26)
  store %struct._object* %call27, %struct._object** %retval1, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %sw.bb.26
  %27 = load i32, i32* %flag, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %do.body.28
  %28 = load %struct._object*, %struct._object** %retval1, align 8
  %29 = load i32, i32* %flag, align 4
  %30 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call31 = call %struct._object* @r_ref(%struct._object* %28, i32 %29, %struct.WFILE* %30)
  store %struct._object* %call31, %struct._object** %retval1, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %do.body.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.6
  %31 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call35 = call i32 @r_byte(%struct.WFILE* %31)
  %conv = sext i32 %call35 to i64
  store i64 %conv, i64* %n, align 8
  %32 = load i64, i64* %n, align 8
  %cmp36 = icmp eq i64 %32, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.34
  %33 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end.39:                                        ; preds = %sw.bb.34
  %34 = load i64, i64* %n, align 8
  %35 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call40 = call i8* @r_string(i64 %34, %struct.WFILE* %35)
  store i8* %call40, i8** %ptr, align 8
  %36 = load i8*, i8** %ptr, align 8
  %cmp41 = icmp eq i8* %36, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  br label %sw.epilog

if.end.44:                                        ; preds = %if.end.39
  %37 = bitcast [256 x i8]* %buf to i8*
  %38 = load i8*, i8** %ptr, align 8
  %39 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %39, i32 1, i1 false)
  %40 = load i64, i64* %n, align 8
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %buf, i32 0, i64 %40
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call45 = call double @PyOS_string_to_double(i8* %arraydecay, i8** null, %struct._object* null)
  store double %call45, double* %dx, align 8
  %41 = load double, double* %dx, align 8
  %cmp46 = fcmp oeq double %41, -1.000000e+00
  br i1 %cmp46, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.44
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  br label %sw.epilog

if.end.51:                                        ; preds = %land.lhs.true, %if.end.44
  %42 = load double, double* %dx, align 8
  %call52 = call %struct._object* @PyFloat_FromDouble(double %42)
  store %struct._object* %call52, %struct._object** %retval1, align 8
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.51
  %43 = load i32, i32* %flag, align 4
  %tobool54 = icmp ne i32 %43, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %do.body.53
  %44 = load %struct._object*, %struct._object** %retval1, align 8
  %45 = load i32, i32* %flag, align 4
  %46 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call56 = call %struct._object* @r_ref(%struct._object* %44, i32 %45, %struct.WFILE* %46)
  store %struct._object* %call56, %struct._object** %retval1, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %do.body.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.6
  %47 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call61 = call i8* @r_string(i64 8, %struct.WFILE* %47)
  store i8* %call61, i8** %buf60, align 8
  %48 = load i8*, i8** %buf60, align 8
  %cmp62 = icmp eq i8* %48, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.59
  br label %sw.epilog

if.end.65:                                        ; preds = %sw.bb.59
  %49 = load i8*, i8** %buf60, align 8
  %call66 = call double @_PyFloat_Unpack8(i8* %49, i32 1)
  store double %call66, double* %x, align 8
  %50 = load double, double* %x, align 8
  %cmp67 = fcmp oeq double %50, -1.000000e+00
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.73

land.lhs.true.69:                                 ; preds = %if.end.65
  %call70 = call %struct._object* @PyErr_Occurred()
  %tobool71 = icmp ne %struct._object* %call70, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.69
  br label %sw.epilog

if.end.73:                                        ; preds = %land.lhs.true.69, %if.end.65
  %51 = load double, double* %x, align 8
  %call74 = call %struct._object* @PyFloat_FromDouble(double %51)
  store %struct._object* %call74, %struct._object** %retval1, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.73
  %52 = load i32, i32* %flag, align 4
  %tobool76 = icmp ne i32 %52, 0
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %do.body.75
  %53 = load %struct._object*, %struct._object** %retval1, align 8
  %54 = load i32, i32* %flag, align 4
  %55 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call78 = call %struct._object* @r_ref(%struct._object* %53, i32 %54, %struct.WFILE* %55)
  store %struct._object* %call78, %struct._object** %retval1, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %do.body.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.6
  %56 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call84 = call i32 @r_byte(%struct.WFILE* %56)
  %conv85 = sext i32 %call84 to i64
  store i64 %conv85, i64* %n, align 8
  %57 = load i64, i64* %n, align 8
  %cmp86 = icmp eq i64 %57, -1
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %sw.bb.81
  %58 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end.89:                                        ; preds = %sw.bb.81
  %59 = load i64, i64* %n, align 8
  %60 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call90 = call i8* @r_string(i64 %59, %struct.WFILE* %60)
  store i8* %call90, i8** %ptr83, align 8
  %61 = load i8*, i8** %ptr83, align 8
  %cmp91 = icmp eq i8* %61, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.89
  br label %sw.epilog

if.end.94:                                        ; preds = %if.end.89
  %62 = bitcast [256 x i8]* %buf82 to i8*
  %63 = load i8*, i8** %ptr83, align 8
  %64 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false)
  %65 = load i64, i64* %n, align 8
  %arrayidx95 = getelementptr [256 x i8], [256 x i8]* %buf82, i32 0, i64 %65
  store i8 0, i8* %arrayidx95, align 1
  %arraydecay96 = getelementptr inbounds [256 x i8], [256 x i8]* %buf82, i32 0, i32 0
  %call97 = call double @PyOS_string_to_double(i8* %arraydecay96, i8** null, %struct._object* null)
  %real = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0
  store double %call97, double* %real, align 8
  %real98 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 0
  %66 = load double, double* %real98, align 8
  %cmp99 = fcmp oeq double %66, -1.000000e+00
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.105

land.lhs.true.101:                                ; preds = %if.end.94
  %call102 = call %struct._object* @PyErr_Occurred()
  %tobool103 = icmp ne %struct._object* %call102, null
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.101
  br label %sw.epilog

if.end.105:                                       ; preds = %land.lhs.true.101, %if.end.94
  %67 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call106 = call i32 @r_byte(%struct.WFILE* %67)
  %conv107 = sext i32 %call106 to i64
  store i64 %conv107, i64* %n, align 8
  %68 = load i64, i64* %n, align 8
  %cmp108 = icmp eq i64 %68, -1
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.105
  %69 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end.111:                                       ; preds = %if.end.105
  %70 = load i64, i64* %n, align 8
  %71 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call112 = call i8* @r_string(i64 %70, %struct.WFILE* %71)
  store i8* %call112, i8** %ptr83, align 8
  %72 = load i8*, i8** %ptr83, align 8
  %cmp113 = icmp eq i8* %72, null
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.111
  br label %sw.epilog

if.end.116:                                       ; preds = %if.end.111
  %73 = bitcast [256 x i8]* %buf82 to i8*
  %74 = load i8*, i8** %ptr83, align 8
  %75 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 %75, i32 1, i1 false)
  %76 = load i64, i64* %n, align 8
  %arrayidx117 = getelementptr [256 x i8], [256 x i8]* %buf82, i32 0, i64 %76
  store i8 0, i8* %arrayidx117, align 1
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %buf82, i32 0, i32 0
  %call119 = call double @PyOS_string_to_double(i8* %arraydecay118, i8** null, %struct._object* null)
  %imag = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  store double %call119, double* %imag, align 8
  %imag120 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c, i32 0, i32 1
  %77 = load double, double* %imag120, align 8
  %cmp121 = fcmp oeq double %77, -1.000000e+00
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.127

land.lhs.true.123:                                ; preds = %if.end.116
  %call124 = call %struct._object* @PyErr_Occurred()
  %tobool125 = icmp ne %struct._object* %call124, null
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.123
  br label %sw.epilog

if.end.127:                                       ; preds = %land.lhs.true.123, %if.end.116
  %78 = bitcast %struct.Py_complex* %c to { double, double }*
  %79 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = load double, double* %79, align 1
  %81 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = load double, double* %81, align 1
  %call128 = call %struct._object* @PyComplex_FromCComplex(double %80, double %82)
  store %struct._object* %call128, %struct._object** %retval1, align 8
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.127
  %83 = load i32, i32* %flag, align 4
  %tobool130 = icmp ne i32 %83, 0
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %do.body.129
  %84 = load %struct._object*, %struct._object** %retval1, align 8
  %85 = load i32, i32* %flag, align 4
  %86 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call132 = call %struct._object* @r_ref(%struct._object* %84, i32 %85, %struct.WFILE* %86)
  store %struct._object* %call132, %struct._object** %retval1, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %do.body.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.end.6
  %87 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call138 = call i8* @r_string(i64 8, %struct.WFILE* %87)
  store i8* %call138, i8** %buf136, align 8
  %88 = load i8*, i8** %buf136, align 8
  %cmp139 = icmp eq i8* %88, null
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %sw.bb.135
  br label %sw.epilog

if.end.142:                                       ; preds = %sw.bb.135
  %89 = load i8*, i8** %buf136, align 8
  %call143 = call double @_PyFloat_Unpack8(i8* %89, i32 1)
  %real144 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c137, i32 0, i32 0
  store double %call143, double* %real144, align 8
  %real145 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c137, i32 0, i32 0
  %90 = load double, double* %real145, align 8
  %cmp146 = fcmp oeq double %90, -1.000000e+00
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.152

land.lhs.true.148:                                ; preds = %if.end.142
  %call149 = call %struct._object* @PyErr_Occurred()
  %tobool150 = icmp ne %struct._object* %call149, null
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %land.lhs.true.148
  br label %sw.epilog

if.end.152:                                       ; preds = %land.lhs.true.148, %if.end.142
  %91 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call153 = call i8* @r_string(i64 8, %struct.WFILE* %91)
  store i8* %call153, i8** %buf136, align 8
  %92 = load i8*, i8** %buf136, align 8
  %cmp154 = icmp eq i8* %92, null
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.152
  br label %sw.epilog

if.end.157:                                       ; preds = %if.end.152
  %93 = load i8*, i8** %buf136, align 8
  %call158 = call double @_PyFloat_Unpack8(i8* %93, i32 1)
  %imag159 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c137, i32 0, i32 1
  store double %call158, double* %imag159, align 8
  %imag160 = getelementptr inbounds %struct.Py_complex, %struct.Py_complex* %c137, i32 0, i32 1
  %94 = load double, double* %imag160, align 8
  %cmp161 = fcmp oeq double %94, -1.000000e+00
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.167

land.lhs.true.163:                                ; preds = %if.end.157
  %call164 = call %struct._object* @PyErr_Occurred()
  %tobool165 = icmp ne %struct._object* %call164, null
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true.163
  br label %sw.epilog

if.end.167:                                       ; preds = %land.lhs.true.163, %if.end.157
  %95 = bitcast %struct.Py_complex* %c137 to { double, double }*
  %96 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = load double, double* %96, align 1
  %98 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = load double, double* %98, align 1
  %call168 = call %struct._object* @PyComplex_FromCComplex(double %97, double %99)
  store %struct._object* %call168, %struct._object** %retval1, align 8
  br label %do.body.169

do.body.169:                                      ; preds = %if.end.167
  %100 = load i32, i32* %flag, align 4
  %tobool170 = icmp ne i32 %100, 0
  br i1 %tobool170, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %do.body.169
  %101 = load %struct._object*, %struct._object** %retval1, align 8
  %102 = load i32, i32* %flag, align 4
  %103 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call172 = call %struct._object* @r_ref(%struct._object* %101, i32 %102, %struct.WFILE* %103)
  store %struct._object* %call172, %struct._object** %retval1, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %do.body.169
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  br label %sw.epilog

sw.bb.175:                                        ; preds = %if.end.6
  %104 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call177 = call i64 @r_long(%struct.WFILE* %104)
  store i64 %call177, i64* %n, align 8
  %call178 = call %struct._object* @PyErr_Occurred()
  %tobool179 = icmp ne %struct._object* %call178, null
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %sw.bb.175
  br label %sw.epilog

if.end.181:                                       ; preds = %sw.bb.175
  %105 = load i64, i64* %n, align 8
  %cmp182 = icmp slt i64 %105, 0
  br i1 %cmp182, label %if.then.186, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.181
  %106 = load i64, i64* %n, align 8
  %cmp184 = icmp sgt i64 %106, 2147483647
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %lor.lhs.false, %if.end.181
  %107 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

if.end.187:                                       ; preds = %lor.lhs.false
  %108 = load i64, i64* %n, align 8
  %call188 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %108)
  store %struct._object* %call188, %struct._object** %v, align 8
  %109 = load %struct._object*, %struct._object** %v, align 8
  %cmp189 = icmp eq %struct._object* %109, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.187
  br label %sw.epilog

if.end.192:                                       ; preds = %if.end.187
  %110 = load i64, i64* %n, align 8
  %111 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call193 = call i8* @r_string(i64 %110, %struct.WFILE* %111)
  store i8* %call193, i8** %ptr176, align 8
  %112 = load i8*, i8** %ptr176, align 8
  %cmp194 = icmp eq i8* %112, null
  br i1 %cmp194, label %if.then.196, label %if.end.205

if.then.196:                                      ; preds = %if.end.192
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %113 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt198, align 8
  %dec199 = add i64 %115, -1
  store i64 %dec199, i64* %ob_refcnt198, align 8
  %cmp200 = icmp ne i64 %dec199, 0
  br i1 %cmp200, label %if.then.202, label %if.else

if.then.202:                                      ; preds = %do.body.197
  br label %if.end.203

if.else:                                          ; preds = %do.body.197
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %118(%struct._object* %119)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else, %if.then.202
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  br label %sw.epilog

if.end.205:                                       ; preds = %if.end.192
  %120 = load %struct._object*, %struct._object** %v, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %121, i32 0, i32 2
  %arraydecay206 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %122 = load i8*, i8** %ptr176, align 8
  %123 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay206, i8* %122, i64 %123, i32 1, i1 false)
  %124 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %124, %struct._object** %retval1, align 8
  br label %do.body.207

do.body.207:                                      ; preds = %if.end.205
  %125 = load i32, i32* %flag, align 4
  %tobool208 = icmp ne i32 %125, 0
  br i1 %tobool208, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %do.body.207
  %126 = load %struct._object*, %struct._object** %retval1, align 8
  %127 = load i32, i32* %flag, align 4
  %128 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call210 = call %struct._object* @r_ref(%struct._object* %126, i32 %127, %struct.WFILE* %128)
  store %struct._object* %call210, %struct._object** %retval1, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %do.body.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %sw.epilog

sw.bb.213:                                        ; preds = %if.end.6
  store i32 1, i32* %is_interned, align 4
  br label %sw.bb.214

sw.bb.214:                                        ; preds = %if.end.6, %sw.bb.213
  %129 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call215 = call i64 @r_long(%struct.WFILE* %129)
  store i64 %call215, i64* %n, align 8
  %call216 = call %struct._object* @PyErr_Occurred()
  %tobool217 = icmp ne %struct._object* %call216, null
  br i1 %tobool217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.214
  br label %sw.epilog

if.end.219:                                       ; preds = %sw.bb.214
  %130 = load i64, i64* %n, align 8
  %cmp220 = icmp slt i64 %130, 0
  br i1 %cmp220, label %if.then.225, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %if.end.219
  %131 = load i64, i64* %n, align 8
  %cmp223 = icmp sgt i64 %131, 2147483647
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %lor.lhs.false.222, %if.end.219
  %132 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %132, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

if.end.226:                                       ; preds = %lor.lhs.false.222
  br label %_read_ascii

sw.bb.227:                                        ; preds = %if.end.6
  store i32 1, i32* %is_interned, align 4
  br label %sw.bb.228

sw.bb.228:                                        ; preds = %if.end.6, %sw.bb.227
  %133 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call229 = call i32 @r_byte(%struct.WFILE* %133)
  %conv230 = sext i32 %call229 to i64
  store i64 %conv230, i64* %n, align 8
  %134 = load i64, i64* %n, align 8
  %cmp231 = icmp eq i64 %134, -1
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %sw.bb.228
  %135 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end.234:                                       ; preds = %sw.bb.228
  br label %_read_ascii

_read_ascii:                                      ; preds = %if.end.234, %if.end.226
  %136 = load i64, i64* %n, align 8
  %137 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call236 = call i8* @r_string(i64 %136, %struct.WFILE* %137)
  store i8* %call236, i8** %ptr235, align 8
  %138 = load i8*, i8** %ptr235, align 8
  %cmp237 = icmp eq i8* %138, null
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %_read_ascii
  br label %sw.epilog

if.end.240:                                       ; preds = %_read_ascii
  %139 = load i8*, i8** %ptr235, align 8
  %140 = load i64, i64* %n, align 8
  %call241 = call %struct._object* @PyUnicode_FromKindAndData(i32 1, i8* %139, i64 %140)
  store %struct._object* %call241, %struct._object** %v, align 8
  %141 = load %struct._object*, %struct._object** %v, align 8
  %cmp242 = icmp eq %struct._object* %141, null
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.240
  br label %sw.epilog

if.end.245:                                       ; preds = %if.end.240
  %142 = load i32, i32* %is_interned, align 4
  %tobool246 = icmp ne i32 %142, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.245
  call void @PyUnicode_InternInPlace(%struct._object** %v)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.end.245
  %143 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %143, %struct._object** %retval1, align 8
  br label %do.body.249

do.body.249:                                      ; preds = %if.end.248
  %144 = load i32, i32* %flag, align 4
  %tobool250 = icmp ne i32 %144, 0
  br i1 %tobool250, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %do.body.249
  %145 = load %struct._object*, %struct._object** %retval1, align 8
  %146 = load i32, i32* %flag, align 4
  %147 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call252 = call %struct._object* @r_ref(%struct._object* %145, i32 %146, %struct.WFILE* %147)
  store %struct._object* %call252, %struct._object** %retval1, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %do.body.249
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.253
  br label %sw.epilog

sw.bb.255:                                        ; preds = %if.end.6
  store i32 1, i32* %is_interned, align 4
  br label %sw.bb.256

sw.bb.256:                                        ; preds = %if.end.6, %sw.bb.255
  %148 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call257 = call i64 @r_long(%struct.WFILE* %148)
  store i64 %call257, i64* %n, align 8
  %call258 = call %struct._object* @PyErr_Occurred()
  %tobool259 = icmp ne %struct._object* %call258, null
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %sw.bb.256
  br label %sw.epilog

if.end.261:                                       ; preds = %sw.bb.256
  %149 = load i64, i64* %n, align 8
  %cmp262 = icmp slt i64 %149, 0
  br i1 %cmp262, label %if.then.267, label %lor.lhs.false.264

lor.lhs.false.264:                                ; preds = %if.end.261
  %150 = load i64, i64* %n, align 8
  %cmp265 = icmp sgt i64 %150, 2147483647
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %lor.lhs.false.264, %if.end.261
  %151 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

if.end.268:                                       ; preds = %lor.lhs.false.264
  %152 = load i64, i64* %n, align 8
  %cmp269 = icmp ne i64 %152, 0
  br i1 %cmp269, label %if.then.271, label %if.else.278

if.then.271:                                      ; preds = %if.end.268
  %153 = load i64, i64* %n, align 8
  %154 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call272 = call i8* @r_string(i64 %153, %struct.WFILE* %154)
  store i8* %call272, i8** %buffer, align 8
  %155 = load i8*, i8** %buffer, align 8
  %cmp273 = icmp eq i8* %155, null
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.then.271
  br label %sw.epilog

if.end.276:                                       ; preds = %if.then.271
  %156 = load i8*, i8** %buffer, align 8
  %157 = load i64, i64* %n, align 8
  %call277 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %156, i64 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call277, %struct._object** %v, align 8
  br label %if.end.280

if.else.278:                                      ; preds = %if.end.268
  %call279 = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  store %struct._object* %call279, %struct._object** %v, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.278, %if.end.276
  %158 = load %struct._object*, %struct._object** %v, align 8
  %cmp281 = icmp eq %struct._object* %158, null
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.280
  br label %sw.epilog

if.end.284:                                       ; preds = %if.end.280
  %159 = load i32, i32* %is_interned, align 4
  %tobool285 = icmp ne i32 %159, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.284
  call void @PyUnicode_InternInPlace(%struct._object** %v)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %if.end.284
  %160 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %160, %struct._object** %retval1, align 8
  br label %do.body.288

do.body.288:                                      ; preds = %if.end.287
  %161 = load i32, i32* %flag, align 4
  %tobool289 = icmp ne i32 %161, 0
  br i1 %tobool289, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %do.body.288
  %162 = load %struct._object*, %struct._object** %retval1, align 8
  %163 = load i32, i32* %flag, align 4
  %164 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call291 = call %struct._object* @r_ref(%struct._object* %162, i32 %163, %struct.WFILE* %164)
  store %struct._object* %call291, %struct._object** %retval1, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.290, %do.body.288
  br label %do.end.293

do.end.293:                                       ; preds = %if.end.292
  br label %sw.epilog

sw.bb.294:                                        ; preds = %if.end.6
  %165 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call295 = call i32 @r_byte(%struct.WFILE* %165)
  %conv296 = trunc i32 %call295 to i8
  %conv297 = zext i8 %conv296 to i64
  store i64 %conv297, i64* %n, align 8
  %call298 = call %struct._object* @PyErr_Occurred()
  %tobool299 = icmp ne %struct._object* %call298, null
  br i1 %tobool299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %sw.bb.294
  br label %sw.epilog

if.end.301:                                       ; preds = %sw.bb.294
  br label %_read_tuple

sw.bb.302:                                        ; preds = %if.end.6
  %166 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call303 = call i64 @r_long(%struct.WFILE* %166)
  store i64 %call303, i64* %n, align 8
  %call304 = call %struct._object* @PyErr_Occurred()
  %tobool305 = icmp ne %struct._object* %call304, null
  br i1 %tobool305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %sw.bb.302
  br label %sw.epilog

if.end.307:                                       ; preds = %sw.bb.302
  %167 = load i64, i64* %n, align 8
  %cmp308 = icmp slt i64 %167, 0
  br i1 %cmp308, label %if.then.313, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %if.end.307
  %168 = load i64, i64* %n, align 8
  %cmp311 = icmp sgt i64 %168, 2147483647
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %lor.lhs.false.310, %if.end.307
  %169 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

if.end.314:                                       ; preds = %lor.lhs.false.310
  br label %_read_tuple

_read_tuple:                                      ; preds = %if.end.314, %if.end.301
  %170 = load i64, i64* %n, align 8
  %call315 = call %struct._object* @PyTuple_New(i64 %170)
  store %struct._object* %call315, %struct._object** %v, align 8
  br label %do.body.316

do.body.316:                                      ; preds = %_read_tuple
  %171 = load i32, i32* %flag, align 4
  %tobool317 = icmp ne i32 %171, 0
  br i1 %tobool317, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %do.body.316
  %172 = load %struct._object*, %struct._object** %v, align 8
  %173 = load i32, i32* %flag, align 4
  %174 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call319 = call %struct._object* @r_ref(%struct._object* %172, i32 %173, %struct.WFILE* %174)
  store %struct._object* %call319, %struct._object** %v, align 8
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.318, %do.body.316
  br label %do.end.321

do.end.321:                                       ; preds = %if.end.320
  %175 = load %struct._object*, %struct._object** %v, align 8
  %cmp322 = icmp eq %struct._object* %175, null
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %do.end.321
  br label %sw.epilog

if.end.325:                                       ; preds = %do.end.321
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.325
  %176 = load i64, i64* %i, align 8
  %177 = load i64, i64* %n, align 8
  %cmp326 = icmp slt i64 %176, %177
  br i1 %cmp326, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %178 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call328 = call %struct._object* @r_object(%struct.WFILE* %178)
  store %struct._object* %call328, %struct._object** %v2, align 8
  %179 = load %struct._object*, %struct._object** %v2, align 8
  %cmp329 = icmp eq %struct._object* %179, null
  br i1 %cmp329, label %if.then.331, label %if.end.348

if.then.331:                                      ; preds = %for.body
  %call332 = call %struct._object* @PyErr_Occurred()
  %tobool333 = icmp ne %struct._object* %call332, null
  br i1 %tobool333, label %if.end.335, label %if.then.334

if.then.334:                                      ; preds = %if.then.331
  %180 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %if.then.331
  br label %do.body.336

do.body.336:                                      ; preds = %if.end.335
  %181 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %181, %struct._object** %_py_decref_tmp337, align 8
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp337, align 8
  %ob_refcnt338 = getelementptr inbounds %struct._object, %struct._object* %182, i32 0, i32 0
  %183 = load i64, i64* %ob_refcnt338, align 8
  %dec339 = add i64 %183, -1
  store i64 %dec339, i64* %ob_refcnt338, align 8
  %cmp340 = icmp ne i64 %dec339, 0
  br i1 %cmp340, label %if.then.342, label %if.else.343

if.then.342:                                      ; preds = %do.body.336
  br label %if.end.346

if.else.343:                                      ; preds = %do.body.336
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp337, align 8
  %ob_type344 = getelementptr inbounds %struct._object, %struct._object* %184, i32 0, i32 1
  %185 = load %struct._typeobject*, %struct._typeobject** %ob_type344, align 8
  %tp_dealloc345 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %185, i32 0, i32 4
  %186 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc345, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp337, align 8
  call void %186(%struct._object* %187)
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.343, %if.then.342
  br label %do.end.347

do.end.347:                                       ; preds = %if.end.346
  store %struct._object* null, %struct._object** %v, align 8
  br label %for.end

if.end.348:                                       ; preds = %for.body
  %188 = load %struct._object*, %struct._object** %v2, align 8
  %189 = load i64, i64* %i, align 8
  %190 = load %struct._object*, %struct._object** %v, align 8
  %191 = bitcast %struct._object* %190 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %191, i32 0, i32 1
  %arrayidx349 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %189
  store %struct._object* %188, %struct._object** %arrayidx349, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.348
  %192 = load i64, i64* %i, align 8
  %inc350 = add i64 %192, 1
  store i64 %inc350, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end.347, %for.cond
  %193 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %193, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.351:                                        ; preds = %if.end.6
  %194 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call352 = call i64 @r_long(%struct.WFILE* %194)
  store i64 %call352, i64* %n, align 8
  %call353 = call %struct._object* @PyErr_Occurred()
  %tobool354 = icmp ne %struct._object* %call353, null
  br i1 %tobool354, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %sw.bb.351
  br label %sw.epilog

if.end.356:                                       ; preds = %sw.bb.351
  %195 = load i64, i64* %n, align 8
  %cmp357 = icmp slt i64 %195, 0
  br i1 %cmp357, label %if.then.362, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %if.end.356
  %196 = load i64, i64* %n, align 8
  %cmp360 = icmp sgt i64 %196, 2147483647
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %lor.lhs.false.359, %if.end.356
  %197 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %197, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

if.end.363:                                       ; preds = %lor.lhs.false.359
  %198 = load i64, i64* %n, align 8
  %call364 = call %struct._object* @PyList_New(i64 %198)
  store %struct._object* %call364, %struct._object** %v, align 8
  br label %do.body.365

do.body.365:                                      ; preds = %if.end.363
  %199 = load i32, i32* %flag, align 4
  %tobool366 = icmp ne i32 %199, 0
  br i1 %tobool366, label %if.then.367, label %if.end.369

if.then.367:                                      ; preds = %do.body.365
  %200 = load %struct._object*, %struct._object** %v, align 8
  %201 = load i32, i32* %flag, align 4
  %202 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call368 = call %struct._object* @r_ref(%struct._object* %200, i32 %201, %struct.WFILE* %202)
  store %struct._object* %call368, %struct._object** %v, align 8
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.367, %do.body.365
  br label %do.end.370

do.end.370:                                       ; preds = %if.end.369
  %203 = load %struct._object*, %struct._object** %v, align 8
  %cmp371 = icmp eq %struct._object* %203, null
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %do.end.370
  br label %sw.epilog

if.end.374:                                       ; preds = %do.end.370
  store i64 0, i64* %i, align 8
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.402, %if.end.374
  %204 = load i64, i64* %i, align 8
  %205 = load i64, i64* %n, align 8
  %cmp376 = icmp slt i64 %204, %205
  br i1 %cmp376, label %for.body.378, label %for.end.404

for.body.378:                                     ; preds = %for.cond.375
  %206 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call379 = call %struct._object* @r_object(%struct.WFILE* %206)
  store %struct._object* %call379, %struct._object** %v2, align 8
  %207 = load %struct._object*, %struct._object** %v2, align 8
  %cmp380 = icmp eq %struct._object* %207, null
  br i1 %cmp380, label %if.then.382, label %if.end.399

if.then.382:                                      ; preds = %for.body.378
  %call383 = call %struct._object* @PyErr_Occurred()
  %tobool384 = icmp ne %struct._object* %call383, null
  br i1 %tobool384, label %if.end.386, label %if.then.385

if.then.385:                                      ; preds = %if.then.382
  %208 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.385, %if.then.382
  br label %do.body.387

do.body.387:                                      ; preds = %if.end.386
  %209 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %209, %struct._object** %_py_decref_tmp388, align 8
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp388, align 8
  %ob_refcnt389 = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 0
  %211 = load i64, i64* %ob_refcnt389, align 8
  %dec390 = add i64 %211, -1
  store i64 %dec390, i64* %ob_refcnt389, align 8
  %cmp391 = icmp ne i64 %dec390, 0
  br i1 %cmp391, label %if.then.393, label %if.else.394

if.then.393:                                      ; preds = %do.body.387
  br label %if.end.397

if.else.394:                                      ; preds = %do.body.387
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp388, align 8
  %ob_type395 = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 1
  %213 = load %struct._typeobject*, %struct._typeobject** %ob_type395, align 8
  %tp_dealloc396 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %213, i32 0, i32 4
  %214 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc396, align 8
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp388, align 8
  call void %214(%struct._object* %215)
  br label %if.end.397

if.end.397:                                       ; preds = %if.else.394, %if.then.393
  br label %do.end.398

do.end.398:                                       ; preds = %if.end.397
  store %struct._object* null, %struct._object** %v, align 8
  br label %for.end.404

if.end.399:                                       ; preds = %for.body.378
  %216 = load %struct._object*, %struct._object** %v2, align 8
  %217 = load i64, i64* %i, align 8
  %218 = load %struct._object*, %struct._object** %v, align 8
  %219 = bitcast %struct._object* %218 to %struct.PyListObject*
  %ob_item400 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %219, i32 0, i32 1
  %220 = load %struct._object**, %struct._object*** %ob_item400, align 8
  %arrayidx401 = getelementptr %struct._object*, %struct._object** %220, i64 %217
  store %struct._object* %216, %struct._object** %arrayidx401, align 8
  br label %for.inc.402

for.inc.402:                                      ; preds = %if.end.399
  %221 = load i64, i64* %i, align 8
  %inc403 = add i64 %221, 1
  store i64 %inc403, i64* %i, align 8
  br label %for.cond.375

for.end.404:                                      ; preds = %do.end.398, %for.cond.375
  %222 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %222, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.405:                                        ; preds = %if.end.6
  %call406 = call %struct._object* @PyDict_New()
  store %struct._object* %call406, %struct._object** %v, align 8
  br label %do.body.407

do.body.407:                                      ; preds = %sw.bb.405
  %223 = load i32, i32* %flag, align 4
  %tobool408 = icmp ne i32 %223, 0
  br i1 %tobool408, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %do.body.407
  %224 = load %struct._object*, %struct._object** %v, align 8
  %225 = load i32, i32* %flag, align 4
  %226 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call410 = call %struct._object* @r_ref(%struct._object* %224, i32 %225, %struct.WFILE* %226)
  store %struct._object* %call410, %struct._object** %v, align 8
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %do.body.407
  br label %do.end.412

do.end.412:                                       ; preds = %if.end.411
  %227 = load %struct._object*, %struct._object** %v, align 8
  %cmp413 = icmp eq %struct._object* %227, null
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %do.end.412
  br label %sw.epilog

if.end.416:                                       ; preds = %do.end.412
  br label %for.cond.417

for.cond.417:                                     ; preds = %do.end.492, %if.end.416
  %228 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call418 = call %struct._object* @r_object(%struct.WFILE* %228)
  store %struct._object* %call418, %struct._object** %key, align 8
  %229 = load %struct._object*, %struct._object** %key, align 8
  %cmp419 = icmp eq %struct._object* %229, null
  br i1 %cmp419, label %if.then.421, label %if.end.422

if.then.421:                                      ; preds = %for.cond.417
  br label %for.end.493

if.end.422:                                       ; preds = %for.cond.417
  %230 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call423 = call %struct._object* @r_object(%struct.WFILE* %230)
  store %struct._object* %call423, %struct._object** %val, align 8
  %231 = load %struct._object*, %struct._object** %val, align 8
  %cmp424 = icmp eq %struct._object* %231, null
  br i1 %cmp424, label %if.then.426, label %if.end.439

if.then.426:                                      ; preds = %if.end.422
  br label %do.body.427

do.body.427:                                      ; preds = %if.then.426
  %232 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %232, %struct._object** %_py_decref_tmp428, align 8
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp428, align 8
  %ob_refcnt429 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 0
  %234 = load i64, i64* %ob_refcnt429, align 8
  %dec430 = add i64 %234, -1
  store i64 %dec430, i64* %ob_refcnt429, align 8
  %cmp431 = icmp ne i64 %dec430, 0
  br i1 %cmp431, label %if.then.433, label %if.else.434

if.then.433:                                      ; preds = %do.body.427
  br label %if.end.437

if.else.434:                                      ; preds = %do.body.427
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp428, align 8
  %ob_type435 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 1
  %236 = load %struct._typeobject*, %struct._typeobject** %ob_type435, align 8
  %tp_dealloc436 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %236, i32 0, i32 4
  %237 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc436, align 8
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp428, align 8
  call void %237(%struct._object* %238)
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.434, %if.then.433
  br label %do.end.438

do.end.438:                                       ; preds = %if.end.437
  br label %for.end.493

if.end.439:                                       ; preds = %if.end.422
  %239 = load %struct._object*, %struct._object** %v, align 8
  %240 = load %struct._object*, %struct._object** %key, align 8
  %241 = load %struct._object*, %struct._object** %val, align 8
  %call440 = call i32 @PyDict_SetItem(%struct._object* %239, %struct._object* %240, %struct._object* %241)
  %cmp441 = icmp slt i32 %call440, 0
  br i1 %cmp441, label %if.then.443, label %if.end.468

if.then.443:                                      ; preds = %if.end.439
  br label %do.body.444

do.body.444:                                      ; preds = %if.then.443
  %242 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %242, %struct._object** %_py_decref_tmp445, align 8
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  %ob_refcnt446 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 0
  %244 = load i64, i64* %ob_refcnt446, align 8
  %dec447 = add i64 %244, -1
  store i64 %dec447, i64* %ob_refcnt446, align 8
  %cmp448 = icmp ne i64 %dec447, 0
  br i1 %cmp448, label %if.then.450, label %if.else.451

if.then.450:                                      ; preds = %do.body.444
  br label %if.end.454

if.else.451:                                      ; preds = %do.body.444
  %245 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  %ob_type452 = getelementptr inbounds %struct._object, %struct._object* %245, i32 0, i32 1
  %246 = load %struct._typeobject*, %struct._typeobject** %ob_type452, align 8
  %tp_dealloc453 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %246, i32 0, i32 4
  %247 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc453, align 8
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  call void %247(%struct._object* %248)
  br label %if.end.454

if.end.454:                                       ; preds = %if.else.451, %if.then.450
  br label %do.end.455

do.end.455:                                       ; preds = %if.end.454
  br label %do.body.456

do.body.456:                                      ; preds = %do.end.455
  %249 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %249, %struct._object** %_py_decref_tmp457, align 8
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8
  %ob_refcnt458 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 0
  %251 = load i64, i64* %ob_refcnt458, align 8
  %dec459 = add i64 %251, -1
  store i64 %dec459, i64* %ob_refcnt458, align 8
  %cmp460 = icmp ne i64 %dec459, 0
  br i1 %cmp460, label %if.then.462, label %if.else.463

if.then.462:                                      ; preds = %do.body.456
  br label %if.end.466

if.else.463:                                      ; preds = %do.body.456
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8
  %ob_type464 = getelementptr inbounds %struct._object, %struct._object* %252, i32 0, i32 1
  %253 = load %struct._typeobject*, %struct._typeobject** %ob_type464, align 8
  %tp_dealloc465 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %253, i32 0, i32 4
  %254 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc465, align 8
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp457, align 8
  call void %254(%struct._object* %255)
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.463, %if.then.462
  br label %do.end.467

do.end.467:                                       ; preds = %if.end.466
  br label %for.end.493

if.end.468:                                       ; preds = %if.end.439
  br label %do.body.469

do.body.469:                                      ; preds = %if.end.468
  %256 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %256, %struct._object** %_py_decref_tmp470, align 8
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp470, align 8
  %ob_refcnt471 = getelementptr inbounds %struct._object, %struct._object* %257, i32 0, i32 0
  %258 = load i64, i64* %ob_refcnt471, align 8
  %dec472 = add i64 %258, -1
  store i64 %dec472, i64* %ob_refcnt471, align 8
  %cmp473 = icmp ne i64 %dec472, 0
  br i1 %cmp473, label %if.then.475, label %if.else.476

if.then.475:                                      ; preds = %do.body.469
  br label %if.end.479

if.else.476:                                      ; preds = %do.body.469
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp470, align 8
  %ob_type477 = getelementptr inbounds %struct._object, %struct._object* %259, i32 0, i32 1
  %260 = load %struct._typeobject*, %struct._typeobject** %ob_type477, align 8
  %tp_dealloc478 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %260, i32 0, i32 4
  %261 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc478, align 8
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp470, align 8
  call void %261(%struct._object* %262)
  br label %if.end.479

if.end.479:                                       ; preds = %if.else.476, %if.then.475
  br label %do.end.480

do.end.480:                                       ; preds = %if.end.479
  br label %do.body.481

do.body.481:                                      ; preds = %do.end.480
  %263 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %263, %struct._object** %_py_decref_tmp482, align 8
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp482, align 8
  %ob_refcnt483 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 0
  %265 = load i64, i64* %ob_refcnt483, align 8
  %dec484 = add i64 %265, -1
  store i64 %dec484, i64* %ob_refcnt483, align 8
  %cmp485 = icmp ne i64 %dec484, 0
  br i1 %cmp485, label %if.then.487, label %if.else.488

if.then.487:                                      ; preds = %do.body.481
  br label %if.end.491

if.else.488:                                      ; preds = %do.body.481
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp482, align 8
  %ob_type489 = getelementptr inbounds %struct._object, %struct._object* %266, i32 0, i32 1
  %267 = load %struct._typeobject*, %struct._typeobject** %ob_type489, align 8
  %tp_dealloc490 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %267, i32 0, i32 4
  %268 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc490, align 8
  %269 = load %struct._object*, %struct._object** %_py_decref_tmp482, align 8
  call void %268(%struct._object* %269)
  br label %if.end.491

if.end.491:                                       ; preds = %if.else.488, %if.then.487
  br label %do.end.492

do.end.492:                                       ; preds = %if.end.491
  br label %for.cond.417

for.end.493:                                      ; preds = %do.end.467, %do.end.438, %if.then.421
  %call494 = call %struct._object* @PyErr_Occurred()
  %tobool495 = icmp ne %struct._object* %call494, null
  br i1 %tobool495, label %if.then.496, label %if.end.509

if.then.496:                                      ; preds = %for.end.493
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %270 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %270, %struct._object** %_py_decref_tmp498, align 8
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_refcnt499 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0
  %272 = load i64, i64* %ob_refcnt499, align 8
  %dec500 = add i64 %272, -1
  store i64 %dec500, i64* %ob_refcnt499, align 8
  %cmp501 = icmp ne i64 %dec500, 0
  br i1 %cmp501, label %if.then.503, label %if.else.504

if.then.503:                                      ; preds = %do.body.497
  br label %if.end.507

if.else.504:                                      ; preds = %do.body.497
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_type505 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 1
  %274 = load %struct._typeobject*, %struct._typeobject** %ob_type505, align 8
  %tp_dealloc506 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %274, i32 0, i32 4
  %275 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc506, align 8
  %276 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  call void %275(%struct._object* %276)
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.504, %if.then.503
  br label %do.end.508

do.end.508:                                       ; preds = %if.end.507
  store %struct._object* null, %struct._object** %v, align 8
  br label %if.end.509

if.end.509:                                       ; preds = %do.end.508, %for.end.493
  %277 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %277, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.510:                                        ; preds = %if.end.6, %if.end.6
  %278 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call511 = call i64 @r_long(%struct.WFILE* %278)
  store i64 %call511, i64* %n, align 8
  %call512 = call %struct._object* @PyErr_Occurred()
  %tobool513 = icmp ne %struct._object* %call512, null
  br i1 %tobool513, label %if.then.514, label %if.end.515

if.then.514:                                      ; preds = %sw.bb.510
  br label %sw.epilog

if.end.515:                                       ; preds = %sw.bb.510
  %279 = load i64, i64* %n, align 8
  %cmp516 = icmp slt i64 %279, 0
  br i1 %cmp516, label %if.then.521, label %lor.lhs.false.518

lor.lhs.false.518:                                ; preds = %if.end.515
  %280 = load i64, i64* %n, align 8
  %cmp519 = icmp sgt i64 %280, 2147483647
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %lor.lhs.false.518, %if.end.515
  %281 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %281, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog

if.end.522:                                       ; preds = %lor.lhs.false.518
  %282 = load i32, i32* %type, align 4
  %cmp523 = icmp eq i32 %282, 60
  br i1 %cmp523, label %cond.true.525, label %cond.false.527

cond.true.525:                                    ; preds = %if.end.522
  %call526 = call %struct._object* @PySet_New(%struct._object* null)
  br label %cond.end.529

cond.false.527:                                   ; preds = %if.end.522
  %call528 = call %struct._object* @PyFrozenSet_New(%struct._object* null)
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.false.527, %cond.true.525
  %cond530 = phi %struct._object* [ %call526, %cond.true.525 ], [ %call528, %cond.false.527 ]
  store %struct._object* %cond530, %struct._object** %v, align 8
  %283 = load i32, i32* %type, align 4
  %cmp531 = icmp eq i32 %283, 60
  br i1 %cmp531, label %if.then.533, label %if.else.540

if.then.533:                                      ; preds = %cond.end.529
  br label %do.body.534

do.body.534:                                      ; preds = %if.then.533
  %284 = load i32, i32* %flag, align 4
  %tobool535 = icmp ne i32 %284, 0
  br i1 %tobool535, label %if.then.536, label %if.end.538

if.then.536:                                      ; preds = %do.body.534
  %285 = load %struct._object*, %struct._object** %v, align 8
  %286 = load i32, i32* %flag, align 4
  %287 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call537 = call %struct._object* @r_ref(%struct._object* %285, i32 %286, %struct.WFILE* %287)
  store %struct._object* %call537, %struct._object** %v, align 8
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.536, %do.body.534
  br label %do.end.539

do.end.539:                                       ; preds = %if.end.538
  br label %if.end.564

if.else.540:                                      ; preds = %cond.end.529
  %288 = load i32, i32* %flag, align 4
  %289 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call541 = call i64 @r_ref_reserve(i32 %288, %struct.WFILE* %289)
  store i64 %call541, i64* %idx, align 8
  %290 = load i64, i64* %idx, align 8
  %cmp542 = icmp slt i64 %290, 0
  br i1 %cmp542, label %if.then.544, label %if.end.563

if.then.544:                                      ; preds = %if.else.540
  br label %do.body.545

do.body.545:                                      ; preds = %if.then.544
  %291 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %291, %struct._object** %_py_tmp, align 8
  %292 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp546 = icmp ne %struct._object* %292, null
  br i1 %cmp546, label %if.then.548, label %if.end.561

if.then.548:                                      ; preds = %do.body.545
  store %struct._object* null, %struct._object** %v, align 8
  br label %do.body.549

do.body.549:                                      ; preds = %if.then.548
  %293 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %293, %struct._object** %_py_decref_tmp550, align 8
  %294 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  %ob_refcnt551 = getelementptr inbounds %struct._object, %struct._object* %294, i32 0, i32 0
  %295 = load i64, i64* %ob_refcnt551, align 8
  %dec552 = add i64 %295, -1
  store i64 %dec552, i64* %ob_refcnt551, align 8
  %cmp553 = icmp ne i64 %dec552, 0
  br i1 %cmp553, label %if.then.555, label %if.else.556

if.then.555:                                      ; preds = %do.body.549
  br label %if.end.559

if.else.556:                                      ; preds = %do.body.549
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  %ob_type557 = getelementptr inbounds %struct._object, %struct._object* %296, i32 0, i32 1
  %297 = load %struct._typeobject*, %struct._typeobject** %ob_type557, align 8
  %tp_dealloc558 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %297, i32 0, i32 4
  %298 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc558, align 8
  %299 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  call void %298(%struct._object* %299)
  br label %if.end.559

if.end.559:                                       ; preds = %if.else.556, %if.then.555
  br label %do.end.560

do.end.560:                                       ; preds = %if.end.559
  br label %if.end.561

if.end.561:                                       ; preds = %do.end.560, %do.body.545
  br label %do.end.562

do.end.562:                                       ; preds = %if.end.561
  br label %if.end.563

if.end.563:                                       ; preds = %do.end.562, %if.else.540
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %do.end.539
  %300 = load %struct._object*, %struct._object** %v, align 8
  %cmp565 = icmp eq %struct._object* %300, null
  br i1 %cmp565, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %if.end.564
  br label %sw.epilog

if.end.568:                                       ; preds = %if.end.564
  store i64 0, i64* %i, align 8
  br label %for.cond.569

for.cond.569:                                     ; preds = %for.inc.635, %if.end.568
  %301 = load i64, i64* %i, align 8
  %302 = load i64, i64* %n, align 8
  %cmp570 = icmp slt i64 %301, %302
  br i1 %cmp570, label %for.body.572, label %for.end.637

for.body.572:                                     ; preds = %for.cond.569
  %303 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call573 = call %struct._object* @r_object(%struct.WFILE* %303)
  store %struct._object* %call573, %struct._object** %v2, align 8
  %304 = load %struct._object*, %struct._object** %v2, align 8
  %cmp574 = icmp eq %struct._object* %304, null
  br i1 %cmp574, label %if.then.576, label %if.end.593

if.then.576:                                      ; preds = %for.body.572
  %call577 = call %struct._object* @PyErr_Occurred()
  %tobool578 = icmp ne %struct._object* %call577, null
  br i1 %tobool578, label %if.end.580, label %if.then.579

if.then.579:                                      ; preds = %if.then.576
  %305 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %305, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.579, %if.then.576
  br label %do.body.581

do.body.581:                                      ; preds = %if.end.580
  %306 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %306, %struct._object** %_py_decref_tmp582, align 8
  %307 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_refcnt583 = getelementptr inbounds %struct._object, %struct._object* %307, i32 0, i32 0
  %308 = load i64, i64* %ob_refcnt583, align 8
  %dec584 = add i64 %308, -1
  store i64 %dec584, i64* %ob_refcnt583, align 8
  %cmp585 = icmp ne i64 %dec584, 0
  br i1 %cmp585, label %if.then.587, label %if.else.588

if.then.587:                                      ; preds = %do.body.581
  br label %if.end.591

if.else.588:                                      ; preds = %do.body.581
  %309 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_type589 = getelementptr inbounds %struct._object, %struct._object* %309, i32 0, i32 1
  %310 = load %struct._typeobject*, %struct._typeobject** %ob_type589, align 8
  %tp_dealloc590 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %310, i32 0, i32 4
  %311 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc590, align 8
  %312 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  call void %311(%struct._object* %312)
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.588, %if.then.587
  br label %do.end.592

do.end.592:                                       ; preds = %if.end.591
  store %struct._object* null, %struct._object** %v, align 8
  br label %for.end.637

if.end.593:                                       ; preds = %for.body.572
  %313 = load %struct._object*, %struct._object** %v, align 8
  %314 = load %struct._object*, %struct._object** %v2, align 8
  %call594 = call i32 @PySet_Add(%struct._object* %313, %struct._object* %314)
  %cmp595 = icmp eq i32 %call594, -1
  br i1 %cmp595, label %if.then.597, label %if.end.622

if.then.597:                                      ; preds = %if.end.593
  br label %do.body.598

do.body.598:                                      ; preds = %if.then.597
  %315 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %315, %struct._object** %_py_decref_tmp599, align 8
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp599, align 8
  %ob_refcnt600 = getelementptr inbounds %struct._object, %struct._object* %316, i32 0, i32 0
  %317 = load i64, i64* %ob_refcnt600, align 8
  %dec601 = add i64 %317, -1
  store i64 %dec601, i64* %ob_refcnt600, align 8
  %cmp602 = icmp ne i64 %dec601, 0
  br i1 %cmp602, label %if.then.604, label %if.else.605

if.then.604:                                      ; preds = %do.body.598
  br label %if.end.608

if.else.605:                                      ; preds = %do.body.598
  %318 = load %struct._object*, %struct._object** %_py_decref_tmp599, align 8
  %ob_type606 = getelementptr inbounds %struct._object, %struct._object* %318, i32 0, i32 1
  %319 = load %struct._typeobject*, %struct._typeobject** %ob_type606, align 8
  %tp_dealloc607 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %319, i32 0, i32 4
  %320 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc607, align 8
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp599, align 8
  call void %320(%struct._object* %321)
  br label %if.end.608

if.end.608:                                       ; preds = %if.else.605, %if.then.604
  br label %do.end.609

do.end.609:                                       ; preds = %if.end.608
  br label %do.body.610

do.body.610:                                      ; preds = %do.end.609
  %322 = load %struct._object*, %struct._object** %v2, align 8
  store %struct._object* %322, %struct._object** %_py_decref_tmp611, align 8
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp611, align 8
  %ob_refcnt612 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 0
  %324 = load i64, i64* %ob_refcnt612, align 8
  %dec613 = add i64 %324, -1
  store i64 %dec613, i64* %ob_refcnt612, align 8
  %cmp614 = icmp ne i64 %dec613, 0
  br i1 %cmp614, label %if.then.616, label %if.else.617

if.then.616:                                      ; preds = %do.body.610
  br label %if.end.620

if.else.617:                                      ; preds = %do.body.610
  %325 = load %struct._object*, %struct._object** %_py_decref_tmp611, align 8
  %ob_type618 = getelementptr inbounds %struct._object, %struct._object* %325, i32 0, i32 1
  %326 = load %struct._typeobject*, %struct._typeobject** %ob_type618, align 8
  %tp_dealloc619 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %326, i32 0, i32 4
  %327 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc619, align 8
  %328 = load %struct._object*, %struct._object** %_py_decref_tmp611, align 8
  call void %327(%struct._object* %328)
  br label %if.end.620

if.end.620:                                       ; preds = %if.else.617, %if.then.616
  br label %do.end.621

do.end.621:                                       ; preds = %if.end.620
  store %struct._object* null, %struct._object** %v, align 8
  br label %for.end.637

if.end.622:                                       ; preds = %if.end.593
  br label %do.body.623

do.body.623:                                      ; preds = %if.end.622
  %329 = load %struct._object*, %struct._object** %v2, align 8
  store %struct._object* %329, %struct._object** %_py_decref_tmp624, align 8
  %330 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  %ob_refcnt625 = getelementptr inbounds %struct._object, %struct._object* %330, i32 0, i32 0
  %331 = load i64, i64* %ob_refcnt625, align 8
  %dec626 = add i64 %331, -1
  store i64 %dec626, i64* %ob_refcnt625, align 8
  %cmp627 = icmp ne i64 %dec626, 0
  br i1 %cmp627, label %if.then.629, label %if.else.630

if.then.629:                                      ; preds = %do.body.623
  br label %if.end.633

if.else.630:                                      ; preds = %do.body.623
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  %ob_type631 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 1
  %333 = load %struct._typeobject*, %struct._typeobject** %ob_type631, align 8
  %tp_dealloc632 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %333, i32 0, i32 4
  %334 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc632, align 8
  %335 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  call void %334(%struct._object* %335)
  br label %if.end.633

if.end.633:                                       ; preds = %if.else.630, %if.then.629
  br label %do.end.634

do.end.634:                                       ; preds = %if.end.633
  br label %for.inc.635

for.inc.635:                                      ; preds = %do.end.634
  %336 = load i64, i64* %i, align 8
  %inc636 = add i64 %336, 1
  store i64 %inc636, i64* %i, align 8
  br label %for.cond.569

for.end.637:                                      ; preds = %do.end.621, %do.end.592, %for.cond.569
  %337 = load i32, i32* %type, align 4
  %cmp638 = icmp ne i32 %337, 60
  br i1 %cmp638, label %if.then.640, label %if.end.642

if.then.640:                                      ; preds = %for.end.637
  %338 = load %struct._object*, %struct._object** %v, align 8
  %339 = load i64, i64* %idx, align 8
  %340 = load i32, i32* %flag, align 4
  %341 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call641 = call %struct._object* @r_ref_insert(%struct._object* %338, i64 %339, i32 %340, %struct.WFILE* %341)
  store %struct._object* %call641, %struct._object** %v, align 8
  br label %if.end.642

if.end.642:                                       ; preds = %if.then.640, %for.end.637
  %342 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %342, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.643:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %code644, align 8
  store %struct._object* null, %struct._object** %consts, align 8
  store %struct._object* null, %struct._object** %names, align 8
  store %struct._object* null, %struct._object** %varnames, align 8
  store %struct._object* null, %struct._object** %freevars, align 8
  store %struct._object* null, %struct._object** %cellvars, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %lnotab, align 8
  %343 = load i32, i32* %flag, align 4
  %344 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call645 = call i64 @r_ref_reserve(i32 %343, %struct.WFILE* %344)
  store i64 %call645, i64* %idx, align 8
  %345 = load i64, i64* %idx, align 8
  %cmp646 = icmp slt i64 %345, 0
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %sw.bb.643
  br label %sw.epilog

if.end.649:                                       ; preds = %sw.bb.643
  store %struct._object* null, %struct._object** %v, align 8
  %346 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call650 = call i64 @r_long(%struct.WFILE* %346)
  %conv651 = trunc i64 %call650 to i32
  store i32 %conv651, i32* %argcount, align 4
  %call652 = call %struct._object* @PyErr_Occurred()
  %tobool653 = icmp ne %struct._object* %call652, null
  br i1 %tobool653, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %if.end.649
  br label %code_error

if.end.655:                                       ; preds = %if.end.649
  %347 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call656 = call i64 @r_long(%struct.WFILE* %347)
  %conv657 = trunc i64 %call656 to i32
  store i32 %conv657, i32* %kwonlyargcount, align 4
  %call658 = call %struct._object* @PyErr_Occurred()
  %tobool659 = icmp ne %struct._object* %call658, null
  br i1 %tobool659, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %if.end.655
  br label %code_error

if.end.661:                                       ; preds = %if.end.655
  %348 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call662 = call i64 @r_long(%struct.WFILE* %348)
  %conv663 = trunc i64 %call662 to i32
  store i32 %conv663, i32* %nlocals, align 4
  %call664 = call %struct._object* @PyErr_Occurred()
  %tobool665 = icmp ne %struct._object* %call664, null
  br i1 %tobool665, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %if.end.661
  br label %code_error

if.end.667:                                       ; preds = %if.end.661
  %349 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call668 = call i64 @r_long(%struct.WFILE* %349)
  %conv669 = trunc i64 %call668 to i32
  store i32 %conv669, i32* %stacksize, align 4
  %call670 = call %struct._object* @PyErr_Occurred()
  %tobool671 = icmp ne %struct._object* %call670, null
  br i1 %tobool671, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %if.end.667
  br label %code_error

if.end.673:                                       ; preds = %if.end.667
  %350 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call674 = call i64 @r_long(%struct.WFILE* %350)
  %conv675 = trunc i64 %call674 to i32
  store i32 %conv675, i32* %flags, align 4
  %call676 = call %struct._object* @PyErr_Occurred()
  %tobool677 = icmp ne %struct._object* %call676, null
  br i1 %tobool677, label %if.then.678, label %if.end.679

if.then.678:                                      ; preds = %if.end.673
  br label %code_error

if.end.679:                                       ; preds = %if.end.673
  %351 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call680 = call %struct._object* @r_object(%struct.WFILE* %351)
  store %struct._object* %call680, %struct._object** %code644, align 8
  %352 = load %struct._object*, %struct._object** %code644, align 8
  %cmp681 = icmp eq %struct._object* %352, null
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %if.end.679
  br label %code_error

if.end.684:                                       ; preds = %if.end.679
  %353 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call685 = call %struct._object* @r_object(%struct.WFILE* %353)
  store %struct._object* %call685, %struct._object** %consts, align 8
  %354 = load %struct._object*, %struct._object** %consts, align 8
  %cmp686 = icmp eq %struct._object* %354, null
  br i1 %cmp686, label %if.then.688, label %if.end.689

if.then.688:                                      ; preds = %if.end.684
  br label %code_error

if.end.689:                                       ; preds = %if.end.684
  %355 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call690 = call %struct._object* @r_object(%struct.WFILE* %355)
  store %struct._object* %call690, %struct._object** %names, align 8
  %356 = load %struct._object*, %struct._object** %names, align 8
  %cmp691 = icmp eq %struct._object* %356, null
  br i1 %cmp691, label %if.then.693, label %if.end.694

if.then.693:                                      ; preds = %if.end.689
  br label %code_error

if.end.694:                                       ; preds = %if.end.689
  %357 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call695 = call %struct._object* @r_object(%struct.WFILE* %357)
  store %struct._object* %call695, %struct._object** %varnames, align 8
  %358 = load %struct._object*, %struct._object** %varnames, align 8
  %cmp696 = icmp eq %struct._object* %358, null
  br i1 %cmp696, label %if.then.698, label %if.end.699

if.then.698:                                      ; preds = %if.end.694
  br label %code_error

if.end.699:                                       ; preds = %if.end.694
  %359 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call700 = call %struct._object* @r_object(%struct.WFILE* %359)
  store %struct._object* %call700, %struct._object** %freevars, align 8
  %360 = load %struct._object*, %struct._object** %freevars, align 8
  %cmp701 = icmp eq %struct._object* %360, null
  br i1 %cmp701, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %if.end.699
  br label %code_error

if.end.704:                                       ; preds = %if.end.699
  %361 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call705 = call %struct._object* @r_object(%struct.WFILE* %361)
  store %struct._object* %call705, %struct._object** %cellvars, align 8
  %362 = load %struct._object*, %struct._object** %cellvars, align 8
  %cmp706 = icmp eq %struct._object* %362, null
  br i1 %cmp706, label %if.then.708, label %if.end.709

if.then.708:                                      ; preds = %if.end.704
  br label %code_error

if.end.709:                                       ; preds = %if.end.704
  %363 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call710 = call %struct._object* @r_object(%struct.WFILE* %363)
  store %struct._object* %call710, %struct._object** %filename, align 8
  %364 = load %struct._object*, %struct._object** %filename, align 8
  %cmp711 = icmp eq %struct._object* %364, null
  br i1 %cmp711, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %if.end.709
  br label %code_error

if.end.714:                                       ; preds = %if.end.709
  %365 = load %struct._object*, %struct._object** %filename, align 8
  %ob_type715 = getelementptr inbounds %struct._object, %struct._object* %365, i32 0, i32 1
  %366 = load %struct._typeobject*, %struct._typeobject** %ob_type715, align 8
  %cmp716 = icmp eq %struct._typeobject* %366, @PyUnicode_Type
  br i1 %cmp716, label %if.then.718, label %if.end.746

if.then.718:                                      ; preds = %if.end.714
  %367 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %367, i32 0, i32 5
  %368 = load %struct._object*, %struct._object** %current_filename, align 8
  %cmp719 = icmp ne %struct._object* %368, null
  br i1 %cmp719, label %if.then.721, label %if.else.743

if.then.721:                                      ; preds = %if.then.718
  %369 = load %struct._object*, %struct._object** %filename, align 8
  %370 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %current_filename722 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %370, i32 0, i32 5
  %371 = load %struct._object*, %struct._object** %current_filename722, align 8
  %call723 = call i32 @PyUnicode_Compare(%struct._object* %369, %struct._object* %371)
  %tobool724 = icmp ne i32 %call723, 0
  br i1 %tobool724, label %if.end.742, label %if.then.725

if.then.725:                                      ; preds = %if.then.721
  br label %do.body.726

do.body.726:                                      ; preds = %if.then.725
  %372 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %372, %struct._object** %_py_decref_tmp727, align 8
  %373 = load %struct._object*, %struct._object** %_py_decref_tmp727, align 8
  %ob_refcnt728 = getelementptr inbounds %struct._object, %struct._object* %373, i32 0, i32 0
  %374 = load i64, i64* %ob_refcnt728, align 8
  %dec729 = add i64 %374, -1
  store i64 %dec729, i64* %ob_refcnt728, align 8
  %cmp730 = icmp ne i64 %dec729, 0
  br i1 %cmp730, label %if.then.732, label %if.else.733

if.then.732:                                      ; preds = %do.body.726
  br label %if.end.736

if.else.733:                                      ; preds = %do.body.726
  %375 = load %struct._object*, %struct._object** %_py_decref_tmp727, align 8
  %ob_type734 = getelementptr inbounds %struct._object, %struct._object* %375, i32 0, i32 1
  %376 = load %struct._typeobject*, %struct._typeobject** %ob_type734, align 8
  %tp_dealloc735 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %376, i32 0, i32 4
  %377 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc735, align 8
  %378 = load %struct._object*, %struct._object** %_py_decref_tmp727, align 8
  call void %377(%struct._object* %378)
  br label %if.end.736

if.end.736:                                       ; preds = %if.else.733, %if.then.732
  br label %do.end.737

do.end.737:                                       ; preds = %if.end.736
  %379 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %current_filename738 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %379, i32 0, i32 5
  %380 = load %struct._object*, %struct._object** %current_filename738, align 8
  %ob_refcnt739 = getelementptr inbounds %struct._object, %struct._object* %380, i32 0, i32 0
  %381 = load i64, i64* %ob_refcnt739, align 8
  %inc740 = add i64 %381, 1
  store i64 %inc740, i64* %ob_refcnt739, align 8
  %382 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %current_filename741 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %382, i32 0, i32 5
  %383 = load %struct._object*, %struct._object** %current_filename741, align 8
  store %struct._object* %383, %struct._object** %filename, align 8
  br label %if.end.742

if.end.742:                                       ; preds = %do.end.737, %if.then.721
  br label %if.end.745

if.else.743:                                      ; preds = %if.then.718
  %384 = load %struct._object*, %struct._object** %filename, align 8
  %385 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %current_filename744 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %385, i32 0, i32 5
  store %struct._object* %384, %struct._object** %current_filename744, align 8
  br label %if.end.745

if.end.745:                                       ; preds = %if.else.743, %if.end.742
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %if.end.714
  %386 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call747 = call %struct._object* @r_object(%struct.WFILE* %386)
  store %struct._object* %call747, %struct._object** %name, align 8
  %387 = load %struct._object*, %struct._object** %name, align 8
  %cmp748 = icmp eq %struct._object* %387, null
  br i1 %cmp748, label %if.then.750, label %if.end.751

if.then.750:                                      ; preds = %if.end.746
  br label %code_error

if.end.751:                                       ; preds = %if.end.746
  %388 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call752 = call i64 @r_long(%struct.WFILE* %388)
  %conv753 = trunc i64 %call752 to i32
  store i32 %conv753, i32* %firstlineno, align 4
  %389 = load i32, i32* %firstlineno, align 4
  %cmp754 = icmp eq i32 %389, -1
  br i1 %cmp754, label %land.lhs.true.756, label %if.end.760

land.lhs.true.756:                                ; preds = %if.end.751
  %call757 = call %struct._object* @PyErr_Occurred()
  %tobool758 = icmp ne %struct._object* %call757, null
  br i1 %tobool758, label %if.then.759, label %if.end.760

if.then.759:                                      ; preds = %land.lhs.true.756
  br label %sw.epilog

if.end.760:                                       ; preds = %land.lhs.true.756, %if.end.751
  %390 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call761 = call %struct._object* @r_object(%struct.WFILE* %390)
  store %struct._object* %call761, %struct._object** %lnotab, align 8
  %391 = load %struct._object*, %struct._object** %lnotab, align 8
  %cmp762 = icmp eq %struct._object* %391, null
  br i1 %cmp762, label %if.then.764, label %if.end.765

if.then.764:                                      ; preds = %if.end.760
  br label %code_error

if.end.765:                                       ; preds = %if.end.760
  %392 = load i32, i32* %argcount, align 4
  %393 = load i32, i32* %kwonlyargcount, align 4
  %394 = load i32, i32* %nlocals, align 4
  %395 = load i32, i32* %stacksize, align 4
  %396 = load i32, i32* %flags, align 4
  %397 = load %struct._object*, %struct._object** %code644, align 8
  %398 = load %struct._object*, %struct._object** %consts, align 8
  %399 = load %struct._object*, %struct._object** %names, align 8
  %400 = load %struct._object*, %struct._object** %varnames, align 8
  %401 = load %struct._object*, %struct._object** %freevars, align 8
  %402 = load %struct._object*, %struct._object** %cellvars, align 8
  %403 = load %struct._object*, %struct._object** %filename, align 8
  %404 = load %struct._object*, %struct._object** %name, align 8
  %405 = load i32, i32* %firstlineno, align 4
  %406 = load %struct._object*, %struct._object** %lnotab, align 8
  %call766 = call %struct.PyCodeObject* @PyCode_New(i32 %392, i32 %393, i32 %394, i32 %395, i32 %396, %struct._object* %397, %struct._object* %398, %struct._object* %399, %struct._object* %400, %struct._object* %401, %struct._object* %402, %struct._object* %403, %struct._object* %404, i32 %405, %struct._object* %406)
  %407 = bitcast %struct.PyCodeObject* %call766 to %struct._object*
  store %struct._object* %407, %struct._object** %v, align 8
  %408 = load %struct._object*, %struct._object** %v, align 8
  %409 = load i64, i64* %idx, align 8
  %410 = load i32, i32* %flag, align 4
  %411 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call767 = call %struct._object* @r_ref_insert(%struct._object* %408, i64 %409, i32 %410, %struct.WFILE* %411)
  store %struct._object* %call767, %struct._object** %v, align 8
  br label %code_error

code_error:                                       ; preds = %if.end.765, %if.then.764, %if.then.750, %if.then.713, %if.then.708, %if.then.703, %if.then.698, %if.then.693, %if.then.688, %if.then.683, %if.then.678, %if.then.672, %if.then.666, %if.then.660, %if.then.654
  br label %do.body.768

do.body.768:                                      ; preds = %code_error
  %412 = load %struct._object*, %struct._object** %code644, align 8
  store %struct._object* %412, %struct._object** %_py_xdecref_tmp, align 8
  %413 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp769 = icmp ne %struct._object* %413, null
  br i1 %cmp769, label %if.then.771, label %if.end.784

if.then.771:                                      ; preds = %do.body.768
  br label %do.body.772

do.body.772:                                      ; preds = %if.then.771
  %414 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %414, %struct._object** %_py_decref_tmp773, align 8
  %415 = load %struct._object*, %struct._object** %_py_decref_tmp773, align 8
  %ob_refcnt774 = getelementptr inbounds %struct._object, %struct._object* %415, i32 0, i32 0
  %416 = load i64, i64* %ob_refcnt774, align 8
  %dec775 = add i64 %416, -1
  store i64 %dec775, i64* %ob_refcnt774, align 8
  %cmp776 = icmp ne i64 %dec775, 0
  br i1 %cmp776, label %if.then.778, label %if.else.779

if.then.778:                                      ; preds = %do.body.772
  br label %if.end.782

if.else.779:                                      ; preds = %do.body.772
  %417 = load %struct._object*, %struct._object** %_py_decref_tmp773, align 8
  %ob_type780 = getelementptr inbounds %struct._object, %struct._object* %417, i32 0, i32 1
  %418 = load %struct._typeobject*, %struct._typeobject** %ob_type780, align 8
  %tp_dealloc781 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %418, i32 0, i32 4
  %419 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc781, align 8
  %420 = load %struct._object*, %struct._object** %_py_decref_tmp773, align 8
  call void %419(%struct._object* %420)
  br label %if.end.782

if.end.782:                                       ; preds = %if.else.779, %if.then.778
  br label %do.end.783

do.end.783:                                       ; preds = %if.end.782
  br label %if.end.784

if.end.784:                                       ; preds = %do.end.783, %do.body.768
  br label %do.end.785

do.end.785:                                       ; preds = %if.end.784
  br label %do.body.786

do.body.786:                                      ; preds = %do.end.785
  %421 = load %struct._object*, %struct._object** %consts, align 8
  store %struct._object* %421, %struct._object** %_py_xdecref_tmp787, align 8
  %422 = load %struct._object*, %struct._object** %_py_xdecref_tmp787, align 8
  %cmp788 = icmp ne %struct._object* %422, null
  br i1 %cmp788, label %if.then.790, label %if.end.803

if.then.790:                                      ; preds = %do.body.786
  br label %do.body.791

do.body.791:                                      ; preds = %if.then.790
  %423 = load %struct._object*, %struct._object** %_py_xdecref_tmp787, align 8
  store %struct._object* %423, %struct._object** %_py_decref_tmp792, align 8
  %424 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  %ob_refcnt793 = getelementptr inbounds %struct._object, %struct._object* %424, i32 0, i32 0
  %425 = load i64, i64* %ob_refcnt793, align 8
  %dec794 = add i64 %425, -1
  store i64 %dec794, i64* %ob_refcnt793, align 8
  %cmp795 = icmp ne i64 %dec794, 0
  br i1 %cmp795, label %if.then.797, label %if.else.798

if.then.797:                                      ; preds = %do.body.791
  br label %if.end.801

if.else.798:                                      ; preds = %do.body.791
  %426 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  %ob_type799 = getelementptr inbounds %struct._object, %struct._object* %426, i32 0, i32 1
  %427 = load %struct._typeobject*, %struct._typeobject** %ob_type799, align 8
  %tp_dealloc800 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %427, i32 0, i32 4
  %428 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc800, align 8
  %429 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  call void %428(%struct._object* %429)
  br label %if.end.801

if.end.801:                                       ; preds = %if.else.798, %if.then.797
  br label %do.end.802

do.end.802:                                       ; preds = %if.end.801
  br label %if.end.803

if.end.803:                                       ; preds = %do.end.802, %do.body.786
  br label %do.end.804

do.end.804:                                       ; preds = %if.end.803
  br label %do.body.805

do.body.805:                                      ; preds = %do.end.804
  %430 = load %struct._object*, %struct._object** %names, align 8
  store %struct._object* %430, %struct._object** %_py_xdecref_tmp806, align 8
  %431 = load %struct._object*, %struct._object** %_py_xdecref_tmp806, align 8
  %cmp807 = icmp ne %struct._object* %431, null
  br i1 %cmp807, label %if.then.809, label %if.end.822

if.then.809:                                      ; preds = %do.body.805
  br label %do.body.810

do.body.810:                                      ; preds = %if.then.809
  %432 = load %struct._object*, %struct._object** %_py_xdecref_tmp806, align 8
  store %struct._object* %432, %struct._object** %_py_decref_tmp811, align 8
  %433 = load %struct._object*, %struct._object** %_py_decref_tmp811, align 8
  %ob_refcnt812 = getelementptr inbounds %struct._object, %struct._object* %433, i32 0, i32 0
  %434 = load i64, i64* %ob_refcnt812, align 8
  %dec813 = add i64 %434, -1
  store i64 %dec813, i64* %ob_refcnt812, align 8
  %cmp814 = icmp ne i64 %dec813, 0
  br i1 %cmp814, label %if.then.816, label %if.else.817

if.then.816:                                      ; preds = %do.body.810
  br label %if.end.820

if.else.817:                                      ; preds = %do.body.810
  %435 = load %struct._object*, %struct._object** %_py_decref_tmp811, align 8
  %ob_type818 = getelementptr inbounds %struct._object, %struct._object* %435, i32 0, i32 1
  %436 = load %struct._typeobject*, %struct._typeobject** %ob_type818, align 8
  %tp_dealloc819 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %436, i32 0, i32 4
  %437 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc819, align 8
  %438 = load %struct._object*, %struct._object** %_py_decref_tmp811, align 8
  call void %437(%struct._object* %438)
  br label %if.end.820

if.end.820:                                       ; preds = %if.else.817, %if.then.816
  br label %do.end.821

do.end.821:                                       ; preds = %if.end.820
  br label %if.end.822

if.end.822:                                       ; preds = %do.end.821, %do.body.805
  br label %do.end.823

do.end.823:                                       ; preds = %if.end.822
  br label %do.body.824

do.body.824:                                      ; preds = %do.end.823
  %439 = load %struct._object*, %struct._object** %varnames, align 8
  store %struct._object* %439, %struct._object** %_py_xdecref_tmp825, align 8
  %440 = load %struct._object*, %struct._object** %_py_xdecref_tmp825, align 8
  %cmp826 = icmp ne %struct._object* %440, null
  br i1 %cmp826, label %if.then.828, label %if.end.841

if.then.828:                                      ; preds = %do.body.824
  br label %do.body.829

do.body.829:                                      ; preds = %if.then.828
  %441 = load %struct._object*, %struct._object** %_py_xdecref_tmp825, align 8
  store %struct._object* %441, %struct._object** %_py_decref_tmp830, align 8
  %442 = load %struct._object*, %struct._object** %_py_decref_tmp830, align 8
  %ob_refcnt831 = getelementptr inbounds %struct._object, %struct._object* %442, i32 0, i32 0
  %443 = load i64, i64* %ob_refcnt831, align 8
  %dec832 = add i64 %443, -1
  store i64 %dec832, i64* %ob_refcnt831, align 8
  %cmp833 = icmp ne i64 %dec832, 0
  br i1 %cmp833, label %if.then.835, label %if.else.836

if.then.835:                                      ; preds = %do.body.829
  br label %if.end.839

if.else.836:                                      ; preds = %do.body.829
  %444 = load %struct._object*, %struct._object** %_py_decref_tmp830, align 8
  %ob_type837 = getelementptr inbounds %struct._object, %struct._object* %444, i32 0, i32 1
  %445 = load %struct._typeobject*, %struct._typeobject** %ob_type837, align 8
  %tp_dealloc838 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %445, i32 0, i32 4
  %446 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc838, align 8
  %447 = load %struct._object*, %struct._object** %_py_decref_tmp830, align 8
  call void %446(%struct._object* %447)
  br label %if.end.839

if.end.839:                                       ; preds = %if.else.836, %if.then.835
  br label %do.end.840

do.end.840:                                       ; preds = %if.end.839
  br label %if.end.841

if.end.841:                                       ; preds = %do.end.840, %do.body.824
  br label %do.end.842

do.end.842:                                       ; preds = %if.end.841
  br label %do.body.843

do.body.843:                                      ; preds = %do.end.842
  %448 = load %struct._object*, %struct._object** %freevars, align 8
  store %struct._object* %448, %struct._object** %_py_xdecref_tmp844, align 8
  %449 = load %struct._object*, %struct._object** %_py_xdecref_tmp844, align 8
  %cmp845 = icmp ne %struct._object* %449, null
  br i1 %cmp845, label %if.then.847, label %if.end.860

if.then.847:                                      ; preds = %do.body.843
  br label %do.body.848

do.body.848:                                      ; preds = %if.then.847
  %450 = load %struct._object*, %struct._object** %_py_xdecref_tmp844, align 8
  store %struct._object* %450, %struct._object** %_py_decref_tmp849, align 8
  %451 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  %ob_refcnt850 = getelementptr inbounds %struct._object, %struct._object* %451, i32 0, i32 0
  %452 = load i64, i64* %ob_refcnt850, align 8
  %dec851 = add i64 %452, -1
  store i64 %dec851, i64* %ob_refcnt850, align 8
  %cmp852 = icmp ne i64 %dec851, 0
  br i1 %cmp852, label %if.then.854, label %if.else.855

if.then.854:                                      ; preds = %do.body.848
  br label %if.end.858

if.else.855:                                      ; preds = %do.body.848
  %453 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  %ob_type856 = getelementptr inbounds %struct._object, %struct._object* %453, i32 0, i32 1
  %454 = load %struct._typeobject*, %struct._typeobject** %ob_type856, align 8
  %tp_dealloc857 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %454, i32 0, i32 4
  %455 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc857, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  call void %455(%struct._object* %456)
  br label %if.end.858

if.end.858:                                       ; preds = %if.else.855, %if.then.854
  br label %do.end.859

do.end.859:                                       ; preds = %if.end.858
  br label %if.end.860

if.end.860:                                       ; preds = %do.end.859, %do.body.843
  br label %do.end.861

do.end.861:                                       ; preds = %if.end.860
  br label %do.body.862

do.body.862:                                      ; preds = %do.end.861
  %457 = load %struct._object*, %struct._object** %cellvars, align 8
  store %struct._object* %457, %struct._object** %_py_xdecref_tmp863, align 8
  %458 = load %struct._object*, %struct._object** %_py_xdecref_tmp863, align 8
  %cmp864 = icmp ne %struct._object* %458, null
  br i1 %cmp864, label %if.then.866, label %if.end.879

if.then.866:                                      ; preds = %do.body.862
  br label %do.body.867

do.body.867:                                      ; preds = %if.then.866
  %459 = load %struct._object*, %struct._object** %_py_xdecref_tmp863, align 8
  store %struct._object* %459, %struct._object** %_py_decref_tmp868, align 8
  %460 = load %struct._object*, %struct._object** %_py_decref_tmp868, align 8
  %ob_refcnt869 = getelementptr inbounds %struct._object, %struct._object* %460, i32 0, i32 0
  %461 = load i64, i64* %ob_refcnt869, align 8
  %dec870 = add i64 %461, -1
  store i64 %dec870, i64* %ob_refcnt869, align 8
  %cmp871 = icmp ne i64 %dec870, 0
  br i1 %cmp871, label %if.then.873, label %if.else.874

if.then.873:                                      ; preds = %do.body.867
  br label %if.end.877

if.else.874:                                      ; preds = %do.body.867
  %462 = load %struct._object*, %struct._object** %_py_decref_tmp868, align 8
  %ob_type875 = getelementptr inbounds %struct._object, %struct._object* %462, i32 0, i32 1
  %463 = load %struct._typeobject*, %struct._typeobject** %ob_type875, align 8
  %tp_dealloc876 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %463, i32 0, i32 4
  %464 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc876, align 8
  %465 = load %struct._object*, %struct._object** %_py_decref_tmp868, align 8
  call void %464(%struct._object* %465)
  br label %if.end.877

if.end.877:                                       ; preds = %if.else.874, %if.then.873
  br label %do.end.878

do.end.878:                                       ; preds = %if.end.877
  br label %if.end.879

if.end.879:                                       ; preds = %do.end.878, %do.body.862
  br label %do.end.880

do.end.880:                                       ; preds = %if.end.879
  br label %do.body.881

do.body.881:                                      ; preds = %do.end.880
  %466 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %466, %struct._object** %_py_xdecref_tmp882, align 8
  %467 = load %struct._object*, %struct._object** %_py_xdecref_tmp882, align 8
  %cmp883 = icmp ne %struct._object* %467, null
  br i1 %cmp883, label %if.then.885, label %if.end.898

if.then.885:                                      ; preds = %do.body.881
  br label %do.body.886

do.body.886:                                      ; preds = %if.then.885
  %468 = load %struct._object*, %struct._object** %_py_xdecref_tmp882, align 8
  store %struct._object* %468, %struct._object** %_py_decref_tmp887, align 8
  %469 = load %struct._object*, %struct._object** %_py_decref_tmp887, align 8
  %ob_refcnt888 = getelementptr inbounds %struct._object, %struct._object* %469, i32 0, i32 0
  %470 = load i64, i64* %ob_refcnt888, align 8
  %dec889 = add i64 %470, -1
  store i64 %dec889, i64* %ob_refcnt888, align 8
  %cmp890 = icmp ne i64 %dec889, 0
  br i1 %cmp890, label %if.then.892, label %if.else.893

if.then.892:                                      ; preds = %do.body.886
  br label %if.end.896

if.else.893:                                      ; preds = %do.body.886
  %471 = load %struct._object*, %struct._object** %_py_decref_tmp887, align 8
  %ob_type894 = getelementptr inbounds %struct._object, %struct._object* %471, i32 0, i32 1
  %472 = load %struct._typeobject*, %struct._typeobject** %ob_type894, align 8
  %tp_dealloc895 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %472, i32 0, i32 4
  %473 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc895, align 8
  %474 = load %struct._object*, %struct._object** %_py_decref_tmp887, align 8
  call void %473(%struct._object* %474)
  br label %if.end.896

if.end.896:                                       ; preds = %if.else.893, %if.then.892
  br label %do.end.897

do.end.897:                                       ; preds = %if.end.896
  br label %if.end.898

if.end.898:                                       ; preds = %do.end.897, %do.body.881
  br label %do.end.899

do.end.899:                                       ; preds = %if.end.898
  br label %do.body.900

do.body.900:                                      ; preds = %do.end.899
  %475 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %475, %struct._object** %_py_xdecref_tmp901, align 8
  %476 = load %struct._object*, %struct._object** %_py_xdecref_tmp901, align 8
  %cmp902 = icmp ne %struct._object* %476, null
  br i1 %cmp902, label %if.then.904, label %if.end.917

if.then.904:                                      ; preds = %do.body.900
  br label %do.body.905

do.body.905:                                      ; preds = %if.then.904
  %477 = load %struct._object*, %struct._object** %_py_xdecref_tmp901, align 8
  store %struct._object* %477, %struct._object** %_py_decref_tmp906, align 8
  %478 = load %struct._object*, %struct._object** %_py_decref_tmp906, align 8
  %ob_refcnt907 = getelementptr inbounds %struct._object, %struct._object* %478, i32 0, i32 0
  %479 = load i64, i64* %ob_refcnt907, align 8
  %dec908 = add i64 %479, -1
  store i64 %dec908, i64* %ob_refcnt907, align 8
  %cmp909 = icmp ne i64 %dec908, 0
  br i1 %cmp909, label %if.then.911, label %if.else.912

if.then.911:                                      ; preds = %do.body.905
  br label %if.end.915

if.else.912:                                      ; preds = %do.body.905
  %480 = load %struct._object*, %struct._object** %_py_decref_tmp906, align 8
  %ob_type913 = getelementptr inbounds %struct._object, %struct._object* %480, i32 0, i32 1
  %481 = load %struct._typeobject*, %struct._typeobject** %ob_type913, align 8
  %tp_dealloc914 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %481, i32 0, i32 4
  %482 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc914, align 8
  %483 = load %struct._object*, %struct._object** %_py_decref_tmp906, align 8
  call void %482(%struct._object* %483)
  br label %if.end.915

if.end.915:                                       ; preds = %if.else.912, %if.then.911
  br label %do.end.916

do.end.916:                                       ; preds = %if.end.915
  br label %if.end.917

if.end.917:                                       ; preds = %do.end.916, %do.body.900
  br label %do.end.918

do.end.918:                                       ; preds = %if.end.917
  br label %do.body.919

do.body.919:                                      ; preds = %do.end.918
  %484 = load %struct._object*, %struct._object** %lnotab, align 8
  store %struct._object* %484, %struct._object** %_py_xdecref_tmp920, align 8
  %485 = load %struct._object*, %struct._object** %_py_xdecref_tmp920, align 8
  %cmp921 = icmp ne %struct._object* %485, null
  br i1 %cmp921, label %if.then.923, label %if.end.936

if.then.923:                                      ; preds = %do.body.919
  br label %do.body.924

do.body.924:                                      ; preds = %if.then.923
  %486 = load %struct._object*, %struct._object** %_py_xdecref_tmp920, align 8
  store %struct._object* %486, %struct._object** %_py_decref_tmp925, align 8
  %487 = load %struct._object*, %struct._object** %_py_decref_tmp925, align 8
  %ob_refcnt926 = getelementptr inbounds %struct._object, %struct._object* %487, i32 0, i32 0
  %488 = load i64, i64* %ob_refcnt926, align 8
  %dec927 = add i64 %488, -1
  store i64 %dec927, i64* %ob_refcnt926, align 8
  %cmp928 = icmp ne i64 %dec927, 0
  br i1 %cmp928, label %if.then.930, label %if.else.931

if.then.930:                                      ; preds = %do.body.924
  br label %if.end.934

if.else.931:                                      ; preds = %do.body.924
  %489 = load %struct._object*, %struct._object** %_py_decref_tmp925, align 8
  %ob_type932 = getelementptr inbounds %struct._object, %struct._object* %489, i32 0, i32 1
  %490 = load %struct._typeobject*, %struct._typeobject** %ob_type932, align 8
  %tp_dealloc933 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %490, i32 0, i32 4
  %491 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc933, align 8
  %492 = load %struct._object*, %struct._object** %_py_decref_tmp925, align 8
  call void %491(%struct._object* %492)
  br label %if.end.934

if.end.934:                                       ; preds = %if.else.931, %if.then.930
  br label %do.end.935

do.end.935:                                       ; preds = %if.end.934
  br label %if.end.936

if.end.936:                                       ; preds = %do.end.935, %do.body.919
  br label %do.end.937

do.end.937:                                       ; preds = %if.end.936
  %493 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %493, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.bb.938:                                        ; preds = %if.end.6
  %494 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call939 = call i64 @r_long(%struct.WFILE* %494)
  store i64 %call939, i64* %n, align 8
  %495 = load i64, i64* %n, align 8
  %cmp940 = icmp slt i64 %495, 0
  br i1 %cmp940, label %if.then.945, label %lor.lhs.false.942

lor.lhs.false.942:                                ; preds = %sw.bb.938
  %496 = load i64, i64* %n, align 8
  %497 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %497, i32 0, i32 10
  %498 = load %struct._object*, %struct._object** %refs, align 8
  %499 = bitcast %struct._object* %498 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %499, i32 0, i32 1
  %500 = load i64, i64* %ob_size, align 8
  %cmp943 = icmp sge i64 %496, %500
  br i1 %cmp943, label %if.then.945, label %if.end.953

if.then.945:                                      ; preds = %lor.lhs.false.942, %sw.bb.938
  %501 = load i64, i64* %n, align 8
  %cmp946 = icmp eq i64 %501, -1
  br i1 %cmp946, label %land.lhs.true.948, label %if.end.952

land.lhs.true.948:                                ; preds = %if.then.945
  %call949 = call %struct._object* @PyErr_Occurred()
  %tobool950 = icmp ne %struct._object* %call949, null
  br i1 %tobool950, label %if.then.951, label %if.end.952

if.then.951:                                      ; preds = %land.lhs.true.948
  br label %sw.epilog

if.end.952:                                       ; preds = %land.lhs.true.948, %if.then.945
  %502 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %502, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog

if.end.953:                                       ; preds = %lor.lhs.false.942
  %503 = load i64, i64* %n, align 8
  %504 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs954 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %504, i32 0, i32 10
  %505 = load %struct._object*, %struct._object** %refs954, align 8
  %506 = bitcast %struct._object* %505 to %struct.PyListObject*
  %ob_item955 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %506, i32 0, i32 1
  %507 = load %struct._object**, %struct._object*** %ob_item955, align 8
  %arrayidx956 = getelementptr %struct._object*, %struct._object** %507, i64 %503
  %508 = load %struct._object*, %struct._object** %arrayidx956, align 8
  store %struct._object* %508, %struct._object** %v, align 8
  %509 = load %struct._object*, %struct._object** %v, align 8
  %cmp957 = icmp eq %struct._object* %509, @_Py_NoneStruct
  br i1 %cmp957, label %if.then.959, label %if.end.960

if.then.959:                                      ; preds = %if.end.953
  %510 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %510, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog

if.end.960:                                       ; preds = %if.end.953
  %511 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt961 = getelementptr inbounds %struct._object, %struct._object* %511, i32 0, i32 0
  %512 = load i64, i64* %ob_refcnt961, align 8
  %inc962 = add i64 %512, 1
  store i64 %inc962, i64* %ob_refcnt961, align 8
  %513 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %513, %struct._object** %retval1, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.6
  %514 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %514, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.960, %if.then.959, %if.end.952, %if.then.951, %do.end.937, %if.then.759, %if.then.648, %if.end.642, %if.then.567, %if.then.521, %if.then.514, %if.end.509, %if.then.415, %for.end.404, %if.then.373, %if.then.362, %if.then.355, %for.end, %if.then.324, %if.then.313, %if.then.306, %if.then.300, %do.end.293, %if.then.283, %if.then.275, %if.then.267, %if.then.260, %do.end.254, %if.then.244, %if.then.239, %if.then.233, %if.then.225, %if.then.218, %do.end.212, %do.end.204, %if.then.191, %if.then.186, %if.then.180, %do.end.174, %if.then.166, %if.then.156, %if.then.151, %if.then.141, %do.end.134, %if.then.126, %if.then.115, %if.then.110, %if.then.104, %if.then.93, %if.then.88, %do.end.80, %if.then.72, %if.then.64, %do.end.58, %if.then.50, %if.then.43, %if.then.38, %do.end.33, %do.end, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb
  %515 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth963 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %515, i32 0, i32 2
  %516 = load i32, i32* %depth963, align 4
  %dec964 = add i32 %516, -1
  store i32 %dec964, i32* %depth963, align 4
  %517 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %517, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.4, %if.then
  %518 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %518
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMarshal_WriteObjectToString(%struct._object* %x, i32 %version) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %version.addr = alloca i32, align 4
  %wf = alloca %struct.WFILE, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %base = alloca i8*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_xdecref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 50)
  %str = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  store %struct._object* %call, %struct._object** %str, align 8
  %str1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %0 = load %struct._object*, %struct._object** %str1, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %str2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %str2, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 6
  store i8* %arraydecay, i8** %ptr, align 8
  %ptr3 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 6
  %3 = load i8*, i8** %ptr3, align 8
  %str4 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %str4, align 8
  %call5 = call i64 @PyBytes_Size(%struct._object* %4)
  %add.ptr = getelementptr i8, i8* %3, i64 %call5
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 7
  store i8* %add.ptr, i8** %end, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  store i32 0, i32* %error, align 4
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %5 = load i32, i32* %version.addr, align 4
  %version6 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 11
  store i32 %5, i32* %version6, align 4
  %6 = load i32, i32* %version.addr, align 4
  %cmp7 = icmp sge i32 %6, 3
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %call9 = call %struct._object* @PyDict_New()
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  store %struct._object* %call9, %struct._object** %refs, align 8
  %cmp10 = icmp eq %struct._object* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %refs13 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  store %struct._object* null, %struct._object** %refs13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.12
  %7 = load %struct._object*, %struct._object** %x.addr, align 8
  call void @w_object(%struct._object* %7, %struct.WFILE* %wf)
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %refs15 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 10
  %8 = load %struct._object*, %struct._object** %refs15, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %9, null
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %str25 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %17 = load %struct._object*, %struct._object** %str25, align 8
  %cmp26 = icmp ne %struct._object* %17, null
  br i1 %cmp26, label %if.then.27, label %if.end.56

if.then.27:                                       ; preds = %do.end.24
  %str28 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %18 = load %struct._object*, %struct._object** %str28, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyBytesObject*
  %ob_sval29 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval29, i32 0, i32 0
  store i8* %arraydecay30, i8** %base, align 8
  %ptr31 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 6
  %20 = load i8*, i8** %ptr31, align 8
  %21 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp32 = icmp sgt i64 %sub.ptr.sub, 9223372036854775807
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %if.then.27
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %str36 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %22 = load %struct._object*, %struct._object** %str36, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp35, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %24, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.34
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %27(%struct._object* %28)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.27
  %str47 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %ptr48 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 6
  %30 = load i8*, i8** %ptr48, align 8
  %31 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast49 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %31 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %call52 = call i32 @_PyBytes_Resize(%struct._object** %str47, i64 %sub.ptr.sub51)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.46
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end.24
  %error57 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  %32 = load i32, i32* %error57, align 4
  %cmp58 = icmp ne i32 %32, 0
  br i1 %cmp58, label %if.then.59, label %if.end.86

if.then.59:                                       ; preds = %if.end.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %str62 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %33 = load %struct._object*, %struct._object** %str62, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp61, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  %cmp63 = icmp ne %struct._object* %34, null
  br i1 %cmp63, label %if.then.64, label %if.end.76

if.then.64:                                       ; preds = %do.body.60
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp66, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %37, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %40(%struct._object* %41)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %do.body.60
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %error78 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  %42 = load i32, i32* %error78, align 4
  %cmp79 = icmp eq i32 %42, 3
  br i1 %cmp79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %do.end.77
  %call81 = call %struct._object* @PyErr_NoMemory()
  br label %if.end.85

if.else.82:                                       ; preds = %do.end.77
  %43 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %error83 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 1
  %44 = load i32, i32* %error83, align 4
  %cmp84 = icmp eq i32 %44, 1
  %cond = select i1 %cmp84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)
  call void @PyErr_SetString(%struct._object* %43, i8* %cond)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.80
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.56
  %str87 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %wf, i32 0, i32 4
  %45 = load %struct._object*, %struct._object** %str87, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.end.85, %if.then.54, %do.end.45, %if.then.11, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i64 @PyBytes_Size(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMarshal_Init() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @marshalmodule, i32 1013)
  store %struct._object* %call, %struct._object** %mod, align 8
  %0 = load %struct._object*, %struct._object** %mod, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mod, align 8
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 4)
  %2 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @w_more(i8 signext %c, %struct.WFILE* %p) #0 {
entry:
  %c.addr = alloca i8, align 1
  %p.addr = alloca %struct.WFILE*, align 8
  %size = alloca i64, align 8
  %newsize = alloca i64, align 8
  store i8 %c, i8* %c.addr, align 1
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %str = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %2 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %str1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %str1, align 8
  %call = call i64 @PyBytes_Size(%struct._object* %3)
  store i64 %call, i64* %size, align 8
  %4 = load i64, i64* %size, align 8
  %5 = load i64, i64* %size, align 8
  %add = add i64 %4, %5
  %add2 = add i64 %add, 1024
  store i64 %add2, i64* %newsize, align 8
  %6 = load i64, i64* %newsize, align 8
  %cmp3 = icmp sgt i64 %6, 33554432
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load i64, i64* %size, align 8
  %8 = load i64, i64* %size, align 8
  %shr = ashr i64 %8, 3
  %add5 = add i64 %7, %shr
  store i64 %add5, i64* %newsize, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %str7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %9, i32 0, i32 4
  %10 = load i64, i64* %newsize, align 8
  %call8 = call i32 @_PyBytes_Resize(%struct._object** %str7, i64 %10)
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  %11 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %11, i32 0, i32 7
  store i8* null, i8** %end, align 8
  %12 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %12, i32 0, i32 6
  store i8* null, i8** %ptr, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end.6
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %str11 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %13, i32 0, i32 4
  %14 = load %struct._object*, %struct._object** %str11, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %16 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %16
  %17 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr12 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %17, i32 0, i32 6
  store i8* %add.ptr, i8** %ptr12, align 8
  %18 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %str13 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %18, i32 0, i32 4
  %19 = load %struct._object*, %struct._object** %str13, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_sval14 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval14, i32 0, i32 0
  %21 = load i64, i64* %newsize, align 8
  %add.ptr16 = getelementptr i8, i8* %arraydecay15, i64 %21
  %22 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end17 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %22, i32 0, i32 7
  store i8* %add.ptr16, i8** %end17, align 8
  %23 = load i8, i8* %c.addr, align 1
  %24 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %24, i32 0, i32 6
  %25 = load i8*, i8** %ptr18, align 8
  %incdec.ptr = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %ptr18, align 8
  store i8 %23, i8* %25, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.else, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @w_ref(%struct._object* %v, i8* %flag, %struct.WFILE* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %flag.addr = alloca i8*, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %id = alloca %struct._object*, align 8
  %idx = alloca %struct._object*, align 8
  %w = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %s = alloca i64, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %flag, i8** %flag.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 11
  %1 = load i32, i32* %version, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %2, i32 0, i32 10
  %3 = load %struct._object*, %struct._object** %refs, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %cmp2 = icmp eq i64 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = bitcast %struct._object* %6 to i8*
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %7)
  store %struct._object* %call, %struct._object** %id, align 8
  %8 = load %struct._object*, %struct._object** %id, align 8
  %cmp5 = icmp eq %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %err

if.end.7:                                         ; preds = %if.end.4
  %9 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs8 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %9, i32 0, i32 10
  %10 = load %struct._object*, %struct._object** %refs8, align 8
  %11 = load %struct._object*, %struct._object** %id, align 8
  %call9 = call %struct._object* @PyDict_GetItem(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call9, %struct._object** %idx, align 8
  %12 = load %struct._object*, %struct._object** %idx, align 8
  %cmp10 = icmp ne %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.else.32

if.then.11:                                       ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %idx, align 8
  %call12 = call i64 @PyLong_AsLong(%struct._object* %13)
  store i64 %call12, i64* %w, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %14 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %21 = load i64, i64* %w, align 8
  %cmp17 = icmp eq i64 %21, -1
  br i1 %cmp17, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %do.end
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call18, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %err

if.end.20:                                        ; preds = %land.lhs.true, %do.end
  %22 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %22, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.end.20
  %24 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp23 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %24, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp23, align 8
  %call24 = call i32 @_IO_putc(i32 114, %struct._IO_FILE* %25)
  br label %if.end.31

if.else.25:                                       ; preds = %if.end.20
  %26 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %26, i32 0, i32 6
  %27 = load i8*, i8** %ptr, align 8
  %28 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %28, i32 0, i32 7
  %29 = load i8*, i8** %end, align 8
  %cmp26 = icmp ne i8* %27, %29
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.25
  %30 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr28 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %30, i32 0, i32 6
  %31 = load i8*, i8** %ptr28, align 8
  %incdec.ptr = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %ptr28, align 8
  store i8 114, i8* %31, align 1
  br label %if.end.30

if.else.29:                                       ; preds = %if.else.25
  %32 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 114, %struct.WFILE* %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.22
  %33 = load i64, i64* %w, align 8
  %34 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %33, %struct.WFILE* %34)
  store i32 1, i32* %retval
  br label %return

if.else.32:                                       ; preds = %if.end.7
  %35 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs33 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %35, i32 0, i32 10
  %36 = load %struct._object*, %struct._object** %refs33, align 8
  %call34 = call i64 @PyDict_Size(%struct._object* %36)
  store i64 %call34, i64* %s, align 8
  %37 = load i64, i64* %s, align 8
  %cmp35 = icmp sge i64 %37, 2147483647
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.32
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %err

if.end.37:                                        ; preds = %if.else.32
  %39 = load i64, i64* %s, align 8
  %call38 = call %struct._object* @PyLong_FromSsize_t(i64 %39)
  store %struct._object* %call38, %struct._object** %idx, align 8
  %40 = load %struct._object*, %struct._object** %idx, align 8
  %tobool39 = icmp ne %struct._object* %40, null
  br i1 %tobool39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.37
  %41 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs40 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %41, i32 0, i32 10
  %42 = load %struct._object*, %struct._object** %refs40, align 8
  %43 = load %struct._object*, %struct._object** %id, align 8
  %44 = load %struct._object*, %struct._object** %idx, align 8
  %call41 = call i32 @PyDict_SetItem(%struct._object* %42, %struct._object* %43, %struct._object* %44)
  %cmp42 = icmp eq i32 %call41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.37
  %45 = phi i1 [ false, %if.end.37 ], [ %cmp42, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  store i32 %land.ext, i32* %ok, align 4
  br label %do.body.43

do.body.43:                                       ; preds = %land.end
  %46 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp44, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %48, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %51(%struct._object* %52)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %53 = load %struct._object*, %struct._object** %idx, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp55 = icmp ne %struct._object* %54, null
  br i1 %cmp55, label %if.then.56, label %if.end.68

if.then.56:                                       ; preds = %do.body.54
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp58, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %57, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.57
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %60(%struct._object* %61)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.67, %do.body.54
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %62 = load i32, i32* %ok, align 4
  %tobool70 = icmp ne i32 %62, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %do.end.69
  br label %err

if.end.72:                                        ; preds = %do.end.69
  %63 = load i8*, i8** %flag.addr, align 8
  %64 = load i8, i8* %63, align 1
  %conv = sext i8 %64 to i32
  %or = or i32 %conv, -128
  %conv73 = trunc i32 %or to i8
  store i8 %conv73, i8* %63, align 1
  store i32 0, i32* %retval
  br label %return

err:                                              ; preds = %if.then.71, %if.then.36, %if.then.19, %if.then.6
  %65 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %65, i32 0, i32 1
  store i32 1, i32* %error, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %err, %if.end.72, %if.end.31, %if.then.3, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal void @w_complex_object(%struct._object* %v, i8 signext %flag, %struct.WFILE* %p) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %flag.addr = alloca i8, align 1
  %p.addr = alloca %struct.WFILE*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %x = alloca i64, align 8
  %ob = alloca %struct._longobject*, align 8
  %y = alloca i64, align 8
  %buf = alloca [8 x i8], align 1
  %buf70 = alloca i8*, align 8
  %buf134 = alloca [8 x i8], align 1
  %buf180 = alloca i8*, align 8
  %is_short = alloca i32, align 4
  %utf8 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %value742 = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp836 = alloca %struct._object*, align 8
  %_py_decref_tmp849 = alloca %struct._object*, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %view = alloca %struct.bufferinfo, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8 %flag, i8* %flag.addr, align 1
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.then, label %if.else.28

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %2)
  store i64 %call, i64* %x, align 8
  %3 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._longobject*
  store %struct._longobject* %5, %struct._longobject** %ob, align 8
  call void @PyErr_Clear()
  %6 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %7 = load i8, i8* %flag.addr, align 1
  %8 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_PyLong(%struct._longobject* %6, i8 signext %7, %struct.WFILE* %8)
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.then
  %9 = load i64, i64* %x, align 8
  %shr = ashr i64 %9, 31
  store i64 %shr, i64* %y, align 8
  %10 = load i64, i64* %y, align 8
  %tobool4 = icmp ne i64 %10, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.else.8

land.lhs.true.5:                                  ; preds = %if.else
  %11 = load i64, i64* %y, align 8
  %cmp6 = icmp ne i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true.5
  %12 = load %struct._object*, %struct._object** %v.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct._longobject*
  %14 = load i8, i8* %flag.addr, align 1
  %15 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_PyLong(%struct._longobject* %13, i8 signext %14, %struct.WFILE* %15)
  br label %if.end.26

if.else.8:                                        ; preds = %land.lhs.true.5, %if.else
  br label %do.body

do.body:                                          ; preds = %if.else.8
  %16 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %16, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %17, null
  br i1 %tobool9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %do.body
  %18 = load i8, i8* %flag.addr, align 1
  %conv = sext i8 %18 to i32
  %or = or i32 105, %conv
  %19 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp11 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp11, align 8
  %call12 = call i32 @_IO_putc(i32 %or, %struct._IO_FILE* %20)
  br label %if.end.25

if.else.13:                                       ; preds = %do.body
  %21 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %21, i32 0, i32 6
  %22 = load i8*, i8** %ptr, align 8
  %23 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %23, i32 0, i32 7
  %24 = load i8*, i8** %end, align 8
  %cmp14 = icmp ne i8* %22, %24
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.else.13
  %25 = load i8, i8* %flag.addr, align 1
  %conv17 = sext i8 %25 to i32
  %or18 = or i32 105, %conv17
  %conv19 = trunc i32 %or18 to i8
  %26 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr20 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %26, i32 0, i32 6
  %27 = load i8*, i8** %ptr20, align 8
  %incdec.ptr = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %ptr20, align 8
  store i8 %conv19, i8* %27, align 1
  br label %if.end

if.else.21:                                       ; preds = %if.else.13
  %28 = load i8, i8* %flag.addr, align 1
  %conv22 = sext i8 %28 to i32
  %or23 = or i32 105, %conv22
  %conv24 = trunc i32 %or23 to i8
  %29 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv24, %struct.WFILE* %29)
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %30 = load i64, i64* %x, align 8
  %31 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %30, %struct.WFILE* %31)
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %if.then.7
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.3
  br label %if.end.1003

if.else.28:                                       ; preds = %entry
  %32 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %cmp30 = icmp eq %struct._typeobject* %33, @PyFloat_Type
  br i1 %cmp30, label %if.then.32, label %if.else.125

if.then.32:                                       ; preds = %if.else.28
  %34 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version = getelementptr inbounds %struct.WFILE, %struct.WFILE* %34, i32 0, i32 11
  %35 = load i32, i32* %version, align 4
  %cmp33 = icmp sgt i32 %35, 1
  br i1 %cmp33, label %if.then.35, label %if.else.69

if.then.35:                                       ; preds = %if.then.32
  %36 = load %struct._object*, %struct._object** %v.addr, align 8
  %call36 = call double @PyFloat_AsDouble(%struct._object* %36)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call37 = call i32 @_PyFloat_Pack8(double %call36, i8* %arraydecay, i32 1)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.35
  %37 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %37, i32 0, i32 1
  store i32 1, i32* %error, align 4
  br label %if.end.1003

if.end.41:                                        ; preds = %if.then.35
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %38 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp43 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %38, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8
  %tobool44 = icmp ne %struct._IO_FILE* %39, null
  br i1 %tobool44, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %do.body.42
  %40 = load i8, i8* %flag.addr, align 1
  %conv46 = sext i8 %40 to i32
  %or47 = or i32 103, %conv46
  %41 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp48 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %41, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp48, align 8
  %call49 = call i32 @_IO_putc(i32 %or47, %struct._IO_FILE* %42)
  br label %if.end.66

if.else.50:                                       ; preds = %do.body.42
  %43 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr51 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %43, i32 0, i32 6
  %44 = load i8*, i8** %ptr51, align 8
  %45 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end52 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %45, i32 0, i32 7
  %46 = load i8*, i8** %end52, align 8
  %cmp53 = icmp ne i8* %44, %46
  br i1 %cmp53, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %if.else.50
  %47 = load i8, i8* %flag.addr, align 1
  %conv56 = sext i8 %47 to i32
  %or57 = or i32 103, %conv56
  %conv58 = trunc i32 %or57 to i8
  %48 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr59 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %48, i32 0, i32 6
  %49 = load i8*, i8** %ptr59, align 8
  %incdec.ptr60 = getelementptr i8, i8* %49, i32 1
  store i8* %incdec.ptr60, i8** %ptr59, align 8
  store i8 %conv58, i8* %49, align 1
  br label %if.end.65

if.else.61:                                       ; preds = %if.else.50
  %50 = load i8, i8* %flag.addr, align 1
  %conv62 = sext i8 %50 to i32
  %or63 = or i32 103, %conv62
  %conv64 = trunc i32 %or63 to i8
  %51 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv64, %struct.WFILE* %51)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.55
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.45
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %arraydecay68 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %52 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %arraydecay68, i64 8, %struct.WFILE* %52)
  br label %if.end.124

if.else.69:                                       ; preds = %if.then.32
  %53 = load %struct._object*, %struct._object** %v.addr, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %54, i32 0, i32 1
  %55 = load double, double* %ob_fval, align 8
  %call71 = call i8* @PyOS_double_to_string(double %55, i8 signext 103, i32 17, i32 0, i32* null)
  store i8* %call71, i8** %buf70, align 8
  %56 = load i8*, i8** %buf70, align 8
  %tobool72 = icmp ne i8* %56, null
  br i1 %tobool72, label %if.end.75, label %if.then.73

if.then.73:                                       ; preds = %if.else.69
  %57 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error74 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %57, i32 0, i32 1
  store i32 3, i32* %error74, align 4
  br label %if.end.1003

if.end.75:                                        ; preds = %if.else.69
  %58 = load i8*, i8** %buf70, align 8
  %call76 = call i64 @strlen(i8* %58) #5
  store i64 %call76, i64* %n, align 8
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.75
  %59 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp78 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %59, i32 0, i32 0
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp78, align 8
  %tobool79 = icmp ne %struct._IO_FILE* %60, null
  br i1 %tobool79, label %if.then.80, label %if.else.85

if.then.80:                                       ; preds = %do.body.77
  %61 = load i8, i8* %flag.addr, align 1
  %conv81 = sext i8 %61 to i32
  %or82 = or i32 102, %conv81
  %62 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp83 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %62, i32 0, i32 0
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp83, align 8
  %call84 = call i32 @_IO_putc(i32 %or82, %struct._IO_FILE* %63)
  br label %if.end.101

if.else.85:                                       ; preds = %do.body.77
  %64 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr86 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %64, i32 0, i32 6
  %65 = load i8*, i8** %ptr86, align 8
  %66 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end87 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %66, i32 0, i32 7
  %67 = load i8*, i8** %end87, align 8
  %cmp88 = icmp ne i8* %65, %67
  br i1 %cmp88, label %if.then.90, label %if.else.96

if.then.90:                                       ; preds = %if.else.85
  %68 = load i8, i8* %flag.addr, align 1
  %conv91 = sext i8 %68 to i32
  %or92 = or i32 102, %conv91
  %conv93 = trunc i32 %or92 to i8
  %69 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr94 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %69, i32 0, i32 6
  %70 = load i8*, i8** %ptr94, align 8
  %incdec.ptr95 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr95, i8** %ptr94, align 8
  store i8 %conv93, i8* %70, align 1
  br label %if.end.100

if.else.96:                                       ; preds = %if.else.85
  %71 = load i8, i8* %flag.addr, align 1
  %conv97 = sext i8 %71 to i32
  %or98 = or i32 102, %conv97
  %conv99 = trunc i32 %or98 to i8
  %72 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv99, %struct.WFILE* %72)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.96, %if.then.90
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.80
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %73 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp103 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %73, i32 0, i32 0
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp103, align 8
  %tobool104 = icmp ne %struct._IO_FILE* %74, null
  br i1 %tobool104, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %do.end.102
  %75 = load i64, i64* %n, align 8
  %conv106 = trunc i64 %75 to i32
  %76 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp107 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %76, i32 0, i32 0
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp107, align 8
  %call108 = call i32 @_IO_putc(i32 %conv106, %struct._IO_FILE* %77)
  br label %if.end.123

if.else.109:                                      ; preds = %do.end.102
  %78 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr110 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %78, i32 0, i32 6
  %79 = load i8*, i8** %ptr110, align 8
  %80 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end111 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %80, i32 0, i32 7
  %81 = load i8*, i8** %end111, align 8
  %cmp112 = icmp ne i8* %79, %81
  br i1 %cmp112, label %if.then.114, label %if.else.119

if.then.114:                                      ; preds = %if.else.109
  %82 = load i64, i64* %n, align 8
  %conv115 = trunc i64 %82 to i32
  %conv116 = trunc i32 %conv115 to i8
  %83 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr117 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %83, i32 0, i32 6
  %84 = load i8*, i8** %ptr117, align 8
  %incdec.ptr118 = getelementptr i8, i8* %84, i32 1
  store i8* %incdec.ptr118, i8** %ptr117, align 8
  store i8 %conv116, i8* %84, align 1
  br label %if.end.122

if.else.119:                                      ; preds = %if.else.109
  %85 = load i64, i64* %n, align 8
  %conv120 = trunc i64 %85 to i32
  %conv121 = trunc i32 %conv120 to i8
  %86 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv121, %struct.WFILE* %86)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.114
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.105
  %87 = load i8*, i8** %buf70, align 8
  %88 = load i64, i64* %n, align 8
  %89 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %87, i64 %88, %struct.WFILE* %89)
  %90 = load i8*, i8** %buf70, align 8
  call void @PyMem_Free(i8* %90)
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %do.end.67
  br label %if.end.1002

if.else.125:                                      ; preds = %if.else.28
  %91 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %cmp127 = icmp eq %struct._typeobject* %92, @PyComplex_Type
  br i1 %cmp127, label %if.then.129, label %if.else.264

if.then.129:                                      ; preds = %if.else.125
  %93 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version130 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %93, i32 0, i32 11
  %94 = load i32, i32* %version130, align 4
  %cmp131 = icmp sgt i32 %94, 1
  br i1 %cmp131, label %if.then.133, label %if.else.179

if.then.133:                                      ; preds = %if.then.129
  %95 = load %struct._object*, %struct._object** %v.addr, align 8
  %call135 = call double @PyComplex_RealAsDouble(%struct._object* %95)
  %arraydecay136 = getelementptr inbounds [8 x i8], [8 x i8]* %buf134, i32 0, i32 0
  %call137 = call i32 @_PyFloat_Pack8(double %call135, i8* %arraydecay136, i32 1)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.133
  %96 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error141 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %96, i32 0, i32 1
  store i32 1, i32* %error141, align 4
  br label %if.end.1003

if.end.142:                                       ; preds = %if.then.133
  br label %do.body.143

do.body.143:                                      ; preds = %if.end.142
  %97 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp144 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %97, i32 0, i32 0
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp144, align 8
  %tobool145 = icmp ne %struct._IO_FILE* %98, null
  br i1 %tobool145, label %if.then.146, label %if.else.151

if.then.146:                                      ; preds = %do.body.143
  %99 = load i8, i8* %flag.addr, align 1
  %conv147 = sext i8 %99 to i32
  %or148 = or i32 121, %conv147
  %100 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp149 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %100, i32 0, i32 0
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp149, align 8
  %call150 = call i32 @_IO_putc(i32 %or148, %struct._IO_FILE* %101)
  br label %if.end.167

if.else.151:                                      ; preds = %do.body.143
  %102 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr152 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %102, i32 0, i32 6
  %103 = load i8*, i8** %ptr152, align 8
  %104 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end153 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %104, i32 0, i32 7
  %105 = load i8*, i8** %end153, align 8
  %cmp154 = icmp ne i8* %103, %105
  br i1 %cmp154, label %if.then.156, label %if.else.162

if.then.156:                                      ; preds = %if.else.151
  %106 = load i8, i8* %flag.addr, align 1
  %conv157 = sext i8 %106 to i32
  %or158 = or i32 121, %conv157
  %conv159 = trunc i32 %or158 to i8
  %107 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr160 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %107, i32 0, i32 6
  %108 = load i8*, i8** %ptr160, align 8
  %incdec.ptr161 = getelementptr i8, i8* %108, i32 1
  store i8* %incdec.ptr161, i8** %ptr160, align 8
  store i8 %conv159, i8* %108, align 1
  br label %if.end.166

if.else.162:                                      ; preds = %if.else.151
  %109 = load i8, i8* %flag.addr, align 1
  %conv163 = sext i8 %109 to i32
  %or164 = or i32 121, %conv163
  %conv165 = trunc i32 %or164 to i8
  %110 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv165, %struct.WFILE* %110)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.162, %if.then.156
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.146
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  %arraydecay169 = getelementptr inbounds [8 x i8], [8 x i8]* %buf134, i32 0, i32 0
  %111 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %arraydecay169, i64 8, %struct.WFILE* %111)
  %112 = load %struct._object*, %struct._object** %v.addr, align 8
  %call170 = call double @PyComplex_ImagAsDouble(%struct._object* %112)
  %arraydecay171 = getelementptr inbounds [8 x i8], [8 x i8]* %buf134, i32 0, i32 0
  %call172 = call i32 @_PyFloat_Pack8(double %call170, i8* %arraydecay171, i32 1)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %do.end.168
  %113 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error176 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %113, i32 0, i32 1
  store i32 1, i32* %error176, align 4
  br label %if.end.1003

if.end.177:                                       ; preds = %do.end.168
  %arraydecay178 = getelementptr inbounds [8 x i8], [8 x i8]* %buf134, i32 0, i32 0
  %114 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %arraydecay178, i64 8, %struct.WFILE* %114)
  br label %if.end.263

if.else.179:                                      ; preds = %if.then.129
  br label %do.body.181

do.body.181:                                      ; preds = %if.else.179
  %115 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp182 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %115, i32 0, i32 0
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp182, align 8
  %tobool183 = icmp ne %struct._IO_FILE* %116, null
  br i1 %tobool183, label %if.then.184, label %if.else.189

if.then.184:                                      ; preds = %do.body.181
  %117 = load i8, i8* %flag.addr, align 1
  %conv185 = sext i8 %117 to i32
  %or186 = or i32 120, %conv185
  %118 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp187 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %118, i32 0, i32 0
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %fp187, align 8
  %call188 = call i32 @_IO_putc(i32 %or186, %struct._IO_FILE* %119)
  br label %if.end.205

if.else.189:                                      ; preds = %do.body.181
  %120 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr190 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %120, i32 0, i32 6
  %121 = load i8*, i8** %ptr190, align 8
  %122 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end191 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %122, i32 0, i32 7
  %123 = load i8*, i8** %end191, align 8
  %cmp192 = icmp ne i8* %121, %123
  br i1 %cmp192, label %if.then.194, label %if.else.200

if.then.194:                                      ; preds = %if.else.189
  %124 = load i8, i8* %flag.addr, align 1
  %conv195 = sext i8 %124 to i32
  %or196 = or i32 120, %conv195
  %conv197 = trunc i32 %or196 to i8
  %125 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr198 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %125, i32 0, i32 6
  %126 = load i8*, i8** %ptr198, align 8
  %incdec.ptr199 = getelementptr i8, i8* %126, i32 1
  store i8* %incdec.ptr199, i8** %ptr198, align 8
  store i8 %conv197, i8* %126, align 1
  br label %if.end.204

if.else.200:                                      ; preds = %if.else.189
  %127 = load i8, i8* %flag.addr, align 1
  %conv201 = sext i8 %127 to i32
  %or202 = or i32 120, %conv201
  %conv203 = trunc i32 %or202 to i8
  %128 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv203, %struct.WFILE* %128)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.200, %if.then.194
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.184
  br label %do.end.206

do.end.206:                                       ; preds = %if.end.205
  %129 = load %struct._object*, %struct._object** %v.addr, align 8
  %call207 = call double @PyComplex_RealAsDouble(%struct._object* %129)
  %call208 = call i8* @PyOS_double_to_string(double %call207, i8 signext 103, i32 17, i32 0, i32* null)
  store i8* %call208, i8** %buf180, align 8
  %130 = load i8*, i8** %buf180, align 8
  %tobool209 = icmp ne i8* %130, null
  br i1 %tobool209, label %if.end.212, label %if.then.210

if.then.210:                                      ; preds = %do.end.206
  %131 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error211 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %131, i32 0, i32 1
  store i32 3, i32* %error211, align 4
  br label %if.end.1003

if.end.212:                                       ; preds = %do.end.206
  %132 = load i8*, i8** %buf180, align 8
  %call213 = call i64 @strlen(i8* %132) #5
  store i64 %call213, i64* %n, align 8
  %133 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp214 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %133, i32 0, i32 0
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp214, align 8
  %tobool215 = icmp ne %struct._IO_FILE* %134, null
  br i1 %tobool215, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.end.212
  %135 = load i64, i64* %n, align 8
  %conv217 = trunc i64 %135 to i32
  %136 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp218 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %136, i32 0, i32 0
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp218, align 8
  %call219 = call i32 @_IO_putc(i32 %conv217, %struct._IO_FILE* %137)
  br label %if.end.234

if.else.220:                                      ; preds = %if.end.212
  %138 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr221 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %138, i32 0, i32 6
  %139 = load i8*, i8** %ptr221, align 8
  %140 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end222 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %140, i32 0, i32 7
  %141 = load i8*, i8** %end222, align 8
  %cmp223 = icmp ne i8* %139, %141
  br i1 %cmp223, label %if.then.225, label %if.else.230

if.then.225:                                      ; preds = %if.else.220
  %142 = load i64, i64* %n, align 8
  %conv226 = trunc i64 %142 to i32
  %conv227 = trunc i32 %conv226 to i8
  %143 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr228 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %143, i32 0, i32 6
  %144 = load i8*, i8** %ptr228, align 8
  %incdec.ptr229 = getelementptr i8, i8* %144, i32 1
  store i8* %incdec.ptr229, i8** %ptr228, align 8
  store i8 %conv227, i8* %144, align 1
  br label %if.end.233

if.else.230:                                      ; preds = %if.else.220
  %145 = load i64, i64* %n, align 8
  %conv231 = trunc i64 %145 to i32
  %conv232 = trunc i32 %conv231 to i8
  %146 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv232, %struct.WFILE* %146)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.225
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.216
  %147 = load i8*, i8** %buf180, align 8
  %148 = load i64, i64* %n, align 8
  %149 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %147, i64 %148, %struct.WFILE* %149)
  %150 = load i8*, i8** %buf180, align 8
  call void @PyMem_Free(i8* %150)
  %151 = load %struct._object*, %struct._object** %v.addr, align 8
  %call235 = call double @PyComplex_ImagAsDouble(%struct._object* %151)
  %call236 = call i8* @PyOS_double_to_string(double %call235, i8 signext 103, i32 17, i32 0, i32* null)
  store i8* %call236, i8** %buf180, align 8
  %152 = load i8*, i8** %buf180, align 8
  %tobool237 = icmp ne i8* %152, null
  br i1 %tobool237, label %if.end.240, label %if.then.238

if.then.238:                                      ; preds = %if.end.234
  %153 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error239 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %153, i32 0, i32 1
  store i32 3, i32* %error239, align 4
  br label %if.end.1003

if.end.240:                                       ; preds = %if.end.234
  %154 = load i8*, i8** %buf180, align 8
  %call241 = call i64 @strlen(i8* %154) #5
  store i64 %call241, i64* %n, align 8
  %155 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp242 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %155, i32 0, i32 0
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp242, align 8
  %tobool243 = icmp ne %struct._IO_FILE* %156, null
  br i1 %tobool243, label %if.then.244, label %if.else.248

if.then.244:                                      ; preds = %if.end.240
  %157 = load i64, i64* %n, align 8
  %conv245 = trunc i64 %157 to i32
  %158 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp246 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %158, i32 0, i32 0
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %fp246, align 8
  %call247 = call i32 @_IO_putc(i32 %conv245, %struct._IO_FILE* %159)
  br label %if.end.262

if.else.248:                                      ; preds = %if.end.240
  %160 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr249 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %160, i32 0, i32 6
  %161 = load i8*, i8** %ptr249, align 8
  %162 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end250 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %162, i32 0, i32 7
  %163 = load i8*, i8** %end250, align 8
  %cmp251 = icmp ne i8* %161, %163
  br i1 %cmp251, label %if.then.253, label %if.else.258

if.then.253:                                      ; preds = %if.else.248
  %164 = load i64, i64* %n, align 8
  %conv254 = trunc i64 %164 to i32
  %conv255 = trunc i32 %conv254 to i8
  %165 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr256 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %165, i32 0, i32 6
  %166 = load i8*, i8** %ptr256, align 8
  %incdec.ptr257 = getelementptr i8, i8* %166, i32 1
  store i8* %incdec.ptr257, i8** %ptr256, align 8
  store i8 %conv255, i8* %166, align 1
  br label %if.end.261

if.else.258:                                      ; preds = %if.else.248
  %167 = load i64, i64* %n, align 8
  %conv259 = trunc i64 %167 to i32
  %conv260 = trunc i32 %conv259 to i8
  %168 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv260, %struct.WFILE* %168)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.253
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.then.244
  %169 = load i8*, i8** %buf180, align 8
  %170 = load i64, i64* %n, align 8
  %171 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %169, i64 %170, %struct.WFILE* %171)
  %172 = load i8*, i8** %buf180, align 8
  call void @PyMem_Free(i8* %172)
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.end.177
  br label %if.end.1001

if.else.264:                                      ; preds = %if.else.125
  %173 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type265 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 1
  %174 = load %struct._typeobject*, %struct._typeobject** %ob_type265, align 8
  %cmp266 = icmp eq %struct._typeobject* %174, @PyBytes_Type
  br i1 %cmp266, label %if.then.268, label %if.else.296

if.then.268:                                      ; preds = %if.else.264
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  %175 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp270 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %175, i32 0, i32 0
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %fp270, align 8
  %tobool271 = icmp ne %struct._IO_FILE* %176, null
  br i1 %tobool271, label %if.then.272, label %if.else.277

if.then.272:                                      ; preds = %do.body.269
  %177 = load i8, i8* %flag.addr, align 1
  %conv273 = sext i8 %177 to i32
  %or274 = or i32 115, %conv273
  %178 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp275 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %178, i32 0, i32 0
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp275, align 8
  %call276 = call i32 @_IO_putc(i32 %or274, %struct._IO_FILE* %179)
  br label %if.end.293

if.else.277:                                      ; preds = %do.body.269
  %180 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr278 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %180, i32 0, i32 6
  %181 = load i8*, i8** %ptr278, align 8
  %182 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end279 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %182, i32 0, i32 7
  %183 = load i8*, i8** %end279, align 8
  %cmp280 = icmp ne i8* %181, %183
  br i1 %cmp280, label %if.then.282, label %if.else.288

if.then.282:                                      ; preds = %if.else.277
  %184 = load i8, i8* %flag.addr, align 1
  %conv283 = sext i8 %184 to i32
  %or284 = or i32 115, %conv283
  %conv285 = trunc i32 %or284 to i8
  %185 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr286 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %185, i32 0, i32 6
  %186 = load i8*, i8** %ptr286, align 8
  %incdec.ptr287 = getelementptr i8, i8* %186, i32 1
  store i8* %incdec.ptr287, i8** %ptr286, align 8
  store i8 %conv285, i8* %186, align 1
  br label %if.end.292

if.else.288:                                      ; preds = %if.else.277
  %187 = load i8, i8* %flag.addr, align 1
  %conv289 = sext i8 %187 to i32
  %or290 = or i32 115, %conv289
  %conv291 = trunc i32 %or290 to i8
  %188 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv291, %struct.WFILE* %188)
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.288, %if.then.282
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.272
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %189 = load %struct._object*, %struct._object** %v.addr, align 8
  %190 = bitcast %struct._object* %189 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %190, i32 0, i32 2
  %arraydecay295 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %191 = load %struct._object*, %struct._object** %v.addr, align 8
  %192 = bitcast %struct._object* %191 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %192, i32 0, i32 1
  %193 = load i64, i64* %ob_size, align 8
  %194 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_pstring(i8* %arraydecay295, i64 %193, %struct.WFILE* %194)
  br label %if.end.1000

if.else.296:                                      ; preds = %if.else.264
  %195 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type297 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 1
  %196 = load %struct._typeobject*, %struct._typeobject** %ob_type297, align 8
  %cmp298 = icmp eq %struct._typeobject* %196, @PyUnicode_Type
  br i1 %cmp298, label %if.then.300, label %if.else.553

if.then.300:                                      ; preds = %if.else.296
  %197 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version301 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %197, i32 0, i32 11
  %198 = load i32, i32* %version301, align 4
  %cmp302 = icmp sge i32 %198, 4
  br i1 %cmp302, label %land.lhs.true.304, label %if.else.470

land.lhs.true.304:                                ; preds = %if.then.300
  %199 = load %struct._object*, %struct._object** %v.addr, align 8
  %200 = bitcast %struct._object* %199 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %200, i32 0, i32 3
  %201 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %201, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool305 = icmp ne i32 %bf.clear, 0
  br i1 %tobool305, label %if.then.306, label %if.else.470

if.then.306:                                      ; preds = %land.lhs.true.304
  %202 = load %struct._object*, %struct._object** %v.addr, align 8
  %203 = bitcast %struct._object* %202 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %203, i32 0, i32 1
  %204 = load i64, i64* %length, align 8
  %cmp307 = icmp slt i64 %204, 256
  %conv308 = zext i1 %cmp307 to i32
  store i32 %conv308, i32* %is_short, align 4
  %205 = load i32, i32* %is_short, align 4
  %tobool309 = icmp ne i32 %205, 0
  br i1 %tobool309, label %if.then.310, label %if.else.386

if.then.310:                                      ; preds = %if.then.306
  %206 = load %struct._object*, %struct._object** %v.addr, align 8
  %207 = bitcast %struct._object* %206 to %struct.PyASCIIObject*
  %state311 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %207, i32 0, i32 3
  %208 = bitcast %struct.anon* %state311 to i32*
  %bf.load312 = load i32, i32* %208, align 4
  %bf.clear313 = and i32 %bf.load312, 3
  %tobool314 = icmp ne i32 %bf.clear313, 0
  br i1 %tobool314, label %if.then.315, label %if.else.342

if.then.315:                                      ; preds = %if.then.310
  br label %do.body.316

do.body.316:                                      ; preds = %if.then.315
  %209 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp317 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %209, i32 0, i32 0
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %fp317, align 8
  %tobool318 = icmp ne %struct._IO_FILE* %210, null
  br i1 %tobool318, label %if.then.319, label %if.else.324

if.then.319:                                      ; preds = %do.body.316
  %211 = load i8, i8* %flag.addr, align 1
  %conv320 = sext i8 %211 to i32
  %or321 = or i32 90, %conv320
  %212 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp322 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %212, i32 0, i32 0
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp322, align 8
  %call323 = call i32 @_IO_putc(i32 %or321, %struct._IO_FILE* %213)
  br label %if.end.340

if.else.324:                                      ; preds = %do.body.316
  %214 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr325 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %214, i32 0, i32 6
  %215 = load i8*, i8** %ptr325, align 8
  %216 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end326 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %216, i32 0, i32 7
  %217 = load i8*, i8** %end326, align 8
  %cmp327 = icmp ne i8* %215, %217
  br i1 %cmp327, label %if.then.329, label %if.else.335

if.then.329:                                      ; preds = %if.else.324
  %218 = load i8, i8* %flag.addr, align 1
  %conv330 = sext i8 %218 to i32
  %or331 = or i32 90, %conv330
  %conv332 = trunc i32 %or331 to i8
  %219 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr333 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %219, i32 0, i32 6
  %220 = load i8*, i8** %ptr333, align 8
  %incdec.ptr334 = getelementptr i8, i8* %220, i32 1
  store i8* %incdec.ptr334, i8** %ptr333, align 8
  store i8 %conv332, i8* %220, align 1
  br label %if.end.339

if.else.335:                                      ; preds = %if.else.324
  %221 = load i8, i8* %flag.addr, align 1
  %conv336 = sext i8 %221 to i32
  %or337 = or i32 90, %conv336
  %conv338 = trunc i32 %or337 to i8
  %222 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv338, %struct.WFILE* %222)
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.335, %if.then.329
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.319
  br label %do.end.341

do.end.341:                                       ; preds = %if.end.340
  br label %if.end.369

if.else.342:                                      ; preds = %if.then.310
  br label %do.body.343

do.body.343:                                      ; preds = %if.else.342
  %223 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp344 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %223, i32 0, i32 0
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp344, align 8
  %tobool345 = icmp ne %struct._IO_FILE* %224, null
  br i1 %tobool345, label %if.then.346, label %if.else.351

if.then.346:                                      ; preds = %do.body.343
  %225 = load i8, i8* %flag.addr, align 1
  %conv347 = sext i8 %225 to i32
  %or348 = or i32 122, %conv347
  %226 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp349 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %226, i32 0, i32 0
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %fp349, align 8
  %call350 = call i32 @_IO_putc(i32 %or348, %struct._IO_FILE* %227)
  br label %if.end.367

if.else.351:                                      ; preds = %do.body.343
  %228 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr352 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %228, i32 0, i32 6
  %229 = load i8*, i8** %ptr352, align 8
  %230 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end353 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %230, i32 0, i32 7
  %231 = load i8*, i8** %end353, align 8
  %cmp354 = icmp ne i8* %229, %231
  br i1 %cmp354, label %if.then.356, label %if.else.362

if.then.356:                                      ; preds = %if.else.351
  %232 = load i8, i8* %flag.addr, align 1
  %conv357 = sext i8 %232 to i32
  %or358 = or i32 122, %conv357
  %conv359 = trunc i32 %or358 to i8
  %233 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr360 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %233, i32 0, i32 6
  %234 = load i8*, i8** %ptr360, align 8
  %incdec.ptr361 = getelementptr i8, i8* %234, i32 1
  store i8* %incdec.ptr361, i8** %ptr360, align 8
  store i8 %conv359, i8* %234, align 1
  br label %if.end.366

if.else.362:                                      ; preds = %if.else.351
  %235 = load i8, i8* %flag.addr, align 1
  %conv363 = sext i8 %235 to i32
  %or364 = or i32 122, %conv363
  %conv365 = trunc i32 %or364 to i8
  %236 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv365, %struct.WFILE* %236)
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.362, %if.then.356
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.then.346
  br label %do.end.368

do.end.368:                                       ; preds = %if.end.367
  br label %if.end.369

if.end.369:                                       ; preds = %do.end.368, %do.end.341
  %237 = load %struct._object*, %struct._object** %v.addr, align 8
  %238 = bitcast %struct._object* %237 to %struct.PyASCIIObject*
  %state370 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %238, i32 0, i32 3
  %239 = bitcast %struct.anon* %state370 to i32*
  %bf.load371 = load i32, i32* %239, align 4
  %bf.lshr372 = lshr i32 %bf.load371, 5
  %bf.clear373 = and i32 %bf.lshr372, 1
  %tobool374 = icmp ne i32 %bf.clear373, 0
  br i1 %tobool374, label %cond.true, label %cond.false.382

cond.true:                                        ; preds = %if.end.369
  %240 = load %struct._object*, %struct._object** %v.addr, align 8
  %241 = bitcast %struct._object* %240 to %struct.PyASCIIObject*
  %state375 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %241, i32 0, i32 3
  %242 = bitcast %struct.anon* %state375 to i32*
  %bf.load376 = load i32, i32* %242, align 4
  %bf.lshr377 = lshr i32 %bf.load376, 6
  %bf.clear378 = and i32 %bf.lshr377, 1
  %tobool379 = icmp ne i32 %bf.clear378, 0
  br i1 %tobool379, label %cond.true.380, label %cond.false

cond.true.380:                                    ; preds = %cond.true
  %243 = load %struct._object*, %struct._object** %v.addr, align 8
  %244 = bitcast %struct._object* %243 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %244, i64 1
  %245 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %246 = load %struct._object*, %struct._object** %v.addr, align 8
  %247 = bitcast %struct._object* %246 to %struct.PyCompactUnicodeObject*
  %add.ptr381 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %247, i64 1
  %248 = bitcast %struct.PyCompactUnicodeObject* %add.ptr381 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.380
  %cond = phi i8* [ %245, %cond.true.380 ], [ %248, %cond.false ]
  br label %cond.end.383

cond.false.382:                                   ; preds = %if.end.369
  %249 = load %struct._object*, %struct._object** %v.addr, align 8
  %250 = bitcast %struct._object* %249 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %250, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %251 = load i8*, i8** %any, align 8
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.382, %cond.end
  %cond384 = phi i8* [ %cond, %cond.end ], [ %251, %cond.false.382 ]
  %252 = load %struct._object*, %struct._object** %v.addr, align 8
  %253 = bitcast %struct._object* %252 to %struct.PyASCIIObject*
  %length385 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %253, i32 0, i32 1
  %254 = load i64, i64* %length385, align 8
  %255 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_short_pstring(i8* %cond384, i64 %254, %struct.WFILE* %255)
  br label %if.end.469

if.else.386:                                      ; preds = %if.then.306
  %256 = load %struct._object*, %struct._object** %v.addr, align 8
  %257 = bitcast %struct._object* %256 to %struct.PyASCIIObject*
  %state387 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %257, i32 0, i32 3
  %258 = bitcast %struct.anon* %state387 to i32*
  %bf.load388 = load i32, i32* %258, align 4
  %bf.clear389 = and i32 %bf.load388, 3
  %tobool390 = icmp ne i32 %bf.clear389, 0
  br i1 %tobool390, label %if.then.391, label %if.else.418

if.then.391:                                      ; preds = %if.else.386
  br label %do.body.392

do.body.392:                                      ; preds = %if.then.391
  %259 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp393 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %259, i32 0, i32 0
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %fp393, align 8
  %tobool394 = icmp ne %struct._IO_FILE* %260, null
  br i1 %tobool394, label %if.then.395, label %if.else.400

if.then.395:                                      ; preds = %do.body.392
  %261 = load i8, i8* %flag.addr, align 1
  %conv396 = sext i8 %261 to i32
  %or397 = or i32 65, %conv396
  %262 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp398 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %262, i32 0, i32 0
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %fp398, align 8
  %call399 = call i32 @_IO_putc(i32 %or397, %struct._IO_FILE* %263)
  br label %if.end.416

if.else.400:                                      ; preds = %do.body.392
  %264 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr401 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %264, i32 0, i32 6
  %265 = load i8*, i8** %ptr401, align 8
  %266 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end402 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %266, i32 0, i32 7
  %267 = load i8*, i8** %end402, align 8
  %cmp403 = icmp ne i8* %265, %267
  br i1 %cmp403, label %if.then.405, label %if.else.411

if.then.405:                                      ; preds = %if.else.400
  %268 = load i8, i8* %flag.addr, align 1
  %conv406 = sext i8 %268 to i32
  %or407 = or i32 65, %conv406
  %conv408 = trunc i32 %or407 to i8
  %269 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr409 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %269, i32 0, i32 6
  %270 = load i8*, i8** %ptr409, align 8
  %incdec.ptr410 = getelementptr i8, i8* %270, i32 1
  store i8* %incdec.ptr410, i8** %ptr409, align 8
  store i8 %conv408, i8* %270, align 1
  br label %if.end.415

if.else.411:                                      ; preds = %if.else.400
  %271 = load i8, i8* %flag.addr, align 1
  %conv412 = sext i8 %271 to i32
  %or413 = or i32 65, %conv412
  %conv414 = trunc i32 %or413 to i8
  %272 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv414, %struct.WFILE* %272)
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.411, %if.then.405
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.395
  br label %do.end.417

do.end.417:                                       ; preds = %if.end.416
  br label %if.end.445

if.else.418:                                      ; preds = %if.else.386
  br label %do.body.419

do.body.419:                                      ; preds = %if.else.418
  %273 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp420 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %273, i32 0, i32 0
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %fp420, align 8
  %tobool421 = icmp ne %struct._IO_FILE* %274, null
  br i1 %tobool421, label %if.then.422, label %if.else.427

if.then.422:                                      ; preds = %do.body.419
  %275 = load i8, i8* %flag.addr, align 1
  %conv423 = sext i8 %275 to i32
  %or424 = or i32 97, %conv423
  %276 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp425 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %276, i32 0, i32 0
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %fp425, align 8
  %call426 = call i32 @_IO_putc(i32 %or424, %struct._IO_FILE* %277)
  br label %if.end.443

if.else.427:                                      ; preds = %do.body.419
  %278 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr428 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %278, i32 0, i32 6
  %279 = load i8*, i8** %ptr428, align 8
  %280 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end429 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %280, i32 0, i32 7
  %281 = load i8*, i8** %end429, align 8
  %cmp430 = icmp ne i8* %279, %281
  br i1 %cmp430, label %if.then.432, label %if.else.438

if.then.432:                                      ; preds = %if.else.427
  %282 = load i8, i8* %flag.addr, align 1
  %conv433 = sext i8 %282 to i32
  %or434 = or i32 97, %conv433
  %conv435 = trunc i32 %or434 to i8
  %283 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr436 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %283, i32 0, i32 6
  %284 = load i8*, i8** %ptr436, align 8
  %incdec.ptr437 = getelementptr i8, i8* %284, i32 1
  store i8* %incdec.ptr437, i8** %ptr436, align 8
  store i8 %conv435, i8* %284, align 1
  br label %if.end.442

if.else.438:                                      ; preds = %if.else.427
  %285 = load i8, i8* %flag.addr, align 1
  %conv439 = sext i8 %285 to i32
  %or440 = or i32 97, %conv439
  %conv441 = trunc i32 %or440 to i8
  %286 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv441, %struct.WFILE* %286)
  br label %if.end.442

if.end.442:                                       ; preds = %if.else.438, %if.then.432
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %if.then.422
  br label %do.end.444

do.end.444:                                       ; preds = %if.end.443
  br label %if.end.445

if.end.445:                                       ; preds = %do.end.444, %do.end.417
  %287 = load %struct._object*, %struct._object** %v.addr, align 8
  %288 = bitcast %struct._object* %287 to %struct.PyASCIIObject*
  %state446 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %288, i32 0, i32 3
  %289 = bitcast %struct.anon* %state446 to i32*
  %bf.load447 = load i32, i32* %289, align 4
  %bf.lshr448 = lshr i32 %bf.load447, 5
  %bf.clear449 = and i32 %bf.lshr448, 1
  %tobool450 = icmp ne i32 %bf.clear449, 0
  br i1 %tobool450, label %cond.true.451, label %cond.false.463

cond.true.451:                                    ; preds = %if.end.445
  %290 = load %struct._object*, %struct._object** %v.addr, align 8
  %291 = bitcast %struct._object* %290 to %struct.PyASCIIObject*
  %state452 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %291, i32 0, i32 3
  %292 = bitcast %struct.anon* %state452 to i32*
  %bf.load453 = load i32, i32* %292, align 4
  %bf.lshr454 = lshr i32 %bf.load453, 6
  %bf.clear455 = and i32 %bf.lshr454, 1
  %tobool456 = icmp ne i32 %bf.clear455, 0
  br i1 %tobool456, label %cond.true.457, label %cond.false.459

cond.true.457:                                    ; preds = %cond.true.451
  %293 = load %struct._object*, %struct._object** %v.addr, align 8
  %294 = bitcast %struct._object* %293 to %struct.PyASCIIObject*
  %add.ptr458 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %294, i64 1
  %295 = bitcast %struct.PyASCIIObject* %add.ptr458 to i8*
  br label %cond.end.461

cond.false.459:                                   ; preds = %cond.true.451
  %296 = load %struct._object*, %struct._object** %v.addr, align 8
  %297 = bitcast %struct._object* %296 to %struct.PyCompactUnicodeObject*
  %add.ptr460 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %297, i64 1
  %298 = bitcast %struct.PyCompactUnicodeObject* %add.ptr460 to i8*
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.459, %cond.true.457
  %cond462 = phi i8* [ %295, %cond.true.457 ], [ %298, %cond.false.459 ]
  br label %cond.end.466

cond.false.463:                                   ; preds = %if.end.445
  %299 = load %struct._object*, %struct._object** %v.addr, align 8
  %300 = bitcast %struct._object* %299 to %struct.PyUnicodeObject*
  %data464 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %300, i32 0, i32 1
  %any465 = bitcast %union.anon* %data464 to i8**
  %301 = load i8*, i8** %any465, align 8
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.463, %cond.end.461
  %cond467 = phi i8* [ %cond462, %cond.end.461 ], [ %301, %cond.false.463 ]
  %302 = load %struct._object*, %struct._object** %v.addr, align 8
  %303 = bitcast %struct._object* %302 to %struct.PyASCIIObject*
  %length468 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %303, i32 0, i32 1
  %304 = load i64, i64* %length468, align 8
  %305 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_pstring(i8* %cond467, i64 %304, %struct.WFILE* %305)
  br label %if.end.469

if.end.469:                                       ; preds = %cond.end.466, %cond.end.383
  br label %if.end.552

if.else.470:                                      ; preds = %land.lhs.true.304, %if.then.300
  %306 = load %struct._object*, %struct._object** %v.addr, align 8
  %call471 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call471, %struct._object** %utf8, align 8
  %307 = load %struct._object*, %struct._object** %utf8, align 8
  %cmp472 = icmp eq %struct._object* %307, null
  br i1 %cmp472, label %if.then.474, label %if.end.476

if.then.474:                                      ; preds = %if.else.470
  %308 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %308, i32 0, i32 2
  %309 = load i32, i32* %depth, align 4
  %dec = add i32 %309, -1
  store i32 %dec, i32* %depth, align 4
  %310 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error475 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %310, i32 0, i32 1
  store i32 1, i32* %error475, align 4
  br label %if.end.1003

if.end.476:                                       ; preds = %if.else.470
  %311 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version477 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %311, i32 0, i32 11
  %312 = load i32, i32* %version477, align 4
  %cmp478 = icmp sge i32 %312, 3
  br i1 %cmp478, label %land.lhs.true.480, label %if.else.512

land.lhs.true.480:                                ; preds = %if.end.476
  %313 = load %struct._object*, %struct._object** %v.addr, align 8
  %314 = bitcast %struct._object* %313 to %struct.PyASCIIObject*
  %state481 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %314, i32 0, i32 3
  %315 = bitcast %struct.anon* %state481 to i32*
  %bf.load482 = load i32, i32* %315, align 4
  %bf.clear483 = and i32 %bf.load482, 3
  %tobool484 = icmp ne i32 %bf.clear483, 0
  br i1 %tobool484, label %if.then.485, label %if.else.512

if.then.485:                                      ; preds = %land.lhs.true.480
  br label %do.body.486

do.body.486:                                      ; preds = %if.then.485
  %316 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp487 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %316, i32 0, i32 0
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** %fp487, align 8
  %tobool488 = icmp ne %struct._IO_FILE* %317, null
  br i1 %tobool488, label %if.then.489, label %if.else.494

if.then.489:                                      ; preds = %do.body.486
  %318 = load i8, i8* %flag.addr, align 1
  %conv490 = sext i8 %318 to i32
  %or491 = or i32 116, %conv490
  %319 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp492 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %319, i32 0, i32 0
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** %fp492, align 8
  %call493 = call i32 @_IO_putc(i32 %or491, %struct._IO_FILE* %320)
  br label %if.end.510

if.else.494:                                      ; preds = %do.body.486
  %321 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr495 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %321, i32 0, i32 6
  %322 = load i8*, i8** %ptr495, align 8
  %323 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end496 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %323, i32 0, i32 7
  %324 = load i8*, i8** %end496, align 8
  %cmp497 = icmp ne i8* %322, %324
  br i1 %cmp497, label %if.then.499, label %if.else.505

if.then.499:                                      ; preds = %if.else.494
  %325 = load i8, i8* %flag.addr, align 1
  %conv500 = sext i8 %325 to i32
  %or501 = or i32 116, %conv500
  %conv502 = trunc i32 %or501 to i8
  %326 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr503 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %326, i32 0, i32 6
  %327 = load i8*, i8** %ptr503, align 8
  %incdec.ptr504 = getelementptr i8, i8* %327, i32 1
  store i8* %incdec.ptr504, i8** %ptr503, align 8
  store i8 %conv502, i8* %327, align 1
  br label %if.end.509

if.else.505:                                      ; preds = %if.else.494
  %328 = load i8, i8* %flag.addr, align 1
  %conv506 = sext i8 %328 to i32
  %or507 = or i32 116, %conv506
  %conv508 = trunc i32 %or507 to i8
  %329 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv508, %struct.WFILE* %329)
  br label %if.end.509

if.end.509:                                       ; preds = %if.else.505, %if.then.499
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.489
  br label %do.end.511

do.end.511:                                       ; preds = %if.end.510
  br label %if.end.539

if.else.512:                                      ; preds = %land.lhs.true.480, %if.end.476
  br label %do.body.513

do.body.513:                                      ; preds = %if.else.512
  %330 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp514 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %330, i32 0, i32 0
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** %fp514, align 8
  %tobool515 = icmp ne %struct._IO_FILE* %331, null
  br i1 %tobool515, label %if.then.516, label %if.else.521

if.then.516:                                      ; preds = %do.body.513
  %332 = load i8, i8* %flag.addr, align 1
  %conv517 = sext i8 %332 to i32
  %or518 = or i32 117, %conv517
  %333 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp519 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %333, i32 0, i32 0
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %fp519, align 8
  %call520 = call i32 @_IO_putc(i32 %or518, %struct._IO_FILE* %334)
  br label %if.end.537

if.else.521:                                      ; preds = %do.body.513
  %335 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr522 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %335, i32 0, i32 6
  %336 = load i8*, i8** %ptr522, align 8
  %337 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end523 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %337, i32 0, i32 7
  %338 = load i8*, i8** %end523, align 8
  %cmp524 = icmp ne i8* %336, %338
  br i1 %cmp524, label %if.then.526, label %if.else.532

if.then.526:                                      ; preds = %if.else.521
  %339 = load i8, i8* %flag.addr, align 1
  %conv527 = sext i8 %339 to i32
  %or528 = or i32 117, %conv527
  %conv529 = trunc i32 %or528 to i8
  %340 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr530 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %340, i32 0, i32 6
  %341 = load i8*, i8** %ptr530, align 8
  %incdec.ptr531 = getelementptr i8, i8* %341, i32 1
  store i8* %incdec.ptr531, i8** %ptr530, align 8
  store i8 %conv529, i8* %341, align 1
  br label %if.end.536

if.else.532:                                      ; preds = %if.else.521
  %342 = load i8, i8* %flag.addr, align 1
  %conv533 = sext i8 %342 to i32
  %or534 = or i32 117, %conv533
  %conv535 = trunc i32 %or534 to i8
  %343 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv535, %struct.WFILE* %343)
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.532, %if.then.526
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.then.516
  br label %do.end.538

do.end.538:                                       ; preds = %if.end.537
  br label %if.end.539

if.end.539:                                       ; preds = %do.end.538, %do.end.511
  %344 = load %struct._object*, %struct._object** %utf8, align 8
  %345 = bitcast %struct._object* %344 to %struct.PyBytesObject*
  %ob_sval540 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %345, i32 0, i32 2
  %arraydecay541 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval540, i32 0, i32 0
  %346 = load %struct._object*, %struct._object** %utf8, align 8
  %347 = bitcast %struct._object* %346 to %struct.PyVarObject*
  %ob_size542 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %347, i32 0, i32 1
  %348 = load i64, i64* %ob_size542, align 8
  %349 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_pstring(i8* %arraydecay541, i64 %348, %struct.WFILE* %349)
  br label %do.body.543

do.body.543:                                      ; preds = %if.end.539
  %350 = load %struct._object*, %struct._object** %utf8, align 8
  store %struct._object* %350, %struct._object** %_py_decref_tmp, align 8
  %351 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %351, i32 0, i32 0
  %352 = load i64, i64* %ob_refcnt, align 8
  %dec544 = add i64 %352, -1
  store i64 %dec544, i64* %ob_refcnt, align 8
  %cmp545 = icmp ne i64 %dec544, 0
  br i1 %cmp545, label %if.then.547, label %if.else.548

if.then.547:                                      ; preds = %do.body.543
  br label %if.end.550

if.else.548:                                      ; preds = %do.body.543
  %353 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type549 = getelementptr inbounds %struct._object, %struct._object* %353, i32 0, i32 1
  %354 = load %struct._typeobject*, %struct._typeobject** %ob_type549, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %354, i32 0, i32 4
  %355 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %355(%struct._object* %356)
  br label %if.end.550

if.end.550:                                       ; preds = %if.else.548, %if.then.547
  br label %do.end.551

do.end.551:                                       ; preds = %if.end.550
  br label %if.end.552

if.end.552:                                       ; preds = %do.end.551, %if.end.469
  br label %if.end.999

if.else.553:                                      ; preds = %if.else.296
  %357 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type554 = getelementptr inbounds %struct._object, %struct._object* %357, i32 0, i32 1
  %358 = load %struct._typeobject*, %struct._typeobject** %ob_type554, align 8
  %cmp555 = icmp eq %struct._typeobject* %358, @PyTuple_Type
  br i1 %cmp555, label %if.then.557, label %if.else.651

if.then.557:                                      ; preds = %if.else.553
  %359 = load %struct._object*, %struct._object** %v.addr, align 8
  %call558 = call i64 @PyTuple_Size(%struct._object* %359)
  store i64 %call558, i64* %n, align 8
  %360 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %version559 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %360, i32 0, i32 11
  %361 = load i32, i32* %version559, align 4
  %cmp560 = icmp sge i32 %361, 4
  br i1 %cmp560, label %land.lhs.true.562, label %if.else.612

land.lhs.true.562:                                ; preds = %if.then.557
  %362 = load i64, i64* %n, align 8
  %cmp563 = icmp slt i64 %362, 256
  br i1 %cmp563, label %if.then.565, label %if.else.612

if.then.565:                                      ; preds = %land.lhs.true.562
  br label %do.body.566

do.body.566:                                      ; preds = %if.then.565
  %363 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp567 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %363, i32 0, i32 0
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %fp567, align 8
  %tobool568 = icmp ne %struct._IO_FILE* %364, null
  br i1 %tobool568, label %if.then.569, label %if.else.574

if.then.569:                                      ; preds = %do.body.566
  %365 = load i8, i8* %flag.addr, align 1
  %conv570 = sext i8 %365 to i32
  %or571 = or i32 41, %conv570
  %366 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp572 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %366, i32 0, i32 0
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** %fp572, align 8
  %call573 = call i32 @_IO_putc(i32 %or571, %struct._IO_FILE* %367)
  br label %if.end.590

if.else.574:                                      ; preds = %do.body.566
  %368 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr575 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %368, i32 0, i32 6
  %369 = load i8*, i8** %ptr575, align 8
  %370 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end576 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %370, i32 0, i32 7
  %371 = load i8*, i8** %end576, align 8
  %cmp577 = icmp ne i8* %369, %371
  br i1 %cmp577, label %if.then.579, label %if.else.585

if.then.579:                                      ; preds = %if.else.574
  %372 = load i8, i8* %flag.addr, align 1
  %conv580 = sext i8 %372 to i32
  %or581 = or i32 41, %conv580
  %conv582 = trunc i32 %or581 to i8
  %373 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr583 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %373, i32 0, i32 6
  %374 = load i8*, i8** %ptr583, align 8
  %incdec.ptr584 = getelementptr i8, i8* %374, i32 1
  store i8* %incdec.ptr584, i8** %ptr583, align 8
  store i8 %conv582, i8* %374, align 1
  br label %if.end.589

if.else.585:                                      ; preds = %if.else.574
  %375 = load i8, i8* %flag.addr, align 1
  %conv586 = sext i8 %375 to i32
  %or587 = or i32 41, %conv586
  %conv588 = trunc i32 %or587 to i8
  %376 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv588, %struct.WFILE* %376)
  br label %if.end.589

if.end.589:                                       ; preds = %if.else.585, %if.then.579
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.then.569
  br label %do.end.591

do.end.591:                                       ; preds = %if.end.590
  %377 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp592 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %377, i32 0, i32 0
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %fp592, align 8
  %tobool593 = icmp ne %struct._IO_FILE* %378, null
  br i1 %tobool593, label %if.then.594, label %if.else.599

if.then.594:                                      ; preds = %do.end.591
  %379 = load i64, i64* %n, align 8
  %conv595 = trunc i64 %379 to i8
  %conv596 = zext i8 %conv595 to i32
  %380 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp597 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %380, i32 0, i32 0
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** %fp597, align 8
  %call598 = call i32 @_IO_putc(i32 %conv596, %struct._IO_FILE* %381)
  br label %if.end.611

if.else.599:                                      ; preds = %do.end.591
  %382 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr600 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %382, i32 0, i32 6
  %383 = load i8*, i8** %ptr600, align 8
  %384 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end601 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %384, i32 0, i32 7
  %385 = load i8*, i8** %end601, align 8
  %cmp602 = icmp ne i8* %383, %385
  br i1 %cmp602, label %if.then.604, label %if.else.608

if.then.604:                                      ; preds = %if.else.599
  %386 = load i64, i64* %n, align 8
  %conv605 = trunc i64 %386 to i8
  %387 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr606 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %387, i32 0, i32 6
  %388 = load i8*, i8** %ptr606, align 8
  %incdec.ptr607 = getelementptr i8, i8* %388, i32 1
  store i8* %incdec.ptr607, i8** %ptr606, align 8
  store i8 %conv605, i8* %388, align 1
  br label %if.end.610

if.else.608:                                      ; preds = %if.else.599
  %389 = load i64, i64* %n, align 8
  %conv609 = trunc i64 %389 to i8
  %390 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv609, %struct.WFILE* %390)
  br label %if.end.610

if.end.610:                                       ; preds = %if.else.608, %if.then.604
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.then.594
  br label %if.end.648

if.else.612:                                      ; preds = %land.lhs.true.562, %if.then.557
  br label %do.body.613

do.body.613:                                      ; preds = %if.else.612
  %391 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp614 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %391, i32 0, i32 0
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %fp614, align 8
  %tobool615 = icmp ne %struct._IO_FILE* %392, null
  br i1 %tobool615, label %if.then.616, label %if.else.621

if.then.616:                                      ; preds = %do.body.613
  %393 = load i8, i8* %flag.addr, align 1
  %conv617 = sext i8 %393 to i32
  %or618 = or i32 40, %conv617
  %394 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp619 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %394, i32 0, i32 0
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** %fp619, align 8
  %call620 = call i32 @_IO_putc(i32 %or618, %struct._IO_FILE* %395)
  br label %if.end.637

if.else.621:                                      ; preds = %do.body.613
  %396 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr622 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %396, i32 0, i32 6
  %397 = load i8*, i8** %ptr622, align 8
  %398 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end623 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %398, i32 0, i32 7
  %399 = load i8*, i8** %end623, align 8
  %cmp624 = icmp ne i8* %397, %399
  br i1 %cmp624, label %if.then.626, label %if.else.632

if.then.626:                                      ; preds = %if.else.621
  %400 = load i8, i8* %flag.addr, align 1
  %conv627 = sext i8 %400 to i32
  %or628 = or i32 40, %conv627
  %conv629 = trunc i32 %or628 to i8
  %401 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr630 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %401, i32 0, i32 6
  %402 = load i8*, i8** %ptr630, align 8
  %incdec.ptr631 = getelementptr i8, i8* %402, i32 1
  store i8* %incdec.ptr631, i8** %ptr630, align 8
  store i8 %conv629, i8* %402, align 1
  br label %if.end.636

if.else.632:                                      ; preds = %if.else.621
  %403 = load i8, i8* %flag.addr, align 1
  %conv633 = sext i8 %403 to i32
  %or634 = or i32 40, %conv633
  %conv635 = trunc i32 %or634 to i8
  %404 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv635, %struct.WFILE* %404)
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.632, %if.then.626
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.616
  br label %do.end.638

do.end.638:                                       ; preds = %if.end.637
  br label %do.body.639

do.body.639:                                      ; preds = %do.end.638
  %405 = load i64, i64* %n, align 8
  %cmp640 = icmp sgt i64 %405, 2147483647
  br i1 %cmp640, label %if.then.642, label %if.end.646

if.then.642:                                      ; preds = %do.body.639
  %406 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth643 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %406, i32 0, i32 2
  %407 = load i32, i32* %depth643, align 4
  %dec644 = add i32 %407, -1
  store i32 %dec644, i32* %depth643, align 4
  %408 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error645 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %408, i32 0, i32 1
  store i32 1, i32* %error645, align 4
  br label %if.end.1003

if.end.646:                                       ; preds = %do.body.639
  %409 = load i64, i64* %n, align 8
  %410 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %409, %struct.WFILE* %410)
  br label %do.end.647

do.end.647:                                       ; preds = %if.end.646
  br label %if.end.648

if.end.648:                                       ; preds = %do.end.647, %if.end.611
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.648
  %411 = load i64, i64* %i, align 8
  %412 = load i64, i64* %n, align 8
  %cmp649 = icmp slt i64 %411, %412
  br i1 %cmp649, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %413 = load i64, i64* %i, align 8
  %414 = load %struct._object*, %struct._object** %v.addr, align 8
  %415 = bitcast %struct._object* %414 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %415, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %413
  %416 = load %struct._object*, %struct._object** %arrayidx, align 8
  %417 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %416, %struct.WFILE* %417)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %418 = load i64, i64* %i, align 8
  %inc = add i64 %418, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.998

if.else.651:                                      ; preds = %if.else.553
  %419 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type652 = getelementptr inbounds %struct._object, %struct._object* %419, i32 0, i32 1
  %420 = load %struct._typeobject*, %struct._typeobject** %ob_type652, align 8
  %cmp653 = icmp eq %struct._typeobject* %420, @PyList_Type
  br i1 %cmp653, label %if.then.655, label %if.else.701

if.then.655:                                      ; preds = %if.else.651
  br label %do.body.656

do.body.656:                                      ; preds = %if.then.655
  %421 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp657 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %421, i32 0, i32 0
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** %fp657, align 8
  %tobool658 = icmp ne %struct._IO_FILE* %422, null
  br i1 %tobool658, label %if.then.659, label %if.else.664

if.then.659:                                      ; preds = %do.body.656
  %423 = load i8, i8* %flag.addr, align 1
  %conv660 = sext i8 %423 to i32
  %or661 = or i32 91, %conv660
  %424 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp662 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %424, i32 0, i32 0
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %fp662, align 8
  %call663 = call i32 @_IO_putc(i32 %or661, %struct._IO_FILE* %425)
  br label %if.end.680

if.else.664:                                      ; preds = %do.body.656
  %426 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr665 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %426, i32 0, i32 6
  %427 = load i8*, i8** %ptr665, align 8
  %428 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end666 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %428, i32 0, i32 7
  %429 = load i8*, i8** %end666, align 8
  %cmp667 = icmp ne i8* %427, %429
  br i1 %cmp667, label %if.then.669, label %if.else.675

if.then.669:                                      ; preds = %if.else.664
  %430 = load i8, i8* %flag.addr, align 1
  %conv670 = sext i8 %430 to i32
  %or671 = or i32 91, %conv670
  %conv672 = trunc i32 %or671 to i8
  %431 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr673 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %431, i32 0, i32 6
  %432 = load i8*, i8** %ptr673, align 8
  %incdec.ptr674 = getelementptr i8, i8* %432, i32 1
  store i8* %incdec.ptr674, i8** %ptr673, align 8
  store i8 %conv672, i8* %432, align 1
  br label %if.end.679

if.else.675:                                      ; preds = %if.else.664
  %433 = load i8, i8* %flag.addr, align 1
  %conv676 = sext i8 %433 to i32
  %or677 = or i32 91, %conv676
  %conv678 = trunc i32 %or677 to i8
  %434 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv678, %struct.WFILE* %434)
  br label %if.end.679

if.end.679:                                       ; preds = %if.else.675, %if.then.669
  br label %if.end.680

if.end.680:                                       ; preds = %if.end.679, %if.then.659
  br label %do.end.681

do.end.681:                                       ; preds = %if.end.680
  %435 = load %struct._object*, %struct._object** %v.addr, align 8
  %436 = bitcast %struct._object* %435 to %struct.PyVarObject*
  %ob_size682 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %436, i32 0, i32 1
  %437 = load i64, i64* %ob_size682, align 8
  store i64 %437, i64* %n, align 8
  br label %do.body.683

do.body.683:                                      ; preds = %do.end.681
  %438 = load i64, i64* %n, align 8
  %cmp684 = icmp sgt i64 %438, 2147483647
  br i1 %cmp684, label %if.then.686, label %if.end.690

if.then.686:                                      ; preds = %do.body.683
  %439 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth687 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %439, i32 0, i32 2
  %440 = load i32, i32* %depth687, align 4
  %dec688 = add i32 %440, -1
  store i32 %dec688, i32* %depth687, align 4
  %441 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error689 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %441, i32 0, i32 1
  store i32 1, i32* %error689, align 4
  br label %if.end.1003

if.end.690:                                       ; preds = %do.body.683
  %442 = load i64, i64* %n, align 8
  %443 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %442, %struct.WFILE* %443)
  br label %do.end.691

do.end.691:                                       ; preds = %if.end.690
  store i64 0, i64* %i, align 8
  br label %for.cond.692

for.cond.692:                                     ; preds = %for.inc.698, %do.end.691
  %444 = load i64, i64* %i, align 8
  %445 = load i64, i64* %n, align 8
  %cmp693 = icmp slt i64 %444, %445
  br i1 %cmp693, label %for.body.695, label %for.end.700

for.body.695:                                     ; preds = %for.cond.692
  %446 = load i64, i64* %i, align 8
  %447 = load %struct._object*, %struct._object** %v.addr, align 8
  %448 = bitcast %struct._object* %447 to %struct.PyListObject*
  %ob_item696 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %448, i32 0, i32 1
  %449 = load %struct._object**, %struct._object*** %ob_item696, align 8
  %arrayidx697 = getelementptr %struct._object*, %struct._object** %449, i64 %446
  %450 = load %struct._object*, %struct._object** %arrayidx697, align 8
  %451 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %450, %struct.WFILE* %451)
  br label %for.inc.698

for.inc.698:                                      ; preds = %for.body.695
  %452 = load i64, i64* %i, align 8
  %inc699 = add i64 %452, 1
  store i64 %inc699, i64* %i, align 8
  br label %for.cond.692

for.end.700:                                      ; preds = %for.cond.692
  br label %if.end.997

if.else.701:                                      ; preds = %if.else.651
  %453 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type702 = getelementptr inbounds %struct._object, %struct._object* %453, i32 0, i32 1
  %454 = load %struct._typeobject*, %struct._typeobject** %ob_type702, align 8
  %cmp703 = icmp eq %struct._typeobject* %454, @PyDict_Type
  br i1 %cmp703, label %if.then.705, label %if.else.734

if.then.705:                                      ; preds = %if.else.701
  br label %do.body.706

do.body.706:                                      ; preds = %if.then.705
  %455 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp707 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %455, i32 0, i32 0
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** %fp707, align 8
  %tobool708 = icmp ne %struct._IO_FILE* %456, null
  br i1 %tobool708, label %if.then.709, label %if.else.714

if.then.709:                                      ; preds = %do.body.706
  %457 = load i8, i8* %flag.addr, align 1
  %conv710 = sext i8 %457 to i32
  %or711 = or i32 123, %conv710
  %458 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp712 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %458, i32 0, i32 0
  %459 = load %struct._IO_FILE*, %struct._IO_FILE** %fp712, align 8
  %call713 = call i32 @_IO_putc(i32 %or711, %struct._IO_FILE* %459)
  br label %if.end.730

if.else.714:                                      ; preds = %do.body.706
  %460 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr715 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %460, i32 0, i32 6
  %461 = load i8*, i8** %ptr715, align 8
  %462 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end716 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %462, i32 0, i32 7
  %463 = load i8*, i8** %end716, align 8
  %cmp717 = icmp ne i8* %461, %463
  br i1 %cmp717, label %if.then.719, label %if.else.725

if.then.719:                                      ; preds = %if.else.714
  %464 = load i8, i8* %flag.addr, align 1
  %conv720 = sext i8 %464 to i32
  %or721 = or i32 123, %conv720
  %conv722 = trunc i32 %or721 to i8
  %465 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr723 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %465, i32 0, i32 6
  %466 = load i8*, i8** %ptr723, align 8
  %incdec.ptr724 = getelementptr i8, i8* %466, i32 1
  store i8* %incdec.ptr724, i8** %ptr723, align 8
  store i8 %conv722, i8* %466, align 1
  br label %if.end.729

if.else.725:                                      ; preds = %if.else.714
  %467 = load i8, i8* %flag.addr, align 1
  %conv726 = sext i8 %467 to i32
  %or727 = or i32 123, %conv726
  %conv728 = trunc i32 %or727 to i8
  %468 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv728, %struct.WFILE* %468)
  br label %if.end.729

if.end.729:                                       ; preds = %if.else.725, %if.then.719
  br label %if.end.730

if.end.730:                                       ; preds = %if.end.729, %if.then.709
  br label %do.end.731

do.end.731:                                       ; preds = %if.end.730
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.731
  %469 = load %struct._object*, %struct._object** %v.addr, align 8
  %call732 = call i32 @PyDict_Next(%struct._object* %469, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %470 = load %struct._object*, %struct._object** %key, align 8
  %471 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %470, %struct.WFILE* %471)
  %472 = load %struct._object*, %struct._object** %value, align 8
  %473 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %472, %struct.WFILE* %473)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %474 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* null, %struct.WFILE* %474)
  br label %if.end.996

if.else.734:                                      ; preds = %if.else.701
  %475 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type735 = getelementptr inbounds %struct._object, %struct._object* %475, i32 0, i32 1
  %476 = load %struct._typeobject*, %struct._typeobject** %ob_type735, align 8
  %cmp736 = icmp eq %struct._typeobject* %476, @PySet_Type
  br i1 %cmp736, label %if.then.741, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.734
  %477 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type738 = getelementptr inbounds %struct._object, %struct._object* %477, i32 0, i32 1
  %478 = load %struct._typeobject*, %struct._typeobject** %ob_type738, align 8
  %cmp739 = icmp eq %struct._typeobject* %478, @PyFrozenSet_Type
  br i1 %cmp739, label %if.then.741, label %if.else.867

if.then.741:                                      ; preds = %lor.lhs.false, %if.else.734
  %479 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type743 = getelementptr inbounds %struct._object, %struct._object* %479, i32 0, i32 1
  %480 = load %struct._typeobject*, %struct._typeobject** %ob_type743, align 8
  %cmp744 = icmp eq %struct._typeobject* %480, @PySet_Type
  br i1 %cmp744, label %if.then.750, label %lor.lhs.false.746

lor.lhs.false.746:                                ; preds = %if.then.741
  %481 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type747 = getelementptr inbounds %struct._object, %struct._object* %481, i32 0, i32 1
  %482 = load %struct._typeobject*, %struct._typeobject** %ob_type747, align 8
  %call748 = call i32 @PyType_IsSubtype(%struct._typeobject* %482, %struct._typeobject* @PySet_Type)
  %tobool749 = icmp ne i32 %call748, 0
  br i1 %tobool749, label %if.then.750, label %if.else.777

if.then.750:                                      ; preds = %lor.lhs.false.746, %if.then.741
  br label %do.body.751

do.body.751:                                      ; preds = %if.then.750
  %483 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp752 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %483, i32 0, i32 0
  %484 = load %struct._IO_FILE*, %struct._IO_FILE** %fp752, align 8
  %tobool753 = icmp ne %struct._IO_FILE* %484, null
  br i1 %tobool753, label %if.then.754, label %if.else.759

if.then.754:                                      ; preds = %do.body.751
  %485 = load i8, i8* %flag.addr, align 1
  %conv755 = sext i8 %485 to i32
  %or756 = or i32 60, %conv755
  %486 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp757 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %486, i32 0, i32 0
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** %fp757, align 8
  %call758 = call i32 @_IO_putc(i32 %or756, %struct._IO_FILE* %487)
  br label %if.end.775

if.else.759:                                      ; preds = %do.body.751
  %488 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr760 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %488, i32 0, i32 6
  %489 = load i8*, i8** %ptr760, align 8
  %490 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end761 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %490, i32 0, i32 7
  %491 = load i8*, i8** %end761, align 8
  %cmp762 = icmp ne i8* %489, %491
  br i1 %cmp762, label %if.then.764, label %if.else.770

if.then.764:                                      ; preds = %if.else.759
  %492 = load i8, i8* %flag.addr, align 1
  %conv765 = sext i8 %492 to i32
  %or766 = or i32 60, %conv765
  %conv767 = trunc i32 %or766 to i8
  %493 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr768 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %493, i32 0, i32 6
  %494 = load i8*, i8** %ptr768, align 8
  %incdec.ptr769 = getelementptr i8, i8* %494, i32 1
  store i8* %incdec.ptr769, i8** %ptr768, align 8
  store i8 %conv767, i8* %494, align 1
  br label %if.end.774

if.else.770:                                      ; preds = %if.else.759
  %495 = load i8, i8* %flag.addr, align 1
  %conv771 = sext i8 %495 to i32
  %or772 = or i32 60, %conv771
  %conv773 = trunc i32 %or772 to i8
  %496 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv773, %struct.WFILE* %496)
  br label %if.end.774

if.end.774:                                       ; preds = %if.else.770, %if.then.764
  br label %if.end.775

if.end.775:                                       ; preds = %if.end.774, %if.then.754
  br label %do.end.776

do.end.776:                                       ; preds = %if.end.775
  br label %if.end.804

if.else.777:                                      ; preds = %lor.lhs.false.746
  br label %do.body.778

do.body.778:                                      ; preds = %if.else.777
  %497 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp779 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %497, i32 0, i32 0
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** %fp779, align 8
  %tobool780 = icmp ne %struct._IO_FILE* %498, null
  br i1 %tobool780, label %if.then.781, label %if.else.786

if.then.781:                                      ; preds = %do.body.778
  %499 = load i8, i8* %flag.addr, align 1
  %conv782 = sext i8 %499 to i32
  %or783 = or i32 62, %conv782
  %500 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp784 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %500, i32 0, i32 0
  %501 = load %struct._IO_FILE*, %struct._IO_FILE** %fp784, align 8
  %call785 = call i32 @_IO_putc(i32 %or783, %struct._IO_FILE* %501)
  br label %if.end.802

if.else.786:                                      ; preds = %do.body.778
  %502 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr787 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %502, i32 0, i32 6
  %503 = load i8*, i8** %ptr787, align 8
  %504 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end788 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %504, i32 0, i32 7
  %505 = load i8*, i8** %end788, align 8
  %cmp789 = icmp ne i8* %503, %505
  br i1 %cmp789, label %if.then.791, label %if.else.797

if.then.791:                                      ; preds = %if.else.786
  %506 = load i8, i8* %flag.addr, align 1
  %conv792 = sext i8 %506 to i32
  %or793 = or i32 62, %conv792
  %conv794 = trunc i32 %or793 to i8
  %507 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr795 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %507, i32 0, i32 6
  %508 = load i8*, i8** %ptr795, align 8
  %incdec.ptr796 = getelementptr i8, i8* %508, i32 1
  store i8* %incdec.ptr796, i8** %ptr795, align 8
  store i8 %conv794, i8* %508, align 1
  br label %if.end.801

if.else.797:                                      ; preds = %if.else.786
  %509 = load i8, i8* %flag.addr, align 1
  %conv798 = sext i8 %509 to i32
  %or799 = or i32 62, %conv798
  %conv800 = trunc i32 %or799 to i8
  %510 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv800, %struct.WFILE* %510)
  br label %if.end.801

if.end.801:                                       ; preds = %if.else.797, %if.then.791
  br label %if.end.802

if.end.802:                                       ; preds = %if.end.801, %if.then.781
  br label %do.end.803

do.end.803:                                       ; preds = %if.end.802
  br label %if.end.804

if.end.804:                                       ; preds = %do.end.803, %do.end.776
  %511 = load %struct._object*, %struct._object** %v.addr, align 8
  %call805 = call i64 @PyObject_Size(%struct._object* %511)
  store i64 %call805, i64* %n, align 8
  %512 = load i64, i64* %n, align 8
  %cmp806 = icmp eq i64 %512, -1
  br i1 %cmp806, label %if.then.808, label %if.end.812

if.then.808:                                      ; preds = %if.end.804
  %513 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth809 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %513, i32 0, i32 2
  %514 = load i32, i32* %depth809, align 4
  %dec810 = add i32 %514, -1
  store i32 %dec810, i32* %depth809, align 4
  %515 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error811 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %515, i32 0, i32 1
  store i32 1, i32* %error811, align 4
  br label %if.end.1003

if.end.812:                                       ; preds = %if.end.804
  br label %do.body.813

do.body.813:                                      ; preds = %if.end.812
  %516 = load i64, i64* %n, align 8
  %cmp814 = icmp sgt i64 %516, 2147483647
  br i1 %cmp814, label %if.then.816, label %if.end.820

if.then.816:                                      ; preds = %do.body.813
  %517 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth817 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %517, i32 0, i32 2
  %518 = load i32, i32* %depth817, align 4
  %dec818 = add i32 %518, -1
  store i32 %dec818, i32* %depth817, align 4
  %519 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error819 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %519, i32 0, i32 1
  store i32 1, i32* %error819, align 4
  br label %if.end.1003

if.end.820:                                       ; preds = %do.body.813
  %520 = load i64, i64* %n, align 8
  %521 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %520, %struct.WFILE* %521)
  br label %do.end.821

do.end.821:                                       ; preds = %if.end.820
  %522 = load %struct._object*, %struct._object** %v.addr, align 8
  %call822 = call %struct._object* @PyObject_GetIter(%struct._object* %522)
  store %struct._object* %call822, %struct._object** %it, align 8
  %523 = load %struct._object*, %struct._object** %it, align 8
  %cmp823 = icmp eq %struct._object* %523, null
  br i1 %cmp823, label %if.then.825, label %if.end.829

if.then.825:                                      ; preds = %do.end.821
  %524 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth826 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %524, i32 0, i32 2
  %525 = load i32, i32* %depth826, align 4
  %dec827 = add i32 %525, -1
  store i32 %dec827, i32* %depth826, align 4
  %526 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error828 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %526, i32 0, i32 1
  store i32 1, i32* %error828, align 4
  br label %if.end.1003

if.end.829:                                       ; preds = %do.end.821
  br label %while.cond.830

while.cond.830:                                   ; preds = %do.end.846, %if.end.829
  %527 = load %struct._object*, %struct._object** %it, align 8
  %call831 = call %struct._object* @PyIter_Next(%struct._object* %527)
  store %struct._object* %call831, %struct._object** %value742, align 8
  %cmp832 = icmp ne %struct._object* %call831, null
  br i1 %cmp832, label %while.body.834, label %while.end.847

while.body.834:                                   ; preds = %while.cond.830
  %528 = load %struct._object*, %struct._object** %value742, align 8
  %529 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %528, %struct.WFILE* %529)
  br label %do.body.835

do.body.835:                                      ; preds = %while.body.834
  %530 = load %struct._object*, %struct._object** %value742, align 8
  store %struct._object* %530, %struct._object** %_py_decref_tmp836, align 8
  %531 = load %struct._object*, %struct._object** %_py_decref_tmp836, align 8
  %ob_refcnt837 = getelementptr inbounds %struct._object, %struct._object* %531, i32 0, i32 0
  %532 = load i64, i64* %ob_refcnt837, align 8
  %dec838 = add i64 %532, -1
  store i64 %dec838, i64* %ob_refcnt837, align 8
  %cmp839 = icmp ne i64 %dec838, 0
  br i1 %cmp839, label %if.then.841, label %if.else.842

if.then.841:                                      ; preds = %do.body.835
  br label %if.end.845

if.else.842:                                      ; preds = %do.body.835
  %533 = load %struct._object*, %struct._object** %_py_decref_tmp836, align 8
  %ob_type843 = getelementptr inbounds %struct._object, %struct._object* %533, i32 0, i32 1
  %534 = load %struct._typeobject*, %struct._typeobject** %ob_type843, align 8
  %tp_dealloc844 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %534, i32 0, i32 4
  %535 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc844, align 8
  %536 = load %struct._object*, %struct._object** %_py_decref_tmp836, align 8
  call void %535(%struct._object* %536)
  br label %if.end.845

if.end.845:                                       ; preds = %if.else.842, %if.then.841
  br label %do.end.846

do.end.846:                                       ; preds = %if.end.845
  br label %while.cond.830

while.end.847:                                    ; preds = %while.cond.830
  br label %do.body.848

do.body.848:                                      ; preds = %while.end.847
  %537 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %537, %struct._object** %_py_decref_tmp849, align 8
  %538 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  %ob_refcnt850 = getelementptr inbounds %struct._object, %struct._object* %538, i32 0, i32 0
  %539 = load i64, i64* %ob_refcnt850, align 8
  %dec851 = add i64 %539, -1
  store i64 %dec851, i64* %ob_refcnt850, align 8
  %cmp852 = icmp ne i64 %dec851, 0
  br i1 %cmp852, label %if.then.854, label %if.else.855

if.then.854:                                      ; preds = %do.body.848
  br label %if.end.858

if.else.855:                                      ; preds = %do.body.848
  %540 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  %ob_type856 = getelementptr inbounds %struct._object, %struct._object* %540, i32 0, i32 1
  %541 = load %struct._typeobject*, %struct._typeobject** %ob_type856, align 8
  %tp_dealloc857 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %541, i32 0, i32 4
  %542 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc857, align 8
  %543 = load %struct._object*, %struct._object** %_py_decref_tmp849, align 8
  call void %542(%struct._object* %543)
  br label %if.end.858

if.end.858:                                       ; preds = %if.else.855, %if.then.854
  br label %do.end.859

do.end.859:                                       ; preds = %if.end.858
  %call860 = call %struct._object* @PyErr_Occurred()
  %tobool861 = icmp ne %struct._object* %call860, null
  br i1 %tobool861, label %if.then.862, label %if.end.866

if.then.862:                                      ; preds = %do.end.859
  %544 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth863 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %544, i32 0, i32 2
  %545 = load i32, i32* %depth863, align 4
  %dec864 = add i32 %545, -1
  store i32 %dec864, i32* %depth863, align 4
  %546 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error865 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %546, i32 0, i32 1
  store i32 1, i32* %error865, align 4
  br label %if.end.1003

if.end.866:                                       ; preds = %do.end.859
  br label %if.end.995

if.else.867:                                      ; preds = %lor.lhs.false
  %547 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type868 = getelementptr inbounds %struct._object, %struct._object* %547, i32 0, i32 1
  %548 = load %struct._typeobject*, %struct._typeobject** %ob_type868, align 8
  %cmp869 = icmp eq %struct._typeobject* %548, @PyCode_Type
  br i1 %cmp869, label %if.then.871, label %if.else.904

if.then.871:                                      ; preds = %if.else.867
  %549 = load %struct._object*, %struct._object** %v.addr, align 8
  %550 = bitcast %struct._object* %549 to %struct.PyCodeObject*
  store %struct.PyCodeObject* %550, %struct.PyCodeObject** %co, align 8
  br label %do.body.872

do.body.872:                                      ; preds = %if.then.871
  %551 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp873 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %551, i32 0, i32 0
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** %fp873, align 8
  %tobool874 = icmp ne %struct._IO_FILE* %552, null
  br i1 %tobool874, label %if.then.875, label %if.else.880

if.then.875:                                      ; preds = %do.body.872
  %553 = load i8, i8* %flag.addr, align 1
  %conv876 = sext i8 %553 to i32
  %or877 = or i32 99, %conv876
  %554 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp878 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %554, i32 0, i32 0
  %555 = load %struct._IO_FILE*, %struct._IO_FILE** %fp878, align 8
  %call879 = call i32 @_IO_putc(i32 %or877, %struct._IO_FILE* %555)
  br label %if.end.896

if.else.880:                                      ; preds = %do.body.872
  %556 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr881 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %556, i32 0, i32 6
  %557 = load i8*, i8** %ptr881, align 8
  %558 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end882 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %558, i32 0, i32 7
  %559 = load i8*, i8** %end882, align 8
  %cmp883 = icmp ne i8* %557, %559
  br i1 %cmp883, label %if.then.885, label %if.else.891

if.then.885:                                      ; preds = %if.else.880
  %560 = load i8, i8* %flag.addr, align 1
  %conv886 = sext i8 %560 to i32
  %or887 = or i32 99, %conv886
  %conv888 = trunc i32 %or887 to i8
  %561 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr889 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %561, i32 0, i32 6
  %562 = load i8*, i8** %ptr889, align 8
  %incdec.ptr890 = getelementptr i8, i8* %562, i32 1
  store i8* %incdec.ptr890, i8** %ptr889, align 8
  store i8 %conv888, i8* %562, align 1
  br label %if.end.895

if.else.891:                                      ; preds = %if.else.880
  %563 = load i8, i8* %flag.addr, align 1
  %conv892 = sext i8 %563 to i32
  %or893 = or i32 99, %conv892
  %conv894 = trunc i32 %or893 to i8
  %564 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv894, %struct.WFILE* %564)
  br label %if.end.895

if.end.895:                                       ; preds = %if.else.891, %if.then.885
  br label %if.end.896

if.end.896:                                       ; preds = %if.end.895, %if.then.875
  br label %do.end.897

do.end.897:                                       ; preds = %if.end.896
  %565 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_argcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %565, i32 0, i32 1
  %566 = load i32, i32* %co_argcount, align 4
  %conv898 = sext i32 %566 to i64
  %567 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv898, %struct.WFILE* %567)
  %568 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_kwonlyargcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %568, i32 0, i32 2
  %569 = load i32, i32* %co_kwonlyargcount, align 4
  %conv899 = sext i32 %569 to i64
  %570 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv899, %struct.WFILE* %570)
  %571 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %571, i32 0, i32 3
  %572 = load i32, i32* %co_nlocals, align 4
  %conv900 = sext i32 %572 to i64
  %573 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv900, %struct.WFILE* %573)
  %574 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_stacksize = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %574, i32 0, i32 4
  %575 = load i32, i32* %co_stacksize, align 4
  %conv901 = sext i32 %575 to i64
  %576 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv901, %struct.WFILE* %576)
  %577 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %577, i32 0, i32 5
  %578 = load i32, i32* %co_flags, align 4
  %conv902 = sext i32 %578 to i64
  %579 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv902, %struct.WFILE* %579)
  %580 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %580, i32 0, i32 6
  %581 = load %struct._object*, %struct._object** %co_code, align 8
  %582 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %581, %struct.WFILE* %582)
  %583 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %583, i32 0, i32 7
  %584 = load %struct._object*, %struct._object** %co_consts, align 8
  %585 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %584, %struct.WFILE* %585)
  %586 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_names = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %586, i32 0, i32 8
  %587 = load %struct._object*, %struct._object** %co_names, align 8
  %588 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %587, %struct.WFILE* %588)
  %589 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %589, i32 0, i32 9
  %590 = load %struct._object*, %struct._object** %co_varnames, align 8
  %591 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %590, %struct.WFILE* %591)
  %592 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %592, i32 0, i32 10
  %593 = load %struct._object*, %struct._object** %co_freevars, align 8
  %594 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %593, %struct.WFILE* %594)
  %595 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %595, i32 0, i32 11
  %596 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %597 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %596, %struct.WFILE* %597)
  %598 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %598, i32 0, i32 13
  %599 = load %struct._object*, %struct._object** %co_filename, align 8
  %600 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %599, %struct.WFILE* %600)
  %601 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %601, i32 0, i32 14
  %602 = load %struct._object*, %struct._object** %co_name, align 8
  %603 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %602, %struct.WFILE* %603)
  %604 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %604, i32 0, i32 15
  %605 = load i32, i32* %co_firstlineno, align 4
  %conv903 = sext i32 %605 to i64
  %606 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %conv903, %struct.WFILE* %606)
  %607 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %607, i32 0, i32 16
  %608 = load %struct._object*, %struct._object** %co_lnotab, align 8
  %609 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_object(%struct._object* %608, %struct.WFILE* %609)
  br label %if.end.994

if.else.904:                                      ; preds = %if.else.867
  %610 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type905 = getelementptr inbounds %struct._object, %struct._object* %610, i32 0, i32 1
  %611 = load %struct._typeobject*, %struct._typeobject** %ob_type905, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %611, i32 0, i32 18
  %612 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp906 = icmp ne %struct.PyBufferProcs* %612, null
  br i1 %cmp906, label %land.lhs.true.908, label %if.else.965

land.lhs.true.908:                                ; preds = %if.else.904
  %613 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type909 = getelementptr inbounds %struct._object, %struct._object* %613, i32 0, i32 1
  %614 = load %struct._typeobject*, %struct._typeobject** %ob_type909, align 8
  %tp_as_buffer910 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %614, i32 0, i32 18
  %615 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer910, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %615, i32 0, i32 0
  %616 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp911 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %616, null
  br i1 %cmp911, label %if.then.913, label %if.else.965

if.then.913:                                      ; preds = %land.lhs.true.908
  %617 = load %struct._object*, %struct._object** %v.addr, align 8
  %call914 = call i32 @PyObject_GetBuffer(%struct._object* %617, %struct.bufferinfo* %view, i32 0)
  %cmp915 = icmp ne i32 %call914, 0
  br i1 %cmp915, label %if.then.917, label %if.end.937

if.then.917:                                      ; preds = %if.then.913
  %618 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp918 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %618, i32 0, i32 0
  %619 = load %struct._IO_FILE*, %struct._IO_FILE** %fp918, align 8
  %tobool919 = icmp ne %struct._IO_FILE* %619, null
  br i1 %tobool919, label %if.then.920, label %if.else.923

if.then.920:                                      ; preds = %if.then.917
  %620 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp921 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %620, i32 0, i32 0
  %621 = load %struct._IO_FILE*, %struct._IO_FILE** %fp921, align 8
  %call922 = call i32 @_IO_putc(i32 63, %struct._IO_FILE* %621)
  br label %if.end.933

if.else.923:                                      ; preds = %if.then.917
  %622 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr924 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %622, i32 0, i32 6
  %623 = load i8*, i8** %ptr924, align 8
  %624 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end925 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %624, i32 0, i32 7
  %625 = load i8*, i8** %end925, align 8
  %cmp926 = icmp ne i8* %623, %625
  br i1 %cmp926, label %if.then.928, label %if.else.931

if.then.928:                                      ; preds = %if.else.923
  %626 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr929 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %626, i32 0, i32 6
  %627 = load i8*, i8** %ptr929, align 8
  %incdec.ptr930 = getelementptr i8, i8* %627, i32 1
  store i8* %incdec.ptr930, i8** %ptr929, align 8
  store i8 63, i8* %627, align 1
  br label %if.end.932

if.else.931:                                      ; preds = %if.else.923
  %628 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext 63, %struct.WFILE* %628)
  br label %if.end.932

if.end.932:                                       ; preds = %if.else.931, %if.then.928
  br label %if.end.933

if.end.933:                                       ; preds = %if.end.932, %if.then.920
  %629 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth934 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %629, i32 0, i32 2
  %630 = load i32, i32* %depth934, align 4
  %dec935 = add i32 %630, -1
  store i32 %dec935, i32* %depth934, align 4
  %631 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error936 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %631, i32 0, i32 1
  store i32 1, i32* %error936, align 4
  br label %if.end.1003

if.end.937:                                       ; preds = %if.then.913
  br label %do.body.938

do.body.938:                                      ; preds = %if.end.937
  %632 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp939 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %632, i32 0, i32 0
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** %fp939, align 8
  %tobool940 = icmp ne %struct._IO_FILE* %633, null
  br i1 %tobool940, label %if.then.941, label %if.else.946

if.then.941:                                      ; preds = %do.body.938
  %634 = load i8, i8* %flag.addr, align 1
  %conv942 = sext i8 %634 to i32
  %or943 = or i32 115, %conv942
  %635 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp944 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %635, i32 0, i32 0
  %636 = load %struct._IO_FILE*, %struct._IO_FILE** %fp944, align 8
  %call945 = call i32 @_IO_putc(i32 %or943, %struct._IO_FILE* %636)
  br label %if.end.962

if.else.946:                                      ; preds = %do.body.938
  %637 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr947 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %637, i32 0, i32 6
  %638 = load i8*, i8** %ptr947, align 8
  %639 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end948 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %639, i32 0, i32 7
  %640 = load i8*, i8** %end948, align 8
  %cmp949 = icmp ne i8* %638, %640
  br i1 %cmp949, label %if.then.951, label %if.else.957

if.then.951:                                      ; preds = %if.else.946
  %641 = load i8, i8* %flag.addr, align 1
  %conv952 = sext i8 %641 to i32
  %or953 = or i32 115, %conv952
  %conv954 = trunc i32 %or953 to i8
  %642 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr955 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %642, i32 0, i32 6
  %643 = load i8*, i8** %ptr955, align 8
  %incdec.ptr956 = getelementptr i8, i8* %643, i32 1
  store i8* %incdec.ptr956, i8** %ptr955, align 8
  store i8 %conv954, i8* %643, align 1
  br label %if.end.961

if.else.957:                                      ; preds = %if.else.946
  %644 = load i8, i8* %flag.addr, align 1
  %conv958 = sext i8 %644 to i32
  %or959 = or i32 115, %conv958
  %conv960 = trunc i32 %or959 to i8
  %645 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv960, %struct.WFILE* %645)
  br label %if.end.961

if.end.961:                                       ; preds = %if.else.957, %if.then.951
  br label %if.end.962

if.end.962:                                       ; preds = %if.end.961, %if.then.941
  br label %do.end.963

do.end.963:                                       ; preds = %if.end.962
  %buf964 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %646 = load i8*, i8** %buf964, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %647 = load i64, i64* %len, align 8
  %648 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_pstring(i8* %646, i64 %647, %struct.WFILE* %648)
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  br label %if.end.993

if.else.965:                                      ; preds = %land.lhs.true.908, %if.else.904
  br label %do.body.966

do.body.966:                                      ; preds = %if.else.965
  %649 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp967 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %649, i32 0, i32 0
  %650 = load %struct._IO_FILE*, %struct._IO_FILE** %fp967, align 8
  %tobool968 = icmp ne %struct._IO_FILE* %650, null
  br i1 %tobool968, label %if.then.969, label %if.else.974

if.then.969:                                      ; preds = %do.body.966
  %651 = load i8, i8* %flag.addr, align 1
  %conv970 = sext i8 %651 to i32
  %or971 = or i32 63, %conv970
  %652 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp972 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %652, i32 0, i32 0
  %653 = load %struct._IO_FILE*, %struct._IO_FILE** %fp972, align 8
  %call973 = call i32 @_IO_putc(i32 %or971, %struct._IO_FILE* %653)
  br label %if.end.990

if.else.974:                                      ; preds = %do.body.966
  %654 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr975 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %654, i32 0, i32 6
  %655 = load i8*, i8** %ptr975, align 8
  %656 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end976 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %656, i32 0, i32 7
  %657 = load i8*, i8** %end976, align 8
  %cmp977 = icmp ne i8* %655, %657
  br i1 %cmp977, label %if.then.979, label %if.else.985

if.then.979:                                      ; preds = %if.else.974
  %658 = load i8, i8* %flag.addr, align 1
  %conv980 = sext i8 %658 to i32
  %or981 = or i32 63, %conv980
  %conv982 = trunc i32 %or981 to i8
  %659 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr983 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %659, i32 0, i32 6
  %660 = load i8*, i8** %ptr983, align 8
  %incdec.ptr984 = getelementptr i8, i8* %660, i32 1
  store i8* %incdec.ptr984, i8** %ptr983, align 8
  store i8 %conv982, i8* %660, align 1
  br label %if.end.989

if.else.985:                                      ; preds = %if.else.974
  %661 = load i8, i8* %flag.addr, align 1
  %conv986 = sext i8 %661 to i32
  %or987 = or i32 63, %conv986
  %conv988 = trunc i32 %or987 to i8
  %662 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv988, %struct.WFILE* %662)
  br label %if.end.989

if.end.989:                                       ; preds = %if.else.985, %if.then.979
  br label %if.end.990

if.end.990:                                       ; preds = %if.end.989, %if.then.969
  br label %do.end.991

do.end.991:                                       ; preds = %if.end.990
  %663 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error992 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %663, i32 0, i32 1
  store i32 1, i32* %error992, align 4
  br label %if.end.993

if.end.993:                                       ; preds = %do.end.991, %do.end.963
  br label %if.end.994

if.end.994:                                       ; preds = %if.end.993, %do.end.897
  br label %if.end.995

if.end.995:                                       ; preds = %if.end.994, %if.end.866
  br label %if.end.996

if.end.996:                                       ; preds = %if.end.995, %while.end
  br label %if.end.997

if.end.997:                                       ; preds = %if.end.996, %for.end.700
  br label %if.end.998

if.end.998:                                       ; preds = %if.end.997, %for.end
  br label %if.end.999

if.end.999:                                       ; preds = %if.end.998, %if.end.552
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.end.999, %do.end.294
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %if.end.263
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.end.1001, %if.end.124
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.40, %if.then.73, %if.then.140, %if.then.175, %if.then.210, %if.then.238, %if.then.474, %if.then.642, %if.then.686, %if.then.808, %if.then.816, %if.then.825, %if.then.862, %if.end.933, %if.end.1002, %if.end.27
  ret void
}

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal void @w_PyLong(%struct._longobject* %ob, i8 signext %flag, %struct.WFILE* %p) #0 {
entry:
  %ob.addr = alloca %struct._longobject*, align 8
  %flag.addr = alloca i8, align 1
  %p.addr = alloca %struct.WFILE*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %l = alloca i64, align 8
  %d = alloca i32, align 4
  store %struct._longobject* %ob, %struct._longobject** %ob.addr, align 8
  store i8 %flag, i8* %flag.addr, align 1
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i8, i8* %flag.addr, align 1
  %conv = sext i8 %2 to i32
  %or = or i32 108, %conv
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call = call i32 @_IO_putc(i32 %or, %struct._IO_FILE* %4)
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %5, i32 0, i32 6
  %6 = load i8*, i8** %ptr, align 8
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 7
  %8 = load i8*, i8** %end, align 8
  %cmp = icmp ne i8* %6, %8
  br i1 %cmp, label %if.then.3, label %if.else.8

if.then.3:                                        ; preds = %if.else
  %9 = load i8, i8* %flag.addr, align 1
  %conv4 = sext i8 %9 to i32
  %or5 = or i32 108, %conv4
  %conv6 = trunc i32 %or5 to i8
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 6
  %11 = load i8*, i8** %ptr7, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8
  store i8 %conv6, i8* %11, align 1
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %12 = load i8, i8* %flag.addr, align 1
  %conv9 = sext i8 %12 to i32
  %or10 = or i32 108, %conv9
  %conv11 = trunc i32 %or10 to i8
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv11, %struct.WFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %14 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %15 = bitcast %struct._longobject* %14 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size, align 8
  %cmp13 = icmp eq i64 %16, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  %17 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 0, %struct.WFILE* %17)
  br label %do.end.63

if.end.16:                                        ; preds = %do.end
  %18 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %19 = bitcast %struct._longobject* %18 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size17, align 8
  %cmp18 = icmp slt i64 %20, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %21 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %22 = bitcast %struct._longobject* %21 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size20, align 8
  %sub = sub i64 0, %23
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %24 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %25 = bitcast %struct._longobject* %24 to %struct.PyVarObject*
  %ob_size21 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %26, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %27 = load i64, i64* %n, align 8
  %sub22 = sub i64 %27, 1
  %mul = mul i64 %sub22, 2
  store i64 %mul, i64* %l, align 8
  %28 = load i64, i64* %n, align 8
  %sub23 = sub i64 %28, 1
  %29 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %ob_digit = getelementptr inbounds %struct._longobject, %struct._longobject* %29, i32 0, i32 1
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %ob_digit, i32 0, i64 %sub23
  %30 = load i32, i32* %arrayidx, align 4
  store i32 %30, i32* %d, align 4
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond, %cond.end
  %31 = load i32, i32* %d, align 4
  %shr = lshr i32 %31, 15
  store i32 %shr, i32* %d, align 4
  %32 = load i64, i64* %l, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %l, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.24
  %33 = load i32, i32* %d, align 4
  %cmp25 = icmp ne i32 %33, 0
  br i1 %cmp25, label %do.body.24, label %do.end.27

do.end.27:                                        ; preds = %do.cond
  %34 = load i64, i64* %l, align 8
  %cmp28 = icmp sgt i64 %34, 2147483647
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %do.end.27
  %35 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %35, i32 0, i32 2
  %36 = load i32, i32* %depth, align 4
  %dec = add i32 %36, -1
  store i32 %dec, i32* %depth, align 4
  %37 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %37, i32 0, i32 1
  store i32 1, i32* %error, align 4
  br label %do.end.63

if.end.31:                                        ; preds = %do.end.27
  %38 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %39 = bitcast %struct._longobject* %38 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %39, i32 0, i32 1
  %40 = load i64, i64* %ob_size32, align 8
  %cmp33 = icmp sgt i64 %40, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.end.31
  %41 = load i64, i64* %l, align 8
  br label %cond.end.38

cond.false.36:                                    ; preds = %if.end.31
  %42 = load i64, i64* %l, align 8
  %sub37 = sub i64 0, %42
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.35
  %cond39 = phi i64 [ %41, %cond.true.35 ], [ %sub37, %cond.false.36 ]
  %43 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %cond39, %struct.WFILE* %43)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %cond.end.38
  %44 = load i64, i64* %i, align 8
  %45 = load i64, i64* %n, align 8
  %sub40 = sub i64 %45, 1
  %cmp41 = icmp slt i64 %44, %sub40
  br i1 %cmp41, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %ob_digit43 = getelementptr inbounds %struct._longobject, %struct._longobject* %47, i32 0, i32 1
  %arrayidx44 = getelementptr [1 x i32], [1 x i32]* %ob_digit43, i32 0, i64 %46
  %48 = load i32, i32* %arrayidx44, align 4
  store i32 %48, i32* %d, align 4
  store i64 0, i64* %j, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body
  %49 = load i64, i64* %j, align 8
  %cmp46 = icmp slt i64 %49, 2
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %50 = load i32, i32* %d, align 4
  %and = and i32 %50, 32767
  %51 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_short(i32 %and, %struct.WFILE* %51)
  %52 = load i32, i32* %d, align 4
  %shr49 = lshr i32 %52, 15
  store i32 %shr49, i32* %d, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %53 = load i64, i64* %j, align 8
  %inc50 = add i64 %53, 1
  store i64 %inc50, i64* %j, align 8
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %54 = load i64, i64* %i, align 8
  %inc52 = add i64 %54, 1
  store i64 %inc52, i64* %i, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %55 = load i64, i64* %n, align 8
  %sub54 = sub i64 %55, 1
  %56 = load %struct._longobject*, %struct._longobject** %ob.addr, align 8
  %ob_digit55 = getelementptr inbounds %struct._longobject, %struct._longobject* %56, i32 0, i32 1
  %arrayidx56 = getelementptr [1 x i32], [1 x i32]* %ob_digit55, i32 0, i64 %sub54
  %57 = load i32, i32* %arrayidx56, align 4
  store i32 %57, i32* %d, align 4
  br label %do.body.57

do.body.57:                                       ; preds = %do.cond.60, %for.end.53
  %58 = load i32, i32* %d, align 4
  %and58 = and i32 %58, 32767
  %59 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_short(i32 %and58, %struct.WFILE* %59)
  %60 = load i32, i32* %d, align 4
  %shr59 = lshr i32 %60, 15
  store i32 %shr59, i32* %d, align 4
  br label %do.cond.60

do.cond.60:                                       ; preds = %do.body.57
  %61 = load i32, i32* %d, align 4
  %cmp61 = icmp ne i32 %61, 0
  br i1 %cmp61, label %do.body.57, label %do.end.63

do.end.63:                                        ; preds = %if.then.15, %if.then.30, %do.cond.60
  ret void
}

declare i32 @_PyFloat_Pack8(double, i8*, i32) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @w_string(i8* %s, i64 %n, %struct.WFILE* %p) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call = call i64 @fwrite(i8* %2, i64 1, i64 %3, %struct._IO_FILE* %5)
  br label %if.end.15

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.else
  %6 = load i64, i64* %n.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp2 = icmp sge i64 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp3 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp3, align 8
  %tobool = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %while.body
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %11 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp5 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %11, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %12)
  br label %if.end.13

if.else.7:                                        ; preds = %while.body
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %13, i32 0, i32 6
  %14 = load i8*, i8** %ptr, align 8
  %15 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %15, i32 0, i32 7
  %16 = load i8*, i8** %end, align 8
  %cmp8 = icmp ne i8* %14, %16
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.7
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr11 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %19, i32 0, i32 6
  %20 = load i8*, i8** %ptr11, align 8
  %incdec.ptr = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ptr11, align 8
  store i8 %18, i8* %20, align 1
  br label %if.end

if.else.12:                                       ; preds = %if.else.7
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %22, %struct.WFILE* %23)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.4
  %24 = load i8*, i8** %s.addr, align 8
  %incdec.ptr14 = getelementptr i8, i8* %24, i32 1
  store i8* %incdec.ptr14, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.then
  ret void
}

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare double @PyComplex_RealAsDouble(%struct._object*) #1

declare double @PyComplex_ImagAsDouble(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @w_pstring(i8* %s, i64 %n, %struct.WFILE* %p) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp sgt i64 %0, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %1, i32 0, i32 2
  %2 = load i32, i32* %depth, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %depth, align 4
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %error = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 1
  store i32 1, i32* %error, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %4 = load i64, i64* %n.addr, align 8
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_long(i64 %4, %struct.WFILE* %5)
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i64, i64* %n.addr, align 8
  %8 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %6, i64 %7, %struct.WFILE* %8)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @w_short_pstring(i8* %s, i64 %n, %struct.WFILE* %p) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8
  %conv = trunc i64 %2 to i8
  %conv1 = zext i8 %conv to i32
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call = call i32 @_IO_putc(i32 %conv1, %struct._IO_FILE* %4)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %5, i32 0, i32 6
  %6 = load i8*, i8** %ptr, align 8
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 7
  %8 = load i8*, i8** %end, align 8
  %cmp = icmp ne i8* %6, %8
  br i1 %cmp, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.else
  %9 = load i64, i64* %n.addr, align 8
  %conv5 = trunc i64 %9 to i8
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr6 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 6
  %11 = load i8*, i8** %ptr6, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr6, align 8
  store i8 %conv5, i8* %11, align 1
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %12 = load i64, i64* %n.addr, align 8
  %conv8 = trunc i64 %12 to i8
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv8, %struct.WFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i64, i64* %n.addr, align 8
  %16 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_string(i8* %14, i64 %15, %struct.WFILE* %16)
  ret void
}

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal void @w_short(i32 %x, %struct.WFILE* %p) #0 {
entry:
  %x.addr = alloca i32, align 4
  %p.addr = alloca %struct.WFILE*, align 8
  store i32 %x, i32* %x.addr, align 4
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %and = and i32 %2, 255
  %conv = trunc i32 %and to i8
  %conv1 = sext i8 %conv to i32
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call = call i32 @_IO_putc(i32 %conv1, %struct._IO_FILE* %4)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %5, i32 0, i32 6
  %6 = load i8*, i8** %ptr, align 8
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 7
  %8 = load i8*, i8** %end, align 8
  %cmp = icmp ne i8* %6, %8
  br i1 %cmp, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %9 = load i32, i32* %x.addr, align 4
  %and5 = and i32 %9, 255
  %conv6 = trunc i32 %and5 to i8
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr7 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 6
  %11 = load i8*, i8** %ptr7, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8
  store i8 %conv6, i8* %11, align 1
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %12 = load i32, i32* %x.addr, align 4
  %and9 = and i32 %12, 255
  %conv10 = trunc i32 %and9 to i8
  %13 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv10, %struct.WFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %14 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp12 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.end.11
  %16 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %16, 8
  %and15 = and i32 %shr, 255
  %conv16 = trunc i32 %and15 to i8
  %conv17 = sext i8 %conv16 to i32
  %17 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @_IO_putc(i32 %conv17, %struct._IO_FILE* %18)
  br label %if.end.36

if.else.20:                                       ; preds = %if.end.11
  %19 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr21 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %19, i32 0, i32 6
  %20 = load i8*, i8** %ptr21, align 8
  %21 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end22 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %21, i32 0, i32 7
  %22 = load i8*, i8** %end22, align 8
  %cmp23 = icmp ne i8* %20, %22
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else.20
  %23 = load i32, i32* %x.addr, align 4
  %shr26 = ashr i32 %23, 8
  %and27 = and i32 %shr26, 255
  %conv28 = trunc i32 %and27 to i8
  %24 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr29 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %24, i32 0, i32 6
  %25 = load i8*, i8** %ptr29, align 8
  %incdec.ptr30 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %ptr29, align 8
  store i8 %conv28, i8* %25, align 1
  br label %if.end.35

if.else.31:                                       ; preds = %if.else.20
  %26 = load i32, i32* %x.addr, align 4
  %shr32 = ashr i32 %26, 8
  %and33 = and i32 %shr32, 255
  %conv34 = trunc i32 %and33 to i8
  %27 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  call void @w_more(i8 signext %conv34, %struct.WFILE* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @r_string(i64 %n, %struct.WFILE* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %read = alloca i64, align 8
  %res = alloca i8*, align 8
  %left = alloca i64, align 8
  %res33 = alloca %struct._object*, align 8
  %mview = alloca %struct._object*, align 8
  %buf34 = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i64 -1, i64* %read, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 6
  %1 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %2, i32 0, i32 6
  %3 = load i8*, i8** %ptr1, align 8
  store i8* %3, i8** %res, align 8
  %4 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %4, i32 0, i32 7
  %5 = load i8*, i8** %end, align 8
  %6 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %6, i32 0, i32 6
  %7 = load i8*, i8** %ptr2, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %left, align 8
  %8 = load i64, i64* %left, align 8
  %9 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp slt i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %n.addr, align 8
  %12 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr5 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %12, i32 0, i32 6
  %13 = load i8*, i8** %ptr5, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %11
  store i8* %add.ptr, i8** %ptr5, align 8
  %14 = load i8*, i8** %res, align 8
  store i8* %14, i8** %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %15 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %15, i32 0, i32 8
  %16 = load i8*, i8** %buf, align 8
  %cmp7 = icmp eq i8* %16, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %17 = load i64, i64* %n.addr, align 8
  %call = call i8* @PyMem_Malloc(i64 %17)
  %18 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf9 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %18, i32 0, i32 8
  store i8* %call, i8** %buf9, align 8
  %19 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf10 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %19, i32 0, i32 8
  %20 = load i8*, i8** %buf10, align 8
  %cmp11 = icmp eq i8* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.8
  %call13 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  %21 = load i64, i64* %n.addr, align 8
  %22 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf_size = getelementptr inbounds %struct.WFILE, %struct.WFILE* %22, i32 0, i32 9
  store i64 %21, i64* %buf_size, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.6
  %23 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf_size15 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %23, i32 0, i32 9
  %24 = load i64, i64* %buf_size15, align 8
  %25 = load i64, i64* %n.addr, align 8
  %cmp16 = icmp slt i64 %24, %25
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.else
  %26 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %26, i32 0, i32 8
  %27 = load i8*, i8** %buf18, align 8
  %28 = load i64, i64* %n.addr, align 8
  %call19 = call i8* @PyMem_Realloc(i8* %27, i64 %28)
  %29 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf20 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %29, i32 0, i32 8
  store i8* %call19, i8** %buf20, align 8
  %30 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf21 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %30, i32 0, i32 8
  %31 = load i8*, i8** %buf21, align 8
  %cmp22 = icmp eq i8* %31, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.17
  %call24 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.17
  %32 = load i64, i64* %n.addr, align 8
  %33 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf_size26 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %33, i32 0, i32 9
  store i64 %32, i64* %buf_size26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.14
  %34 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %34, i32 0, i32 3
  %35 = load %struct._object*, %struct._object** %readable, align 8
  %tobool = icmp ne %struct._object* %35, null
  br i1 %tobool, label %if.else.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.28
  %36 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf30 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %36, i32 0, i32 8
  %37 = load i8*, i8** %buf30, align 8
  %38 = load i64, i64* %n.addr, align 8
  %39 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i64 @fread(i8* %37, i64 1, i64 %38, %struct._IO_FILE* %40)
  store i64 %call31, i64* %read, align 8
  br label %if.end.54

if.else.32:                                       ; preds = %if.end.28
  %41 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf35 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %41, i32 0, i32 8
  %42 = load i8*, i8** %buf35, align 8
  %43 = load i64, i64* %n.addr, align 8
  %call36 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %buf34, %struct._object* null, i8* %42, i64 %43, i32 0, i32 9)
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.32
  store i8* null, i8** %retval
  br label %return

if.end.39:                                        ; preds = %if.else.32
  %call40 = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %buf34)
  store %struct._object* %call40, %struct._object** %mview, align 8
  %44 = load %struct._object*, %struct._object** %mview, align 8
  %cmp41 = icmp eq %struct._object* %44, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %45 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %readable44 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %45, i32 0, i32 3
  %46 = load %struct._object*, %struct._object** %readable44, align 8
  %47 = load %struct._object*, %struct._object** %mview, align 8
  %call45 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %46, %struct._Py_Identifier* @r_string.PyId_readinto, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._object* %47)
  store %struct._object* %call45, %struct._object** %res33, align 8
  %48 = load %struct._object*, %struct._object** %res33, align 8
  %cmp46 = icmp ne %struct._object* %48, null
  br i1 %cmp46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.end.43
  %49 = load %struct._object*, %struct._object** %res33, align 8
  %50 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call48 = call i64 @PyNumber_AsSsize_t(%struct._object* %49, %struct._object* %50)
  store i64 %call48, i64* %read, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.47
  %51 = load %struct._object*, %struct._object** %res33, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %53, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp49 = icmp ne i64 %dec, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body
  br label %if.end.52

if.else.51:                                       ; preds = %do.body
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %56(%struct._object* %57)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end

do.end:                                           ; preds = %if.end.52
  br label %if.end.53

if.end.53:                                        ; preds = %do.end, %if.end.43
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.29
  %58 = load i64, i64* %read, align 8
  %59 = load i64, i64* %n.addr, align 8
  %cmp55 = icmp ne i64 %58, %59
  br i1 %cmp55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.end.54
  %call57 = call %struct._object* @PyErr_Occurred()
  %tobool58 = icmp ne %struct._object* %call57, null
  br i1 %tobool58, label %if.end.65, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  %60 = load i64, i64* %read, align 8
  %61 = load i64, i64* %n.addr, align 8
  %cmp60 = icmp sgt i64 %60, %61
  br i1 %cmp60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.then.59
  %62 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %63 = load i64, i64* %n.addr, align 8
  %64 = load i64, i64* %read, align 8
  %call62 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i64 %63, i64 %64)
  br label %if.end.64

if.else.63:                                       ; preds = %if.then.59
  %65 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.56
  store i8* null, i8** %retval
  br label %return

if.end.66:                                        ; preds = %if.end.54
  %66 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %buf67 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %66, i32 0, i32 8
  %67 = load i8*, i8** %buf67, align 8
  store i8* %67, i8** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.end.65, %if.then.42, %if.then.38, %if.then.23, %if.then.12, %if.end, %if.then.4
  %68 = load i8*, i8** %retval
  ret i8* %68
}

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

declare %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @r_byte(%struct.WFILE* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.WFILE*, align 8
  %c = alloca i32, align 4
  %ptr7 = alloca i8*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  store i32 -1, i32* %c, align 4
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %0, i32 0, i32 6
  %1 = load i8*, i8** %ptr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %2, i32 0, i32 6
  %3 = load i8*, i8** %ptr1, align 8
  %4 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %4, i32 0, i32 7
  %5 = load i8*, i8** %end, align 8
  %cmp2 = icmp ult i8* %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %ptr4 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %6, i32 0, i32 6
  %7 = load i8*, i8** %ptr4, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr4, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load i32, i32* %c, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %10 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %readable, align 8
  %tobool = icmp ne %struct._object* %11, null
  br i1 %tobool, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %12 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call, i32* %c, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %14 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call8 = call i8* @r_string(i64 1, %struct.WFILE* %14)
  store i8* %call8, i8** %ptr7, align 8
  %15 = load i8*, i8** %ptr7, align 8
  %cmp9 = icmp ne i8* %15, null
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %16 = load i8*, i8** %ptr7, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = zext i8 %17 to i32
  store i32 %conv12, i32* %c, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.6
  %18 = load i32, i32* %c, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @r_ref(%struct._object* %o, i32 %flag, %struct.WFILE* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %flag.addr = alloca i32, align 4
  %p.addr = alloca %struct.WFILE*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %1, i32 0, i32 10
  %2 = load %struct._object*, %struct._object** %refs, align 8
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i32 @PyList_Append(%struct._object* %2, %struct._object* %3)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @r_PyLong(%struct.WFILE* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %ob = alloca %struct._longobject*, align 8
  %n = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %md = alloca i32, align 4
  %shorts_in_top_digit = alloca i32, align 4
  %d = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call = call i64 @r_long(%struct.WFILE* %0)
  store i64 %call, i64* %n, align 8
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._longobject* @_PyLong_New(i64 0)
  %2 = bitcast %struct._longobject* %call3 to %struct._object*
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* %n, align 8
  %cmp5 = icmp slt i64 %3, -2147483647
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load i64, i64* %n, align 8
  %cmp6 = icmp sgt i64 %4, 2147483647
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %6 = load i64, i64* %n, align 8
  %cmp9 = icmp slt i64 %6, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %7 = load i64, i64* %n, align 8
  %sub = sub i64 0, %7
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %8 = load i64, i64* %n, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %8, %cond.false ]
  %sub10 = sub i64 %cond, 1
  %div = sdiv i64 %sub10, 2
  %add = add i64 1, %div
  store i64 %add, i64* %size, align 8
  %9 = load i64, i64* %n, align 8
  %cmp11 = icmp slt i64 %9, 0
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.end
  %10 = load i64, i64* %n, align 8
  %sub13 = sub i64 0, %10
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %11 = load i64, i64* %n, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i64 [ %sub13, %cond.true.12 ], [ %11, %cond.false.14 ]
  %sub17 = sub i64 %cond16, 1
  %rem = srem i64 %sub17, 2
  %add18 = add i64 1, %rem
  %conv = trunc i64 %add18 to i32
  store i32 %conv, i32* %shorts_in_top_digit, align 4
  %12 = load i64, i64* %size, align 8
  %call19 = call %struct._longobject* @_PyLong_New(i64 %12)
  store %struct._longobject* %call19, %struct._longobject** %ob, align 8
  %13 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %cmp20 = icmp eq %struct._longobject* %13, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %cond.end.15
  %14 = load i64, i64* %n, align 8
  %cmp24 = icmp sgt i64 %14, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.23
  %15 = load i64, i64* %size, align 8
  br label %cond.end.29

cond.false.27:                                    ; preds = %if.end.23
  %16 = load i64, i64* %size, align 8
  %sub28 = sub i64 0, %16
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i64 [ %15, %cond.true.26 ], [ %sub28, %cond.false.27 ]
  %17 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %18 = bitcast %struct._longobject* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  store i64 %cond30, i64* %ob_size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %cond.end.29
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %size, align 8
  %sub31 = sub i64 %20, 1
  %cmp32 = icmp slt i64 %19, %sub31
  br i1 %cmp32, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %d, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %21, 2
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.34
  %22 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call38 = call i32 @r_short(%struct.WFILE* %22)
  store i32 %call38, i32* %md, align 4
  %call39 = call %struct._object* @PyErr_Occurred()
  %tobool40 = icmp ne %struct._object* %call39, null
  br i1 %tobool40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %for.body.37
  br label %do.body

do.body:                                          ; preds = %if.then.41
  %23 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %24 = bitcast %struct._longobject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.body
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.44
  br label %do.end

do.end:                                           ; preds = %if.end.45
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %for.body.37
  %31 = load i32, i32* %md, align 4
  %cmp47 = icmp slt i32 %31, 0
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.46
  %32 = load i32, i32* %md, align 4
  %cmp50 = icmp sgt i32 %32, 32768
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.49, %if.end.46
  br label %bad_digit

if.end.53:                                        ; preds = %lor.lhs.false.49
  %33 = load i32, i32* %md, align 4
  %34 = load i32, i32* %j, align 4
  %mul = mul i32 %34, 15
  %shl = shl i32 %33, %mul
  %35 = load i32, i32* %d, align 4
  %add54 = add i32 %35, %shl
  store i32 %add54, i32* %d, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %36 = load i32, i32* %j, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  %37 = load i32, i32* %d, align 4
  %38 = load i64, i64* %i, align 8
  %39 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %ob_digit = getelementptr inbounds %struct._longobject, %struct._longobject* %39, i32 0, i32 1
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %ob_digit, i32 0, i64 %38
  store i32 %37, i32* %arrayidx, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %40 = load i64, i64* %i, align 8
  %inc56 = add i64 %40, 1
  store i64 %inc56, i64* %i, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i32 0, i32* %d, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.108, %for.end.57
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %shorts_in_top_digit, align 4
  %cmp59 = icmp slt i32 %41, %42
  br i1 %cmp59, label %for.body.61, label %for.end.110

for.body.61:                                      ; preds = %for.cond.58
  %43 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call62 = call i32 @r_short(%struct.WFILE* %43)
  store i32 %call62, i32* %md, align 4
  %call63 = call %struct._object* @PyErr_Occurred()
  %tobool64 = icmp ne %struct._object* %call63, null
  br i1 %tobool64, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %for.body.61
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %44 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %45 = bitcast %struct._longobject* %44 to %struct._object*
  store %struct._object* %45, %struct._object** %_py_decref_tmp67, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %47, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.66
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.66
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %50(%struct._object* %51)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.78:                                        ; preds = %for.body.61
  %52 = load i32, i32* %md, align 4
  %cmp79 = icmp slt i32 %52, 0
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.78
  %53 = load i32, i32* %md, align 4
  %cmp82 = icmp sgt i32 %53, 32768
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.81, %if.end.78
  br label %bad_digit

if.end.85:                                        ; preds = %lor.lhs.false.81
  %54 = load i32, i32* %md, align 4
  %cmp86 = icmp eq i32 %54, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %if.end.85
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %shorts_in_top_digit, align 4
  %sub88 = sub i32 %56, 1
  %cmp89 = icmp eq i32 %55, %sub88
  br i1 %cmp89, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %land.lhs.true
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  %57 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %58 = bitcast %struct._longobject* %57 to %struct._object*
  store %struct._object* %58, %struct._object** %_py_decref_tmp93, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %60, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %63(%struct._object* %64)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %65 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %land.lhs.true, %if.end.85
  %66 = load i32, i32* %md, align 4
  %67 = load i32, i32* %j, align 4
  %mul105 = mul i32 %67, 15
  %shl106 = shl i32 %66, %mul105
  %68 = load i32, i32* %d, align 4
  %add107 = add i32 %68, %shl106
  store i32 %add107, i32* %d, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.104
  %69 = load i32, i32* %j, align 4
  %inc109 = add i32 %69, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.58

for.end.110:                                      ; preds = %for.cond.58
  %call111 = call %struct._object* @PyErr_Occurred()
  %tobool112 = icmp ne %struct._object* %call111, null
  br i1 %tobool112, label %if.then.113, label %if.end.126

if.then.113:                                      ; preds = %for.end.110
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %70 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %71 = bitcast %struct._longobject* %70 to %struct._object*
  store %struct._object* %71, %struct._object** %_py_decref_tmp115, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %73, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.114
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %76(%struct._object* %77)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.126:                                       ; preds = %for.end.110
  %78 = load i32, i32* %d, align 4
  %79 = load i64, i64* %size, align 8
  %sub127 = sub i64 %79, 1
  %80 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %ob_digit128 = getelementptr inbounds %struct._longobject, %struct._longobject* %80, i32 0, i32 1
  %arrayidx129 = getelementptr [1 x i32], [1 x i32]* %ob_digit128, i32 0, i64 %sub127
  store i32 %78, i32* %arrayidx129, align 4
  %81 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %82 = bitcast %struct._longobject* %81 to %struct._object*
  store %struct._object* %82, %struct._object** %retval
  br label %return

bad_digit:                                        ; preds = %if.then.84, %if.then.52
  br label %do.body.130

do.body.130:                                      ; preds = %bad_digit
  %83 = load %struct._longobject*, %struct._longobject** %ob, align 8
  %84 = bitcast %struct._longobject* %83 to %struct._object*
  store %struct._object* %84, %struct._object** %_py_decref_tmp131, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt132, align 8
  %dec133 = add i64 %86, -1
  store i64 %dec133, i64* %ob_refcnt132, align 8
  %cmp134 = icmp ne i64 %dec133, 0
  br i1 %cmp134, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.body.130
  br label %if.end.140

if.else.137:                                      ; preds = %do.body.130
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  call void %89(%struct._object* %90)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  %91 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.141, %if.end.126, %do.end.125, %do.end.103, %do.end.77, %do.end, %if.then.22, %if.then.7, %if.then.2, %if.then
  %92 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %92
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare double @_PyFloat_Unpack8(i8*, i32) #1

declare %struct._object* @PyComplex_FromCComplex(double, double) #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

declare void @PyUnicode_InternInPlace(%struct._object**) #1

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PySet_New(%struct._object*) #1

declare %struct._object* @PyFrozenSet_New(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @r_ref_reserve(i32 %flag, %struct.WFILE* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %flag.addr = alloca i32, align 4
  %p.addr = alloca %struct.WFILE*, align 8
  %idx = alloca i64, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %1, i32 0, i32 10
  %2 = load %struct._object*, %struct._object** %refs, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %idx, align 8
  %5 = load i64, i64* %idx, align 8
  %cmp = icmp sge i64 %5, 2147483646
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs2 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %7, i32 0, i32 10
  %8 = load %struct._object*, %struct._object** %refs2, align 8
  %call = call i32 @PyList_Append(%struct._object* %8, %struct._object* @_Py_NoneStruct)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load i64, i64* %idx, align 8
  store i64 %9, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.5, %if.then.4, %if.then.1
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i32 @PySet_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @r_ref_insert(%struct._object* %o, i64 %idx, i32 %flag, %struct.WFILE* %p) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %idx.addr = alloca i64, align 8
  %flag.addr = alloca i32, align 4
  %p.addr = alloca %struct.WFILE*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %idx.addr, align 8
  %3 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %3, i32 0, i32 10
  %4 = load %struct._object*, %struct._object** %refs, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %5, i32 0, i32 1
  %6 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %6, i64 %2
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %tmp, align 8
  %8 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %o.addr, align 8
  %11 = load i64, i64* %idx.addr, align 8
  %12 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %refs1 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %12, i32 0, i32 10
  %13 = load %struct._object*, %struct._object** %refs1, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item2 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item2, align 8
  %arrayidx3 = getelementptr %struct._object*, %struct._object** %15, i64 %11
  store %struct._object* %10, %struct._object** %arrayidx3, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %land.lhs.true, %entry
  %23 = load %struct._object*, %struct._object** %o.addr, align 8
  ret %struct._object* %23
}

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

declare %struct.PyCodeObject* @PyCode_New(i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._longobject* @_PyLong_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @marshal_dump(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %version = alloca i32, align 4
  %s = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 4, i32* %version, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), %struct._object** %x, %struct._object** %f, i32* %version)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %x, align 8
  %2 = load i32, i32* %version, align 4
  %call1 = call %struct._object* @PyMarshal_WriteObjectToString(%struct._object* %1, i32 %2)
  store %struct._object* %call1, %struct._object** %s, align 8
  %3 = load %struct._object*, %struct._object** %s, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %f, align 8
  %5 = load %struct._object*, %struct._object** %s, align 8
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %4, %struct._Py_Identifier* @marshal_dump.PyId_write, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), %struct._object* %5)
  store %struct._object* %call4, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @marshal_load(%struct._object* %self, %struct._object* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %rf = alloca %struct.WFILE, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %f.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %0, %struct._Py_Identifier* @marshal_load.PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i32 0)
  store %struct._object* %call, %struct._object** %data, align 8
  %1 = load %struct._object*, %struct._object** %data, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 134217728
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %data, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0), i8* %8)
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %9 = load %struct._object*, %struct._object** %f.addr, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* %9, %struct._object** %readable, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* null, i8** %end, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* null, i8** %ptr, align 8
  %buf = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  store i8* null, i8** %buf, align 8
  %call5 = call %struct._object* @PyList_New(i64 0)
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  store %struct._object* %call5, %struct._object** %refs, align 8
  %cmp6 = icmp ne %struct._object* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.else.20

if.then.7:                                        ; preds = %if.else
  %call8 = call %struct._object* @read_object(%struct.WFILE* %rf)
  store %struct._object* %call8, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %refs9 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %10 = load %struct._object*, %struct._object** %refs9, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.14

if.else.12:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %buf15 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %17 = load i8*, i8** %buf15, align 8
  %cmp16 = icmp ne i8* %17, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.end
  %buf18 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 8
  %18 = load i8*, i8** %buf18, align 8
  call void @PyMem_Free(i8* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.end
  br label %if.end.21

if.else.20:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.end.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.2
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %19 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp24, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %21, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %24(%struct._object* %25)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @marshal_dumps(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %version = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 4, i32* %version, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %struct._object** %x, i32* %version)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %x, align 8
  %2 = load i32, i32* %version, align 4
  %call1 = call %struct._object* @PyMarshal_WriteObjectToString(%struct._object* %1, i32 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @marshal_loads(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rf = alloca %struct.WFILE, align 8
  %p = alloca %struct.bufferinfo, align 8
  %s = alloca i8*, align 8
  %n = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %struct.bufferinfo* %p)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %p, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %s, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %p, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  store i64 %2, i64* %n, align 8
  %fp = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %readable = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 3
  store %struct._object* null, %struct._object** %readable, align 8
  %current_filename = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 5
  store %struct._object* null, %struct._object** %current_filename, align 8
  %3 = load i8*, i8** %s, align 8
  %ptr = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 6
  store i8* %3, i8** %ptr, align 8
  %4 = load i8*, i8** %s, align 8
  %5 = load i64, i64* %n, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %5
  %end = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 7
  store i8* %add.ptr, i8** %end, align 8
  %depth = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %call1 = call %struct._object* @PyList_New(i64 0)
  %refs = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  store %struct._object* %call1, %struct._object** %refs, align 8
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @read_object(%struct.WFILE* %rf)
  store %struct._object* %call4, %struct._object** %result, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %p)
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %refs5 = getelementptr inbounds %struct.WFILE, %struct.WFILE* %rf, i32 0, i32 10
  %6 = load %struct._object*, %struct._object** %refs5, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_object(%struct.WFILE* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.WFILE*, align 8
  %v = alloca %struct._object*, align 8
  store %struct.WFILE* %p, %struct.WFILE** %p.addr, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.WFILE*, %struct.WFILE** %p.addr, align 8
  %call2 = call %struct._object* @r_object(%struct.WFILE* %1)
  store %struct._object* %call2, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool4 = icmp ne %struct._object* %call3, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %4 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
