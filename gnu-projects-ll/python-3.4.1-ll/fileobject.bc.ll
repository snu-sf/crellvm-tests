; ModuleID = './fileobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyStdPrinter_Object = type { %struct._object, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@PyFile_FromFd.PyId_open = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct._object* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"isisssi\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Objects/fileobject.c\00", align 1
@PyFile_GetLine.PyId_readline = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"(i)\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"object.readline() returned non-string\00", align 1
@PyExc_EOFError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"EOF when reading a line\00", align 1
@PyFile_WriteObject.PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* null }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"writeobject with NULL file\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"null file for PyFile_WriteString\00", align 1
@PyObject_AsFileDescriptor.PyId_fileno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._object* null }, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"fileno() returned a non-integer\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"argument must be an int, or have a fileno() method.\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [50 x i8] c"file descriptor cannot be a negative integer (%i)\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@PyStdPrinter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @stdprinter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @stdprinter_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @stdprinter_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stdprinter_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"stderrprinter\00", align 1
@stdprinter_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_noop to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_noop to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*, %struct._object*)* @stdprinter_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@stdprinter_getsetlist = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_closed to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_encoding to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_mode to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [35 x i8] c"<stdprinter(fd=%d) object at 0x%x>\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"True if the file is closed\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Encoding of the file\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"String giving the file mode\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"cannot create 'stderrprinter' instances\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_FromFd(i32 %fd, i8* %name, i8* %mode, i32 %buffering, i8* %encoding, i8* %errors, i8* %newline, i32 %closefd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %buffering.addr = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %newline.addr = alloca i8*, align 8
  %closefd.addr = alloca i32, align 4
  %io = alloca %struct._object*, align 8
  %stream = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %buffering, i32* %buffering.addr, align 4
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store i8* %newline, i8** %newline.addr, align 8
  store i32 %closefd, i32* %closefd.addr, align 4
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %io, align 8
  %0 = load %struct._object*, %struct._object** %io, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %io, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %mode.addr, align 8
  %4 = load i32, i32* %buffering.addr, align 4
  %5 = load i8*, i8** %encoding.addr, align 8
  %6 = load i8*, i8** %errors.addr, align 8
  %7 = load i8*, i8** %newline.addr, align 8
  %8 = load i32, i32* %closefd.addr, align 4
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %1, %struct._Py_Identifier* @PyFile_FromFd.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i32 %8)
  store %struct._object* %call1, %struct._object** %stream, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %io, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %16 = load %struct._object*, %struct._object** %stream, align 8
  %cmp5 = icmp eq %struct._object* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %17 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_GetLine(%struct._object* %f, i32 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %f.addr = alloca %struct._object*, align 8
  %n.addr = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %reader = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %len123 = alloca i64, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %v225 = alloca %struct._object*, align 8
  %_py_decref_tmp229 = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct._object*, %struct._object** %f.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 55)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %f.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @PyFile_GetLine.PyId_readline)
  store %struct._object* %call, %struct._object** %reader, align 8
  %2 = load %struct._object*, %struct._object** %reader, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp sle i32 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call6, %struct._object** %args, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end.3
  %4 = load i32, i32* %n.addr, align 4
  %call7 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %4)
  store %struct._object* %call7, %struct._object** %args, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %5 = load %struct._object*, %struct._object** %args, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %6 = load %struct._object*, %struct._object** %reader, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else.13:                                       ; preds = %do.body
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %reader, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %call16 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %13, %struct._object* %14, %struct._object* null)
  store %struct._object* %call16, %struct._object** %result, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** %reader, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp18, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %17, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %20(%struct._object* %21)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %22 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp29, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %24, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %27(%struct._object* %28)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %29 = load %struct._object*, %struct._object** %result, align 8
  %cmp39 = icmp ne %struct._object* %29, null
  br i1 %cmp39, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %do.end.38
  %30 = load %struct._object*, %struct._object** %result, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 19
  %32 = load i64, i64* %tp_flags, align 8
  %and = and i64 %32, 134217728
  %cmp41 = icmp ne i64 %and, 0
  br i1 %cmp41, label %if.end.59, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %33 = load %struct._object*, %struct._object** %result, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_flags44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 19
  %35 = load i64, i64* %tp_flags44, align 8
  %and45 = and i64 %35, 268435456
  %cmp46 = icmp ne i64 %and45, 0
  br i1 %cmp46, label %if.end.59, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.42
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp49, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %38, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %41(%struct._object* %42)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %result, align 8
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %land.lhs.true.42, %land.lhs.true, %do.end.38
  %44 = load i32, i32* %n.addr, align 4
  %cmp60 = icmp slt i32 %44, 0
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.110

