; ModuleID = 'irs-onlybc/fileobject.bc'
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !423, metadata !712), !dbg !713
  store i8* %name, i8** %name.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !424, metadata !712), !dbg !716
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %mode.addr, metadata !425, metadata !712), !dbg !717
  store i32 %buffering, i32* %buffering.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %buffering.addr, metadata !426, metadata !712), !dbg !718
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !427, metadata !712), !dbg !719
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !428, metadata !712), !dbg !720
  store i8* %newline, i8** %newline.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %newline.addr, metadata !429, metadata !712), !dbg !721
  store i32 %closefd, i32* %closefd.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %closefd.addr, metadata !430, metadata !712), !dbg !722
  %0 = bitcast %struct._object** %io to i8*, !dbg !723
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !723
  call void @llvm.dbg.declare(metadata %struct._object** %io, metadata !431, metadata !712), !dbg !724
  %1 = bitcast %struct._object** %stream to i8*, !dbg !723
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !723
  call void @llvm.dbg.declare(metadata %struct._object** %stream, metadata !432, metadata !712), !dbg !725
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !726
  store %struct._object* %call, %struct._object** %io, align 8, !dbg !727, !tbaa !714
  %2 = load %struct._object*, %struct._object** %io, align 8, !dbg !728, !tbaa !714
  %cmp = icmp eq %struct._object* %2, null, !dbg !730
  br i1 %cmp, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !732
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !732

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %io, align 8, !dbg !733, !tbaa !714
  %4 = load i32, i32* %fd.addr, align 4, !dbg !734, !tbaa !708
  %5 = load i8*, i8** %mode.addr, align 8, !dbg !735, !tbaa !714
  %6 = load i32, i32* %buffering.addr, align 4, !dbg !736, !tbaa !708
  %7 = load i8*, i8** %encoding.addr, align 8, !dbg !737, !tbaa !714
  %8 = load i8*, i8** %errors.addr, align 8, !dbg !738, !tbaa !714
  %9 = load i8*, i8** %newline.addr, align 8, !dbg !739, !tbaa !714
  %10 = load i32, i32* %closefd.addr, align 4, !dbg !740, !tbaa !708
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %3, %struct._Py_Identifier* @PyFile_FromFd.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9, i32 %10), !dbg !741
  store %struct._object* %call1, %struct._object** %stream, align 8, !dbg !742, !tbaa !714
  br label %do.body, !dbg !743

do.body:                                          ; preds = %if.end
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !744
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !744
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !433, metadata !712), !dbg !746
  %12 = load %struct._object*, %struct._object** %io, align 8, !dbg !747, !tbaa !714
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !746, !tbaa !714
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !748, !tbaa !714
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !750
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !751, !tbaa !752
  %dec = add i64 %14, -1, !dbg !751
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !751, !tbaa !752
  %cmp2 = icmp ne i64 %dec, 0, !dbg !755
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !756

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !757

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !759, !tbaa !714
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !761
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !761, !tbaa !762
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !763
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !763, !tbaa !764
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !767, !tbaa !714
  call void %17(%struct._object* %18), !dbg !768
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !769
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !769
  br label %do.cond, !dbg !771

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !772

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %stream, align 8, !dbg !774, !tbaa !714
  %cmp5 = icmp eq %struct._object* %20, null, !dbg !776
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !777

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !778

if.end.7:                                         ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %stream, align 8, !dbg !779, !tbaa !714
  store %struct._object* %21, %struct._object** %retval, !dbg !780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !780

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %22 = bitcast %struct._object** %stream to i8*, !dbg !781
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !781
  %23 = bitcast %struct._object** %io to i8*, !dbg !781
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !781
  %24 = load %struct._object*, %struct._object** %retval, !dbg !781
  ret %struct._object* %24, !dbg !781
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_GetLine(%struct._object* %f, i32 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %f.addr = alloca %struct._object*, align 8
  %n.addr = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %reader = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %len129 = alloca i64, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  %v232 = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %f.addr, metadata !439, metadata !712), !dbg !782
  store i32 %n, i32* %n.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !440, metadata !712), !dbg !783
  %0 = bitcast %struct._object** %result to i8*, !dbg !784
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !784
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !441, metadata !712), !dbg !785
  %1 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !786, !tbaa !714
  %cmp = icmp eq %struct._object* %1, null, !dbg !788
  br i1 %cmp, label %if.then, label %if.end, !dbg !789

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 55), !dbg !790
  store %struct._object* null, %struct._object** %retval, !dbg !792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251, !dbg !792

if.end:                                           ; preds = %entry
  %2 = bitcast %struct._object** %reader to i8*, !dbg !793
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !793
  call void @llvm.dbg.declare(metadata %struct._object** %reader, metadata !442, metadata !712), !dbg !794
  %3 = bitcast %struct._object** %args to i8*, !dbg !795
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !795
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !444, metadata !712), !dbg !796
  %4 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !797, !tbaa !714
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @PyFile_GetLine.PyId_readline), !dbg !798
  store %struct._object* %call, %struct._object** %reader, align 8, !dbg !799, !tbaa !714
  %5 = load %struct._object*, %struct._object** %reader, align 8, !dbg !800, !tbaa !714
  %cmp1 = icmp eq %struct._object* %5, null, !dbg !802
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !803

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !804

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %n.addr, align 4, !dbg !805, !tbaa !708
  %cmp4 = icmp sle i32 %6, 0, !dbg !807
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !808

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyTuple_New(i64 0), !dbg !809
  store %struct._object* %call6, %struct._object** %args, align 8, !dbg !810, !tbaa !714
  br label %if.end.8, !dbg !811

if.else:                                          ; preds = %if.end.3
  %7 = load i32, i32* %n.addr, align 4, !dbg !812, !tbaa !708
  %call7 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %7), !dbg !813
  store %struct._object* %call7, %struct._object** %args, align 8, !dbg !814, !tbaa !714
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %8 = load %struct._object*, %struct._object** %args, align 8, !dbg !815, !tbaa !714
  %cmp9 = icmp eq %struct._object* %8, null, !dbg !816
  br i1 %cmp9, label %if.then.10, label %if.end.15, !dbg !817

if.then.10:                                       ; preds = %if.end.8
  br label %do.body, !dbg !818

do.body:                                          ; preds = %if.then.10
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !819
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !819
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !445, metadata !712), !dbg !821
  %10 = load %struct._object*, %struct._object** %reader, align 8, !dbg !822, !tbaa !714
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !821, !tbaa !714
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !823, !tbaa !714
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !825
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !826, !tbaa !752
  %dec = add i64 %12, -1, !dbg !826
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !826, !tbaa !752
  %cmp11 = icmp ne i64 %dec, 0, !dbg !827
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !828

if.then.12:                                       ; preds = %do.body
  br label %if.end.14, !dbg !829

if.else.13:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !831, !tbaa !714
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !833
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !833, !tbaa !762
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !834
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !834, !tbaa !764
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !835, !tbaa !714
  call void %15(%struct._object* %16), !dbg !836
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !837
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !837
  br label %do.cond, !dbg !839

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !840

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !842
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !842

if.end.15:                                        ; preds = %if.end.8
  %18 = load %struct._object*, %struct._object** %reader, align 8, !dbg !843, !tbaa !714
  %19 = load %struct._object*, %struct._object** %args, align 8, !dbg !844, !tbaa !714
  %call16 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %18, %struct._object* %19, %struct._object* null), !dbg !845
  store %struct._object* %call16, %struct._object** %result, align 8, !dbg !846, !tbaa !714
  br label %do.body.17, !dbg !847

do.body.17:                                       ; preds = %if.end.15
  %20 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !848
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !848
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !449, metadata !712), !dbg !850
  %21 = load %struct._object*, %struct._object** %reader, align 8, !dbg !851, !tbaa !714
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8, !dbg !850, !tbaa !714
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !852, !tbaa !714
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !854
  %23 = load i64, i64* %ob_refcnt19, align 8, !dbg !855, !tbaa !752
  %dec20 = add i64 %23, -1, !dbg !855
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !855, !tbaa !752
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !856
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !857

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !858

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !860, !tbaa !714
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !862
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !862, !tbaa !762
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !863
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !863, !tbaa !764
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !864, !tbaa !714
  call void %26(%struct._object* %27), !dbg !865
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %28 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !866
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !866
  br label %do.cond.27, !dbg !868

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !869

do.end.28:                                        ; preds = %do.cond.27
  br label %do.body.29, !dbg !871

do.body.29:                                       ; preds = %do.end.28
  %29 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !872
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !872
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !451, metadata !712), !dbg !874
  %30 = load %struct._object*, %struct._object** %args, align 8, !dbg !875, !tbaa !714
  store %struct._object* %30, %struct._object** %_py_decref_tmp30, align 8, !dbg !874, !tbaa !714
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !876, !tbaa !714
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !878
  %32 = load i64, i64* %ob_refcnt31, align 8, !dbg !879, !tbaa !752
  %dec32 = add i64 %32, -1, !dbg !879
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !879, !tbaa !752
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !880
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !881

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !882

if.else.35:                                       ; preds = %do.body.29
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !884, !tbaa !714
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !886
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !886, !tbaa !762
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !887
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !887, !tbaa !764
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !888, !tbaa !714
  call void %35(%struct._object* %36), !dbg !889
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %37 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !890
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !890
  br label %do.cond.39, !dbg !891

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !892

do.end.40:                                        ; preds = %do.cond.39
  %38 = load %struct._object*, %struct._object** %result, align 8, !dbg !894, !tbaa !714
  %cmp41 = icmp ne %struct._object* %38, null, !dbg !895
  br i1 %cmp41, label %land.lhs.true, label %if.end.62, !dbg !896

land.lhs.true:                                    ; preds = %do.end.40
  %39 = load %struct._object*, %struct._object** %result, align 8, !dbg !897, !tbaa !714
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !899
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !899, !tbaa !762
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 19, !dbg !900
  %41 = load i64, i64* %tp_flags, align 8, !dbg !900, !tbaa !901
  %and = and i64 %41, 134217728, !dbg !902
  %cmp43 = icmp ne i64 %and, 0, !dbg !903
  br i1 %cmp43, label %if.end.62, label %land.lhs.true.44, !dbg !904

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %42 = load %struct._object*, %struct._object** %result, align 8, !dbg !905, !tbaa !714
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !906
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !906, !tbaa !762
  %tp_flags46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 19, !dbg !907
  %44 = load i64, i64* %tp_flags46, align 8, !dbg !907, !tbaa !901
  %and47 = and i64 %44, 268435456, !dbg !908
  %cmp48 = icmp ne i64 %and47, 0, !dbg !909
  br i1 %cmp48, label %if.end.62, label %if.then.49, !dbg !910

if.then.49:                                       ; preds = %land.lhs.true.44
  br label %do.body.50, !dbg !911

do.body.50:                                       ; preds = %if.then.49
  %45 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !912
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !912
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !453, metadata !712), !dbg !914
  %46 = load %struct._object*, %struct._object** %result, align 8, !dbg !915, !tbaa !714
  store %struct._object* %46, %struct._object** %_py_decref_tmp51, align 8, !dbg !914, !tbaa !714
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !916, !tbaa !714
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !918
  %48 = load i64, i64* %ob_refcnt52, align 8, !dbg !919, !tbaa !752
  %dec53 = add i64 %48, -1, !dbg !919
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !919, !tbaa !752
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !920
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !921

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !922

if.else.56:                                       ; preds = %do.body.50
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !924, !tbaa !714
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !926
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !926, !tbaa !762
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !927
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !927, !tbaa !764
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !928, !tbaa !714
  call void %51(%struct._object* %52), !dbg !929
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %53 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !930
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !930
  br label %do.cond.60, !dbg !932

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !933

do.end.61:                                        ; preds = %do.cond.60
  store %struct._object* null, %struct._object** %result, align 8, !dbg !935, !tbaa !714
  %54 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !936, !tbaa !714
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0)), !dbg !937
  br label %if.end.62, !dbg !938

if.end.62:                                        ; preds = %do.end.61, %land.lhs.true.44, %land.lhs.true, %do.end.40
  store i32 0, i32* %cleanup.dest.slot, !dbg !939
  br label %cleanup, !dbg !939

cleanup:                                          ; preds = %if.end.62, %do.end, %if.then.2
  %55 = bitcast %struct._object** %args to i8*, !dbg !940
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !940
  %56 = bitcast %struct._object** %reader to i8*, !dbg !940
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !940
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.251 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %57 = load i32, i32* %n.addr, align 4, !dbg !942, !tbaa !708
  %cmp64 = icmp slt i32 %57, 0, !dbg !943
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.116, !dbg !944

land.lhs.true.65:                                 ; preds = %cleanup.cont
  %58 = load %struct._object*, %struct._object** %result, align 8, !dbg !945, !tbaa !714
  %cmp66 = icmp ne %struct._object* %58, null, !dbg !947
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.116, !dbg !948

land.lhs.true.67:                                 ; preds = %land.lhs.true.65
  %59 = load %struct._object*, %struct._object** %result, align 8, !dbg !949, !tbaa !714
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !951
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !951, !tbaa !762
  %tp_flags69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 19, !dbg !952
  %61 = load i64, i64* %tp_flags69, align 8, !dbg !952, !tbaa !901
  %and70 = and i64 %61, 134217728, !dbg !953
  %cmp71 = icmp ne i64 %and70, 0, !dbg !954
  br i1 %cmp71, label %if.then.72, label %if.end.116, !dbg !955

if.then.72:                                       ; preds = %land.lhs.true.67
  %62 = bitcast i8** %s to i8*, !dbg !956
  call void @llvm.lifetime.start(i64 8, i8* %62) #2, !dbg !956
  call void @llvm.dbg.declare(metadata i8** %s, metadata !457, metadata !712), !dbg !957
  %63 = load %struct._object*, %struct._object** %result, align 8, !dbg !958, !tbaa !714
  %64 = bitcast %struct._object* %63 to %struct.PyBytesObject*, !dbg !959
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %64, i32 0, i32 2, !dbg !960
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !961
  store i8* %arraydecay, i8** %s, align 8, !dbg !957, !tbaa !714
  %65 = bitcast i64* %len to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %65) #2, !dbg !962
  call void @llvm.dbg.declare(metadata i64* %len, metadata !460, metadata !712), !dbg !963
  %66 = load %struct._object*, %struct._object** %result, align 8, !dbg !964, !tbaa !714
  %67 = bitcast %struct._object* %66 to %struct.PyVarObject*, !dbg !965
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %67, i32 0, i32 1, !dbg !966
  %68 = load i64, i64* %ob_size, align 8, !dbg !966, !tbaa !967
  store i64 %68, i64* %len, align 8, !dbg !963, !tbaa !968
  %69 = load i64, i64* %len, align 8, !dbg !969, !tbaa !968
  %cmp73 = icmp eq i64 %69, 0, !dbg !970
  br i1 %cmp73, label %if.then.74, label %if.else.87, !dbg !971

if.then.74:                                       ; preds = %if.then.72
  br label %do.body.75, !dbg !972

do.body.75:                                       ; preds = %if.then.74
  %70 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !973
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !973
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp76, metadata !461, metadata !712), !dbg !975
  %71 = load %struct._object*, %struct._object** %result, align 8, !dbg !976, !tbaa !714
  store %struct._object* %71, %struct._object** %_py_decref_tmp76, align 8, !dbg !975, !tbaa !714
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !977, !tbaa !714
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !979
  %73 = load i64, i64* %ob_refcnt77, align 8, !dbg !980, !tbaa !752
  %dec78 = add i64 %73, -1, !dbg !980
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !980, !tbaa !752
  %cmp79 = icmp ne i64 %dec78, 0, !dbg !981
  br i1 %cmp79, label %if.then.80, label %if.else.81, !dbg !982

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84, !dbg !983

if.else.81:                                       ; preds = %do.body.75
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !985, !tbaa !714
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !987
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !987, !tbaa !762
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !988
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !988, !tbaa !764
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8, !dbg !989, !tbaa !714
  call void %76(%struct._object* %77), !dbg !990
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  %78 = bitcast %struct._object** %_py_decref_tmp76 to i8*, !dbg !991
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !991
  br label %do.cond.85, !dbg !993

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86, !dbg !994

do.end.86:                                        ; preds = %do.cond.85
  store %struct._object* null, %struct._object** %result, align 8, !dbg !996, !tbaa !714
  %79 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8, !dbg !997, !tbaa !714
  call void @PyErr_SetString(%struct._object* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)), !dbg !998
  br label %if.end.115, !dbg !999

if.else.87:                                       ; preds = %if.then.72
  %80 = load i64, i64* %len, align 8, !dbg !1000, !tbaa !968
  %sub = sub i64 %80, 1, !dbg !1001
  %81 = load i8*, i8** %s, align 8, !dbg !1002, !tbaa !714
  %arrayidx = getelementptr i8, i8* %81, i64 %sub, !dbg !1002
  %82 = load i8, i8* %arrayidx, align 1, !dbg !1002, !tbaa !1003
  %conv = sext i8 %82 to i32, !dbg !1002
  %cmp88 = icmp eq i32 %conv, 10, !dbg !1004
  br i1 %cmp88, label %if.then.90, label %if.end.114, !dbg !1005

if.then.90:                                       ; preds = %if.else.87
  %83 = load %struct._object*, %struct._object** %result, align 8, !dbg !1006, !tbaa !714
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0, !dbg !1007
  %84 = load i64, i64* %ob_refcnt91, align 8, !dbg !1007, !tbaa !752
  %cmp92 = icmp eq i64 %84, 1, !dbg !1008
  br i1 %cmp92, label %if.then.94, label %if.else.97, !dbg !1009

if.then.94:                                       ; preds = %if.then.90
  %85 = load i64, i64* %len, align 8, !dbg !1010, !tbaa !968
  %sub95 = sub i64 %85, 1, !dbg !1011
  %call96 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %sub95), !dbg !1012
  br label %if.end.113, !dbg !1012

if.else.97:                                       ; preds = %if.then.90
  %86 = bitcast %struct._object** %v to i8*, !dbg !1013
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !1013
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !465, metadata !712), !dbg !1014
  %87 = load i8*, i8** %s, align 8, !dbg !1015, !tbaa !714
  %88 = load i64, i64* %len, align 8, !dbg !1016, !tbaa !968
  %sub98 = sub i64 %88, 1, !dbg !1017
  %call99 = call %struct._object* @PyBytes_FromStringAndSize(i8* %87, i64 %sub98), !dbg !1018
  store %struct._object* %call99, %struct._object** %v, align 8, !dbg !1019, !tbaa !714
  br label %do.body.100, !dbg !1020

do.body.100:                                      ; preds = %if.else.97
  %89 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !1021
  call void @llvm.lifetime.start(i64 8, i8* %89) #2, !dbg !1021
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !470, metadata !712), !dbg !1023
  %90 = load %struct._object*, %struct._object** %result, align 8, !dbg !1024, !tbaa !714
  store %struct._object* %90, %struct._object** %_py_decref_tmp101, align 8, !dbg !1023, !tbaa !714
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1025, !tbaa !714
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !1027
  %92 = load i64, i64* %ob_refcnt102, align 8, !dbg !1028, !tbaa !752
  %dec103 = add i64 %92, -1, !dbg !1028
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !1028, !tbaa !752
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !1029
  br i1 %cmp104, label %if.then.106, label %if.else.107, !dbg !1030

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110, !dbg !1031

if.else.107:                                      ; preds = %do.body.100
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1033, !tbaa !714
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !1035
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8, !dbg !1035, !tbaa !762
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !1036
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8, !dbg !1036, !tbaa !764
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1037, !tbaa !714
  call void %95(%struct._object* %96), !dbg !1038
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  %97 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !1039
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !1039
  br label %do.cond.111, !dbg !1041

do.cond.111:                                      ; preds = %if.end.110
  br label %do.end.112, !dbg !1042

do.end.112:                                       ; preds = %do.cond.111
  %98 = load %struct._object*, %struct._object** %v, align 8, !dbg !1044, !tbaa !714
  store %struct._object* %98, %struct._object** %result, align 8, !dbg !1045, !tbaa !714
  %99 = bitcast %struct._object** %v to i8*, !dbg !1046
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !1046
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.then.94
  br label %if.end.114, !dbg !1047

if.end.114:                                       ; preds = %if.end.113, %if.else.87
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %do.end.86
  %100 = bitcast i64* %len to i8*, !dbg !1048
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1048
  %101 = bitcast i8** %s to i8*, !dbg !1048
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !1048
  br label %if.end.116, !dbg !1049

if.end.116:                                       ; preds = %if.end.115, %land.lhs.true.67, %land.lhs.true.65, %cleanup.cont
  %102 = load i32, i32* %n.addr, align 4, !dbg !1050, !tbaa !708
  %cmp117 = icmp slt i32 %102, 0, !dbg !1051
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.250, !dbg !1052

land.lhs.true.119:                                ; preds = %if.end.116
  %103 = load %struct._object*, %struct._object** %result, align 8, !dbg !1053, !tbaa !714
  %cmp120 = icmp ne %struct._object* %103, null, !dbg !1055
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.250, !dbg !1056

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %104 = load %struct._object*, %struct._object** %result, align 8, !dbg !1057, !tbaa !714
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1, !dbg !1059
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8, !dbg !1059, !tbaa !762
  %tp_flags124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 19, !dbg !1060
  %106 = load i64, i64* %tp_flags124, align 8, !dbg !1060, !tbaa !901
  %and125 = and i64 %106, 268435456, !dbg !1061
  %cmp126 = icmp ne i64 %and125, 0, !dbg !1062
  br i1 %cmp126, label %if.then.128, label %if.end.250, !dbg !1063

if.then.128:                                      ; preds = %land.lhs.true.122
  %107 = bitcast i64* %len129 to i8*, !dbg !1064
  call void @llvm.lifetime.start(i64 8, i8* %107) #2, !dbg !1064
  call void @llvm.dbg.declare(metadata i64* %len129, metadata !472, metadata !712), !dbg !1065
  %108 = load %struct._object*, %struct._object** %result, align 8, !dbg !1066, !tbaa !714
  %109 = bitcast %struct._object* %108 to %struct.PyASCIIObject*, !dbg !1067
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %109, i32 0, i32 1, !dbg !1068
  %110 = load i64, i64* %length, align 8, !dbg !1068, !tbaa !1069
  store i64 %110, i64* %len129, align 8, !dbg !1065, !tbaa !968
  %111 = load i64, i64* %len129, align 8, !dbg !1072, !tbaa !968
  %cmp130 = icmp eq i64 %111, 0, !dbg !1073
  br i1 %cmp130, label %if.then.132, label %if.else.146, !dbg !1074

if.then.132:                                      ; preds = %if.then.128
  br label %do.body.133, !dbg !1075

do.body.133:                                      ; preds = %if.then.132
  %112 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !1076
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !1076
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp134, metadata !475, metadata !712), !dbg !1078
  %113 = load %struct._object*, %struct._object** %result, align 8, !dbg !1079, !tbaa !714
  store %struct._object* %113, %struct._object** %_py_decref_tmp134, align 8, !dbg !1078, !tbaa !714
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !1080, !tbaa !714
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0, !dbg !1082
  %115 = load i64, i64* %ob_refcnt135, align 8, !dbg !1083, !tbaa !752
  %dec136 = add i64 %115, -1, !dbg !1083
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !1083, !tbaa !752
  %cmp137 = icmp ne i64 %dec136, 0, !dbg !1084
  br i1 %cmp137, label %if.then.139, label %if.else.140, !dbg !1085

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.143, !dbg !1086

if.else.140:                                      ; preds = %do.body.133
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !1088, !tbaa !714
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !1090
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8, !dbg !1090, !tbaa !762
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4, !dbg !1091
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8, !dbg !1091, !tbaa !764
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !1092, !tbaa !714
  call void %118(%struct._object* %119), !dbg !1093
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  %120 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !1094
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !1094
  br label %do.cond.144, !dbg !1096

do.cond.144:                                      ; preds = %if.end.143
  br label %do.end.145, !dbg !1097

do.end.145:                                       ; preds = %do.cond.144
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1099, !tbaa !714
  %121 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8, !dbg !1100, !tbaa !714
  call void @PyErr_SetString(%struct._object* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)), !dbg !1101
  br label %if.end.249, !dbg !1102

if.else.146:                                      ; preds = %if.then.128
  %122 = load %struct._object*, %struct._object** %result, align 8, !dbg !1103, !tbaa !714
  %123 = bitcast %struct._object* %122 to %struct.PyASCIIObject*, !dbg !1104
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %123, i32 0, i32 3, !dbg !1105
  %124 = bitcast %struct.anon* %state to i32*, !dbg !1106
  %bf.load = load i32, i32* %124, align 4, !dbg !1106
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1106
  %bf.clear = and i32 %bf.lshr, 7, !dbg !1106
  %cmp147 = icmp eq i32 %bf.clear, 1, !dbg !1107
  br i1 %cmp147, label %cond.true, label %cond.false.167, !dbg !1108

cond.true:                                        ; preds = %if.else.146
  %125 = load i64, i64* %len129, align 8, !dbg !1109, !tbaa !968
  %sub149 = sub i64 %125, 1, !dbg !1111
  %126 = load %struct._object*, %struct._object** %result, align 8, !dbg !1112, !tbaa !714
  %127 = bitcast %struct._object* %126 to %struct.PyASCIIObject*, !dbg !1113
  %state150 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %127, i32 0, i32 3, !dbg !1114
  %128 = bitcast %struct.anon* %state150 to i32*, !dbg !1115
  %bf.load151 = load i32, i32* %128, align 4, !dbg !1115
  %bf.lshr152 = lshr i32 %bf.load151, 5, !dbg !1115
  %bf.clear153 = and i32 %bf.lshr152, 1, !dbg !1115
  %tobool = icmp ne i32 %bf.clear153, 0, !dbg !1116
  br i1 %tobool, label %cond.true.154, label %cond.false.162, !dbg !1116

cond.true.154:                                    ; preds = %cond.true
  %129 = load %struct._object*, %struct._object** %result, align 8, !dbg !1117, !tbaa !714
  %130 = bitcast %struct._object* %129 to %struct.PyASCIIObject*, !dbg !1119
  %state155 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %130, i32 0, i32 3, !dbg !1120
  %131 = bitcast %struct.anon* %state155 to i32*, !dbg !1121
  %bf.load156 = load i32, i32* %131, align 4, !dbg !1121
  %bf.lshr157 = lshr i32 %bf.load156, 6, !dbg !1121
  %bf.clear158 = and i32 %bf.lshr157, 1, !dbg !1121
  %tobool159 = icmp ne i32 %bf.clear158, 0, !dbg !1122
  br i1 %tobool159, label %cond.true.160, label %cond.false, !dbg !1122

cond.true.160:                                    ; preds = %cond.true.154
  %132 = load %struct._object*, %struct._object** %result, align 8, !dbg !1123, !tbaa !714
  %133 = bitcast %struct._object* %132 to %struct.PyASCIIObject*, !dbg !1125
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %133, i64 1, !dbg !1126
  %134 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !1127
  br label %cond.end, !dbg !1122

cond.false:                                       ; preds = %cond.true.154
  %135 = load %struct._object*, %struct._object** %result, align 8, !dbg !1128, !tbaa !714
  %136 = bitcast %struct._object* %135 to %struct.PyCompactUnicodeObject*, !dbg !1130
  %add.ptr161 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %136, i64 1, !dbg !1131
  %137 = bitcast %struct.PyCompactUnicodeObject* %add.ptr161 to i8*, !dbg !1132
  br label %cond.end, !dbg !1122

cond.end:                                         ; preds = %cond.false, %cond.true.160
  %cond = phi i8* [ %134, %cond.true.160 ], [ %137, %cond.false ], !dbg !1122
  br label %cond.end.163, !dbg !1133

cond.false.162:                                   ; preds = %cond.true
  %138 = load %struct._object*, %struct._object** %result, align 8, !dbg !1136, !tbaa !714
  %139 = bitcast %struct._object* %138 to %struct.PyUnicodeObject*, !dbg !1138
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %139, i32 0, i32 1, !dbg !1139
  %any = bitcast %union.anon* %data to i8**, !dbg !1140
  %140 = load i8*, i8** %any, align 8, !dbg !1140, !tbaa !714
  br label %cond.end.163, !dbg !1116

cond.end.163:                                     ; preds = %cond.false.162, %cond.end
  %cond164 = phi i8* [ %cond, %cond.end ], [ %140, %cond.false.162 ], !dbg !1116
  %arrayidx165 = getelementptr i8, i8* %cond164, i64 %sub149, !dbg !1141
  %141 = load i8, i8* %arrayidx165, align 1, !dbg !1141, !tbaa !1003
  %conv166 = zext i8 %141 to i32, !dbg !1141
  br label %cond.end.227, !dbg !1108

cond.false.167:                                   ; preds = %if.else.146
  %142 = load %struct._object*, %struct._object** %result, align 8, !dbg !1144, !tbaa !714
  %143 = bitcast %struct._object* %142 to %struct.PyASCIIObject*, !dbg !1146
  %state168 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %143, i32 0, i32 3, !dbg !1147
  %144 = bitcast %struct.anon* %state168 to i32*, !dbg !1148
  %bf.load169 = load i32, i32* %144, align 4, !dbg !1148
  %bf.lshr170 = lshr i32 %bf.load169, 2, !dbg !1148
  %bf.clear171 = and i32 %bf.lshr170, 7, !dbg !1148
  %cmp172 = icmp eq i32 %bf.clear171, 2, !dbg !1149
  br i1 %cmp172, label %cond.true.174, label %cond.false.200, !dbg !1150

cond.true.174:                                    ; preds = %cond.false.167
  %145 = load i64, i64* %len129, align 8, !dbg !1151, !tbaa !968
  %sub175 = sub i64 %145, 1, !dbg !1153
  %146 = load %struct._object*, %struct._object** %result, align 8, !dbg !1154, !tbaa !714
  %147 = bitcast %struct._object* %146 to %struct.PyASCIIObject*, !dbg !1155
  %state176 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %147, i32 0, i32 3, !dbg !1156
  %148 = bitcast %struct.anon* %state176 to i32*, !dbg !1157
  %bf.load177 = load i32, i32* %148, align 4, !dbg !1157
  %bf.lshr178 = lshr i32 %bf.load177, 5, !dbg !1157
  %bf.clear179 = and i32 %bf.lshr178, 1, !dbg !1157
  %tobool180 = icmp ne i32 %bf.clear179, 0, !dbg !1158
  br i1 %tobool180, label %cond.true.181, label %cond.false.193, !dbg !1158

cond.true.181:                                    ; preds = %cond.true.174
  %149 = load %struct._object*, %struct._object** %result, align 8, !dbg !1159, !tbaa !714
  %150 = bitcast %struct._object* %149 to %struct.PyASCIIObject*, !dbg !1161
  %state182 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %150, i32 0, i32 3, !dbg !1162
  %151 = bitcast %struct.anon* %state182 to i32*, !dbg !1163
  %bf.load183 = load i32, i32* %151, align 4, !dbg !1163
  %bf.lshr184 = lshr i32 %bf.load183, 6, !dbg !1163
  %bf.clear185 = and i32 %bf.lshr184, 1, !dbg !1163
  %tobool186 = icmp ne i32 %bf.clear185, 0, !dbg !1164
  br i1 %tobool186, label %cond.true.187, label %cond.false.189, !dbg !1164

cond.true.187:                                    ; preds = %cond.true.181
  %152 = load %struct._object*, %struct._object** %result, align 8, !dbg !1165, !tbaa !714
  %153 = bitcast %struct._object* %152 to %struct.PyASCIIObject*, !dbg !1167
  %add.ptr188 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %153, i64 1, !dbg !1168
  %154 = bitcast %struct.PyASCIIObject* %add.ptr188 to i8*, !dbg !1169
  br label %cond.end.191, !dbg !1164

cond.false.189:                                   ; preds = %cond.true.181
  %155 = load %struct._object*, %struct._object** %result, align 8, !dbg !1170, !tbaa !714
  %156 = bitcast %struct._object* %155 to %struct.PyCompactUnicodeObject*, !dbg !1172
  %add.ptr190 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %156, i64 1, !dbg !1173
  %157 = bitcast %struct.PyCompactUnicodeObject* %add.ptr190 to i8*, !dbg !1174
  br label %cond.end.191, !dbg !1164

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.187
  %cond192 = phi i8* [ %154, %cond.true.187 ], [ %157, %cond.false.189 ], !dbg !1164
  br label %cond.end.196, !dbg !1175

cond.false.193:                                   ; preds = %cond.true.174
  %158 = load %struct._object*, %struct._object** %result, align 8, !dbg !1178, !tbaa !714
  %159 = bitcast %struct._object* %158 to %struct.PyUnicodeObject*, !dbg !1180
  %data194 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %159, i32 0, i32 1, !dbg !1181
  %any195 = bitcast %union.anon* %data194 to i8**, !dbg !1182
  %160 = load i8*, i8** %any195, align 8, !dbg !1182, !tbaa !714
  br label %cond.end.196, !dbg !1158

cond.end.196:                                     ; preds = %cond.false.193, %cond.end.191
  %cond197 = phi i8* [ %cond192, %cond.end.191 ], [ %160, %cond.false.193 ], !dbg !1158
  %161 = bitcast i8* %cond197 to i16*, !dbg !1183
  %arrayidx198 = getelementptr i16, i16* %161, i64 %sub175, !dbg !1186
  %162 = load i16, i16* %arrayidx198, align 2, !dbg !1186, !tbaa !1187
  %conv199 = zext i16 %162 to i32, !dbg !1186
  br label %cond.end.225, !dbg !1150

cond.false.200:                                   ; preds = %cond.false.167
  %163 = load i64, i64* %len129, align 8, !dbg !1189, !tbaa !968
  %sub201 = sub i64 %163, 1, !dbg !1191
  %164 = load %struct._object*, %struct._object** %result, align 8, !dbg !1192, !tbaa !714
  %165 = bitcast %struct._object* %164 to %struct.PyASCIIObject*, !dbg !1193
  %state202 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %165, i32 0, i32 3, !dbg !1194
  %166 = bitcast %struct.anon* %state202 to i32*, !dbg !1195
  %bf.load203 = load i32, i32* %166, align 4, !dbg !1195
  %bf.lshr204 = lshr i32 %bf.load203, 5, !dbg !1195
  %bf.clear205 = and i32 %bf.lshr204, 1, !dbg !1195
  %tobool206 = icmp ne i32 %bf.clear205, 0, !dbg !1196
  br i1 %tobool206, label %cond.true.207, label %cond.false.219, !dbg !1196

cond.true.207:                                    ; preds = %cond.false.200
  %167 = load %struct._object*, %struct._object** %result, align 8, !dbg !1197, !tbaa !714
  %168 = bitcast %struct._object* %167 to %struct.PyASCIIObject*, !dbg !1199
  %state208 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %168, i32 0, i32 3, !dbg !1200
  %169 = bitcast %struct.anon* %state208 to i32*, !dbg !1201
  %bf.load209 = load i32, i32* %169, align 4, !dbg !1201
  %bf.lshr210 = lshr i32 %bf.load209, 6, !dbg !1201
  %bf.clear211 = and i32 %bf.lshr210, 1, !dbg !1201
  %tobool212 = icmp ne i32 %bf.clear211, 0, !dbg !1202
  br i1 %tobool212, label %cond.true.213, label %cond.false.215, !dbg !1202

cond.true.213:                                    ; preds = %cond.true.207
  %170 = load %struct._object*, %struct._object** %result, align 8, !dbg !1203, !tbaa !714
  %171 = bitcast %struct._object* %170 to %struct.PyASCIIObject*, !dbg !1205
  %add.ptr214 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %171, i64 1, !dbg !1206
  %172 = bitcast %struct.PyASCIIObject* %add.ptr214 to i8*, !dbg !1207
  br label %cond.end.217, !dbg !1202

cond.false.215:                                   ; preds = %cond.true.207
  %173 = load %struct._object*, %struct._object** %result, align 8, !dbg !1208, !tbaa !714
  %174 = bitcast %struct._object* %173 to %struct.PyCompactUnicodeObject*, !dbg !1210
  %add.ptr216 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %174, i64 1, !dbg !1211
  %175 = bitcast %struct.PyCompactUnicodeObject* %add.ptr216 to i8*, !dbg !1212
  br label %cond.end.217, !dbg !1202

cond.end.217:                                     ; preds = %cond.false.215, %cond.true.213
  %cond218 = phi i8* [ %172, %cond.true.213 ], [ %175, %cond.false.215 ], !dbg !1202
  br label %cond.end.222, !dbg !1213

cond.false.219:                                   ; preds = %cond.false.200
  %176 = load %struct._object*, %struct._object** %result, align 8, !dbg !1216, !tbaa !714
  %177 = bitcast %struct._object* %176 to %struct.PyUnicodeObject*, !dbg !1218
  %data220 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %177, i32 0, i32 1, !dbg !1219
  %any221 = bitcast %union.anon* %data220 to i8**, !dbg !1220
  %178 = load i8*, i8** %any221, align 8, !dbg !1220, !tbaa !714
  br label %cond.end.222, !dbg !1196

cond.end.222:                                     ; preds = %cond.false.219, %cond.end.217
  %cond223 = phi i8* [ %cond218, %cond.end.217 ], [ %178, %cond.false.219 ], !dbg !1196
  %179 = bitcast i8* %cond223 to i32*, !dbg !1221
  %arrayidx224 = getelementptr i32, i32* %179, i64 %sub201, !dbg !1224
  %180 = load i32, i32* %arrayidx224, align 4, !dbg !1224, !tbaa !708
  br label %cond.end.225, !dbg !1150

cond.end.225:                                     ; preds = %cond.end.222, %cond.end.196
  %cond226 = phi i32 [ %conv199, %cond.end.196 ], [ %180, %cond.end.222 ], !dbg !1150
  br label %cond.end.227, !dbg !1225

cond.end.227:                                     ; preds = %cond.end.225, %cond.end.163
  %cond228 = phi i32 [ %conv166, %cond.end.163 ], [ %cond226, %cond.end.225 ], !dbg !1108
  %cmp229 = icmp eq i32 %cond228, 10, !dbg !1228
  br i1 %cmp229, label %if.then.231, label %if.end.248, !dbg !1231

if.then.231:                                      ; preds = %cond.end.227
  %181 = bitcast %struct._object** %v232 to i8*, !dbg !1232
  call void @llvm.lifetime.start(i64 8, i8* %181) #2, !dbg !1232
  call void @llvm.dbg.declare(metadata %struct._object** %v232, metadata !479, metadata !712), !dbg !1233
  %182 = load %struct._object*, %struct._object** %result, align 8, !dbg !1234, !tbaa !714
  %183 = load i64, i64* %len129, align 8, !dbg !1235, !tbaa !968
  %sub233 = sub i64 %183, 1, !dbg !1236
  %call234 = call %struct._object* @PyUnicode_Substring(%struct._object* %182, i64 0, i64 %sub233), !dbg !1237
  store %struct._object* %call234, %struct._object** %v232, align 8, !dbg !1238, !tbaa !714
  br label %do.body.235, !dbg !1239

do.body.235:                                      ; preds = %if.then.231
  %184 = bitcast %struct._object** %_py_decref_tmp236 to i8*, !dbg !1240
  call void @llvm.lifetime.start(i64 8, i8* %184) #2, !dbg !1240
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp236, metadata !482, metadata !712), !dbg !1242
  %185 = load %struct._object*, %struct._object** %result, align 8, !dbg !1243, !tbaa !714
  store %struct._object* %185, %struct._object** %_py_decref_tmp236, align 8, !dbg !1242, !tbaa !714
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8, !dbg !1244, !tbaa !714
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 0, !dbg !1246
  %187 = load i64, i64* %ob_refcnt237, align 8, !dbg !1247, !tbaa !752
  %dec238 = add i64 %187, -1, !dbg !1247
  store i64 %dec238, i64* %ob_refcnt237, align 8, !dbg !1247, !tbaa !752
  %cmp239 = icmp ne i64 %dec238, 0, !dbg !1248
  br i1 %cmp239, label %if.then.241, label %if.else.242, !dbg !1249

if.then.241:                                      ; preds = %do.body.235
  br label %if.end.245, !dbg !1250

if.else.242:                                      ; preds = %do.body.235
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8, !dbg !1252, !tbaa !714
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 1, !dbg !1254
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8, !dbg !1254, !tbaa !762
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i32 0, i32 4, !dbg !1255
  %190 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8, !dbg !1255, !tbaa !764
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8, !dbg !1256, !tbaa !714
  call void %190(%struct._object* %191), !dbg !1257
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  %192 = bitcast %struct._object** %_py_decref_tmp236 to i8*, !dbg !1258
  call void @llvm.lifetime.end(i64 8, i8* %192) #2, !dbg !1258
  br label %do.cond.246, !dbg !1260

do.cond.246:                                      ; preds = %if.end.245
  br label %do.end.247, !dbg !1261

do.end.247:                                       ; preds = %do.cond.246
  %193 = load %struct._object*, %struct._object** %v232, align 8, !dbg !1263, !tbaa !714
  store %struct._object* %193, %struct._object** %result, align 8, !dbg !1264, !tbaa !714
  %194 = bitcast %struct._object** %v232 to i8*, !dbg !1265
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !1265
  br label %if.end.248, !dbg !1266

if.end.248:                                       ; preds = %do.end.247, %cond.end.227
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %do.end.145
  %195 = bitcast i64* %len129 to i8*, !dbg !1267
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !1267
  br label %if.end.250, !dbg !1268

if.end.250:                                       ; preds = %if.end.249, %land.lhs.true.122, %land.lhs.true.119, %if.end.116
  %196 = load %struct._object*, %struct._object** %result, align 8, !dbg !1269, !tbaa !714
  store %struct._object* %196, %struct._object** %retval, !dbg !1270
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251, !dbg !1270

cleanup.251:                                      ; preds = %if.end.250, %cleanup, %if.then
  %197 = bitcast %struct._object** %result to i8*, !dbg !1271
  call void @llvm.lifetime.end(i64 8, i8* %197) #2, !dbg !1271
  %198 = load %struct._object*, %struct._object** %retval, !dbg !1271
  ret %struct._object* %198, !dbg !1271
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @_PyBytes_Resize(%struct._object**, i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !488, metadata !712), !dbg !1272
  store %struct._object* %f, %struct._object** %f.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %f.addr, metadata !489, metadata !712), !dbg !1273
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !490, metadata !712), !dbg !1274
  %0 = bitcast %struct._object** %writer to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._object** %writer, metadata !491, metadata !712), !dbg !1276
  %1 = bitcast %struct._object** %value to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !492, metadata !712), !dbg !1277
  %2 = bitcast %struct._object** %args to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !493, metadata !712), !dbg !1278
  %3 = bitcast %struct._object** %result to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !494, metadata !712), !dbg !1279
  %4 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !1280, !tbaa !714
  %cmp = icmp eq %struct._object* %4, null, !dbg !1282
  br i1 %cmp, label %if.then, label %if.end, !dbg !1283

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1284, !tbaa !714
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)), !dbg !1286
  store i32 -1, i32* %retval, !dbg !1287
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1287

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !1288, !tbaa !714
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* @PyFile_WriteObject.PyId_write), !dbg !1289
  store %struct._object* %call, %struct._object** %writer, align 8, !dbg !1290, !tbaa !714
  %7 = load %struct._object*, %struct._object** %writer, align 8, !dbg !1291, !tbaa !714
  %cmp1 = icmp eq %struct._object* %7, null, !dbg !1293
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1294

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !1295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1295

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %flags.addr, align 4, !dbg !1296, !tbaa !708
  %and = and i32 %8, 1, !dbg !1298
  %tobool = icmp ne i32 %and, 0, !dbg !1298
  br i1 %tobool, label %if.then.4, label %if.else, !dbg !1299

if.then.4:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1300, !tbaa !714
  %call5 = call %struct._object* @PyObject_Str(%struct._object* %9), !dbg !1302
  store %struct._object* %call5, %struct._object** %value, align 8, !dbg !1303, !tbaa !714
  br label %if.end.7, !dbg !1304

if.else:                                          ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1305, !tbaa !714
  %call6 = call %struct._object* @PyObject_Repr(%struct._object* %10), !dbg !1306
  store %struct._object* %call6, %struct._object** %value, align 8, !dbg !1307, !tbaa !714
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %11 = load %struct._object*, %struct._object** %value, align 8, !dbg !1308, !tbaa !714
  %cmp8 = icmp eq %struct._object* %11, null, !dbg !1309
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !1310

if.then.9:                                        ; preds = %if.end.7
  br label %do.body, !dbg !1311

do.body:                                          ; preds = %if.then.9
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1312
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1312
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !495, metadata !712), !dbg !1314
  %13 = load %struct._object*, %struct._object** %writer, align 8, !dbg !1315, !tbaa !714
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1314, !tbaa !714
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1316, !tbaa !714
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1318
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1319, !tbaa !752
  %dec = add i64 %15, -1, !dbg !1319
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1319, !tbaa !752
  %cmp10 = icmp ne i64 %dec, 0, !dbg !1320
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !1321

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !1322

if.else.12:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1324, !tbaa !714
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1326
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1326, !tbaa !762
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1327
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1327, !tbaa !764
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1328, !tbaa !714
  call void %18(%struct._object* %19), !dbg !1329
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1330
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1330
  br label %do.cond, !dbg !1332

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1333

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1335
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1335

if.end.14:                                        ; preds = %if.end.7
  %21 = load %struct._object*, %struct._object** %value, align 8, !dbg !1336, !tbaa !714
  %call15 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %21), !dbg !1337
  store %struct._object* %call15, %struct._object** %args, align 8, !dbg !1338, !tbaa !714
  %22 = load %struct._object*, %struct._object** %args, align 8, !dbg !1339, !tbaa !714
  %cmp16 = icmp eq %struct._object* %22, null, !dbg !1340
  br i1 %cmp16, label %if.then.17, label %if.end.42, !dbg !1341

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18, !dbg !1342

do.body.18:                                       ; preds = %if.then.17
  %23 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1343
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1343
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !499, metadata !712), !dbg !1345
  %24 = load %struct._object*, %struct._object** %value, align 8, !dbg !1346, !tbaa !714
  store %struct._object* %24, %struct._object** %_py_decref_tmp19, align 8, !dbg !1345, !tbaa !714
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1347, !tbaa !714
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1349
  %26 = load i64, i64* %ob_refcnt20, align 8, !dbg !1350, !tbaa !752
  %dec21 = add i64 %26, -1, !dbg !1350
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1350, !tbaa !752
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1351
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1352

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1353

if.else.24:                                       ; preds = %do.body.18
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1355, !tbaa !714
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1357
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1357, !tbaa !762
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1358
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1358, !tbaa !764
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1359, !tbaa !714
  call void %29(%struct._object* %30), !dbg !1360
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %31 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1361
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1361
  br label %do.cond.28, !dbg !1363

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1364

do.end.29:                                        ; preds = %do.cond.28
  br label %do.body.30, !dbg !1366

do.body.30:                                       ; preds = %do.end.29
  %32 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1367
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !1367
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !503, metadata !712), !dbg !1369
  %33 = load %struct._object*, %struct._object** %writer, align 8, !dbg !1370, !tbaa !714
  store %struct._object* %33, %struct._object** %_py_decref_tmp31, align 8, !dbg !1369, !tbaa !714
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1371, !tbaa !714
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !1373
  %35 = load i64, i64* %ob_refcnt32, align 8, !dbg !1374, !tbaa !752
  %dec33 = add i64 %35, -1, !dbg !1374
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1374, !tbaa !752
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !1375
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !1376

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !1377

if.else.36:                                       ; preds = %do.body.30
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1379, !tbaa !714
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !1381
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1381, !tbaa !762
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !1382
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1382, !tbaa !764
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1383, !tbaa !714
  call void %38(%struct._object* %39), !dbg !1384
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %40 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1385
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1385
  br label %do.cond.40, !dbg !1386

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !1387

do.end.41:                                        ; preds = %do.cond.40
  store i32 -1, i32* %retval, !dbg !1389
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1389

if.end.42:                                        ; preds = %if.end.14
  %41 = load %struct._object*, %struct._object** %writer, align 8, !dbg !1390, !tbaa !714
  %42 = load %struct._object*, %struct._object** %args, align 8, !dbg !1391, !tbaa !714
  %call43 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %41, %struct._object* %42, %struct._object* null), !dbg !1392
  store %struct._object* %call43, %struct._object** %result, align 8, !dbg !1393, !tbaa !714
  br label %do.body.44, !dbg !1394

do.body.44:                                       ; preds = %if.end.42
  %43 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !1395
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !505, metadata !712), !dbg !1397
  %44 = load %struct._object*, %struct._object** %args, align 8, !dbg !1398, !tbaa !714
  store %struct._object* %44, %struct._object** %_py_decref_tmp45, align 8, !dbg !1397, !tbaa !714
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1399, !tbaa !714
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1401
  %46 = load i64, i64* %ob_refcnt46, align 8, !dbg !1402, !tbaa !752
  %dec47 = add i64 %46, -1, !dbg !1402
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1402, !tbaa !752
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !1403
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !1404

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !1405