land.lhs.true.61:                                 ; preds = %if.end.59
  %45 = load %struct._object*, %struct._object** %result, align 8
  %cmp62 = icmp ne %struct._object* %45, null
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.110

land.lhs.true.63:                                 ; preds = %land.lhs.true.61
  %46 = load %struct._object*, %struct._object** %result, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_flags65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 19
  %48 = load i64, i64* %tp_flags65, align 8
  %and66 = and i64 %48, 134217728
  %cmp67 = icmp ne i64 %and66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.110

if.then.68:                                       ; preds = %land.lhs.true.63
  %49 = load %struct._object*, %struct._object** %result, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %50, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  %51 = load %struct._object*, %struct._object** %result, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %52, i32 0, i32 1
  %53 = load i64, i64* %ob_size, align 8
  store i64 %53, i64* %len, align 8
  %54 = load i64, i64* %len, align 8
  %cmp69 = icmp eq i64 %54, 0
  br i1 %cmp69, label %if.then.70, label %if.else.82

if.then.70:                                       ; preds = %if.then.68
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %55 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp72, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %57, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %60(%struct._object* %61)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  store %struct._object* null, %struct._object** %result, align 8
  %62 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.109

if.else.82:                                       ; preds = %if.then.68
  %63 = load i64, i64* %len, align 8
  %sub = sub i64 %63, 1
  %64 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %64, i64 %sub
  %65 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %65 to i32
  %cmp83 = icmp eq i32 %conv, 10
  br i1 %cmp83, label %if.then.85, label %if.end.108

if.then.85:                                       ; preds = %if.else.82
  %66 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt86, align 8
  %cmp87 = icmp eq i64 %67, 1
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %if.then.85
  %68 = load i64, i64* %len, align 8
  %sub90 = sub i64 %68, 1
  %call91 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %sub90)
  br label %if.end.107

if.else.92:                                       ; preds = %if.then.85
  %69 = load i8*, i8** %s, align 8
  %70 = load i64, i64* %len, align 8
  %sub93 = sub i64 %70, 1
  %call94 = call %struct._object* @PyBytes_FromStringAndSize(i8* %69, i64 %sub93)
  store %struct._object* %call94, %struct._object** %v, align 8
  br label %do.body.95

do.body.95:                                       ; preds = %if.else.92
  %71 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp96, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %73, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.95
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.95
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %76(%struct._object* %77)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %78 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %78, %struct._object** %result, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.106, %if.then.89
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.else.82
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %do.end.81
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %land.lhs.true.63, %land.lhs.true.61, %if.end.59
  %79 = load i32, i32* %n.addr, align 4
  %cmp111 = icmp slt i32 %79, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.242

land.lhs.true.113:                                ; preds = %if.end.110
  %80 = load %struct._object*, %struct._object** %result, align 8
  %cmp114 = icmp ne %struct._object* %80, null
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.242

land.lhs.true.116:                                ; preds = %land.lhs.true.113
  %81 = load %struct._object*, %struct._object** %result, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_flags118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 19
  %83 = load i64, i64* %tp_flags118, align 8
  %and119 = and i64 %83, 268435456
  %cmp120 = icmp ne i64 %and119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.242

if.then.122:                                      ; preds = %land.lhs.true.116
  %84 = load %struct._object*, %struct._object** %result, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %85, i32 0, i32 1
  %86 = load i64, i64* %length, align 8
  store i64 %86, i64* %len123, align 8
  %87 = load i64, i64* %len123, align 8
  %cmp124 = icmp eq i64 %87, 0
  br i1 %cmp124, label %if.then.126, label %if.else.139

if.then.126:                                      ; preds = %if.then.122
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %88 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp128, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %90, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137

if.else.134:                                      ; preds = %do.body.127
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %93(%struct._object* %94)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  store %struct._object* null, %struct._object** %result, align 8
  %95 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.241