if.else.50:                                       ; preds = %do.body.44
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1407, !tbaa !714
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1409
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !1409, !tbaa !762
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !1410
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !1410, !tbaa !764
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1411, !tbaa !714
  call void %49(%struct._object* %50), !dbg !1412
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %51 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1413
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1413
  br label %do.cond.54, !dbg !1415

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !1416

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56, !dbg !1418

do.body.56:                                       ; preds = %do.end.55
  %52 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1419
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !1419
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !507, metadata !712), !dbg !1421
  %53 = load %struct._object*, %struct._object** %value, align 8, !dbg !1422, !tbaa !714
  store %struct._object* %53, %struct._object** %_py_decref_tmp57, align 8, !dbg !1421, !tbaa !714
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1423, !tbaa !714
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1425
  %55 = load i64, i64* %ob_refcnt58, align 8, !dbg !1426, !tbaa !752
  %dec59 = add i64 %55, -1, !dbg !1426
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1426, !tbaa !752
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !1427
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !1428

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !1429

if.else.62:                                       ; preds = %do.body.56
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1431, !tbaa !714
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !1433
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1433, !tbaa !762
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !1434
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1434, !tbaa !764
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1435, !tbaa !714
  call void %58(%struct._object* %59), !dbg !1436
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %60 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1437
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !1437
  br label %do.cond.66, !dbg !1438

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1439

do.end.67:                                        ; preds = %do.cond.66
  br label %do.body.68, !dbg !1441

do.body.68:                                       ; preds = %do.end.67
  %61 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !1442
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1442
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !509, metadata !712), !dbg !1444
  %62 = load %struct._object*, %struct._object** %writer, align 8, !dbg !1445, !tbaa !714
  store %struct._object* %62, %struct._object** %_py_decref_tmp69, align 8, !dbg !1444, !tbaa !714
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !1446, !tbaa !714
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !1448
  %64 = load i64, i64* %ob_refcnt70, align 8, !dbg !1449, !tbaa !752
  %dec71 = add i64 %64, -1, !dbg !1449
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !1449, !tbaa !752
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !1450
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !1451

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77, !dbg !1452

if.else.74:                                       ; preds = %do.body.68
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !1454, !tbaa !714
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !1456
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !1456, !tbaa !762
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !1457
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !1457, !tbaa !764
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !1458, !tbaa !714
  call void %67(%struct._object* %68), !dbg !1459
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %69 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !1460
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !1460
  br label %do.cond.78, !dbg !1461

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !1462

do.end.79:                                        ; preds = %do.cond.78
  %70 = load %struct._object*, %struct._object** %result, align 8, !dbg !1464, !tbaa !714
  %cmp80 = icmp eq %struct._object* %70, null, !dbg !1466
  br i1 %cmp80, label %if.then.81, label %if.end.82, !dbg !1467

if.then.81:                                       ; preds = %do.end.79
  store i32 -1, i32* %retval, !dbg !1468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1468

if.end.82:                                        ; preds = %do.end.79
  br label %do.body.83, !dbg !1469

do.body.83:                                       ; preds = %if.end.82
  %71 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !1470
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !511, metadata !712), !dbg !1472
  %72 = load %struct._object*, %struct._object** %result, align 8, !dbg !1473, !tbaa !714
  store %struct._object* %72, %struct._object** %_py_decref_tmp84, align 8, !dbg !1472, !tbaa !714
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !1474, !tbaa !714
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !1476
  %74 = load i64, i64* %ob_refcnt85, align 8, !dbg !1477, !tbaa !752
  %dec86 = add i64 %74, -1, !dbg !1477
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !1477, !tbaa !752
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !1478
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !1479

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !1480

if.else.89:                                       ; preds = %do.body.83
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !1482, !tbaa !714
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !1484
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !1484, !tbaa !762
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !1485
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !1485, !tbaa !764
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !1486, !tbaa !714
  call void %77(%struct._object* %78), !dbg !1487
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %79 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !1488
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1488
  br label %do.cond.93, !dbg !1489

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !1490

do.end.94:                                        ; preds = %do.cond.93
  store i32 0, i32* %retval, !dbg !1492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1492

cleanup:                                          ; preds = %do.end.94, %if.then.81, %do.end.41, %do.end, %if.then.2, %if.then
  %80 = bitcast %struct._object** %result to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !1493
  %81 = bitcast %struct._object** %args to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !1493
  %82 = bitcast %struct._object** %value to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !1493
  %83 = bitcast %struct._object** %writer to i8*, !dbg !1493
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !1493
  %84 = load i32, i32* %retval, !dbg !1493
  ret i32 %84, !dbg !1493
}

declare %struct._object* @PyObject_Str(%struct._object*) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare %struct._object* @PyTuple_Pack(i64, ...) #3

; Function Attrs: nounwind uwtable
define i32 @PyFile_WriteString(i8* %s, %struct._object* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %f.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !517, metadata !712), !dbg !1494
  store %struct._object* %f, %struct._object** %f.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %f.addr, metadata !518, metadata !712), !dbg !1495
  %0 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !1496, !tbaa !714
  %cmp = icmp eq %struct._object* %0, null, !dbg !1497
  br i1 %cmp, label %if.then, label %if.else, !dbg !1498

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_Occurred(), !dbg !1499
  %tobool = icmp ne %struct._object* %call, null, !dbg !1499
  br i1 %tobool, label %if.end, label %if.then.1, !dbg !1502

if.then.1:                                        ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1503, !tbaa !714
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)), !dbg !1504
  br label %if.end, !dbg !1504

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 -1, i32* %retval, !dbg !1505
  br label %return, !dbg !1505

if.else:                                          ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !1506
  %tobool3 = icmp ne %struct._object* %call2, null, !dbg !1506
  br i1 %tobool3, label %if.else.15, label %if.then.4, !dbg !1507

if.then.4:                                        ; preds = %if.else
  %2 = bitcast %struct._object** %v to i8*, !dbg !1508
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1508
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !519, metadata !712), !dbg !1509
  %3 = load i8*, i8** %s.addr, align 8, !dbg !1510, !tbaa !714
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %3), !dbg !1511
  store %struct._object* %call5, %struct._object** %v, align 8, !dbg !1509, !tbaa !714
  %4 = bitcast i32* %err to i8*, !dbg !1512
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1512
  call void @llvm.dbg.declare(metadata i32* %err, metadata !523, metadata !712), !dbg !1513
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !1514, !tbaa !714
  %cmp6 = icmp eq %struct._object* %5, null, !dbg !1516
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1517

if.then.7:                                        ; preds = %if.then.4
  store i32 -1, i32* %retval, !dbg !1518
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1518

if.end.8:                                         ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !1519, !tbaa !714
  %7 = load %struct._object*, %struct._object** %f.addr, align 8, !dbg !1520, !tbaa !714
  %call9 = call i32 @PyFile_WriteObject(%struct._object* %6, %struct._object* %7, i32 1), !dbg !1521
  store i32 %call9, i32* %err, align 4, !dbg !1522, !tbaa !708
  br label %do.body, !dbg !1523

do.body:                                          ; preds = %if.end.8
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1524
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !524, metadata !712), !dbg !1526
  %9 = load %struct._object*, %struct._object** %v, align 8, !dbg !1527, !tbaa !714
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1526, !tbaa !714
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1528, !tbaa !714
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1530
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !752
  %dec = add i64 %11, -1, !dbg !1531
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !752
  %cmp10 = icmp ne i64 %dec, 0, !dbg !1532
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !1533

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !1534

if.else.12:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1536, !tbaa !714
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1538
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1538, !tbaa !762
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1539
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1539, !tbaa !764
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1540, !tbaa !714
  call void %14(%struct._object* %15), !dbg !1541
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1542
  br label %do.cond, !dbg !1544

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1545

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %err, align 4, !dbg !1547, !tbaa !708
  store i32 %17, i32* %retval, !dbg !1548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1548

cleanup:                                          ; preds = %do.end, %if.then.7
  %18 = bitcast i32* %err to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !1549
  %19 = bitcast %struct._object** %v to i8*, !dbg !1549
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1549
  br label %return

if.else.15:                                       ; preds = %if.else
  store i32 -1, i32* %retval, !dbg !1550
  br label %return, !dbg !1550

return:                                           ; preds = %if.else.15, %cleanup, %if.end
  %20 = load i32, i32* %retval, !dbg !1551
  ret i32 %20, !dbg !1551
}

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsFileDescriptor(%struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %meth = alloca %struct._object*, align 8
  %fno = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !528, metadata !712), !dbg !1552
  %0 = bitcast i32* %fd to i8*, !dbg !1553
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1553
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !529, metadata !712), !dbg !1554
  %1 = bitcast %struct._object** %meth to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata %struct._object** %meth, metadata !530, metadata !712), !dbg !1556
  %2 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !1557, !tbaa !714
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1558
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1558, !tbaa !762
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1559
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1559, !tbaa !901
  %and = and i64 %4, 16777216, !dbg !1560
  %cmp = icmp ne i64 %and, 0, !dbg !1561
  br i1 %cmp, label %if.then, label %if.else, !dbg !1562

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !1563, !tbaa !714
  %call = call i32 @_PyLong_AsInt(%struct._object* %5), !dbg !1565
  store i32 %call, i32* %fd, align 4, !dbg !1566, !tbaa !708
  br label %if.end.46, !dbg !1567

if.else:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !1568, !tbaa !714
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* @PyObject_AsFileDescriptor.PyId_fileno), !dbg !1569
  store %struct._object* %call1, %struct._object** %meth, align 8, !dbg !1570, !tbaa !714
  %cmp2 = icmp ne %struct._object* %call1, null, !dbg !1571
  br i1 %cmp2, label %if.then.3, label %if.else.44, !dbg !1572

if.then.3:                                        ; preds = %if.else
  %7 = bitcast %struct._object** %fno to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata %struct._object** %fno, metadata !531, metadata !712), !dbg !1574
  %8 = load %struct._object*, %struct._object** %meth, align 8, !dbg !1575, !tbaa !714
  %call4 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %8, %struct._object* null, %struct._object* null), !dbg !1576
  store %struct._object* %call4, %struct._object** %fno, align 8, !dbg !1574, !tbaa !714
  br label %do.body, !dbg !1577

do.body:                                          ; preds = %if.then.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1578
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1578
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !535, metadata !712), !dbg !1580
  %10 = load %struct._object*, %struct._object** %meth, align 8, !dbg !1581, !tbaa !714
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1580, !tbaa !714
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1582, !tbaa !714
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1584
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1585, !tbaa !752
  %dec = add i64 %12, -1, !dbg !1585
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1585, !tbaa !752
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1586
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !1587

if.then.6:                                        ; preds = %do.body
  br label %if.end, !dbg !1588

if.else.7:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1590, !tbaa !714
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1592
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1592, !tbaa !762
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1593
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1593, !tbaa !764
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1594, !tbaa !714
  call void %15(%struct._object* %16), !dbg !1595
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1596
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1596
  br label %do.cond, !dbg !1598

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1599

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %fno, align 8, !dbg !1601, !tbaa !714
  %cmp9 = icmp eq %struct._object* %18, null, !dbg !1603
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1604

if.then.10:                                       ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !1605
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1605

if.end.11:                                        ; preds = %do.end
  %19 = load %struct._object*, %struct._object** %fno, align 8, !dbg !1606, !tbaa !714
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1607
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1607, !tbaa !762
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !1608
  %21 = load i64, i64* %tp_flags13, align 8, !dbg !1608, !tbaa !901
  %and14 = and i64 %21, 16777216, !dbg !1609
  %cmp15 = icmp ne i64 %and14, 0, !dbg !1610
  br i1 %cmp15, label %if.then.16, label %if.else.30, !dbg !1611

if.then.16:                                       ; preds = %if.end.11
  %22 = load %struct._object*, %struct._object** %fno, align 8, !dbg !1612, !tbaa !714
  %call17 = call i32 @_PyLong_AsInt(%struct._object* %22), !dbg !1613
  store i32 %call17, i32* %fd, align 4, !dbg !1614, !tbaa !708
  br label %do.body.18, !dbg !1615

do.body.18:                                       ; preds = %if.then.16
  %23 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1616
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1616
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !537, metadata !712), !dbg !1618
  %24 = load %struct._object*, %struct._object** %fno, align 8, !dbg !1619, !tbaa !714
  store %struct._object* %24, %struct._object** %_py_decref_tmp19, align 8, !dbg !1618, !tbaa !714
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1620, !tbaa !714
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1622
  %26 = load i64, i64* %ob_refcnt20, align 8, !dbg !1623, !tbaa !752
  %dec21 = add i64 %26, -1, !dbg !1623
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1623, !tbaa !752
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1624
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1625

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1626

if.else.24:                                       ; preds = %do.body.18
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1628, !tbaa !714
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1630
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1630, !tbaa !762
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1631
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1631, !tbaa !764
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1632, !tbaa !714
  call void %29(%struct._object* %30), !dbg !1633
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %31 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1634
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1634
  br label %do.cond.28, !dbg !1636

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1637

do.end.29:                                        ; preds = %do.cond.28
  br label %if.end.43, !dbg !1639

if.else.30:                                       ; preds = %if.end.11
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1640, !tbaa !714
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)), !dbg !1641
  br label %do.body.31, !dbg !1642

do.body.31:                                       ; preds = %if.else.30
  %33 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1643
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !1643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !541, metadata !712), !dbg !1645
  %34 = load %struct._object*, %struct._object** %fno, align 8, !dbg !1646, !tbaa !714
  store %struct._object* %34, %struct._object** %_py_decref_tmp32, align 8, !dbg !1645, !tbaa !714
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1647, !tbaa !714
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1649
  %36 = load i64, i64* %ob_refcnt33, align 8, !dbg !1650, !tbaa !752
  %dec34 = add i64 %36, -1, !dbg !1650
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1650, !tbaa !752
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !1651
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !1652

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !1653

if.else.37:                                       ; preds = %do.body.31
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1655, !tbaa !714
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1657
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1657, !tbaa !762
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1658
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1658, !tbaa !764
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1659, !tbaa !714
  call void %39(%struct._object* %40), !dbg !1660
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %41 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1661
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1661
  br label %do.cond.41, !dbg !1663

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !1664

do.end.42:                                        ; preds = %do.cond.41
  store i32 -1, i32* %retval, !dbg !1666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1666

if.end.43:                                        ; preds = %do.end.29
  store i32 0, i32* %cleanup.dest.slot, !dbg !1667
  br label %cleanup, !dbg !1667

cleanup:                                          ; preds = %if.end.43, %do.end.42, %if.then.10
  %42 = bitcast %struct._object** %fno to i8*, !dbg !1668
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !1668
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.45, !dbg !1670

if.else.44:                                       ; preds = %if.else
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1671, !tbaa !714
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0)), !dbg !1673
  store i32 -1, i32* %retval, !dbg !1674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !1674

if.end.45:                                        ; preds = %cleanup.cont
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  %44 = load i32, i32* %fd, align 4, !dbg !1675, !tbaa !708
  %cmp47 = icmp eq i32 %44, -1, !dbg !1677
  br i1 %cmp47, label %land.lhs.true, label %if.end.50, !dbg !1678

land.lhs.true:                                    ; preds = %if.end.46
  %call48 = call %struct._object* @PyErr_Occurred(), !dbg !1679
  %tobool = icmp ne %struct._object* %call48, null, !dbg !1679
  br i1 %tobool, label %if.then.49, label %if.end.50, !dbg !1681

if.then.49:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !1682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !1682

if.end.50:                                        ; preds = %land.lhs.true, %if.end.46
  %45 = load i32, i32* %fd, align 4, !dbg !1683, !tbaa !708
  %cmp51 = icmp slt i32 %45, 0, !dbg !1685
  br i1 %cmp51, label %if.then.52, label %if.end.54, !dbg !1686

if.then.52:                                       ; preds = %if.end.50
  %46 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1687, !tbaa !714
  %47 = load i32, i32* %fd, align 4, !dbg !1689, !tbaa !708
  %call53 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i32 %47), !dbg !1690
  store i32 -1, i32* %retval, !dbg !1691
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !1691

if.end.54:                                        ; preds = %if.end.50
  %48 = load i32, i32* %fd, align 4, !dbg !1692, !tbaa !708
  store i32 %48, i32* %retval, !dbg !1693
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !1693

cleanup.55:                                       ; preds = %if.end.54, %if.then.52, %if.then.49, %if.else.44, %cleanup
  %49 = bitcast %struct._object** %meth to i8*, !dbg !1694
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1694
  %50 = bitcast i32* %fd to i8*, !dbg !1694
  call void @llvm.lifetime.end(i64 4, i8* %50) #2, !dbg !1694
  %51 = load i32, i32* %retval, !dbg !1694
  ret i32 %51, !dbg !1694
}

declare i32 @_PyLong_AsInt(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

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
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !548, metadata !712), !dbg !1695
  store i32 %n, i32* %n.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !549, metadata !712), !dbg !1696
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !550, metadata !712), !dbg !1697
  store %struct._object* %fobj, %struct._object** %fobj.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %fobj.addr, metadata !551, metadata !712), !dbg !1698
  %0 = bitcast i8** %p to i8*, !dbg !1699
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1699
  call void @llvm.dbg.declare(metadata i8** %p, metadata !552, metadata !712), !dbg !1700
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !1701, !tbaa !714
  store i8* %1, i8** %p, align 8, !dbg !1700, !tbaa !714
  %2 = bitcast i32* %c to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1702
  call void @llvm.dbg.declare(metadata i32* %c, metadata !553, metadata !712), !dbg !1703
  %3 = bitcast i32* %newlinetypes to i8*, !dbg !1704
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1704
  call void @llvm.dbg.declare(metadata i32* %newlinetypes, metadata !554, metadata !712), !dbg !1705
  store i32 0, i32* %newlinetypes, align 4, !dbg !1705, !tbaa !708
  %4 = bitcast i32* %skipnextlf to i8*, !dbg !1706
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1706
  call void @llvm.dbg.declare(metadata i32* %skipnextlf, metadata !555, metadata !712), !dbg !1707
  store i32 0, i32* %skipnextlf, align 4, !dbg !1707, !tbaa !708
  %5 = load %struct._object*, %struct._object** %fobj.addr, align 8, !dbg !1708, !tbaa !714
  %tobool = icmp ne %struct._object* %5, null, !dbg !1708
  br i1 %tobool, label %if.then, label %if.end, !dbg !1710

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location() #1, !dbg !1711
  store i32 6, i32* %call, align 4, !dbg !1713, !tbaa !708
  store i8* null, i8** %retval, !dbg !1714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1714

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1715, !tbaa !714
  call void @flockfile(%struct._IO_FILE* %6) #2, !dbg !1716
  store i32 120, i32* %c, align 4, !dbg !1717, !tbaa !708
  br label %while.cond, !dbg !1718

while.cond:                                       ; preds = %if.end.25, %if.end
  %7 = load i32, i32* %n.addr, align 4, !dbg !1719, !tbaa !708
  %dec = add i32 %7, -1, !dbg !1719
  store i32 %dec, i32* %n.addr, align 4, !dbg !1719, !tbaa !708
  %cmp = icmp sgt i32 %dec, 0, !dbg !1722
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1723

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1724, !tbaa !714
  %call1 = call i32 @getc_unlocked(%struct._IO_FILE* %8), !dbg !1726
  store i32 %call1, i32* %c, align 4, !dbg !1727, !tbaa !708
  %cmp2 = icmp ne i32 %call1, -1, !dbg !1728
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end, !dbg !1729

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %skipnextlf, align 4, !dbg !1731, !tbaa !708
  %tobool3 = icmp ne i32 %10, 0, !dbg !1731
  br i1 %tobool3, label %if.then.4, label %if.end.13, !dbg !1734

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %skipnextlf, align 4, !dbg !1735, !tbaa !708
  %11 = load i32, i32* %c, align 4, !dbg !1737, !tbaa !708
  %cmp5 = icmp eq i32 %11, 10, !dbg !1739
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1740

if.then.6:                                        ; preds = %if.then.4
  %12 = load i32, i32* %newlinetypes, align 4, !dbg !1741, !tbaa !708
  %or = or i32 %12, 4, !dbg !1741
  store i32 %or, i32* %newlinetypes, align 4, !dbg !1741, !tbaa !708
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1743, !tbaa !714
  %call7 = call i32 @getc_unlocked(%struct._IO_FILE* %13), !dbg !1744
  store i32 %call7, i32* %c, align 4, !dbg !1745, !tbaa !708
  %14 = load i32, i32* %c, align 4, !dbg !1746, !tbaa !708
  %cmp8 = icmp eq i32 %14, -1, !dbg !1748
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1749

if.then.9:                                        ; preds = %if.then.6
  br label %while.end, !dbg !1750

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.12, !dbg !1752

if.else:                                          ; preds = %if.then.4
  %15 = load i32, i32* %newlinetypes, align 4, !dbg !1753, !tbaa !708
  %or11 = or i32 %15, 1, !dbg !1753
  store i32 %or11, i32* %newlinetypes, align 4, !dbg !1753, !tbaa !708
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.10
  br label %if.end.13, !dbg !1755

if.end.13:                                        ; preds = %if.end.12, %while.body
  %16 = load i32, i32* %c, align 4, !dbg !1756, !tbaa !708
  %cmp14 = icmp eq i32 %16, 13, !dbg !1758
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !1759

if.then.15:                                       ; preds = %if.end.13
  store i32 1, i32* %skipnextlf, align 4, !dbg !1760, !tbaa !708
  store i32 10, i32* %c, align 4, !dbg !1762, !tbaa !708
  br label %if.end.21, !dbg !1763

if.else.16:                                       ; preds = %if.end.13
  %17 = load i32, i32* %c, align 4, !dbg !1764, !tbaa !708
  %cmp17 = icmp eq i32 %17, 10, !dbg !1766
  br i1 %cmp17, label %if.then.18, label %if.end.20, !dbg !1767

if.then.18:                                       ; preds = %if.else.16
  %18 = load i32, i32* %newlinetypes, align 4, !dbg !1768, !tbaa !708
  %or19 = or i32 %18, 2, !dbg !1768
  store i32 %or19, i32* %newlinetypes, align 4, !dbg !1768, !tbaa !708
  br label %if.end.20, !dbg !1770

if.end.20:                                        ; preds = %if.then.18, %if.else.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.15
  %19 = load i32, i32* %c, align 4, !dbg !1771, !tbaa !708
  %conv = trunc i32 %19 to i8, !dbg !1771
  %20 = load i8*, i8** %p, align 8, !dbg !1772, !tbaa !714
  %incdec.ptr = getelementptr i8, i8* %20, i32 1, !dbg !1772
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1772, !tbaa !714
  store i8 %conv, i8* %20, align 1, !dbg !1773, !tbaa !1003
  %21 = load i32, i32* %c, align 4, !dbg !1774, !tbaa !708
  %cmp22 = icmp eq i32 %21, 10, !dbg !1776
  br i1 %cmp22, label %if.then.24, label %if.end.25, !dbg !1777

if.then.24:                                       ; preds = %if.end.21
  br label %while.end, !dbg !1778

if.end.25:                                        ; preds = %if.end.21
  br label %while.cond, !dbg !1718

while.end:                                        ; preds = %if.then.24, %if.then.9, %land.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1780, !tbaa !714
  call void @funlockfile(%struct._IO_FILE* %22) #2, !dbg !1781
  %23 = load i8*, i8** %p, align 8, !dbg !1782, !tbaa !714
  store i8 0, i8* %23, align 1, !dbg !1783, !tbaa !1003
  %24 = load i32, i32* %skipnextlf, align 4, !dbg !1784, !tbaa !708
  %tobool26 = icmp ne i32 %24, 0, !dbg !1784
  br i1 %tobool26, label %if.then.27, label %if.end.34, !dbg !1786

if.then.27:                                       ; preds = %while.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1787, !tbaa !714
  %call28 = call i32 @getc_unlocked(%struct._IO_FILE* %25), !dbg !1789
  store i32 %call28, i32* %c, align 4, !dbg !1790, !tbaa !708
  %26 = load i32, i32* %c, align 4, !dbg !1791, !tbaa !708
  %cmp29 = icmp ne i32 %26, 10, !dbg !1793
  br i1 %cmp29, label %if.then.31, label %if.end.33, !dbg !1794

if.then.31:                                       ; preds = %if.then.27
  %27 = load i32, i32* %c, align 4, !dbg !1795, !tbaa !708
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !1796, !tbaa !714
  %call32 = call i32 @ungetc(i32 %27, %struct._IO_FILE* %28), !dbg !1797
  br label %if.end.33, !dbg !1797