if.else.139:                                      ; preds = %if.then.122
  %96 = load %struct._object*, %struct._object** %result, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i32 0, i32 3
  %98 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %98, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp140 = icmp eq i32 %bf.clear, 1
  br i1 %cmp140, label %cond.true, label %cond.false.160

cond.true:                                        ; preds = %if.else.139
  %99 = load i64, i64* %len123, align 8
  %sub142 = sub i64 %99, 1
  %100 = load %struct._object*, %struct._object** %result, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyASCIIObject*
  %state143 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %101, i32 0, i32 3
  %102 = bitcast %struct.anon* %state143 to i32*
  %bf.load144 = load i32, i32* %102, align 4
  %bf.lshr145 = lshr i32 %bf.load144, 5
  %bf.clear146 = and i32 %bf.lshr145, 1
  %tobool = icmp ne i32 %bf.clear146, 0
  br i1 %tobool, label %cond.true.147, label %cond.false.155

cond.true.147:                                    ; preds = %cond.true
  %103 = load %struct._object*, %struct._object** %result, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*
  %state148 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i32 0, i32 3
  %105 = bitcast %struct.anon* %state148 to i32*
  %bf.load149 = load i32, i32* %105, align 4
  %bf.lshr150 = lshr i32 %bf.load149, 6
  %bf.clear151 = and i32 %bf.lshr150, 1
  %tobool152 = icmp ne i32 %bf.clear151, 0
  br i1 %tobool152, label %cond.true.153, label %cond.false

cond.true.153:                                    ; preds = %cond.true.147
  %106 = load %struct._object*, %struct._object** %result, align 8
  %107 = bitcast %struct._object* %106 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %107, i64 1
  %108 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.147
  %109 = load %struct._object*, %struct._object** %result, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyCompactUnicodeObject*
  %add.ptr154 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %110, i64 1
  %111 = bitcast %struct.PyCompactUnicodeObject* %add.ptr154 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.153
  %cond = phi i8* [ %108, %cond.true.153 ], [ %111, %cond.false ]
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.true
  %112 = load %struct._object*, %struct._object** %result, align 8
  %113 = bitcast %struct._object* %112 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %113, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %114 = load i8*, i8** %any, align 8
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.end
  %cond157 = phi i8* [ %cond, %cond.end ], [ %114, %cond.false.155 ]
  %arrayidx158 = getelementptr i8, i8* %cond157, i64 %sub142
  %115 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %115 to i32
  br label %cond.end.220

cond.false.160:                                   ; preds = %if.else.139
  %116 = load %struct._object*, %struct._object** %result, align 8
  %117 = bitcast %struct._object* %116 to %struct.PyASCIIObject*
  %state161 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %117, i32 0, i32 3
  %118 = bitcast %struct.anon* %state161 to i32*
  %bf.load162 = load i32, i32* %118, align 4
  %bf.lshr163 = lshr i32 %bf.load162, 2
  %bf.clear164 = and i32 %bf.lshr163, 7
  %cmp165 = icmp eq i32 %bf.clear164, 2
  br i1 %cmp165, label %cond.true.167, label %cond.false.193

cond.true.167:                                    ; preds = %cond.false.160
  %119 = load i64, i64* %len123, align 8
  %sub168 = sub i64 %119, 1
  %120 = load %struct._object*, %struct._object** %result, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyASCIIObject*
  %state169 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %121, i32 0, i32 3
  %122 = bitcast %struct.anon* %state169 to i32*
  %bf.load170 = load i32, i32* %122, align 4
  %bf.lshr171 = lshr i32 %bf.load170, 5
  %bf.clear172 = and i32 %bf.lshr171, 1
  %tobool173 = icmp ne i32 %bf.clear172, 0
  br i1 %tobool173, label %cond.true.174, label %cond.false.186

cond.true.174:                                    ; preds = %cond.true.167
  %123 = load %struct._object*, %struct._object** %result, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyASCIIObject*
  %state175 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %124, i32 0, i32 3
  %125 = bitcast %struct.anon* %state175 to i32*
  %bf.load176 = load i32, i32* %125, align 4
  %bf.lshr177 = lshr i32 %bf.load176, 6
  %bf.clear178 = and i32 %bf.lshr177, 1
  %tobool179 = icmp ne i32 %bf.clear178, 0
  br i1 %tobool179, label %cond.true.180, label %cond.false.182