if.end.33:                                        ; preds = %if.then.31, %if.then.27
  br label %if.end.34, !dbg !1798

if.end.34:                                        ; preds = %if.end.33, %while.end
  %29 = load i8*, i8** %p, align 8, !dbg !1799, !tbaa !714
  %30 = load i8*, i8** %buf.addr, align 8, !dbg !1801, !tbaa !714
  %cmp35 = icmp eq i8* %29, %30, !dbg !1802
  br i1 %cmp35, label %if.then.37, label %if.end.38, !dbg !1803

if.then.37:                                       ; preds = %if.end.34
  store i8* null, i8** %retval, !dbg !1804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1804

if.end.38:                                        ; preds = %if.end.34
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !1805, !tbaa !714
  store i8* %31, i8** %retval, !dbg !1806
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1806

cleanup:                                          ; preds = %if.end.38, %if.then.37, %if.then
  %32 = bitcast i32* %skipnextlf to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !1807
  %33 = bitcast i32* %newlinetypes to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 4, i8* %33) #2, !dbg !1807
  %34 = bitcast i32* %c to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !1807
  %35 = bitcast i8** %p to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1807
  %36 = load i8*, i8** %retval, !dbg !1807
  ret i8* %36, !dbg !1807
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare void @flockfile(%struct._IO_FILE*) #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @getc_unlocked(%struct._IO_FILE* %__fp) #6 {
entry:
  %__fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %__fp, %struct._IO_FILE** %__fp.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__fp.addr, metadata !567, metadata !712), !dbg !1808
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !1809, !tbaa !714
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 1, !dbg !1810
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1810, !tbaa !1811
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !1813, !tbaa !714
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 2, !dbg !1814
  %3 = load i8*, i8** %_IO_read_end, align 8, !dbg !1814, !tbaa !1815
  %cmp = icmp uge i8* %1, %3, !dbg !1816
  %conv = zext i1 %cmp to i32, !dbg !1816
  %conv1 = sext i32 %conv to i64, !dbg !1817
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1818
  %tobool = icmp ne i64 %expval, 0, !dbg !1818
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1818

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !1819, !tbaa !714
  %call = call i32 @__uflow(%struct._IO_FILE* %4), !dbg !1821
  br label %cond.end, !dbg !1818

cond.false:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !1822, !tbaa !714
  %_IO_read_ptr2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %5, i32 0, i32 1, !dbg !1824
  %6 = load i8*, i8** %_IO_read_ptr2, align 8, !dbg !1825, !tbaa !1811
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !1825
  store i8* %incdec.ptr, i8** %_IO_read_ptr2, align 8, !dbg !1825, !tbaa !1811
  %7 = load i8, i8* %6, align 1, !dbg !1826, !tbaa !1003
  %conv3 = zext i8 %7 to i32, !dbg !1826
  br label %cond.end, !dbg !1818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1818
  ret i32 %cond, !dbg !1827
}

; Function Attrs: nounwind
declare void @funlockfile(%struct._IO_FILE*) #5

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_NewStdPrinter(i32 %fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %self = alloca %struct.PyStdPrinter_Object*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !560, metadata !712), !dbg !1830
  %0 = bitcast %struct.PyStdPrinter_Object** %self to i8*, !dbg !1831
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1831
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self, metadata !561, metadata !712), !dbg !1832
  %1 = load i32, i32* %fd.addr, align 4, !dbg !1833, !tbaa !708
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1835, !tbaa !714
  %call = call i32 @fileno(%struct._IO_FILE* %2) #2, !dbg !1836
  %cmp = icmp ne i32 %1, %call, !dbg !1837
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1838

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %fd.addr, align 4, !dbg !1839, !tbaa !708
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1841, !tbaa !714
  %call1 = call i32 @fileno(%struct._IO_FILE* %4) #2, !dbg !1842
  %cmp2 = icmp ne i32 %3, %call1, !dbg !1843
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1844

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1845
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1845

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct._object* @_PyObject_New(%struct._typeobject* @PyStdPrinter_Type), !dbg !1847
  %5 = bitcast %struct._object* %call3 to %struct.PyStdPrinter_Object*, !dbg !1848
  store %struct.PyStdPrinter_Object* %5, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1849, !tbaa !714
  %6 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1850, !tbaa !714
  %cmp4 = icmp ne %struct.PyStdPrinter_Object* %6, null, !dbg !1852
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1853

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4, !dbg !1854, !tbaa !708
  %8 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1856, !tbaa !714
  %fd6 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %8, i32 0, i32 1, !dbg !1857
  store i32 %7, i32* %fd6, align 4, !dbg !1858, !tbaa !1859
  br label %if.end.7, !dbg !1861

if.end.7:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1862, !tbaa !714
  %10 = bitcast %struct.PyStdPrinter_Object* %9 to %struct._object*, !dbg !1863
  store %struct._object* %10, %struct._object** %retval, !dbg !1864
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1864

cleanup:                                          ; preds = %if.end.7, %if.then
  %11 = bitcast %struct.PyStdPrinter_Object** %self to i8*, !dbg !1865
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1865
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1865
  ret %struct._object* %12, !dbg !1865
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #5

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_repr(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !572, metadata !712), !dbg !1866
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1867, !tbaa !714
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1, !dbg !1868
  %1 = load i32, i32* %fd, align 4, !dbg !1868, !tbaa !1859
  %2 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1869, !tbaa !714
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i32 %1, %struct.PyStdPrinter_Object* %2), !dbg !1870
  ret %struct._object* %call, !dbg !1871
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @stdprinter_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !669, metadata !712), !dbg !1872
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !670, metadata !712), !dbg !1873
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !671, metadata !712), !dbg !1874
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1875, !tbaa !714
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0)), !dbg !1876
  ret i32 -1, !dbg !1877
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kews) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kews.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !678, metadata !712), !dbg !1878
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !679, metadata !712), !dbg !1879
  store %struct._object* %kews, %struct._object** %kews.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %kews.addr, metadata !680, metadata !712), !dbg !1880
  %0 = bitcast %struct.PyStdPrinter_Object** %self to i8*, !dbg !1881
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1881
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self, metadata !681, metadata !712), !dbg !1882
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1883, !tbaa !714
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1884
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1884, !tbaa !1885
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1886, !tbaa !714
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1883
  %4 = bitcast %struct._object* %call to %struct.PyStdPrinter_Object*, !dbg !1887
  store %struct.PyStdPrinter_Object* %4, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1888, !tbaa !714
  %5 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1889, !tbaa !714
  %cmp = icmp ne %struct.PyStdPrinter_Object* %5, null, !dbg !1891
  br i1 %cmp, label %if.then, label %if.end, !dbg !1892

if.then:                                          ; preds = %entry
  %6 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1893, !tbaa !714
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %6, i32 0, i32 1, !dbg !1895
  store i32 -1, i32* %fd, align 4, !dbg !1896, !tbaa !1859
  br label %if.end, !dbg !1897

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self, align 8, !dbg !1898, !tbaa !714
  %8 = bitcast %struct.PyStdPrinter_Object* %7 to %struct._object*, !dbg !1899
  %9 = bitcast %struct.PyStdPrinter_Object** %self to i8*, !dbg !1900
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1900
  ret %struct._object* %8, !dbg !1901
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

declare i32 @__uflow(%struct._IO_FILE*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_noop(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !575, metadata !712), !dbg !1902
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1903, !tbaa !752
  %inc = add i64 %0, 1, !dbg !1903
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1903, !tbaa !752
  ret %struct._object* @_Py_NoneStruct, !dbg !1904
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_fileno(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !578, metadata !712), !dbg !1905
  %0 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1906, !tbaa !714
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %0, i32 0, i32 1, !dbg !1907
  %1 = load i32, i32* %fd, align 4, !dbg !1907, !tbaa !1859
  %conv = sext i32 %1 to i64, !dbg !1908
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1909
  ret %struct._object* %call, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_isatty(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !581, metadata !712), !dbg !1911
  %0 = bitcast i64* %res to i8*, !dbg !1912
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1912
  call void @llvm.dbg.declare(metadata i64* %res, metadata !582, metadata !712), !dbg !1913
  %1 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1914, !tbaa !714
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %1, i32 0, i32 1, !dbg !1916
  %2 = load i32, i32* %fd, align 4, !dbg !1916, !tbaa !1859
  %cmp = icmp slt i32 %2, 0, !dbg !1917
  br i1 %cmp, label %if.then, label %if.end, !dbg !1918

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1919, !tbaa !752
  %inc = add i64 %3, 1, !dbg !1919
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1919, !tbaa !752
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1921
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1921

if.end:                                           ; preds = %entry
  %4 = bitcast %struct._ts** %_save to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !583, metadata !712), !dbg !1923
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1924
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1925, !tbaa !714
  %5 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1926, !tbaa !714
  %fd1 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %5, i32 0, i32 1, !dbg !1927
  %6 = load i32, i32* %fd1, align 4, !dbg !1927, !tbaa !1859
  %call2 = call i32 @isatty(i32 %6) #2, !dbg !1928
  %conv = sext i32 %call2 to i64, !dbg !1928
  store i64 %conv, i64* %res, align 8, !dbg !1929, !tbaa !968
  %7 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1930, !tbaa !714
  call void @PyEval_RestoreThread(%struct._ts* %7), !dbg !1931
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !1932
  %9 = load i64, i64* %res, align 8, !dbg !1933, !tbaa !968
  %call3 = call %struct._object* @PyBool_FromLong(i64 %9), !dbg !1934
  store %struct._object* %call3, %struct._object** %retval, !dbg !1935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1935

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i64* %res to i8*, !dbg !1936
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1936
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1936
  ret %struct._object* %11, !dbg !1936
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_write(%struct.PyStdPrinter_Object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %c = alloca i8*, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !647, metadata !712), !dbg !1937
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !648, metadata !712), !dbg !1938
  %0 = bitcast i8** %c to i8*, !dbg !1939
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1939
  call void @llvm.dbg.declare(metadata i8** %c, metadata !649, metadata !712), !dbg !1940
  %1 = bitcast i64* %n to i8*, !dbg !1941
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1941
  call void @llvm.dbg.declare(metadata i64* %n, metadata !650, metadata !712), !dbg !1942
  %2 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1943, !tbaa !714
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %2, i32 0, i32 1, !dbg !1945
  %3 = load i32, i32* %fd, align 4, !dbg !1945, !tbaa !1859
  %cmp = icmp slt i32 %3, 0, !dbg !1946
  br i1 %cmp, label %if.then, label %if.end, !dbg !1947

if.then:                                          ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1948, !tbaa !752
  %inc = add i64 %4, 1, !dbg !1948
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1948, !tbaa !752
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1950

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1951, !tbaa !714
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8** %c), !dbg !1953
  %tobool = icmp ne i32 %call, 0, !dbg !1953
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1954

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1955
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1955

if.end.2:                                         ; preds = %if.end
  %6 = load i8*, i8** %c, align 8, !dbg !1957, !tbaa !714
  %call3 = call i64 @strlen(i8* %6) #8, !dbg !1958
  store i64 %call3, i64* %n, align 8, !dbg !1959, !tbaa !968
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !1960
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1960
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !651, metadata !712), !dbg !1961
  %call4 = call %struct._ts* @PyEval_SaveThread(), !dbg !1962
  store %struct._ts* %call4, %struct._ts** %_save, align 8, !dbg !1963, !tbaa !714
  %call5 = call i32* @__errno_location() #1, !dbg !1964
  store i32 0, i32* %call5, align 4, !dbg !1965, !tbaa !708
  %8 = load %struct.PyStdPrinter_Object*, %struct.PyStdPrinter_Object** %self.addr, align 8, !dbg !1966, !tbaa !714
  %fd6 = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %8, i32 0, i32 1, !dbg !1967
  %9 = load i32, i32* %fd6, align 4, !dbg !1967, !tbaa !1859
  %10 = load i8*, i8** %c, align 8, !dbg !1968, !tbaa !714
  %11 = load i64, i64* %n, align 8, !dbg !1969, !tbaa !968
  %call7 = call i64 @write(i32 %9, i8* %10, i64 %11), !dbg !1970
  store i64 %call7, i64* %n, align 8, !dbg !1971, !tbaa !968
  %12 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1972, !tbaa !714
  call void @PyEval_RestoreThread(%struct._ts* %12), !dbg !1973
  %13 = bitcast %struct._ts** %_save to i8*, !dbg !1974
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1974
  %14 = load i64, i64* %n, align 8, !dbg !1975, !tbaa !968
  %cmp8 = icmp slt i64 %14, 0, !dbg !1977
  br i1 %cmp8, label %if.then.9, label %if.end.16, !dbg !1978

if.then.9:                                        ; preds = %if.end.2
  %call10 = call i32* @__errno_location() #1, !dbg !1979
  %15 = load i32, i32* %call10, align 4, !dbg !1982, !tbaa !708
  %cmp11 = icmp eq i32 %15, 11, !dbg !1983
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1984

if.then.12:                                       ; preds = %if.then.9
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1985, !tbaa !752
  %inc13 = add i64 %16, 1, !dbg !1985
  store i64 %inc13, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1985, !tbaa !752
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1986

if.end.14:                                        ; preds = %if.then.9
  %17 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1987, !tbaa !714
  %call15 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17), !dbg !1988
  store %struct._object* null, %struct._object** %retval, !dbg !1989
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1989

if.end.16:                                        ; preds = %if.end.2
  %18 = load i64, i64* %n, align 8, !dbg !1990, !tbaa !968
  %call17 = call %struct._object* @PyLong_FromSsize_t(i64 %18), !dbg !1991
  store %struct._object* %call17, %struct._object** %retval, !dbg !1992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1992