cond.true.180:                                    ; preds = %cond.true.174
  %126 = load %struct._object*, %struct._object** %result, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyASCIIObject*
  %add.ptr181 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %127, i64 1
  %128 = bitcast %struct.PyASCIIObject* %add.ptr181 to i8*
  br label %cond.end.184

cond.false.182:                                   ; preds = %cond.true.174
  %129 = load %struct._object*, %struct._object** %result, align 8
  %130 = bitcast %struct._object* %129 to %struct.PyCompactUnicodeObject*
  %add.ptr183 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %130, i64 1
  %131 = bitcast %struct.PyCompactUnicodeObject* %add.ptr183 to i8*
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.182, %cond.true.180
  %cond185 = phi i8* [ %128, %cond.true.180 ], [ %131, %cond.false.182 ]
  br label %cond.end.189

cond.false.186:                                   ; preds = %cond.true.167
  %132 = load %struct._object*, %struct._object** %result, align 8
  %133 = bitcast %struct._object* %132 to %struct.PyUnicodeObject*
  %data187 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %133, i32 0, i32 1
  %any188 = bitcast %union.anon* %data187 to i8**
  %134 = load i8*, i8** %any188, align 8
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.186, %cond.end.184
  %cond190 = phi i8* [ %cond185, %cond.end.184 ], [ %134, %cond.false.186 ]
  %135 = bitcast i8* %cond190 to i16*
  %arrayidx191 = getelementptr i16, i16* %135, i64 %sub168
  %136 = load i16, i16* %arrayidx191, align 2
  %conv192 = zext i16 %136 to i32
  br label %cond.end.218

cond.false.193:                                   ; preds = %cond.false.160
  %137 = load i64, i64* %len123, align 8
  %sub194 = sub i64 %137, 1
  %138 = load %struct._object*, %struct._object** %result, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyASCIIObject*
  %state195 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %139, i32 0, i32 3
  %140 = bitcast %struct.anon* %state195 to i32*
  %bf.load196 = load i32, i32* %140, align 4
  %bf.lshr197 = lshr i32 %bf.load196, 5
  %bf.clear198 = and i32 %bf.lshr197, 1
  %tobool199 = icmp ne i32 %bf.clear198, 0
  br i1 %tobool199, label %cond.true.200, label %cond.false.212

cond.true.200:                                    ; preds = %cond.false.193
  %141 = load %struct._object*, %struct._object** %result, align 8
  %142 = bitcast %struct._object* %141 to %struct.PyASCIIObject*
  %state201 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %142, i32 0, i32 3
  %143 = bitcast %struct.anon* %state201 to i32*
  %bf.load202 = load i32, i32* %143, align 4
  %bf.lshr203 = lshr i32 %bf.load202, 6
  %bf.clear204 = and i32 %bf.lshr203, 1
  %tobool205 = icmp ne i32 %bf.clear204, 0
  br i1 %tobool205, label %cond.true.206, label %cond.false.208

cond.true.206:                                    ; preds = %cond.true.200
  %144 = load %struct._object*, %struct._object** %result, align 8
  %145 = bitcast %struct._object* %144 to %struct.PyASCIIObject*
  %add.ptr207 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %145, i64 1
  %146 = bitcast %struct.PyASCIIObject* %add.ptr207 to i8*
  br label %cond.end.210

cond.false.208:                                   ; preds = %cond.true.200
  %147 = load %struct._object*, %struct._object** %result, align 8
  %148 = bitcast %struct._object* %147 to %struct.PyCompactUnicodeObject*
  %add.ptr209 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %148, i64 1
  %149 = bitcast %struct.PyCompactUnicodeObject* %add.ptr209 to i8*
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.206
  %cond211 = phi i8* [ %146, %cond.true.206 ], [ %149, %cond.false.208 ]
  br label %cond.end.215