cleanup:                                          ; preds = %if.end.16, %if.end.14, %if.then.12, %if.then.1, %if.then
  %19 = bitcast i64* %n to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1993
  %20 = bitcast i8** %c to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1993
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1993
  ret %struct._object* %21, !dbg !1993
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._ts* @PyEval_SaveThread() #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #5

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare i64 @write(i32, i8*, i64) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closed(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !657, metadata !712), !dbg !1994
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !658, metadata !712), !dbg !1995
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1996, !tbaa !752
  %inc = add i64 %0, 1, !dbg !1996
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1996, !tbaa !752
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1997
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_encoding(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !661, metadata !712), !dbg !1998
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !662, metadata !712), !dbg !1999
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2000, !tbaa !752
  %inc = add i64 %0, 1, !dbg !2000
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2000, !tbaa !752
  ret %struct._object* @_Py_NoneStruct, !dbg !2001
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.PyStdPrinter_Object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyStdPrinter_Object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyStdPrinter_Object* %self, %struct.PyStdPrinter_Object** %self.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata %struct.PyStdPrinter_Object** %self.addr, metadata !665, metadata !712), !dbg !2002
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !714
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !666, metadata !712), !dbg !2003
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)), !dbg !2004
  ret %struct._object* %call, !dbg !2005
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!705, !706}
!llvm.ident = !{!707}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !418, globals: !682)
!1 = !DIFile(filename: "fileobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !358, !359, !377, !378, !382, !390, !406, !408, !410, !417, !24}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !15, file: !14, line: 108, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !14, line: 334, size: 3200, align: 64, elements: !28)
!28 = !{!29, !35, !39, !40, !41, !46, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !14, line: 335, baseType: !30, size: 192, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !14, line: 114, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 111, size: 192, align: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !14, line: 112, baseType: !13, size: 128, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !31, file: !14, line: 113, baseType: !18, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !27, file: !14, line: 336, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !27, file: !14, line: 341, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !14, line: 308, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !12}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !27, file: !14, line: 342, baseType: !47, size: 64, align: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !14, line: 314, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !12, !52, !51}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 48, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 246, size: 1728, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!56 = !{!57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !83, !85, !87, !91, !94, !96, !97, !98, !99, !100, !104, !105}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 247, baseType: !51, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 252, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 253, baseType: !59, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 254, baseType: !59, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 255, baseType: !59, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 256, baseType: !59, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 257, baseType: !59, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 258, baseType: !59, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 259, baseType: !59, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 261, baseType: !59, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 262, baseType: !59, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 263, baseType: !59, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 265, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 161, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !55, line: 162, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !55, line: 163, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !55, line: 167, baseType: !51, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 267, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 269, baseType: !51, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 273, baseType: !51, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 275, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !23, line: 140, baseType: !24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 279, baseType: !84, size: 16, align: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 280, baseType: !86, size: 8, align: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 281, baseType: !88, size: 8, align: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 285, baseType: !92, size: 64, align: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 155, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 294, baseType: !95, size: 64, align: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !23, line: 141, baseType: !24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !54, file: !55, line: 303, baseType: !11, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !54, file: !55, line: 304, baseType: !11, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !54, file: !55, line: 305, baseType: !11, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !54, file: !55, line: 306, baseType: !11, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 309, baseType: !51, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !27, file: !14, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !14, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!12, !12, !59}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !27, file: !14, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !14, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!51, !12, !59, !12}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !27, file: !14, line: 345, baseType: !11, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !27, file: !14, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !14, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !12}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !27, file: !14, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !14, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !14, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !14, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12, !12}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !14, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !14, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !14, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !14, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !14, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !14, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !12, !12, !12}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !14, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !14, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !14, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !14, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !14, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !14, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!51, !12}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !14, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !14, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !14, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !14, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !14, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !14, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !14, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !14, line: 258, baseType: !11, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !14, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !14, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !14, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !14, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !14, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !14, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !14, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !14, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !14, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !14, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !14, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !14, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !14, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !14, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !14, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !14, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !27, file: !14, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !14, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !14, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !14, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!18, !12}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !14, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !14, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !14, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !12, !18}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !14, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !14, line: 285, baseType: !11, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !14, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !14, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !12, !18, !12}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !14, line: 287, baseType: !11, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !14, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !14, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!51, !12, !12}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !14, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !14, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !27, file: !14, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !14, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !14, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !14, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !14, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !14, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!51, !12, !12, !12}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !27, file: !14, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !14, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !12}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !19, line: 186, baseType: !18)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !27, file: !14, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !27, file: !14, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !27, file: !14, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !14, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !27, file: !14, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !14, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !27, file: !14, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !14, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !14, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !14, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!51, !12, !242, !51}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !14, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !14, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !14, line: 179, baseType: !11, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !14, line: 180, baseType: !12, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !14, line: 181, baseType: !18, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !14, line: 182, baseType: !18, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !14, line: 184, baseType: !51, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !14, line: 185, baseType: !51, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !14, line: 186, baseType: !59, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !14, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !14, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !14, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !14, line: 190, baseType: !11, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !14, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !14, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !12, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !27, file: !14, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !27, file: !14, line: 368, baseType: !36, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !27, file: !14, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !14, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!51, !12, !270, !11}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !14, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!51, !12, !11}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !27, file: !14, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !27, file: !14, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !14, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!12, !12, !12, !51}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !27, file: !14, line: 382, baseType: !18, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !27, file: !14, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !14, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !27, file: !14, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !14, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !27, file: !14, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !36, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !51, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !36, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !27, file: !14, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !14, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !27, file: !14, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !59, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!12, !12, !11}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!51, !12, !12, !11}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !59, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !11, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !27, file: !14, line: 392, baseType: !26, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !27, file: !14, line: 393, baseType: !12, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !27, file: !14, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !14, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !27, file: !14, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !14, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !27, file: !14, line: 396, baseType: !18, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !27, file: !14, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !14, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !27, file: !14, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !14, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!12, !26, !18}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !27, file: !14, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !14, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!12, !26, !12, !12}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !27, file: !14, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !14, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !11}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !27, file: !14, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !27, file: !14, line: 402, baseType: !12, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !27, file: !14, line: 403, baseType: !12, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !27, file: !14, line: 404, baseType: !12, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !27, file: !14, line: 405, baseType: !12, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !27, file: !14, line: 406, baseType: !12, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !27, file: !14, line: 407, baseType: !42, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !27, file: !14, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !27, file: !14, line: 412, baseType: !42, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !352, line: 41, baseType: !353)
!352 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 31, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 32, baseType: !30, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !353, file: !352, line: 33, baseType: !225, size: 64, align: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !353, file: !352, line: 34, baseType: !88, size: 8, align: 8, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !374}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !4, line: 291, baseType: !13, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !361, file: !4, line: 292, baseType: !18, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !361, file: !4, line: 293, baseType: !225, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !4, line: 349, baseType: !367, size: 32, align: 32, offset: 256)
!367 = !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !4, line: 294, size: 32, align: 32, elements: !368)
!368 = !{!369, !370, !371, !372, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !367, file: !4, line: 303, baseType: !348, size: 2, align: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !367, file: !4, line: 331, baseType: !348, size: 3, align: 32, offset: 2)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !367, file: !4, line: 336, baseType: !348, size: 1, align: 32, offset: 5)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !367, file: !4, line: 340, baseType: !348, size: 1, align: 32, offset: 6)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !367, file: !4, line: 345, baseType: !348, size: 1, align: 32, offset: 7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !361, file: !4, line: 350, baseType: !375, size: 64, align: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 90, baseType: !51)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !381)
!381 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !385)
!385 = !{!386, !387, !388, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !384, file: !4, line: 357, baseType: !360, size: 384, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !384, file: !4, line: 358, baseType: !18, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !384, file: !4, line: 360, baseType: !59, size: 64, align: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !384, file: !4, line: 361, baseType: !18, size: 64, align: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !392, file: !4, line: 369, baseType: !383, size: 576, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !392, file: !4, line: 375, baseType: !396, size: 64, align: 64, offset: 576)
!396 = !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !4, line: 370, size: 64, align: 64, elements: !397)
!397 = !{!398, !399, !401, !404}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !396, file: !4, line: 371, baseType: !11, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !396, file: !4, line: 372, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !396, file: !4, line: 373, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !396, file: !4, line: 374, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStdPrinter_Object", file: !412, line: 329, baseType: !413)
!412 = !DIFile(filename: "Objects/fileobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 326, size: 192, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !413, file: !412, line: 327, baseType: !13, size: 128, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !413, file: !412, line: 328, baseType: !51, size: 32, align: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!418 = !{!419, !435, !484, !513, !526, !544, !556, !562, !568, !573, !576, !579, !643, !653, !659, !663, !667, !672}
!419 = !DISubprogram(name: "PyFile_FromFd", scope: !412, file: !412, line: 29, type: !420, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, i8*, i8*, i32, i8*, i8*, i8*, i32)* @PyFile_FromFd, variables: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!12, !51, !36, !36, !51, !36, !36, !36, !51}
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !419, file: !412, line: 29, type: !51)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !419, file: !412, line: 29, type: !36)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !419, file: !412, line: 29, type: !36)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffering", arg: 4, scope: !419, file: !412, line: 29, type: !51)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 5, scope: !419, file: !412, line: 29, type: !36)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 6, scope: !419, file: !412, line: 30, type: !36)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newline", arg: 7, scope: !419, file: !412, line: 30, type: !36)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closefd", arg: 8, scope: !419, file: !412, line: 30, type: !51)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "io", scope: !419, file: !412, line: 32, type: !12)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stream", scope: !419, file: !412, line: 32, type: !12)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !412, line: 41, type: !12)
!434 = distinct !DILexicalBlock(scope: !419, file: !412, line: 41, column: 8)
!435 = !DISubprogram(name: "PyFile_GetLine", scope: !412, file: !412, line: 50, type: !436, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32)* @PyFile_GetLine, variables: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!12, !12, !51}
!438 = !{!439, !440, !441, !442, !444, !445, !449, !451, !453, !457, !460, !461, !465, !470, !472, !475, !479, !482}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !435, file: !412, line: 50, type: !12)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !435, file: !412, line: 50, type: !51)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !435, file: !412, line: 52, type: !12)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reader", scope: !443, file: !412, line: 60, type: !12)
!443 = distinct !DILexicalBlock(scope: !435, file: !412, line: 59, column: 5)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !443, file: !412, line: 61, type: !12)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !446, file: !412, line: 72, type: !12)
!446 = distinct !DILexicalBlock(scope: !447, file: !412, line: 72, column: 16)
!447 = distinct !DILexicalBlock(scope: !448, file: !412, line: 71, column: 33)
!448 = distinct !DILexicalBlock(scope: !443, file: !412, line: 71, column: 13)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !412, line: 76, type: !12)
!450 = distinct !DILexicalBlock(scope: !443, file: !412, line: 76, column: 12)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !412, line: 77, type: !12)
!452 = distinct !DILexicalBlock(scope: !443, file: !412, line: 77, column: 12)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !454, file: !412, line: 80, type: !12)
!454 = distinct !DILexicalBlock(scope: !455, file: !412, line: 80, column: 16)
!455 = distinct !DILexicalBlock(scope: !456, file: !412, line: 79, column: 85)
!456 = distinct !DILexicalBlock(scope: !443, file: !412, line: 78, column: 13)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !458, file: !412, line: 88, type: !59)
!458 = distinct !DILexicalBlock(scope: !459, file: !412, line: 87, column: 113)
!459 = distinct !DILexicalBlock(scope: !435, file: !412, line: 87, column: 9)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !458, file: !412, line: 89, type: !18)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !462, file: !412, line: 91, type: !12)
!462 = distinct !DILexicalBlock(scope: !463, file: !412, line: 91, column: 16)
!463 = distinct !DILexicalBlock(scope: !464, file: !412, line: 90, column: 23)
!464 = distinct !DILexicalBlock(scope: !458, file: !412, line: 90, column: 13)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !466, file: !412, line: 100, type: !12)
!466 = distinct !DILexicalBlock(scope: !467, file: !412, line: 99, column: 18)
!467 = distinct !DILexicalBlock(scope: !468, file: !412, line: 97, column: 17)
!468 = distinct !DILexicalBlock(scope: !469, file: !412, line: 96, column: 36)
!469 = distinct !DILexicalBlock(scope: !464, file: !412, line: 96, column: 18)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !471, file: !412, line: 102, type: !12)
!471 = distinct !DILexicalBlock(scope: !466, file: !412, line: 102, column: 20)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !473, file: !412, line: 108, type: !18)
!473 = distinct !DILexicalBlock(scope: !474, file: !412, line: 107, column: 113)
!474 = distinct !DILexicalBlock(scope: !435, file: !412, line: 107, column: 9)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !412, line: 110, type: !12)
!476 = distinct !DILexicalBlock(scope: !477, file: !412, line: 110, column: 16)
!477 = distinct !DILexicalBlock(scope: !478, file: !412, line: 109, column: 23)
!478 = distinct !DILexicalBlock(scope: !473, file: !412, line: 109, column: 13)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !480, file: !412, line: 116, type: !12)
!480 = distinct !DILexicalBlock(scope: !481, file: !412, line: 115, column: 1254)
!481 = distinct !DILexicalBlock(scope: !478, file: !412, line: 115, column: 18)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !412, line: 118, type: !12)
!483 = distinct !DILexicalBlock(scope: !480, file: !412, line: 118, column: 16)
!484 = !DISubprogram(name: "PyFile_WriteObject", scope: !412, file: !412, line: 128, type: !485, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i32)* @PyFile_WriteObject, variables: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!51, !12, !12, !51}
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !499, !503, !505, !507, !509, !511}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !484, file: !412, line: 128, type: !12)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !484, file: !412, line: 128, type: !12)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !484, file: !412, line: 128, type: !51)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !484, file: !412, line: 130, type: !12)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !484, file: !412, line: 130, type: !12)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !484, file: !412, line: 130, type: !12)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !484, file: !412, line: 130, type: !12)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !496, file: !412, line: 146, type: !12)
!496 = distinct !DILexicalBlock(scope: !497, file: !412, line: 146, column: 12)
!497 = distinct !DILexicalBlock(scope: !498, file: !412, line: 145, column: 30)
!498 = distinct !DILexicalBlock(scope: !484, file: !412, line: 145, column: 9)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !412, line: 151, type: !12)
!500 = distinct !DILexicalBlock(scope: !501, file: !412, line: 151, column: 12)
!501 = distinct !DILexicalBlock(scope: !502, file: !412, line: 150, column: 29)
!502 = distinct !DILexicalBlock(scope: !484, file: !412, line: 150, column: 9)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !412, line: 152, type: !12)
!504 = distinct !DILexicalBlock(scope: !501, file: !412, line: 152, column: 12)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !506, file: !412, line: 156, type: !12)
!506 = distinct !DILexicalBlock(scope: !484, file: !412, line: 156, column: 8)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !412, line: 157, type: !12)
!508 = distinct !DILexicalBlock(scope: !484, file: !412, line: 157, column: 8)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !412, line: 158, type: !12)
!510 = distinct !DILexicalBlock(scope: !484, file: !412, line: 158, column: 8)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !512, file: !412, line: 161, type: !12)
!512 = distinct !DILexicalBlock(scope: !484, file: !412, line: 161, column: 8)
!513 = !DISubprogram(name: "PyFile_WriteString", scope: !412, file: !412, line: 166, type: !514, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @PyFile_WriteString, variables: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!51, !36, !12}
!516 = !{!517, !518, !519, !523, !524}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !513, file: !412, line: 166, type: !36)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !513, file: !412, line: 166, type: !12)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !520, file: !412, line: 176, type: !12)
!520 = distinct !DILexicalBlock(scope: !521, file: !412, line: 175, column: 33)
!521 = distinct !DILexicalBlock(scope: !522, file: !412, line: 175, column: 14)
!522 = distinct !DILexicalBlock(scope: !513, file: !412, line: 168, column: 9)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !520, file: !412, line: 177, type: !51)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !412, line: 181, type: !12)
!525 = distinct !DILexicalBlock(scope: !520, file: !412, line: 181, column: 12)
!526 = !DISubprogram(name: "PyObject_AsFileDescriptor", scope: !412, file: !412, line: 196, type: !151, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyObject_AsFileDescriptor, variables: !527)
!527 = !{!528, !529, !530, !531, !535, !537, !541}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !526, file: !412, line: 196, type: !12)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !526, file: !412, line: 198, type: !51)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !526, file: !412, line: 199, type: !12)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fno", scope: !532, file: !412, line: 207, type: !12)
!532 = distinct !DILexicalBlock(scope: !533, file: !412, line: 206, column: 5)
!533 = distinct !DILexicalBlock(scope: !534, file: !412, line: 205, column: 14)
!534 = distinct !DILexicalBlock(scope: !526, file: !412, line: 202, column: 9)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !412, line: 208, type: !12)
!536 = distinct !DILexicalBlock(scope: !532, file: !412, line: 208, column: 12)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !538, file: !412, line: 214, type: !12)
!538 = distinct !DILexicalBlock(scope: !539, file: !412, line: 214, column: 16)
!539 = distinct !DILexicalBlock(scope: !540, file: !412, line: 212, column: 81)
!540 = distinct !DILexicalBlock(scope: !532, file: !412, line: 212, column: 13)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !412, line: 219, type: !12)
!542 = distinct !DILexicalBlock(scope: !543, file: !412, line: 219, column: 16)
!543 = distinct !DILexicalBlock(scope: !540, file: !412, line: 216, column: 14)
!544 = !DISubprogram(name: "Py_UniversalNewlineFgets", scope: !412, file: !412, line: 255, type: !545, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct._IO_FILE*, %struct._object*)* @Py_UniversalNewlineFgets, variables: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!59, !59, !51, !52, !12}
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !544, file: !412, line: 255, type: !59)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !544, file: !412, line: 255, type: !51)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 3, scope: !544, file: !412, line: 255, type: !52)
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fobj", arg: 4, scope: !544, file: !412, line: 255, type: !12)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !544, file: !412, line: 257, type: !59)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !544, file: !412, line: 258, type: !51)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newlinetypes", scope: !544, file: !412, line: 259, type: !51)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skipnextlf", scope: !544, file: !412, line: 260, type: !51)
!556 = !DISubprogram(name: "PyFile_NewStdPrinter", scope: !412, file: !412, line: 355, type: !557, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @PyFile_NewStdPrinter, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!12, !51}
!559 = !{!560, !561}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !556, file: !412, line: 355, type: !51)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !556, file: !412, line: 357, type: !410)
!562 = !DISubprogram(name: "getc_unlocked", scope: !563, file: !563, line: 63, type: !564, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IO_FILE*)* @getc_unlocked, variables: !566)
!563 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!564 = !DISubroutineType(types: !565)
!565 = !{!51, !52}
!566 = !{!567}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fp", arg: 1, scope: !562, file: !563, line: 63, type: !52)
!568 = !DISubprogram(name: "stdprinter_repr", scope: !412, file: !412, line: 419, type: !569, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_repr, variables: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!12, !410}
!571 = !{!572}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !568, file: !412, line: 419, type: !410)
!573 = !DISubprogram(name: "stdprinter_noop", scope: !412, file: !412, line: 426, type: !569, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_noop, variables: !574)
!574 = !{!575}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !573, file: !412, line: 426, type: !410)
!576 = !DISubprogram(name: "stdprinter_fileno", scope: !412, file: !412, line: 413, type: !569, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_fileno, variables: !577)
!577 = !{!578}
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !576, file: !412, line: 413, type: !410)
!579 = !DISubprogram(name: "stdprinter_isatty", scope: !412, file: !412, line: 432, type: !569, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_isatty, variables: !580)
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !579, file: !412, line: 432, type: !410)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !579, file: !412, line: 434, type: !24)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !584, file: !412, line: 439, type: !585)
!584 = distinct !DILexicalBlock(scope: !579, file: !412, line: 439, column: 5)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !587, line: 139, baseType: !588)
!587 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !587, line: 69, size: 1536, align: 64, elements: !589)
!589 = !{!590, !592, !593, !613, !616, !617, !618, !619, !620, !621, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !588, file: !587, line: 72, baseType: !591, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !587, line: 73, baseType: !591, size: 64, align: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !588, file: !587, line: 74, baseType: !594, size: 64, align: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !587, line: 44, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !587, line: 19, size: 832, align: 64, elements: !597)
!597 = !{!598, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !587, line: 21, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !596, file: !587, line: 22, baseType: !591, size: 64, align: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !596, file: !587, line: 24, baseType: !12, size: 64, align: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !596, file: !587, line: 25, baseType: !12, size: 64, align: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !596, file: !587, line: 26, baseType: !12, size: 64, align: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !596, file: !587, line: 27, baseType: !12, size: 64, align: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !596, file: !587, line: 28, baseType: !12, size: 64, align: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !596, file: !587, line: 30, baseType: !12, size: 64, align: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !596, file: !587, line: 31, baseType: !12, size: 64, align: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !596, file: !587, line: 32, baseType: !12, size: 64, align: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !596, file: !587, line: 33, baseType: !51, size: 32, align: 32, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !596, file: !587, line: 34, baseType: !51, size: 32, align: 32, offset: 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !596, file: !587, line: 37, baseType: !51, size: 32, align: 32, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !596, file: !587, line: 43, baseType: !12, size: 64, align: 64, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !588, file: !587, line: 76, baseType: !614, size: 64, align: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !587, line: 50, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !588, file: !587, line: 77, baseType: !51, size: 32, align: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !588, file: !587, line: 78, baseType: !38, size: 8, align: 8, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !588, file: !587, line: 80, baseType: !38, size: 8, align: 8, offset: 296)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !588, file: !587, line: 85, baseType: !51, size: 32, align: 32, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !588, file: !587, line: 86, baseType: !51, size: 32, align: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !588, file: !587, line: 88, baseType: !622, size: 64, align: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !587, line: 54, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!51, !12, !614, !51, !12}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !588, file: !587, line: 89, baseType: !622, size: 64, align: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !588, file: !587, line: 90, baseType: !12, size: 64, align: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !588, file: !587, line: 91, baseType: !12, size: 64, align: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !588, file: !587, line: 93, baseType: !12, size: 64, align: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !588, file: !587, line: 94, baseType: !12, size: 64, align: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !588, file: !587, line: 95, baseType: !12, size: 64, align: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !588, file: !587, line: 97, baseType: !12, size: 64, align: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !588, file: !587, line: 98, baseType: !12, size: 64, align: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !588, file: !587, line: 99, baseType: !12, size: 64, align: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !588, file: !587, line: 101, baseType: !12, size: 64, align: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !588, file: !587, line: 103, baseType: !51, size: 32, align: 32, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !588, file: !587, line: 105, baseType: !12, size: 64, align: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !588, file: !587, line: 106, baseType: !24, size: 64, align: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !588, file: !587, line: 108, baseType: !51, size: 32, align: 32, offset: 1280)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !588, file: !587, line: 109, baseType: !12, size: 64, align: 64, offset: 1344)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !588, file: !587, line: 134, baseType: !337, size: 64, align: 64, offset: 1408)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !588, file: !587, line: 135, baseType: !11, size: 64, align: 64, offset: 1472)
!643 = !DISubprogram(name: "stdprinter_write", scope: !412, file: !412, line: 373, type: !644, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, %struct._object*)* @stdprinter_write, variables: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!12, !410, !12}
!646 = !{!647, !648, !649, !650, !651}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !643, file: !412, line: 373, type: !410)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !643, file: !412, line: 373, type: !12)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !643, file: !412, line: 375, type: !59)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !643, file: !412, line: 376, type: !18)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !652, file: !412, line: 391, type: !585)
!652 = distinct !DILexicalBlock(scope: !643, file: !412, line: 391, column: 5)
!653 = !DISubprogram(name: "get_closed", scope: !412, file: !412, line: 456, type: !654, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_closed, variables: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!12, !410, !11}
!656 = !{!657, !658}
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !653, file: !412, line: 456, type: !410)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !653, file: !412, line: 456, type: !11)
!659 = !DISubprogram(name: "get_encoding", scope: !412, file: !412, line: 469, type: !654, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_encoding, variables: !660)
!660 = !{!661, !662}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !659, file: !412, line: 469, type: !410)
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !659, file: !412, line: 469, type: !11)
!663 = !DISubprogram(name: "get_mode", scope: !412, file: !412, line: 463, type: !654, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_mode, variables: !664)
!664 = !{!665, !666}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !663, file: !412, line: 463, type: !410)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !663, file: !412, line: 463, type: !11)
!667 = !DISubprogram(name: "stdprinter_init", scope: !412, file: !412, line: 347, type: !218, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @stdprinter_init, variables: !668)
!668 = !{!669, !670, !671}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !667, file: !412, line: 347, type: !12)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !667, file: !412, line: 347, type: !12)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !667, file: !412, line: 347, type: !12)
!672 = !DISubprogram(name: "stdprinter_new", scope: !412, file: !412, line: 332, type: !673, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stdprinter_new, variables: !677)
!673 = !DISubroutineType(types: !674)
!674 = !{!12, !675, !12, !12}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!677 = !{!678, !679, !680, !681}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !672, file: !412, line: 332, type: !675)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !672, file: !412, line: 332, type: !12)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kews", arg: 3, scope: !672, file: !412, line: 332, type: !12)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !672, file: !412, line: 334, type: !410)
!682 = !{!683, !691, !692, !693, !694, !695, !700}
!683 = !DIGlobalVariable(name: "PyId_open", scope: !419, file: !412, line: 33, type: !684, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_FromFd.PyId_open)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !14, line: 144, baseType: !685)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !14, line: 140, size: 192, align: 64, elements: !686)
!686 = !{!687, !689, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !14, line: 141, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !685, file: !14, line: 142, baseType: !36, size: 64, align: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !685, file: !14, line: 143, baseType: !12, size: 64, align: 64, offset: 128)
!691 = !DIGlobalVariable(name: "PyId_readline", scope: !435, file: !412, line: 62, type: !684, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_GetLine.PyId_readline)
!692 = !DIGlobalVariable(name: "PyId_write", scope: !484, file: !412, line: 131, type: !684, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_WriteObject.PyId_write)
!693 = !DIGlobalVariable(name: "PyId_fileno", scope: !526, file: !412, line: 200, type: !684, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyObject_AsFileDescriptor.PyId_fileno)
!694 = !DIGlobalVariable(name: "PyStdPrinter_Type", scope: !0, file: !412, line: 481, type: !676, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyStdPrinter_Type)
!695 = !DIGlobalVariable(name: "stdprinter_methods", scope: !0, file: !412, line: 446, type: !696, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @stdprinter_methods)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 1536, align: 64, elements: !698)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!698 = !{!699}
!699 = !DISubrange(count: 6)
!700 = !DIGlobalVariable(name: "stdprinter_getsetlist", scope: !0, file: !412, line: 474, type: !701, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @stdprinter_getsetlist)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 1280, align: 64, elements: !703)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!703 = !{!704}
!704 = !DISubrange(count: 4)
!705 = !{i32 2, !"Dwarf Version", i32 4}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!708 = !{!709, !709, i64 0}
!709 = !{!"int", !710, i64 0}
!710 = !{!"omnipotent char", !711, i64 0}
!711 = !{!"Simple C/C++ TBAA"}
!712 = !DIExpression()
!713 = !DILocation(line: 29, column: 19, scope: !419)
!714 = !{!715, !715, i64 0}
!715 = !{!"any pointer", !710, i64 0}
!716 = !DILocation(line: 29, column: 35, scope: !419)
!717 = !DILocation(line: 29, column: 53, scope: !419)
!718 = !DILocation(line: 29, column: 63, scope: !419)
!719 = !DILocation(line: 29, column: 86, scope: !419)
!720 = !DILocation(line: 30, column: 27, scope: !419)
!721 = !DILocation(line: 30, column: 47, scope: !419)
!722 = !DILocation(line: 30, column: 60, scope: !419)
!723 = !DILocation(line: 32, column: 5, scope: !419)
!724 = !DILocation(line: 32, column: 15, scope: !419)
!725 = !DILocation(line: 32, column: 20, scope: !419)
!726 = !DILocation(line: 35, column: 10, scope: !419)
!727 = !DILocation(line: 35, column: 8, scope: !419)
!728 = !DILocation(line: 36, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !419, file: !412, line: 36, column: 9)
!730 = !DILocation(line: 36, column: 12, scope: !729)
!731 = !DILocation(line: 36, column: 9, scope: !419)
!732 = !DILocation(line: 37, column: 9, scope: !729)
!733 = !DILocation(line: 38, column: 43, scope: !419)
!734 = !DILocation(line: 38, column: 70, scope: !419)
!735 = !DILocation(line: 38, column: 74, scope: !419)
!736 = !DILocation(line: 39, column: 34, scope: !419)
!737 = !DILocation(line: 39, column: 45, scope: !419)
!738 = !DILocation(line: 39, column: 55, scope: !419)
!739 = !DILocation(line: 40, column: 34, scope: !419)
!740 = !DILocation(line: 40, column: 43, scope: !419)
!741 = !DILocation(line: 38, column: 14, scope: !419)
!742 = !DILocation(line: 38, column: 12, scope: !419)
!743 = !DILocation(line: 41, column: 5, scope: !419)
!744 = !DILocation(line: 41, column: 10, scope: !745)
!745 = !DILexicalBlockFile(scope: !434, file: !412, discriminator: 1)
!746 = !DILocation(line: 41, column: 20, scope: !434)
!747 = !DILocation(line: 41, column: 50, scope: !434)
!748 = !DILocation(line: 41, column: 63, scope: !749)
!749 = distinct !DILexicalBlock(scope: !434, file: !412, line: 41, column: 60)
!750 = !DILocation(line: 41, column: 80, scope: !749)
!751 = !DILocation(line: 41, column: 60, scope: !749)
!752 = !{!753, !754, i64 0}
!753 = !{!"_object", !754, i64 0, !715, i64 8}
!754 = !{!"long", !710, i64 0}
!755 = !DILocation(line: 41, column: 90, scope: !749)
!756 = !DILocation(line: 41, column: 60, scope: !434)
!757 = !DILocation(line: 41, column: 60, scope: !758)
!758 = !DILexicalBlockFile(scope: !434, file: !412, discriminator: 2)
!759 = !DILocation(line: 41, column: 121, scope: !760)
!760 = !DILexicalBlockFile(scope: !749, file: !412, discriminator: 3)
!761 = !DILocation(line: 41, column: 139, scope: !749)
!762 = !{!753, !715, i64 8}
!763 = !DILocation(line: 41, column: 149, scope: !749)
!764 = !{!765, !715, i64 48}
!765 = !{!"_typeobject", !766, i64 0, !715, i64 24, !754, i64 32, !754, i64 40, !715, i64 48, !715, i64 56, !715, i64 64, !715, i64 72, !715, i64 80, !715, i64 88, !715, i64 96, !715, i64 104, !715, i64 112, !715, i64 120, !715, i64 128, !715, i64 136, !715, i64 144, !715, i64 152, !715, i64 160, !754, i64 168, !715, i64 176, !715, i64 184, !715, i64 192, !715, i64 200, !754, i64 208, !715, i64 216, !715, i64 224, !715, i64 232, !715, i64 240, !715, i64 248, !715, i64 256, !715, i64 264, !715, i64 272, !715, i64 280, !754, i64 288, !715, i64 296, !715, i64 304, !715, i64 312, !715, i64 320, !715, i64 328, !715, i64 336, !715, i64 344, !715, i64 352, !715, i64 360, !715, i64 368, !715, i64 376, !709, i64 384, !715, i64 392}
!766 = !{!"", !753, i64 0, !754, i64 16}
!767 = !DILocation(line: 41, column: 174, scope: !749)
!768 = !DILocation(line: 41, column: 105, scope: !749)
!769 = !DILocation(line: 41, column: 193, scope: !770)
!770 = !DILexicalBlockFile(scope: !419, file: !412, discriminator: 4)
!771 = !DILocation(line: 41, column: 193, scope: !434)
!772 = !DILocation(line: 41, column: 193, scope: !773)
!773 = !DILexicalBlockFile(scope: !434, file: !412, discriminator: 5)
!774 = !DILocation(line: 42, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !419, file: !412, line: 42, column: 9)
!776 = !DILocation(line: 42, column: 16, scope: !775)
!777 = !DILocation(line: 42, column: 9, scope: !419)
!778 = !DILocation(line: 43, column: 9, scope: !775)
!779 = !DILocation(line: 46, column: 12, scope: !419)
!780 = !DILocation(line: 46, column: 5, scope: !419)
!781 = !DILocation(line: 47, column: 1, scope: !419)
!782 = !DILocation(line: 50, column: 26, scope: !435)
!783 = !DILocation(line: 50, column: 33, scope: !435)
!784 = !DILocation(line: 52, column: 5, scope: !435)
!785 = !DILocation(line: 52, column: 15, scope: !435)
!786 = !DILocation(line: 54, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !435, file: !412, line: 54, column: 9)
!788 = !DILocation(line: 54, column: 11, scope: !787)
!789 = !DILocation(line: 54, column: 9, scope: !435)
!790 = !DILocation(line: 55, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !412, line: 54, column: 26)
!792 = !DILocation(line: 56, column: 9, scope: !791)
!793 = !DILocation(line: 60, column: 9, scope: !443)
!794 = !DILocation(line: 60, column: 19, scope: !443)
!795 = !DILocation(line: 61, column: 9, scope: !443)
!796 = !DILocation(line: 61, column: 19, scope: !443)
!797 = !DILocation(line: 64, column: 38, scope: !443)
!798 = !DILocation(line: 64, column: 18, scope: !443)
!799 = !DILocation(line: 64, column: 16, scope: !443)
!800 = !DILocation(line: 65, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !443, file: !412, line: 65, column: 13)
!802 = !DILocation(line: 65, column: 20, scope: !801)
!803 = !DILocation(line: 65, column: 13, scope: !443)
!804 = !DILocation(line: 66, column: 13, scope: !801)
!805 = !DILocation(line: 67, column: 13, scope: !806)
!806 = distinct !DILexicalBlock(scope: !443, file: !412, line: 67, column: 13)
!807 = !DILocation(line: 67, column: 15, scope: !806)
!808 = !DILocation(line: 67, column: 13, scope: !443)
!809 = !DILocation(line: 68, column: 20, scope: !806)
!810 = !DILocation(line: 68, column: 18, scope: !806)
!811 = !DILocation(line: 68, column: 13, scope: !806)
!812 = !DILocation(line: 70, column: 48, scope: !806)
!813 = !DILocation(line: 70, column: 20, scope: !806)
!814 = !DILocation(line: 70, column: 18, scope: !806)
!815 = !DILocation(line: 71, column: 13, scope: !448)
!816 = !DILocation(line: 71, column: 18, scope: !448)
!817 = !DILocation(line: 71, column: 13, scope: !443)
!818 = !DILocation(line: 72, column: 13, scope: !447)
!819 = !DILocation(line: 72, column: 18, scope: !820)
!820 = !DILexicalBlockFile(scope: !446, file: !412, discriminator: 1)
!821 = !DILocation(line: 72, column: 28, scope: !446)
!822 = !DILocation(line: 72, column: 58, scope: !446)
!823 = !DILocation(line: 72, column: 75, scope: !824)
!824 = distinct !DILexicalBlock(scope: !446, file: !412, line: 72, column: 72)
!825 = !DILocation(line: 72, column: 92, scope: !824)
!826 = !DILocation(line: 72, column: 72, scope: !824)
!827 = !DILocation(line: 72, column: 102, scope: !824)
!828 = !DILocation(line: 72, column: 72, scope: !446)
!829 = !DILocation(line: 72, column: 72, scope: !830)
!830 = !DILexicalBlockFile(scope: !446, file: !412, discriminator: 2)
!831 = !DILocation(line: 72, column: 133, scope: !832)
!832 = !DILexicalBlockFile(scope: !824, file: !412, discriminator: 3)
!833 = !DILocation(line: 72, column: 151, scope: !824)
!834 = !DILocation(line: 72, column: 161, scope: !824)
!835 = !DILocation(line: 72, column: 186, scope: !824)
!836 = !DILocation(line: 72, column: 117, scope: !824)
!837 = !DILocation(line: 72, column: 205, scope: !838)
!838 = !DILexicalBlockFile(scope: !447, file: !412, discriminator: 4)
!839 = !DILocation(line: 72, column: 205, scope: !446)
!840 = !DILocation(line: 72, column: 205, scope: !841)
!841 = !DILexicalBlockFile(scope: !446, file: !412, discriminator: 5)
!842 = !DILocation(line: 73, column: 13, scope: !447)
!843 = !DILocation(line: 75, column: 48, scope: !443)
!844 = !DILocation(line: 75, column: 56, scope: !443)
!845 = !DILocation(line: 75, column: 18, scope: !443)
!846 = !DILocation(line: 75, column: 16, scope: !443)
!847 = !DILocation(line: 76, column: 9, scope: !443)
!848 = !DILocation(line: 76, column: 14, scope: !849)
!849 = !DILexicalBlockFile(scope: !450, file: !412, discriminator: 1)
!850 = !DILocation(line: 76, column: 24, scope: !450)
!851 = !DILocation(line: 76, column: 54, scope: !450)
!852 = !DILocation(line: 76, column: 71, scope: !853)
!853 = distinct !DILexicalBlock(scope: !450, file: !412, line: 76, column: 68)
!854 = !DILocation(line: 76, column: 88, scope: !853)
!855 = !DILocation(line: 76, column: 68, scope: !853)
!856 = !DILocation(line: 76, column: 98, scope: !853)
!857 = !DILocation(line: 76, column: 68, scope: !450)
!858 = !DILocation(line: 76, column: 68, scope: !859)
!859 = !DILexicalBlockFile(scope: !450, file: !412, discriminator: 2)
!860 = !DILocation(line: 76, column: 129, scope: !861)
!861 = !DILexicalBlockFile(scope: !853, file: !412, discriminator: 3)
!862 = !DILocation(line: 76, column: 147, scope: !853)
!863 = !DILocation(line: 76, column: 157, scope: !853)
!864 = !DILocation(line: 76, column: 182, scope: !853)
!865 = !DILocation(line: 76, column: 113, scope: !853)
!866 = !DILocation(line: 76, column: 201, scope: !867)
!867 = !DILexicalBlockFile(scope: !443, file: !412, discriminator: 4)
!868 = !DILocation(line: 76, column: 201, scope: !450)
!869 = !DILocation(line: 76, column: 201, scope: !870)
!870 = !DILexicalBlockFile(scope: !450, file: !412, discriminator: 5)
!871 = !DILocation(line: 77, column: 9, scope: !443)
!872 = !DILocation(line: 77, column: 14, scope: !873)
!873 = !DILexicalBlockFile(scope: !452, file: !412, discriminator: 1)
!874 = !DILocation(line: 77, column: 24, scope: !452)
!875 = !DILocation(line: 77, column: 54, scope: !452)
!876 = !DILocation(line: 77, column: 69, scope: !877)
!877 = distinct !DILexicalBlock(scope: !452, file: !412, line: 77, column: 66)
!878 = !DILocation(line: 77, column: 86, scope: !877)
!879 = !DILocation(line: 77, column: 66, scope: !877)
!880 = !DILocation(line: 77, column: 96, scope: !877)
!881 = !DILocation(line: 77, column: 66, scope: !452)
!882 = !DILocation(line: 77, column: 66, scope: !883)
!883 = !DILexicalBlockFile(scope: !452, file: !412, discriminator: 2)
!884 = !DILocation(line: 77, column: 127, scope: !885)
!885 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 3)
!886 = !DILocation(line: 77, column: 145, scope: !877)
!887 = !DILocation(line: 77, column: 155, scope: !877)
!888 = !DILocation(line: 77, column: 180, scope: !877)
!889 = !DILocation(line: 77, column: 111, scope: !877)
!890 = !DILocation(line: 77, column: 199, scope: !867)
!891 = !DILocation(line: 77, column: 199, scope: !452)
!892 = !DILocation(line: 77, column: 199, scope: !893)
!893 = !DILexicalBlockFile(scope: !452, file: !412, discriminator: 5)
!894 = !DILocation(line: 78, column: 13, scope: !456)
!895 = !DILocation(line: 78, column: 20, scope: !456)
!896 = !DILocation(line: 78, column: 34, scope: !456)
!897 = !DILocation(line: 78, column: 55, scope: !898)
!898 = !DILexicalBlockFile(scope: !456, file: !412, discriminator: 1)
!899 = !DILocation(line: 78, column: 65, scope: !456)
!900 = !DILocation(line: 78, column: 76, scope: !456)
!901 = !{!765, !754, i64 168}
!902 = !DILocation(line: 78, column: 85, scope: !456)
!903 = !DILocation(line: 78, column: 102, scope: !456)
!904 = !DILocation(line: 78, column: 108, scope: !456)
!905 = !DILocation(line: 79, column: 31, scope: !456)
!906 = !DILocation(line: 79, column: 41, scope: !456)
!907 = !DILocation(line: 79, column: 52, scope: !456)
!908 = !DILocation(line: 79, column: 61, scope: !456)
!909 = !DILocation(line: 79, column: 78, scope: !456)
!910 = !DILocation(line: 78, column: 13, scope: !443)
!911 = !DILocation(line: 80, column: 13, scope: !455)
!912 = !DILocation(line: 80, column: 18, scope: !913)
!913 = !DILexicalBlockFile(scope: !454, file: !412, discriminator: 1)
!914 = !DILocation(line: 80, column: 28, scope: !454)
!915 = !DILocation(line: 80, column: 58, scope: !454)
!916 = !DILocation(line: 80, column: 75, scope: !917)
!917 = distinct !DILexicalBlock(scope: !454, file: !412, line: 80, column: 72)
!918 = !DILocation(line: 80, column: 92, scope: !917)
!919 = !DILocation(line: 80, column: 72, scope: !917)
!920 = !DILocation(line: 80, column: 102, scope: !917)
!921 = !DILocation(line: 80, column: 72, scope: !454)
!922 = !DILocation(line: 80, column: 72, scope: !923)
!923 = !DILexicalBlockFile(scope: !454, file: !412, discriminator: 2)
!924 = !DILocation(line: 80, column: 133, scope: !925)
!925 = !DILexicalBlockFile(scope: !917, file: !412, discriminator: 3)
!926 = !DILocation(line: 80, column: 151, scope: !917)
!927 = !DILocation(line: 80, column: 161, scope: !917)
!928 = !DILocation(line: 80, column: 186, scope: !917)
!929 = !DILocation(line: 80, column: 117, scope: !917)
!930 = !DILocation(line: 80, column: 205, scope: !931)
!931 = !DILexicalBlockFile(scope: !455, file: !412, discriminator: 4)
!932 = !DILocation(line: 80, column: 205, scope: !454)
!933 = !DILocation(line: 80, column: 205, scope: !934)
!934 = !DILexicalBlockFile(scope: !454, file: !412, discriminator: 5)
!935 = !DILocation(line: 81, column: 20, scope: !455)
!936 = !DILocation(line: 82, column: 29, scope: !455)
!937 = !DILocation(line: 82, column: 13, scope: !455)
!938 = !DILocation(line: 84, column: 9, scope: !455)
!939 = !DILocation(line: 85, column: 5, scope: !435)
!940 = !DILocation(line: 85, column: 5, scope: !941)
!941 = !DILexicalBlockFile(scope: !435, file: !412, discriminator: 1)
!942 = !DILocation(line: 87, column: 9, scope: !459)
!943 = !DILocation(line: 87, column: 11, scope: !459)
!944 = !DILocation(line: 87, column: 15, scope: !459)
!945 = !DILocation(line: 87, column: 18, scope: !946)
!946 = !DILexicalBlockFile(scope: !459, file: !412, discriminator: 1)
!947 = !DILocation(line: 87, column: 25, scope: !459)
!948 = !DILocation(line: 87, column: 39, scope: !459)
!949 = !DILocation(line: 87, column: 59, scope: !950)
!950 = !DILexicalBlockFile(scope: !459, file: !412, discriminator: 2)
!951 = !DILocation(line: 87, column: 69, scope: !459)
!952 = !DILocation(line: 87, column: 80, scope: !459)
!953 = !DILocation(line: 87, column: 89, scope: !459)
!954 = !DILocation(line: 87, column: 106, scope: !459)
!955 = !DILocation(line: 87, column: 9, scope: !435)
!956 = !DILocation(line: 88, column: 9, scope: !458)
!957 = !DILocation(line: 88, column: 15, scope: !458)
!958 = !DILocation(line: 88, column: 54, scope: !458)
!959 = !DILocation(line: 88, column: 36, scope: !458)
!960 = !DILocation(line: 88, column: 64, scope: !458)
!961 = !DILocation(line: 88, column: 34, scope: !458)
!962 = !DILocation(line: 89, column: 9, scope: !458)
!963 = !DILocation(line: 89, column: 20, scope: !458)
!964 = !DILocation(line: 89, column: 57, scope: !458)
!965 = !DILocation(line: 89, column: 42, scope: !458)
!966 = !DILocation(line: 89, column: 67, scope: !458)
!967 = !{!766, !754, i64 16}
!968 = !{!754, !754, i64 0}
!969 = !DILocation(line: 90, column: 13, scope: !464)
!970 = !DILocation(line: 90, column: 17, scope: !464)
!971 = !DILocation(line: 90, column: 13, scope: !458)
!972 = !DILocation(line: 91, column: 13, scope: !463)
!973 = !DILocation(line: 91, column: 18, scope: !974)
!974 = !DILexicalBlockFile(scope: !462, file: !412, discriminator: 1)
!975 = !DILocation(line: 91, column: 28, scope: !462)
!976 = !DILocation(line: 91, column: 58, scope: !462)
!977 = !DILocation(line: 91, column: 75, scope: !978)
!978 = distinct !DILexicalBlock(scope: !462, file: !412, line: 91, column: 72)
!979 = !DILocation(line: 91, column: 92, scope: !978)
!980 = !DILocation(line: 91, column: 72, scope: !978)
!981 = !DILocation(line: 91, column: 102, scope: !978)
!982 = !DILocation(line: 91, column: 72, scope: !462)
!983 = !DILocation(line: 91, column: 72, scope: !984)
!984 = !DILexicalBlockFile(scope: !462, file: !412, discriminator: 2)
!985 = !DILocation(line: 91, column: 133, scope: !986)
!986 = !DILexicalBlockFile(scope: !978, file: !412, discriminator: 3)
!987 = !DILocation(line: 91, column: 151, scope: !978)
!988 = !DILocation(line: 91, column: 161, scope: !978)
!989 = !DILocation(line: 91, column: 186, scope: !978)
!990 = !DILocation(line: 91, column: 117, scope: !978)
!991 = !DILocation(line: 91, column: 205, scope: !992)
!992 = !DILexicalBlockFile(scope: !463, file: !412, discriminator: 4)
!993 = !DILocation(line: 91, column: 205, scope: !462)
!994 = !DILocation(line: 91, column: 205, scope: !995)
!995 = !DILexicalBlockFile(scope: !462, file: !412, discriminator: 5)
!996 = !DILocation(line: 92, column: 20, scope: !463)
!997 = !DILocation(line: 93, column: 29, scope: !463)
!998 = !DILocation(line: 93, column: 13, scope: !463)
!999 = !DILocation(line: 95, column: 9, scope: !463)
!1000 = !DILocation(line: 96, column: 20, scope: !469)
!1001 = !DILocation(line: 96, column: 23, scope: !469)
!1002 = !DILocation(line: 96, column: 18, scope: !469)
!1003 = !{!710, !710, i64 0}
!1004 = !DILocation(line: 96, column: 27, scope: !469)
!1005 = !DILocation(line: 96, column: 18, scope: !464)
!1006 = !DILocation(line: 97, column: 17, scope: !467)
!1007 = !DILocation(line: 97, column: 25, scope: !467)
!1008 = !DILocation(line: 97, column: 35, scope: !467)
!1009 = !DILocation(line: 97, column: 17, scope: !468)
!1010 = !DILocation(line: 98, column: 42, scope: !467)
!1011 = !DILocation(line: 98, column: 45, scope: !467)
!1012 = !DILocation(line: 98, column: 17, scope: !467)
!1013 = !DILocation(line: 100, column: 17, scope: !466)
!1014 = !DILocation(line: 100, column: 27, scope: !466)
!1015 = !DILocation(line: 101, column: 47, scope: !466)
!1016 = !DILocation(line: 101, column: 50, scope: !466)
!1017 = !DILocation(line: 101, column: 53, scope: !466)
!1018 = !DILocation(line: 101, column: 21, scope: !466)
!1019 = !DILocation(line: 101, column: 19, scope: !466)
!1020 = !DILocation(line: 102, column: 17, scope: !466)
!1021 = !DILocation(line: 102, column: 22, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !471, file: !412, discriminator: 1)
!1023 = !DILocation(line: 102, column: 32, scope: !471)
!1024 = !DILocation(line: 102, column: 62, scope: !471)
!1025 = !DILocation(line: 102, column: 79, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !471, file: !412, line: 102, column: 76)
!1027 = !DILocation(line: 102, column: 96, scope: !1026)
!1028 = !DILocation(line: 102, column: 76, scope: !1026)
!1029 = !DILocation(line: 102, column: 106, scope: !1026)
!1030 = !DILocation(line: 102, column: 76, scope: !471)
!1031 = !DILocation(line: 102, column: 76, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !471, file: !412, discriminator: 2)
!1033 = !DILocation(line: 102, column: 137, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1026, file: !412, discriminator: 3)
!1035 = !DILocation(line: 102, column: 155, scope: !1026)
!1036 = !DILocation(line: 102, column: 165, scope: !1026)
!1037 = !DILocation(line: 102, column: 190, scope: !1026)
!1038 = !DILocation(line: 102, column: 121, scope: !1026)
!1039 = !DILocation(line: 102, column: 209, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !466, file: !412, discriminator: 4)
!1041 = !DILocation(line: 102, column: 209, scope: !471)
!1042 = !DILocation(line: 102, column: 209, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !471, file: !412, discriminator: 5)
!1044 = !DILocation(line: 103, column: 26, scope: !466)
!1045 = !DILocation(line: 103, column: 24, scope: !466)
!1046 = !DILocation(line: 104, column: 13, scope: !467)
!1047 = !DILocation(line: 105, column: 9, scope: !468)
!1048 = !DILocation(line: 106, column: 5, scope: !459)
!1049 = !DILocation(line: 106, column: 5, scope: !458)
!1050 = !DILocation(line: 107, column: 9, scope: !474)
!1051 = !DILocation(line: 107, column: 11, scope: !474)
!1052 = !DILocation(line: 107, column: 15, scope: !474)
!1053 = !DILocation(line: 107, column: 18, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !474, file: !412, discriminator: 1)
!1055 = !DILocation(line: 107, column: 25, scope: !474)
!1056 = !DILocation(line: 107, column: 39, scope: !474)
!1057 = !DILocation(line: 107, column: 59, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !474, file: !412, discriminator: 2)
!1059 = !DILocation(line: 107, column: 69, scope: !474)
!1060 = !DILocation(line: 107, column: 80, scope: !474)
!1061 = !DILocation(line: 107, column: 89, scope: !474)
!1062 = !DILocation(line: 107, column: 106, scope: !474)
!1063 = !DILocation(line: 107, column: 9, scope: !435)
!1064 = !DILocation(line: 108, column: 9, scope: !473)
!1065 = !DILocation(line: 108, column: 20, scope: !473)
!1066 = !DILocation(line: 108, column: 74, scope: !473)
!1067 = !DILocation(line: 108, column: 56, scope: !473)
!1068 = !DILocation(line: 108, column: 84, scope: !473)
!1069 = !{!1070, !754, i64 16}
!1070 = !{!"", !753, i64 0, !754, i64 16, !754, i64 24, !1071, i64 32, !715, i64 40}
!1071 = !{!"", !709, i64 0, !709, i64 0, !709, i64 0, !709, i64 0, !709, i64 0, !709, i64 1}
!1072 = !DILocation(line: 109, column: 13, scope: !478)
!1073 = !DILocation(line: 109, column: 17, scope: !478)
!1074 = !DILocation(line: 109, column: 13, scope: !473)
!1075 = !DILocation(line: 110, column: 13, scope: !477)
!1076 = !DILocation(line: 110, column: 18, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !476, file: !412, discriminator: 1)
!1078 = !DILocation(line: 110, column: 28, scope: !476)
!1079 = !DILocation(line: 110, column: 58, scope: !476)
!1080 = !DILocation(line: 110, column: 75, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !476, file: !412, line: 110, column: 72)
!1082 = !DILocation(line: 110, column: 92, scope: !1081)
!1083 = !DILocation(line: 110, column: 72, scope: !1081)
!1084 = !DILocation(line: 110, column: 102, scope: !1081)
!1085 = !DILocation(line: 110, column: 72, scope: !476)
!1086 = !DILocation(line: 110, column: 72, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !476, file: !412, discriminator: 2)
!1088 = !DILocation(line: 110, column: 133, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1081, file: !412, discriminator: 3)
!1090 = !DILocation(line: 110, column: 151, scope: !1081)
!1091 = !DILocation(line: 110, column: 161, scope: !1081)
!1092 = !DILocation(line: 110, column: 186, scope: !1081)
!1093 = !DILocation(line: 110, column: 117, scope: !1081)
!1094 = !DILocation(line: 110, column: 205, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !477, file: !412, discriminator: 4)
!1096 = !DILocation(line: 110, column: 205, scope: !476)
!1097 = !DILocation(line: 110, column: 205, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !476, file: !412, discriminator: 5)
!1099 = !DILocation(line: 111, column: 20, scope: !477)
!1100 = !DILocation(line: 112, column: 29, scope: !477)
!1101 = !DILocation(line: 112, column: 13, scope: !477)
!1102 = !DILocation(line: 114, column: 9, scope: !477)
!1103 = !DILocation(line: 115, column: 107, scope: !481)
!1104 = !DILocation(line: 115, column: 88, scope: !481)
!1105 = !DILocation(line: 115, column: 118, scope: !481)
!1106 = !DILocation(line: 115, column: 124, scope: !481)
!1107 = !DILocation(line: 115, column: 130, scope: !481)
!1108 = !DILocation(line: 115, column: 58, scope: !481)
!1109 = !DILocation(line: 115, column: 475, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 1)
!1111 = !DILocation(line: 115, column: 478, scope: !481)
!1112 = !DILocation(line: 115, column: 210, scope: !481)
!1113 = !DILocation(line: 115, column: 192, scope: !481)
!1114 = !DILocation(line: 115, column: 221, scope: !481)
!1115 = !DILocation(line: 115, column: 227, scope: !481)
!1116 = !DILocation(line: 115, column: 190, scope: !481)
!1117 = !DILocation(line: 115, column: 286, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 3)
!1119 = !DILocation(line: 115, column: 269, scope: !481)
!1120 = !DILocation(line: 115, column: 296, scope: !481)
!1121 = !DILocation(line: 115, column: 302, scope: !481)
!1122 = !DILocation(line: 115, column: 239, scope: !481)
!1123 = !DILocation(line: 115, column: 338, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 5)
!1125 = !DILocation(line: 115, column: 320, scope: !481)
!1126 = !DILocation(line: 115, column: 347, scope: !481)
!1127 = !DILocation(line: 115, column: 312, scope: !481)
!1128 = !DILocation(line: 115, column: 391, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 6)
!1130 = !DILocation(line: 115, column: 364, scope: !481)
!1131 = !DILocation(line: 115, column: 400, scope: !481)
!1132 = !DILocation(line: 115, column: 356, scope: !481)
!1133 = !DILocation(line: 115, column: 190, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !412, discriminator: 8)
!1135 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 7)
!1136 = !DILocation(line: 115, column: 448, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 4)
!1138 = !DILocation(line: 115, column: 427, scope: !481)
!1139 = !DILocation(line: 115, column: 459, scope: !481)
!1140 = !DILocation(line: 115, column: 464, scope: !481)
!1141 = !DILocation(line: 115, column: 156, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !412, discriminator: 10)
!1143 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 9)
!1144 = !DILocation(line: 115, column: 535, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 2)
!1146 = !DILocation(line: 115, column: 516, scope: !481)
!1147 = !DILocation(line: 115, column: 546, scope: !481)
!1148 = !DILocation(line: 115, column: 552, scope: !481)
!1149 = !DILocation(line: 115, column: 558, scope: !481)
!1150 = !DILocation(line: 115, column: 486, scope: !481)
!1151 = !DILocation(line: 115, column: 903, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 12)
!1153 = !DILocation(line: 115, column: 906, scope: !481)
!1154 = !DILocation(line: 115, column: 638, scope: !481)
!1155 = !DILocation(line: 115, column: 620, scope: !481)
!1156 = !DILocation(line: 115, column: 649, scope: !481)
!1157 = !DILocation(line: 115, column: 655, scope: !481)
!1158 = !DILocation(line: 115, column: 618, scope: !481)
!1159 = !DILocation(line: 115, column: 714, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 14)
!1161 = !DILocation(line: 115, column: 697, scope: !481)
!1162 = !DILocation(line: 115, column: 724, scope: !481)
!1163 = !DILocation(line: 115, column: 730, scope: !481)
!1164 = !DILocation(line: 115, column: 667, scope: !481)
!1165 = !DILocation(line: 115, column: 766, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 16)
!1167 = !DILocation(line: 115, column: 748, scope: !481)
!1168 = !DILocation(line: 115, column: 775, scope: !481)
!1169 = !DILocation(line: 115, column: 740, scope: !481)
!1170 = !DILocation(line: 115, column: 819, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 17)
!1172 = !DILocation(line: 115, column: 792, scope: !481)
!1173 = !DILocation(line: 115, column: 828, scope: !481)
!1174 = !DILocation(line: 115, column: 784, scope: !481)
!1175 = !DILocation(line: 115, column: 618, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !412, discriminator: 19)
!1177 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 18)
!1178 = !DILocation(line: 115, column: 876, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 15)
!1180 = !DILocation(line: 115, column: 855, scope: !481)
!1181 = !DILocation(line: 115, column: 887, scope: !481)
!1182 = !DILocation(line: 115, column: 892, scope: !481)
!1183 = !DILocation(line: 115, column: 585, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !412, discriminator: 21)
!1185 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 20)
!1186 = !DILocation(line: 115, column: 584, scope: !481)
!1187 = !{!1188, !1188, i64 0}
!1188 = !{!"short", !710, i64 0}
!1189 = !DILocation(line: 115, column: 1232, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 13)
!1191 = !DILocation(line: 115, column: 1235, scope: !481)
!1192 = !DILocation(line: 115, column: 967, scope: !481)
!1193 = !DILocation(line: 115, column: 949, scope: !481)
!1194 = !DILocation(line: 115, column: 978, scope: !481)
!1195 = !DILocation(line: 115, column: 984, scope: !481)
!1196 = !DILocation(line: 115, column: 947, scope: !481)
!1197 = !DILocation(line: 115, column: 1043, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 23)
!1199 = !DILocation(line: 115, column: 1026, scope: !481)
!1200 = !DILocation(line: 115, column: 1053, scope: !481)
!1201 = !DILocation(line: 115, column: 1059, scope: !481)
!1202 = !DILocation(line: 115, column: 996, scope: !481)
!1203 = !DILocation(line: 115, column: 1095, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 25)
!1205 = !DILocation(line: 115, column: 1077, scope: !481)
!1206 = !DILocation(line: 115, column: 1104, scope: !481)
!1207 = !DILocation(line: 115, column: 1069, scope: !481)
!1208 = !DILocation(line: 115, column: 1148, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 26)
!1210 = !DILocation(line: 115, column: 1121, scope: !481)
!1211 = !DILocation(line: 115, column: 1157, scope: !481)
!1212 = !DILocation(line: 115, column: 1113, scope: !481)
!1213 = !DILocation(line: 115, column: 947, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !412, discriminator: 28)
!1215 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 27)
!1216 = !DILocation(line: 115, column: 1205, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 24)
!1218 = !DILocation(line: 115, column: 1184, scope: !481)
!1219 = !DILocation(line: 115, column: 1216, scope: !481)
!1220 = !DILocation(line: 115, column: 1221, scope: !481)
!1221 = !DILocation(line: 115, column: 914, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !412, discriminator: 30)
!1223 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 29)
!1224 = !DILocation(line: 115, column: 913, scope: !481)
!1225 = !DILocation(line: 115, column: 58, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !412, discriminator: 31)
!1227 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 22)
!1228 = !DILocation(line: 115, column: 1245, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !412, discriminator: 32)
!1230 = !DILexicalBlockFile(scope: !481, file: !412, discriminator: 11)
!1231 = !DILocation(line: 115, column: 18, scope: !478)
!1232 = !DILocation(line: 116, column: 13, scope: !480)
!1233 = !DILocation(line: 116, column: 23, scope: !480)
!1234 = !DILocation(line: 117, column: 37, scope: !480)
!1235 = !DILocation(line: 117, column: 48, scope: !480)
!1236 = !DILocation(line: 117, column: 51, scope: !480)
!1237 = !DILocation(line: 117, column: 17, scope: !480)
!1238 = !DILocation(line: 117, column: 15, scope: !480)
!1239 = !DILocation(line: 118, column: 13, scope: !480)
!1240 = !DILocation(line: 118, column: 18, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !483, file: !412, discriminator: 1)
!1242 = !DILocation(line: 118, column: 28, scope: !483)
!1243 = !DILocation(line: 118, column: 58, scope: !483)
!1244 = !DILocation(line: 118, column: 75, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !483, file: !412, line: 118, column: 72)
!1246 = !DILocation(line: 118, column: 92, scope: !1245)
!1247 = !DILocation(line: 118, column: 72, scope: !1245)
!1248 = !DILocation(line: 118, column: 102, scope: !1245)
!1249 = !DILocation(line: 118, column: 72, scope: !483)
!1250 = !DILocation(line: 118, column: 72, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !483, file: !412, discriminator: 2)
!1252 = !DILocation(line: 118, column: 133, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1245, file: !412, discriminator: 3)
!1254 = !DILocation(line: 118, column: 151, scope: !1245)
!1255 = !DILocation(line: 118, column: 161, scope: !1245)
!1256 = !DILocation(line: 118, column: 186, scope: !1245)
!1257 = !DILocation(line: 118, column: 117, scope: !1245)
!1258 = !DILocation(line: 118, column: 205, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !480, file: !412, discriminator: 4)
!1260 = !DILocation(line: 118, column: 205, scope: !483)
!1261 = !DILocation(line: 118, column: 205, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !483, file: !412, discriminator: 5)
!1263 = !DILocation(line: 119, column: 22, scope: !480)
!1264 = !DILocation(line: 119, column: 20, scope: !480)
!1265 = !DILocation(line: 120, column: 9, scope: !481)
!1266 = !DILocation(line: 120, column: 9, scope: !480)
!1267 = !DILocation(line: 121, column: 5, scope: !474)
!1268 = !DILocation(line: 121, column: 5, scope: !473)
!1269 = !DILocation(line: 122, column: 12, scope: !435)
!1270 = !DILocation(line: 122, column: 5, scope: !435)
!1271 = !DILocation(line: 123, column: 1, scope: !435)
!1272 = !DILocation(line: 128, column: 30, scope: !484)
!1273 = !DILocation(line: 128, column: 43, scope: !484)
!1274 = !DILocation(line: 128, column: 50, scope: !484)
!1275 = !DILocation(line: 130, column: 5, scope: !484)
!1276 = !DILocation(line: 130, column: 15, scope: !484)
!1277 = !DILocation(line: 130, column: 24, scope: !484)
!1278 = !DILocation(line: 130, column: 32, scope: !484)
!1279 = !DILocation(line: 130, column: 39, scope: !484)
!1280 = !DILocation(line: 133, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !484, file: !412, line: 133, column: 9)
!1282 = !DILocation(line: 133, column: 11, scope: !1281)
!1283 = !DILocation(line: 133, column: 9, scope: !484)
!1284 = !DILocation(line: 134, column: 25, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !412, line: 133, column: 26)
!1286 = !DILocation(line: 134, column: 9, scope: !1285)
!1287 = !DILocation(line: 135, column: 9, scope: !1285)
!1288 = !DILocation(line: 137, column: 34, scope: !484)
!1289 = !DILocation(line: 137, column: 14, scope: !484)
!1290 = !DILocation(line: 137, column: 12, scope: !484)
!1291 = !DILocation(line: 138, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !484, file: !412, line: 138, column: 9)
!1293 = !DILocation(line: 138, column: 16, scope: !1292)
!1294 = !DILocation(line: 138, column: 9, scope: !484)
!1295 = !DILocation(line: 139, column: 9, scope: !1292)
!1296 = !DILocation(line: 140, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !484, file: !412, line: 140, column: 9)
!1298 = !DILocation(line: 140, column: 15, scope: !1297)
!1299 = !DILocation(line: 140, column: 9, scope: !484)
!1300 = !DILocation(line: 141, column: 30, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !412, line: 140, column: 20)
!1302 = !DILocation(line: 141, column: 17, scope: !1301)
!1303 = !DILocation(line: 141, column: 15, scope: !1301)
!1304 = !DILocation(line: 142, column: 5, scope: !1301)
!1305 = !DILocation(line: 144, column: 31, scope: !1297)
!1306 = !DILocation(line: 144, column: 17, scope: !1297)
!1307 = !DILocation(line: 144, column: 15, scope: !1297)
!1308 = !DILocation(line: 145, column: 9, scope: !498)
!1309 = !DILocation(line: 145, column: 15, scope: !498)
!1310 = !DILocation(line: 145, column: 9, scope: !484)
!1311 = !DILocation(line: 146, column: 9, scope: !497)
!1312 = !DILocation(line: 146, column: 14, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !496, file: !412, discriminator: 1)
!1314 = !DILocation(line: 146, column: 24, scope: !496)
!1315 = !DILocation(line: 146, column: 54, scope: !496)
!1316 = !DILocation(line: 146, column: 71, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !496, file: !412, line: 146, column: 68)
!1318 = !DILocation(line: 146, column: 88, scope: !1317)
!1319 = !DILocation(line: 146, column: 68, scope: !1317)
!1320 = !DILocation(line: 146, column: 98, scope: !1317)
!1321 = !DILocation(line: 146, column: 68, scope: !496)
!1322 = !DILocation(line: 146, column: 68, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !496, file: !412, discriminator: 2)
!1324 = !DILocation(line: 146, column: 129, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1317, file: !412, discriminator: 3)
!1326 = !DILocation(line: 146, column: 147, scope: !1317)
!1327 = !DILocation(line: 146, column: 157, scope: !1317)
!1328 = !DILocation(line: 146, column: 182, scope: !1317)
!1329 = !DILocation(line: 146, column: 113, scope: !1317)
!1330 = !DILocation(line: 146, column: 201, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !497, file: !412, discriminator: 4)
!1332 = !DILocation(line: 146, column: 201, scope: !496)
!1333 = !DILocation(line: 146, column: 201, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !496, file: !412, discriminator: 5)
!1335 = !DILocation(line: 147, column: 9, scope: !497)
!1336 = !DILocation(line: 149, column: 28, scope: !484)
!1337 = !DILocation(line: 149, column: 12, scope: !484)
!1338 = !DILocation(line: 149, column: 10, scope: !484)
!1339 = !DILocation(line: 150, column: 9, scope: !502)
!1340 = !DILocation(line: 150, column: 14, scope: !502)
!1341 = !DILocation(line: 150, column: 9, scope: !484)
!1342 = !DILocation(line: 151, column: 9, scope: !501)
!1343 = !DILocation(line: 151, column: 14, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !500, file: !412, discriminator: 1)
!1345 = !DILocation(line: 151, column: 24, scope: !500)
!1346 = !DILocation(line: 151, column: 54, scope: !500)
!1347 = !DILocation(line: 151, column: 70, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !500, file: !412, line: 151, column: 67)
!1349 = !DILocation(line: 151, column: 87, scope: !1348)
!1350 = !DILocation(line: 151, column: 67, scope: !1348)
!1351 = !DILocation(line: 151, column: 97, scope: !1348)
!1352 = !DILocation(line: 151, column: 67, scope: !500)
!1353 = !DILocation(line: 151, column: 67, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !500, file: !412, discriminator: 2)
!1355 = !DILocation(line: 151, column: 128, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1348, file: !412, discriminator: 3)
!1357 = !DILocation(line: 151, column: 146, scope: !1348)
!1358 = !DILocation(line: 151, column: 156, scope: !1348)
!1359 = !DILocation(line: 151, column: 181, scope: !1348)
!1360 = !DILocation(line: 151, column: 112, scope: !1348)
!1361 = !DILocation(line: 151, column: 200, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !501, file: !412, discriminator: 4)
!1363 = !DILocation(line: 151, column: 200, scope: !500)
!1364 = !DILocation(line: 151, column: 200, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !500, file: !412, discriminator: 5)
!1366 = !DILocation(line: 152, column: 9, scope: !501)
!1367 = !DILocation(line: 152, column: 14, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !504, file: !412, discriminator: 1)
!1369 = !DILocation(line: 152, column: 24, scope: !504)
!1370 = !DILocation(line: 152, column: 54, scope: !504)
!1371 = !DILocation(line: 152, column: 71, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !504, file: !412, line: 152, column: 68)
!1373 = !DILocation(line: 152, column: 88, scope: !1372)
!1374 = !DILocation(line: 152, column: 68, scope: !1372)
!1375 = !DILocation(line: 152, column: 98, scope: !1372)
!1376 = !DILocation(line: 152, column: 68, scope: !504)
!1377 = !DILocation(line: 152, column: 68, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !504, file: !412, discriminator: 2)
!1379 = !DILocation(line: 152, column: 129, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1372, file: !412, discriminator: 3)
!1381 = !DILocation(line: 152, column: 147, scope: !1372)
!1382 = !DILocation(line: 152, column: 157, scope: !1372)
!1383 = !DILocation(line: 152, column: 182, scope: !1372)
!1384 = !DILocation(line: 152, column: 113, scope: !1372)
!1385 = !DILocation(line: 152, column: 201, scope: !1362)
!1386 = !DILocation(line: 152, column: 201, scope: !504)
!1387 = !DILocation(line: 152, column: 201, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !504, file: !412, discriminator: 5)
!1389 = !DILocation(line: 153, column: 9, scope: !501)
!1390 = !DILocation(line: 155, column: 44, scope: !484)
!1391 = !DILocation(line: 155, column: 52, scope: !484)
!1392 = !DILocation(line: 155, column: 14, scope: !484)
!1393 = !DILocation(line: 155, column: 12, scope: !484)
!1394 = !DILocation(line: 156, column: 5, scope: !484)
!1395 = !DILocation(line: 156, column: 10, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !506, file: !412, discriminator: 1)
!1397 = !DILocation(line: 156, column: 20, scope: !506)
!1398 = !DILocation(line: 156, column: 50, scope: !506)
!1399 = !DILocation(line: 156, column: 65, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !506, file: !412, line: 156, column: 62)
!1401 = !DILocation(line: 156, column: 82, scope: !1400)
!1402 = !DILocation(line: 156, column: 62, scope: !1400)
!1403 = !DILocation(line: 156, column: 92, scope: !1400)
!1404 = !DILocation(line: 156, column: 62, scope: !506)
!1405 = !DILocation(line: 156, column: 62, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !506, file: !412, discriminator: 2)
!1407 = !DILocation(line: 156, column: 123, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1400, file: !412, discriminator: 3)
!1409 = !DILocation(line: 156, column: 141, scope: !1400)
!1410 = !DILocation(line: 156, column: 151, scope: !1400)
!1411 = !DILocation(line: 156, column: 176, scope: !1400)
!1412 = !DILocation(line: 156, column: 107, scope: !1400)
!1413 = !DILocation(line: 156, column: 195, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !484, file: !412, discriminator: 4)
!1415 = !DILocation(line: 156, column: 195, scope: !506)
!1416 = !DILocation(line: 156, column: 195, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !506, file: !412, discriminator: 5)
!1418 = !DILocation(line: 157, column: 5, scope: !484)
!1419 = !DILocation(line: 157, column: 10, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !508, file: !412, discriminator: 1)
!1421 = !DILocation(line: 157, column: 20, scope: !508)
!1422 = !DILocation(line: 157, column: 50, scope: !508)
!1423 = !DILocation(line: 157, column: 66, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !508, file: !412, line: 157, column: 63)
!1425 = !DILocation(line: 157, column: 83, scope: !1424)
!1426 = !DILocation(line: 157, column: 63, scope: !1424)
!1427 = !DILocation(line: 157, column: 93, scope: !1424)
!1428 = !DILocation(line: 157, column: 63, scope: !508)
!1429 = !DILocation(line: 157, column: 63, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !508, file: !412, discriminator: 2)
!1431 = !DILocation(line: 157, column: 124, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1424, file: !412, discriminator: 3)
!1433 = !DILocation(line: 157, column: 142, scope: !1424)
!1434 = !DILocation(line: 157, column: 152, scope: !1424)
!1435 = !DILocation(line: 157, column: 177, scope: !1424)
!1436 = !DILocation(line: 157, column: 108, scope: !1424)
!1437 = !DILocation(line: 157, column: 196, scope: !1414)
!1438 = !DILocation(line: 157, column: 196, scope: !508)
!1439 = !DILocation(line: 157, column: 196, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !508, file: !412, discriminator: 5)
!1441 = !DILocation(line: 158, column: 5, scope: !484)
!1442 = !DILocation(line: 158, column: 10, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !510, file: !412, discriminator: 1)
!1444 = !DILocation(line: 158, column: 20, scope: !510)
!1445 = !DILocation(line: 158, column: 50, scope: !510)
!1446 = !DILocation(line: 158, column: 67, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !510, file: !412, line: 158, column: 64)
!1448 = !DILocation(line: 158, column: 84, scope: !1447)
!1449 = !DILocation(line: 158, column: 64, scope: !1447)
!1450 = !DILocation(line: 158, column: 94, scope: !1447)
!1451 = !DILocation(line: 158, column: 64, scope: !510)
!1452 = !DILocation(line: 158, column: 64, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !510, file: !412, discriminator: 2)
!1454 = !DILocation(line: 158, column: 125, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1447, file: !412, discriminator: 3)
!1456 = !DILocation(line: 158, column: 143, scope: !1447)
!1457 = !DILocation(line: 158, column: 153, scope: !1447)
!1458 = !DILocation(line: 158, column: 178, scope: !1447)
!1459 = !DILocation(line: 158, column: 109, scope: !1447)
!1460 = !DILocation(line: 158, column: 197, scope: !1414)
!1461 = !DILocation(line: 158, column: 197, scope: !510)
!1462 = !DILocation(line: 158, column: 197, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !510, file: !412, discriminator: 5)
!1464 = !DILocation(line: 159, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !484, file: !412, line: 159, column: 9)
!1466 = !DILocation(line: 159, column: 16, scope: !1465)
!1467 = !DILocation(line: 159, column: 9, scope: !484)
!1468 = !DILocation(line: 160, column: 9, scope: !1465)
!1469 = !DILocation(line: 161, column: 5, scope: !484)
!1470 = !DILocation(line: 161, column: 10, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !512, file: !412, discriminator: 1)
!1472 = !DILocation(line: 161, column: 20, scope: !512)
!1473 = !DILocation(line: 161, column: 50, scope: !512)
!1474 = !DILocation(line: 161, column: 67, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !512, file: !412, line: 161, column: 64)
!1476 = !DILocation(line: 161, column: 84, scope: !1475)
!1477 = !DILocation(line: 161, column: 64, scope: !1475)
!1478 = !DILocation(line: 161, column: 94, scope: !1475)
!1479 = !DILocation(line: 161, column: 64, scope: !512)
!1480 = !DILocation(line: 161, column: 64, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !512, file: !412, discriminator: 2)
!1482 = !DILocation(line: 161, column: 125, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1475, file: !412, discriminator: 3)
!1484 = !DILocation(line: 161, column: 143, scope: !1475)
!1485 = !DILocation(line: 161, column: 153, scope: !1475)
!1486 = !DILocation(line: 161, column: 178, scope: !1475)
!1487 = !DILocation(line: 161, column: 109, scope: !1475)
!1488 = !DILocation(line: 161, column: 197, scope: !1414)
!1489 = !DILocation(line: 161, column: 197, scope: !512)
!1490 = !DILocation(line: 161, column: 197, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !512, file: !412, discriminator: 5)
!1492 = !DILocation(line: 162, column: 5, scope: !484)
!1493 = !DILocation(line: 163, column: 1, scope: !484)
!1494 = !DILocation(line: 166, column: 32, scope: !513)
!1495 = !DILocation(line: 166, column: 45, scope: !513)
!1496 = !DILocation(line: 168, column: 9, scope: !522)
!1497 = !DILocation(line: 168, column: 11, scope: !522)
!1498 = !DILocation(line: 168, column: 9, scope: !513)
!1499 = !DILocation(line: 170, column: 14, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !412, line: 170, column: 13)
!1501 = distinct !DILexicalBlock(scope: !522, file: !412, line: 168, column: 26)
!1502 = !DILocation(line: 170, column: 13, scope: !1501)
!1503 = !DILocation(line: 171, column: 29, scope: !1500)
!1504 = !DILocation(line: 171, column: 13, scope: !1500)
!1505 = !DILocation(line: 173, column: 9, scope: !1501)
!1506 = !DILocation(line: 175, column: 15, scope: !521)
!1507 = !DILocation(line: 175, column: 14, scope: !522)
!1508 = !DILocation(line: 176, column: 9, scope: !520)
!1509 = !DILocation(line: 176, column: 19, scope: !520)
!1510 = !DILocation(line: 176, column: 44, scope: !520)
!1511 = !DILocation(line: 176, column: 23, scope: !520)
!1512 = !DILocation(line: 177, column: 9, scope: !520)
!1513 = !DILocation(line: 177, column: 13, scope: !520)
!1514 = !DILocation(line: 178, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !520, file: !412, line: 178, column: 13)
!1516 = !DILocation(line: 178, column: 15, scope: !1515)
!1517 = !DILocation(line: 178, column: 13, scope: !520)
!1518 = !DILocation(line: 179, column: 13, scope: !1515)
!1519 = !DILocation(line: 180, column: 34, scope: !520)
!1520 = !DILocation(line: 180, column: 37, scope: !520)
!1521 = !DILocation(line: 180, column: 15, scope: !520)
!1522 = !DILocation(line: 180, column: 13, scope: !520)
!1523 = !DILocation(line: 181, column: 9, scope: !520)
!1524 = !DILocation(line: 181, column: 14, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !525, file: !412, discriminator: 1)
!1526 = !DILocation(line: 181, column: 24, scope: !525)
!1527 = !DILocation(line: 181, column: 54, scope: !525)
!1528 = !DILocation(line: 181, column: 66, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !525, file: !412, line: 181, column: 63)
!1530 = !DILocation(line: 181, column: 83, scope: !1529)
!1531 = !DILocation(line: 181, column: 63, scope: !1529)
!1532 = !DILocation(line: 181, column: 93, scope: !1529)
!1533 = !DILocation(line: 181, column: 63, scope: !525)
!1534 = !DILocation(line: 181, column: 63, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !525, file: !412, discriminator: 2)
!1536 = !DILocation(line: 181, column: 124, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1529, file: !412, discriminator: 3)
!1538 = !DILocation(line: 181, column: 142, scope: !1529)
!1539 = !DILocation(line: 181, column: 152, scope: !1529)
!1540 = !DILocation(line: 181, column: 177, scope: !1529)
!1541 = !DILocation(line: 181, column: 108, scope: !1529)
!1542 = !DILocation(line: 181, column: 196, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !520, file: !412, discriminator: 4)
!1544 = !DILocation(line: 181, column: 196, scope: !525)
!1545 = !DILocation(line: 181, column: 196, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !525, file: !412, discriminator: 5)
!1547 = !DILocation(line: 182, column: 16, scope: !520)
!1548 = !DILocation(line: 182, column: 9, scope: !520)
!1549 = !DILocation(line: 183, column: 5, scope: !521)
!1550 = !DILocation(line: 185, column: 9, scope: !521)
!1551 = !DILocation(line: 186, column: 1, scope: !513)
!1552 = !DILocation(line: 196, column: 37, scope: !526)
!1553 = !DILocation(line: 198, column: 5, scope: !526)
!1554 = !DILocation(line: 198, column: 9, scope: !526)
!1555 = !DILocation(line: 199, column: 5, scope: !526)
!1556 = !DILocation(line: 199, column: 15, scope: !526)
!1557 = !DILocation(line: 202, column: 26, scope: !534)
!1558 = !DILocation(line: 202, column: 31, scope: !534)
!1559 = !DILocation(line: 202, column: 42, scope: !534)
!1560 = !DILocation(line: 202, column: 51, scope: !534)
!1561 = !DILocation(line: 202, column: 68, scope: !534)
!1562 = !DILocation(line: 202, column: 9, scope: !526)
!1563 = !DILocation(line: 203, column: 28, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !534, file: !412, line: 202, column: 75)
!1565 = !DILocation(line: 203, column: 14, scope: !1564)
!1566 = !DILocation(line: 203, column: 12, scope: !1564)
!1567 = !DILocation(line: 204, column: 5, scope: !1564)
!1568 = !DILocation(line: 205, column: 42, scope: !533)
!1569 = !DILocation(line: 205, column: 22, scope: !533)
!1570 = !DILocation(line: 205, column: 20, scope: !533)
!1571 = !DILocation(line: 205, column: 60, scope: !533)
!1572 = !DILocation(line: 205, column: 14, scope: !534)
!1573 = !DILocation(line: 207, column: 9, scope: !532)
!1574 = !DILocation(line: 207, column: 19, scope: !532)
!1575 = !DILocation(line: 207, column: 55, scope: !532)
!1576 = !DILocation(line: 207, column: 25, scope: !532)
!1577 = !DILocation(line: 208, column: 9, scope: !532)
!1578 = !DILocation(line: 208, column: 14, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !536, file: !412, discriminator: 1)
!1580 = !DILocation(line: 208, column: 24, scope: !536)
!1581 = !DILocation(line: 208, column: 54, scope: !536)
!1582 = !DILocation(line: 208, column: 69, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !536, file: !412, line: 208, column: 66)
!1584 = !DILocation(line: 208, column: 86, scope: !1583)
!1585 = !DILocation(line: 208, column: 66, scope: !1583)
!1586 = !DILocation(line: 208, column: 96, scope: !1583)
!1587 = !DILocation(line: 208, column: 66, scope: !536)
!1588 = !DILocation(line: 208, column: 66, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !536, file: !412, discriminator: 2)
!1590 = !DILocation(line: 208, column: 127, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1583, file: !412, discriminator: 3)
!1592 = !DILocation(line: 208, column: 145, scope: !1583)
!1593 = !DILocation(line: 208, column: 155, scope: !1583)
!1594 = !DILocation(line: 208, column: 180, scope: !1583)
!1595 = !DILocation(line: 208, column: 111, scope: !1583)
!1596 = !DILocation(line: 208, column: 199, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !532, file: !412, discriminator: 4)
!1598 = !DILocation(line: 208, column: 199, scope: !536)
!1599 = !DILocation(line: 208, column: 199, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !536, file: !412, discriminator: 5)
!1601 = !DILocation(line: 209, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !532, file: !412, line: 209, column: 13)
!1603 = !DILocation(line: 209, column: 17, scope: !1602)
!1604 = !DILocation(line: 209, column: 13, scope: !532)
!1605 = !DILocation(line: 210, column: 13, scope: !1602)
!1606 = !DILocation(line: 212, column: 30, scope: !540)
!1607 = !DILocation(line: 212, column: 37, scope: !540)
!1608 = !DILocation(line: 212, column: 48, scope: !540)
!1609 = !DILocation(line: 212, column: 57, scope: !540)
!1610 = !DILocation(line: 212, column: 74, scope: !540)
!1611 = !DILocation(line: 212, column: 13, scope: !532)
!1612 = !DILocation(line: 213, column: 32, scope: !539)
!1613 = !DILocation(line: 213, column: 18, scope: !539)
!1614 = !DILocation(line: 213, column: 16, scope: !539)
!1615 = !DILocation(line: 214, column: 13, scope: !539)
!1616 = !DILocation(line: 214, column: 18, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !538, file: !412, discriminator: 1)
!1618 = !DILocation(line: 214, column: 28, scope: !538)
!1619 = !DILocation(line: 214, column: 58, scope: !538)
!1620 = !DILocation(line: 214, column: 72, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !538, file: !412, line: 214, column: 69)
!1622 = !DILocation(line: 214, column: 89, scope: !1621)
!1623 = !DILocation(line: 214, column: 69, scope: !1621)
!1624 = !DILocation(line: 214, column: 99, scope: !1621)
!1625 = !DILocation(line: 214, column: 69, scope: !538)
!1626 = !DILocation(line: 214, column: 69, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !538, file: !412, discriminator: 2)
!1628 = !DILocation(line: 214, column: 130, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1621, file: !412, discriminator: 3)
!1630 = !DILocation(line: 214, column: 148, scope: !1621)
!1631 = !DILocation(line: 214, column: 158, scope: !1621)
!1632 = !DILocation(line: 214, column: 183, scope: !1621)
!1633 = !DILocation(line: 214, column: 114, scope: !1621)
!1634 = !DILocation(line: 214, column: 202, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !539, file: !412, discriminator: 4)
!1636 = !DILocation(line: 214, column: 202, scope: !538)
!1637 = !DILocation(line: 214, column: 202, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !538, file: !412, discriminator: 5)
!1639 = !DILocation(line: 215, column: 9, scope: !539)
!1640 = !DILocation(line: 217, column: 29, scope: !543)
!1641 = !DILocation(line: 217, column: 13, scope: !543)
!1642 = !DILocation(line: 219, column: 13, scope: !543)
!1643 = !DILocation(line: 219, column: 18, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !542, file: !412, discriminator: 1)
!1645 = !DILocation(line: 219, column: 28, scope: !542)
!1646 = !DILocation(line: 219, column: 58, scope: !542)
!1647 = !DILocation(line: 219, column: 72, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !542, file: !412, line: 219, column: 69)
!1649 = !DILocation(line: 219, column: 89, scope: !1648)
!1650 = !DILocation(line: 219, column: 69, scope: !1648)
!1651 = !DILocation(line: 219, column: 99, scope: !1648)
!1652 = !DILocation(line: 219, column: 69, scope: !542)
!1653 = !DILocation(line: 219, column: 69, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !542, file: !412, discriminator: 2)
!1655 = !DILocation(line: 219, column: 130, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1648, file: !412, discriminator: 3)
!1657 = !DILocation(line: 219, column: 148, scope: !1648)
!1658 = !DILocation(line: 219, column: 158, scope: !1648)
!1659 = !DILocation(line: 219, column: 183, scope: !1648)
!1660 = !DILocation(line: 219, column: 114, scope: !1648)
!1661 = !DILocation(line: 219, column: 202, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !543, file: !412, discriminator: 4)
!1663 = !DILocation(line: 219, column: 202, scope: !542)
!1664 = !DILocation(line: 219, column: 202, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !542, file: !412, discriminator: 5)
!1666 = !DILocation(line: 220, column: 13, scope: !543)
!1667 = !DILocation(line: 222, column: 5, scope: !533)
!1668 = !DILocation(line: 222, column: 5, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !533, file: !412, discriminator: 1)
!1670 = !DILocation(line: 222, column: 5, scope: !532)
!1671 = !DILocation(line: 224, column: 25, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !533, file: !412, line: 223, column: 10)
!1673 = !DILocation(line: 224, column: 9, scope: !1672)
!1674 = !DILocation(line: 226, column: 9, scope: !1672)
!1675 = !DILocation(line: 229, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !526, file: !412, line: 229, column: 9)
!1677 = !DILocation(line: 229, column: 12, scope: !1676)
!1678 = !DILocation(line: 229, column: 18, scope: !1676)
!1679 = !DILocation(line: 229, column: 21, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1676, file: !412, discriminator: 1)
!1681 = !DILocation(line: 229, column: 9, scope: !526)
!1682 = !DILocation(line: 230, column: 9, scope: !1676)
!1683 = !DILocation(line: 231, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !526, file: !412, line: 231, column: 9)
!1685 = !DILocation(line: 231, column: 12, scope: !1684)
!1686 = !DILocation(line: 231, column: 9, scope: !526)
!1687 = !DILocation(line: 232, column: 22, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !412, line: 231, column: 17)
!1689 = !DILocation(line: 234, column: 22, scope: !1688)
!1690 = !DILocation(line: 232, column: 9, scope: !1688)
!1691 = !DILocation(line: 235, column: 9, scope: !1688)
!1692 = !DILocation(line: 237, column: 12, scope: !526)
!1693 = !DILocation(line: 237, column: 5, scope: !526)
!1694 = !DILocation(line: 238, column: 1, scope: !526)
!1695 = !DILocation(line: 255, column: 32, scope: !544)
!1696 = !DILocation(line: 255, column: 41, scope: !544)
!1697 = !DILocation(line: 255, column: 50, scope: !544)
!1698 = !DILocation(line: 255, column: 68, scope: !544)
!1699 = !DILocation(line: 257, column: 5, scope: !544)
!1700 = !DILocation(line: 257, column: 11, scope: !544)
!1701 = !DILocation(line: 257, column: 15, scope: !544)
!1702 = !DILocation(line: 258, column: 5, scope: !544)
!1703 = !DILocation(line: 258, column: 9, scope: !544)
!1704 = !DILocation(line: 259, column: 5, scope: !544)
!1705 = !DILocation(line: 259, column: 9, scope: !544)
!1706 = !DILocation(line: 260, column: 5, scope: !544)
!1707 = !DILocation(line: 260, column: 9, scope: !544)
!1708 = !DILocation(line: 262, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !544, file: !412, line: 262, column: 9)
!1710 = !DILocation(line: 262, column: 9, scope: !544)
!1711 = !DILocation(line: 263, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !412, line: 262, column: 15)
!1713 = !DILocation(line: 263, column: 32, scope: !1712)
!1714 = !DILocation(line: 264, column: 9, scope: !1712)
!1715 = !DILocation(line: 266, column: 15, scope: !544)
!1716 = !DILocation(line: 266, column: 5, scope: !544)
!1717 = !DILocation(line: 267, column: 7, scope: !544)
!1718 = !DILocation(line: 268, column: 5, scope: !544)
!1719 = !DILocation(line: 268, column: 12, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1721, file: !412, discriminator: 4)
!1721 = !DILexicalBlockFile(scope: !544, file: !412, discriminator: 1)
!1722 = !DILocation(line: 268, column: 16, scope: !544)
!1723 = !DILocation(line: 268, column: 20, scope: !544)
!1724 = !DILocation(line: 268, column: 42, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !544, file: !412, discriminator: 2)
!1726 = !DILocation(line: 268, column: 28, scope: !544)
!1727 = !DILocation(line: 268, column: 26, scope: !544)
!1728 = !DILocation(line: 268, column: 51, scope: !544)
!1729 = !DILocation(line: 268, column: 5, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !544, file: !412, discriminator: 3)
!1731 = !DILocation(line: 269, column: 13, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !412, line: 269, column: 13)
!1733 = distinct !DILexicalBlock(scope: !544, file: !412, line: 268, column: 61)
!1734 = !DILocation(line: 269, column: 13, scope: !1733)
!1735 = !DILocation(line: 270, column: 24, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !412, line: 269, column: 26)
!1737 = !DILocation(line: 271, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !412, line: 271, column: 17)
!1739 = !DILocation(line: 271, column: 19, scope: !1738)
!1740 = !DILocation(line: 271, column: 17, scope: !1736)
!1741 = !DILocation(line: 275, column: 30, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !412, line: 271, column: 28)
!1743 = !DILocation(line: 276, column: 35, scope: !1742)
!1744 = !DILocation(line: 276, column: 21, scope: !1742)
!1745 = !DILocation(line: 276, column: 19, scope: !1742)
!1746 = !DILocation(line: 277, column: 21, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !412, line: 277, column: 21)
!1748 = !DILocation(line: 277, column: 23, scope: !1747)
!1749 = !DILocation(line: 277, column: 21, scope: !1742)
!1750 = !DILocation(line: 277, column: 32, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1747, file: !412, discriminator: 1)
!1752 = !DILocation(line: 278, column: 13, scope: !1742)
!1753 = !DILocation(line: 284, column: 30, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1738, file: !412, line: 278, column: 20)
!1755 = !DILocation(line: 286, column: 9, scope: !1736)
!1756 = !DILocation(line: 287, column: 13, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1733, file: !412, line: 287, column: 13)
!1758 = !DILocation(line: 287, column: 15, scope: !1757)
!1759 = !DILocation(line: 287, column: 13, scope: !1733)
!1760 = !DILocation(line: 292, column: 24, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !412, line: 287, column: 24)
!1762 = !DILocation(line: 293, column: 15, scope: !1761)
!1763 = !DILocation(line: 294, column: 9, scope: !1761)
!1764 = !DILocation(line: 294, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1757, file: !412, line: 294, column: 21)
!1766 = !DILocation(line: 294, column: 23, scope: !1765)
!1767 = !DILocation(line: 294, column: 21, scope: !1757)
!1768 = !DILocation(line: 295, column: 26, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !412, line: 294, column: 32)
!1770 = !DILocation(line: 296, column: 9, scope: !1769)
!1771 = !DILocation(line: 297, column: 16, scope: !1733)
!1772 = !DILocation(line: 297, column: 11, scope: !1733)
!1773 = !DILocation(line: 297, column: 14, scope: !1733)
!1774 = !DILocation(line: 298, column: 13, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1733, file: !412, line: 298, column: 13)
!1776 = !DILocation(line: 298, column: 15, scope: !1775)
!1777 = !DILocation(line: 298, column: 13, scope: !1733)
!1778 = !DILocation(line: 298, column: 24, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1775, file: !412, discriminator: 1)
!1780 = !DILocation(line: 302, column: 17, scope: !544)
!1781 = !DILocation(line: 302, column: 5, scope: !544)
!1782 = !DILocation(line: 303, column: 6, scope: !544)
!1783 = !DILocation(line: 303, column: 8, scope: !544)
!1784 = !DILocation(line: 304, column: 10, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !544, file: !412, line: 304, column: 10)
!1786 = !DILocation(line: 304, column: 10, scope: !544)
!1787 = !DILocation(line: 312, column: 27, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !412, line: 304, column: 23)
!1789 = !DILocation(line: 312, column: 13, scope: !1788)
!1790 = !DILocation(line: 312, column: 11, scope: !1788)
!1791 = !DILocation(line: 313, column: 14, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !412, line: 313, column: 14)
!1793 = !DILocation(line: 313, column: 16, scope: !1792)
!1794 = !DILocation(line: 313, column: 14, scope: !1788)
!1795 = !DILocation(line: 314, column: 20, scope: !1792)
!1796 = !DILocation(line: 314, column: 23, scope: !1792)
!1797 = !DILocation(line: 314, column: 13, scope: !1792)
!1798 = !DILocation(line: 315, column: 5, scope: !1788)
!1799 = !DILocation(line: 316, column: 9, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !544, file: !412, line: 316, column: 9)
!1801 = !DILocation(line: 316, column: 14, scope: !1800)
!1802 = !DILocation(line: 316, column: 11, scope: !1800)
!1803 = !DILocation(line: 316, column: 9, scope: !544)
!1804 = !DILocation(line: 317, column: 9, scope: !1800)
!1805 = !DILocation(line: 318, column: 12, scope: !544)
!1806 = !DILocation(line: 318, column: 5, scope: !544)
!1807 = !DILocation(line: 319, column: 1, scope: !544)
!1808 = !DILocation(line: 63, column: 22, scope: !562)
!1809 = !DILocation(line: 65, column: 31, scope: !562)
!1810 = !DILocation(line: 65, column: 38, scope: !562)
!1811 = !{!1812, !715, i64 8}
!1812 = !{!"_IO_FILE", !709, i64 0, !715, i64 8, !715, i64 16, !715, i64 24, !715, i64 32, !715, i64 40, !715, i64 48, !715, i64 56, !715, i64 64, !715, i64 72, !715, i64 80, !715, i64 88, !715, i64 96, !715, i64 104, !709, i64 112, !709, i64 116, !754, i64 120, !1188, i64 128, !710, i64 130, !710, i64 131, !715, i64 136, !754, i64 144, !715, i64 152, !715, i64 160, !715, i64 168, !715, i64 176, !754, i64 184, !709, i64 192, !710, i64 196}
!1813 = !DILocation(line: 65, column: 55, scope: !562)
!1814 = !DILocation(line: 65, column: 62, scope: !562)
!1815 = !{!1812, !715, i64 16}
!1816 = !DILocation(line: 65, column: 51, scope: !562)
!1817 = !DILocation(line: 65, column: 29, scope: !562)
!1818 = !DILocation(line: 65, column: 11, scope: !562)
!1819 = !DILocation(line: 65, column: 91, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !562, file: !563, discriminator: 1)
!1821 = !DILocation(line: 65, column: 82, scope: !562)
!1822 = !DILocation(line: 65, column: 119, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !562, file: !563, discriminator: 2)
!1824 = !DILocation(line: 65, column: 126, scope: !562)
!1825 = !DILocation(line: 65, column: 138, scope: !562)
!1826 = !DILocation(line: 65, column: 99, scope: !562)
!1827 = !DILocation(line: 65, column: 3, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !563, discriminator: 4)
!1829 = !DILexicalBlockFile(scope: !562, file: !563, discriminator: 3)
!1830 = !DILocation(line: 355, column: 26, scope: !556)
!1831 = !DILocation(line: 357, column: 5, scope: !556)
!1832 = !DILocation(line: 357, column: 26, scope: !556)
!1833 = !DILocation(line: 359, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !556, file: !412, line: 359, column: 9)
!1835 = !DILocation(line: 359, column: 22, scope: !1834)
!1836 = !DILocation(line: 359, column: 15, scope: !1834)
!1837 = !DILocation(line: 359, column: 12, scope: !1834)
!1838 = !DILocation(line: 359, column: 30, scope: !1834)
!1839 = !DILocation(line: 359, column: 33, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1834, file: !412, discriminator: 1)
!1841 = !DILocation(line: 359, column: 46, scope: !1834)
!1842 = !DILocation(line: 359, column: 39, scope: !1834)
!1843 = !DILocation(line: 359, column: 36, scope: !1834)
!1844 = !DILocation(line: 359, column: 9, scope: !556)
!1845 = !DILocation(line: 361, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1834, file: !412, line: 359, column: 55)
!1847 = !DILocation(line: 364, column: 38, scope: !556)
!1848 = !DILocation(line: 364, column: 14, scope: !556)
!1849 = !DILocation(line: 364, column: 10, scope: !556)
!1850 = !DILocation(line: 366, column: 9, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !556, file: !412, line: 366, column: 9)
!1852 = !DILocation(line: 366, column: 14, scope: !1851)
!1853 = !DILocation(line: 366, column: 9, scope: !556)
!1854 = !DILocation(line: 367, column: 20, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !412, line: 366, column: 29)
!1856 = !DILocation(line: 367, column: 9, scope: !1855)
!1857 = !DILocation(line: 367, column: 15, scope: !1855)
!1858 = !DILocation(line: 367, column: 18, scope: !1855)
!1859 = !{!1860, !709, i64 16}
!1860 = !{!"", !753, i64 0, !709, i64 16}
!1861 = !DILocation(line: 368, column: 5, scope: !1855)
!1862 = !DILocation(line: 369, column: 23, scope: !556)
!1863 = !DILocation(line: 369, column: 12, scope: !556)
!1864 = !DILocation(line: 369, column: 5, scope: !556)
!1865 = !DILocation(line: 370, column: 1, scope: !556)
!1866 = !DILocation(line: 419, column: 38, scope: !568)
!1867 = !DILocation(line: 422, column: 33, scope: !568)
!1868 = !DILocation(line: 422, column: 39, scope: !568)
!1869 = !DILocation(line: 422, column: 43, scope: !568)
!1870 = !DILocation(line: 421, column: 12, scope: !568)
!1871 = !DILocation(line: 421, column: 5, scope: !568)
!1872 = !DILocation(line: 347, column: 27, scope: !667)
!1873 = !DILocation(line: 347, column: 43, scope: !667)
!1874 = !DILocation(line: 347, column: 59, scope: !667)
!1875 = !DILocation(line: 349, column: 21, scope: !667)
!1876 = !DILocation(line: 349, column: 5, scope: !667)
!1877 = !DILocation(line: 351, column: 5, scope: !667)
!1878 = !DILocation(line: 332, column: 30, scope: !672)
!1879 = !DILocation(line: 332, column: 46, scope: !672)
!1880 = !DILocation(line: 332, column: 62, scope: !672)
!1881 = !DILocation(line: 334, column: 5, scope: !672)
!1882 = !DILocation(line: 334, column: 26, scope: !672)
!1883 = !DILocation(line: 338, column: 36, scope: !672)
!1884 = !DILocation(line: 338, column: 42, scope: !672)
!1885 = !{!765, !715, i64 304}
!1886 = !DILocation(line: 338, column: 51, scope: !672)
!1887 = !DILocation(line: 338, column: 12, scope: !672)
!1888 = !DILocation(line: 338, column: 10, scope: !672)
!1889 = !DILocation(line: 339, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !672, file: !412, line: 339, column: 9)
!1891 = !DILocation(line: 339, column: 14, scope: !1890)
!1892 = !DILocation(line: 339, column: 9, scope: !672)
!1893 = !DILocation(line: 340, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !412, line: 339, column: 29)
!1895 = !DILocation(line: 340, column: 15, scope: !1894)
!1896 = !DILocation(line: 340, column: 18, scope: !1894)
!1897 = !DILocation(line: 341, column: 5, scope: !1894)
!1898 = !DILocation(line: 343, column: 25, scope: !672)
!1899 = !DILocation(line: 343, column: 12, scope: !672)
!1900 = !DILocation(line: 344, column: 1, scope: !672)
!1901 = !DILocation(line: 343, column: 5, scope: !672)
!1902 = !DILocation(line: 426, column: 38, scope: !573)
!1903 = !DILocation(line: 428, column: 58, scope: !573)
!1904 = !DILocation(line: 428, column: 5, scope: !573)
!1905 = !DILocation(line: 413, column: 40, scope: !576)
!1906 = !DILocation(line: 415, column: 35, scope: !576)
!1907 = !DILocation(line: 415, column: 41, scope: !576)
!1908 = !DILocation(line: 415, column: 28, scope: !576)
!1909 = !DILocation(line: 415, column: 12, scope: !576)
!1910 = !DILocation(line: 415, column: 5, scope: !576)
!1911 = !DILocation(line: 432, column: 40, scope: !579)
!1912 = !DILocation(line: 434, column: 5, scope: !579)
!1913 = !DILocation(line: 434, column: 10, scope: !579)
!1914 = !DILocation(line: 435, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !579, file: !412, line: 435, column: 9)
!1916 = !DILocation(line: 435, column: 15, scope: !1915)
!1917 = !DILocation(line: 435, column: 18, scope: !1915)
!1918 = !DILocation(line: 435, column: 9, scope: !579)
!1919 = !DILocation(line: 436, column: 76, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !412, line: 435, column: 23)
!1921 = !DILocation(line: 436, column: 9, scope: !1920)
!1922 = !DILocation(line: 439, column: 7, scope: !584)
!1923 = !DILocation(line: 439, column: 22, scope: !584)
!1924 = !DILocation(line: 439, column: 37, scope: !584)
!1925 = !DILocation(line: 439, column: 35, scope: !584)
!1926 = !DILocation(line: 440, column: 18, scope: !584)
!1927 = !DILocation(line: 440, column: 24, scope: !584)
!1928 = !DILocation(line: 440, column: 11, scope: !584)
!1929 = !DILocation(line: 440, column: 9, scope: !584)
!1930 = !DILocation(line: 441, column: 26, scope: !584)
!1931 = !DILocation(line: 441, column: 5, scope: !584)
!1932 = !DILocation(line: 441, column: 34, scope: !579)
!1933 = !DILocation(line: 443, column: 28, scope: !579)
!1934 = !DILocation(line: 443, column: 12, scope: !579)
!1935 = !DILocation(line: 443, column: 5, scope: !579)
!1936 = !DILocation(line: 444, column: 1, scope: !579)
!1937 = !DILocation(line: 373, column: 39, scope: !643)
!1938 = !DILocation(line: 373, column: 55, scope: !643)
!1939 = !DILocation(line: 375, column: 5, scope: !643)
!1940 = !DILocation(line: 375, column: 11, scope: !643)
!1941 = !DILocation(line: 376, column: 5, scope: !643)
!1942 = !DILocation(line: 376, column: 16, scope: !643)
!1943 = !DILocation(line: 378, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !643, file: !412, line: 378, column: 9)
!1945 = !DILocation(line: 378, column: 15, scope: !1944)
!1946 = !DILocation(line: 378, column: 18, scope: !1944)
!1947 = !DILocation(line: 378, column: 9, scope: !643)
!1948 = !DILocation(line: 383, column: 62, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !412, line: 378, column: 23)
!1950 = !DILocation(line: 383, column: 9, scope: !1949)
!1951 = !DILocation(line: 386, column: 34, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !643, file: !412, line: 386, column: 9)
!1953 = !DILocation(line: 386, column: 10, scope: !1952)
!1954 = !DILocation(line: 386, column: 9, scope: !643)
!1955 = !DILocation(line: 387, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !412, line: 386, column: 50)
!1957 = !DILocation(line: 389, column: 16, scope: !643)
!1958 = !DILocation(line: 389, column: 9, scope: !643)
!1959 = !DILocation(line: 389, column: 7, scope: !643)
!1960 = !DILocation(line: 391, column: 7, scope: !652)
!1961 = !DILocation(line: 391, column: 22, scope: !652)
!1962 = !DILocation(line: 391, column: 37, scope: !652)
!1963 = !DILocation(line: 391, column: 35, scope: !652)
!1964 = !DILocation(line: 392, column: 7, scope: !652)
!1965 = !DILocation(line: 392, column: 28, scope: !652)
!1966 = !DILocation(line: 398, column: 15, scope: !652)
!1967 = !DILocation(line: 398, column: 21, scope: !652)
!1968 = !DILocation(line: 398, column: 25, scope: !652)
!1969 = !DILocation(line: 398, column: 28, scope: !652)
!1970 = !DILocation(line: 398, column: 9, scope: !652)
!1971 = !DILocation(line: 398, column: 7, scope: !652)
!1972 = !DILocation(line: 400, column: 26, scope: !652)
!1973 = !DILocation(line: 400, column: 5, scope: !652)
!1974 = !DILocation(line: 400, column: 34, scope: !643)
!1975 = !DILocation(line: 402, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !643, file: !412, line: 402, column: 9)
!1977 = !DILocation(line: 402, column: 11, scope: !1976)
!1978 = !DILocation(line: 402, column: 9, scope: !643)
!1979 = !DILocation(line: 403, column: 15, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !412, line: 403, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !412, line: 402, column: 16)
!1982 = !DILocation(line: 403, column: 14, scope: !1980)
!1983 = !DILocation(line: 403, column: 36, scope: !1980)
!1984 = !DILocation(line: 403, column: 13, scope: !1981)
!1985 = !DILocation(line: 404, column: 66, scope: !1980)
!1986 = !DILocation(line: 404, column: 13, scope: !1980)
!1987 = !DILocation(line: 405, column: 28, scope: !1981)
!1988 = !DILocation(line: 405, column: 9, scope: !1981)
!1989 = !DILocation(line: 406, column: 9, scope: !1981)
!1990 = !DILocation(line: 409, column: 31, scope: !643)
!1991 = !DILocation(line: 409, column: 12, scope: !643)
!1992 = !DILocation(line: 409, column: 5, scope: !643)
!1993 = !DILocation(line: 410, column: 1, scope: !643)
!1994 = !DILocation(line: 456, column: 33, scope: !653)
!1995 = !DILocation(line: 456, column: 45, scope: !653)
!1996 = !DILocation(line: 458, column: 65, scope: !653)
!1997 = !DILocation(line: 459, column: 5, scope: !653)
!1998 = !DILocation(line: 469, column: 35, scope: !659)
!1999 = !DILocation(line: 469, column: 47, scope: !659)
!2000 = !DILocation(line: 471, column: 58, scope: !659)
!2001 = !DILocation(line: 471, column: 5, scope: !659)
!2002 = !DILocation(line: 463, column: 31, scope: !663)
!2003 = !DILocation(line: 463, column: 43, scope: !663)
!2004 = !DILocation(line: 465, column: 12, scope: !663)
!2005 = !DILocation(line: 465, column: 5, scope: !663)