cond.false.212:                                   ; preds = %cond.false.193
  %150 = load %struct._object*, %struct._object** %result, align 8
  %151 = bitcast %struct._object* %150 to %struct.PyUnicodeObject*
  %data213 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %151, i32 0, i32 1
  %any214 = bitcast %union.anon* %data213 to i8**
  %152 = load i8*, i8** %any214, align 8
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.212, %cond.end.210
  %cond216 = phi i8* [ %cond211, %cond.end.210 ], [ %152, %cond.false.212 ]
  %153 = bitcast i8* %cond216 to i32*
  %arrayidx217 = getelementptr i32, i32* %153, i64 %sub194
  %154 = load i32, i32* %arrayidx217, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end.215, %cond.end.189
  %cond219 = phi i32 [ %conv192, %cond.end.189 ], [ %154, %cond.end.215 ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end.218, %cond.end.156
  %cond221 = phi i32 [ %conv159, %cond.end.156 ], [ %cond219, %cond.end.218 ]
  %cmp222 = icmp eq i32 %cond221, 10
  br i1 %cmp222, label %if.then.224, label %if.end.240

if.then.224:                                      ; preds = %cond.end.220
  %155 = load %struct._object*, %struct._object** %result, align 8
  %156 = load i64, i64* %len123, align 8
  %sub226 = sub i64 %156, 1
  %call227 = call %struct._object* @PyUnicode_Substring(%struct._object* %155, i64 0, i64 %sub226)
  store %struct._object* %call227, %struct._object** %v225, align 8
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.224
  %157 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %157, %struct._object** %_py_decref_tmp229, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 0
  %159 = load i64, i64* %ob_refcnt230, align 8
  %dec231 = add i64 %159, -1
  store i64 %dec231, i64* %ob_refcnt230, align 8
  %cmp232 = icmp ne i64 %dec231, 0
  br i1 %cmp232, label %if.then.234, label %if.else.235

if.then.234:                                      ; preds = %do.body.228
  br label %if.end.238

if.else.235:                                      ; preds = %do.body.228
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_type236 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type236, align 8
  %tp_dealloc237 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 4
  %162 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc237, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  call void %162(%struct._object* %163)
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.235, %if.then.234
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.238
  %164 = load %struct._object*, %struct._object** %v225, align 8
  store %struct._object* %164, %struct._object** %result, align 8
  br label %if.end.240

if.end.240:                                       ; preds = %do.end.239, %cond.end.220
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %do.end.138
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %land.lhs.true.116, %land.lhs.true.113, %if.end.110
  %165 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %165, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.242, %do.end, %if.then.2, %if.then
  %166 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %166
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyFile_WriteObject(%struct._object* %v, %struct._object* %f, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %writer = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._object*, %struct._object** %f.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %f.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @PyFile_WriteObject.PyId_write)
  store %struct._object* %call, %struct._object** %writer, align 8
  %3 = load %struct._object*, %struct._object** %writer, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call5 = call %struct._object* @PyObject_Str(%struct._object* %5)
  store %struct._object* %call5, %struct._object** %value, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %call6 = call %struct._object* @PyObject_Repr(%struct._object* %6)
  store %struct._object* %call6, %struct._object** %value, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %7 = load %struct._object*, %struct._object** %value, align 8
  %cmp8 = icmp eq %struct._object* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** %writer, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %value, align 8
  %call15 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %15)
  store %struct._object* %call15, %struct._object** %args, align 8
  %16 = load %struct._object*, %struct._object** %args, align 8
  %cmp16 = icmp eq %struct._object* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %17 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp19, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %19, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %22(%struct._object* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %24 = load %struct._object*, %struct._object** %writer, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp30, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %26, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %29(%struct._object* %30)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %31 = load %struct._object*, %struct._object** %writer, align 8
  %32 = load %struct._object*, %struct._object** %args, align 8
  %call41 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %31, %struct._object* %32, %struct._object* null)
  store %struct._object* %call41, %struct._object** %result, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.40
  %33 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp43, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %35, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %38(%struct._object* %39)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %40 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp54, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %42, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %45(%struct._object* %46)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %47 = load %struct._object*, %struct._object** %writer, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp65, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %49, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %52(%struct._object* %53)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  %54 = load %struct._object*, %struct._object** %result, align 8
  %cmp75 = icmp eq %struct._object* %54, null
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %do.end.74
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %do.end.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.77
  %55 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp79, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %57, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %60(%struct._object* %61)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.88, %if.then.76, %do.end.39, %do.end, %if.then.2, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

; Function Attrs: nounwind uwtable
define i32 @PyFile_WriteString(i8* %s, %struct._object* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %f.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %f.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.else.14, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %s.addr, align 8
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %2)
  store %struct._object* %call5, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  %4 = load %struct._object*, %struct._object** %v, align 8
  %5 = load %struct._object*, %struct._object** %f.addr, align 8
  %call9 = call i32 @PyFile_WriteObject(%struct._object* %4, %struct._object* %5, i32 1)
  store i32 %call9, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %13 = load i32, i32* %err, align 4
  store i32 %13, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %do.end, %if.then.7, %if.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsFileDescriptor(%struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %meth = alloca %struct._object*, align 8
  %fno = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %o.addr, align 8
  %call = call i32 @_PyLong_AsInt(%struct._object* %3)
  store i32 %call, i32* %fd, align 4
  br label %if.end.44

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @PyObject_AsFileDescriptor.PyId_fileno)
  store %struct._object* %call1, %struct._object** %meth, align 8
  %cmp2 = icmp ne %struct._object* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else.42

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %meth, align 8
  %call4 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %5, %struct._object* null, %struct._object* null)
  store %struct._object* %call4, %struct._object** %fno, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else.7:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %fno, align 8
  %cmp9 = icmp eq %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %14 = load %struct._object*, %struct._object** %fno, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags13, align 8
  %and14 = and i64 %16, 16777216
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %fno, align 8
  %call17 = call i32 @_PyLong_AsInt(%struct._object* %17)
  store i32 %call17, i32* %fd, align 4
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.16
  %18 = load %struct._object*, %struct._object** %fno, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp19, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %20, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %23(%struct._object* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.41

if.else.29:                                       ; preds = %if.end.11
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  br label %do.body.30

do.body.30:                                       ; preds = %if.else.29
  %26 = load %struct._object*, %struct._object** %fno, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %do.end.28
  br label %if.end.43

if.else.42:                                       ; preds = %if.else
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.41
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %34 = load i32, i32* %fd, align 4
  %cmp45 = icmp eq i32 %34, -1
  br i1 %cmp45, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.44
  %call46 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call46, null
  br i1 %tobool, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true, %if.end.44
  %35 = load i32, i32* %fd, align 4
  %cmp49 = icmp slt i32 %35, 0
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.48
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %37 = load i32, i32* %fd, align 4
  %call51 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i32 %37)
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %38 = load i32, i32* %fd, align 4
  store i32 %38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.47, %if.else.42, %do.end.40, %if.then.10
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @Py_UniversalNewlineFgets(i8* %buf, i32 %n, %struct._IO_FILE* %stream, %struct._object* %fobj) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %fobj.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %newlinetypes = alloca i32, align 4
  %skipnextlf = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct._object* %fobj, %struct._object** %fobj.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %newlinetypes, align 4
  store i32 0, i32* %skipnextlf, align 4
  %1 = load %struct._object*, %struct._object** %fobj.addr, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location() #5
  store i32 6, i32* %call, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @flockfile(%struct._IO_FILE* %2) #6
  store i32 120, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.end
  %3 = load i32, i32* %n.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @getc_unlocked(%struct._IO_FILE* %4)
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %skipnextlf, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %skipnextlf, align 4
  %7 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %7, 10
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %8 = load i32, i32* %newlinetypes, align 4
  %or = or i32 %8, 4
  store i32 %or, i32* %newlinetypes, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 @getc_unlocked(%struct._IO_FILE* %9)
  store i32 %call7, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %10, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  br label %while.end

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.12

if.else:                                          ; preds = %if.then.4
  %11 = load i32, i32* %newlinetypes, align 4
  %or11 = or i32 %11, 1
  store i32 %or11, i32* %newlinetypes, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %while.body
  %12 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %12, 13
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  store i32 1, i32* %skipnextlf, align 4
  store i32 10, i32* %c, align 4
  br label %if.end.21

if.else.16:                                       ; preds = %if.end.13
  %13 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %13, 10
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else.16
  %14 = load i32, i32* %newlinetypes, align 4
  %or19 = or i32 %14, 2
  store i32 %or19, i32* %newlinetypes, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %15 = load i32, i32* %c, align 4
  %conv = trunc i32 %15 to i8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %16, align 1
  %17 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %17, 10
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  br label %while.end

if.end.25:                                        ; preds = %if.end.21
  br label %while.cond

while.end:                                        ; preds = %if.then.24, %if.then.9, %land.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @funlockfile(%struct._IO_FILE* %18) #6
  %19 = load i8*, i8** %p, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %skipnextlf, align 4
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %while.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call28 = call i32 @getc_unlocked(%struct._IO_FILE* %21)
  store i32 %call28, i32* %c, align 4
  %22 = load i32, i32* %c, align 4
  %cmp29 = icmp ne i32 %22, 10
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.27
  %23 = load i32, i32* %c, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call32 = call i32 @ungetc(i32 %23, %struct._IO_FILE* %24)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %while.end
  %25 = load i8*, i8** %p, align 8
  %26 = load i8*, i8** %buf.addr, align 8
  %cmp35 = icmp eq i8* %25, %26
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store i8* null, i8** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  %27 = load i8*, i8** %buf.addr, align 8
  store i8* %27, i8** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.37, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare void @flockfile(%struct._IO_FILE*) #3

declare i32 @getc_unlocked(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @funlockfile(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_NewStdPrinter(i32 %fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %self = alloca %struct.PyStdPrinter_Object*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %1) #6
  %cmp = icmp ne i32 %0, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %3) #6
  %cmp2 = icmp ne i32 %2, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyStdPrinter_Type)
  %4 = bitcast %struct._object* %call3 to %struct.PyStdPrinter_Object*
  store %struct.PyStdPrinter_Object* %4, %struct.PyStdPrinter_Object** %self, align 8
  %5 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %cmp4 = icmp ne %struct.PyStdPrinter_Object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %fd6 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %7, i32 0, i32 1
  store i32 %6, i32* %fd6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %9 = bitcast %struct.PyStdPrinter_Object* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_repr(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i32 %1, %struct.PyStdPrinter_Object* %2)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @stdprinter_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0))
  ret i32 -1
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kews) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kews.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kews, %struct._object** %kews.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.PyStdPrinter_Object*
  store %struct.PyStdPrinter_Object* %3, %struct.PyStdPrinter_Object** %self, align 8
  %4 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %cmp = icmp ne %struct.PyStdPrinter_Object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %5, i32 0, i32 1
  store i32 -1, i32* %fd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8
  %7 = bitcast %struct.PyStdPrinter_Object* %6 to %struct._object*
  ret %struct._object* %7
}

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_noop(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_fileno(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_isatty(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %res = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %3 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %3, i32 0, i32 1
  %4 = load i32, i32* %fd1, align 4
  %call2 = call i32 @isatty(i32 %4) #6
  %conv = sext i32 %call2 to i64
  store i64 %conv, i64* %res, align 8
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  %6 = load i64, i64* %res, align 8
  %call3 = call %struct._object* @PyBool_FromLong(i64 %6)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_write(%struct.PyStdPrinter_Object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %c = alloca i8*, align 8
  %n = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8** %c)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load i8*, i8** %c, align 8
  %call3 = call i64 @strlen(i8* %4) #7
  store i64 %call3, i64* %n, align 8
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %call5 = call i32* @__errno_location() #5
  store i32 0, i32* %call5, align 4
  %5 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8
  %fd6 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %5, i32 0, i32 1
  %6 = load i32, i32* %fd6, align 4
  %7 = load i8*, i8** %c, align 8
  %8 = load i64, i64* %n, align 8
  %call7 = call i64 @write(i32 %6, i8* %7, i64 %8)
  store i64 %call7, i64* %n, align 8
  %9 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  %10 = load i64, i64* %n, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.2
  %call10 = call i32* @__errno_location() #5
  %11 = load i32, i32* %call10, align 4
  %cmp11 = icmp eq i32 %11, 11
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc13 = add i64 %12, 1
  store i64 %inc13, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call15 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.2
  %14 = load i64, i64* %n, align 8
  %call17 = call %struct._object* @PyLong_FromSsize_t(i64 %14)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.14, %if.then.12, %if.then.1, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i64 @write(i32, i8*, i64) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closed(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_encoding(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  ret %struct._object* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
