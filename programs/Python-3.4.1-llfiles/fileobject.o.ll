; ModuleID = 'fileobject.o.bc'
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
define %struct._object* @PyFile_FromFd(i32 %fd, i8* nocapture readnone %name, i8* %mode, i32 %buffering, i8* %encoding, i8* %errors, i8* %newline, i32 %closefd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !422, metadata !707), !dbg !708
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !423, metadata !707), !dbg !709
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !424, metadata !707), !dbg !710
  tail call void @llvm.dbg.value(metadata i32 %buffering, i64 0, metadata !425, metadata !707), !dbg !711
  tail call void @llvm.dbg.value(metadata i8* %encoding, i64 0, metadata !426, metadata !707), !dbg !712
  tail call void @llvm.dbg.value(metadata i8* %errors, i64 0, metadata !427, metadata !707), !dbg !713
  tail call void @llvm.dbg.value(metadata i8* %newline, i64 0, metadata !428, metadata !707), !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %closefd, i64 0, metadata !429, metadata !707), !dbg !715
  %call = tail call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #1, !dbg !716
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !430, metadata !707), !dbg !717
  %cmp = icmp eq %struct._object* %call, null, !dbg !718
  br i1 %cmp, label %cleanup, label %if.end, !dbg !720

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %call, %struct._Py_Identifier* nonnull @PyFile_FromFd.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %fd, i8* %mode, i32 %buffering, i8* %encoding, i8* %errors, i8* %newline, i32 %closefd) #1, !dbg !721
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !431, metadata !707), !dbg !722
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !432, metadata !707), !dbg !723
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !725
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !725, !tbaa !727
  %dec = add i64 %0, -1, !dbg !725
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !725, !tbaa !727
  %cmp2 = icmp eq i64 %dec, 0, !dbg !725
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !733

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !734
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !734, !tbaa !736
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !734
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !734, !tbaa !737
  tail call void %2(%struct._object* %call) #1, !dbg !734
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !741
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyImport_ImportModule(i8*) #2

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_GetLine(%struct._object* %f, i32 %n) #0 {
entry:
  %result = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %f, i64 0, metadata !438, metadata !707), !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !439, metadata !707), !dbg !743
  %0 = bitcast %struct._object** %result to i8*, !dbg !744
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !744
  %cmp = icmp eq %struct._object* %f, null, !dbg !745
  br i1 %cmp, label %if.then, label %if.end, !dbg !747

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 55) #1, !dbg !748
  br label %cleanup.251, !dbg !750

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %f, %struct._Py_Identifier* nonnull @PyFile_GetLine.PyId_readline) #1, !dbg !751
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !441, metadata !707), !dbg !752
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !753
  br i1 %cmp1, label %cleanup.251, label %if.end.3, !dbg !755

if.end.3:                                         ; preds = %if.end
  %cmp4 = icmp slt i32 %n, 1, !dbg !756
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !758

if.then.5:                                        ; preds = %if.end.3
  %call6 = tail call %struct._object* @PyTuple_New(i64 0) #1, !dbg !759
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !443, metadata !707), !dbg !760
  br label %if.end.8, !dbg !761

if.else:                                          ; preds = %if.end.3
  %call7 = tail call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %n) #1, !dbg !762
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !443, metadata !707), !dbg !760
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %args.0 = phi %struct._object* [ %call6, %if.then.5 ], [ %call7, %if.else ]
  %cmp9 = icmp eq %struct._object* %args.0, null, !dbg !763
  br i1 %cmp9, label %do.body, label %if.end.15, !dbg !764

do.body:                                          ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !444, metadata !707), !dbg !765
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !767
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !767, !tbaa !727
  %dec = add i64 %1, -1, !dbg !767
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !767, !tbaa !727
  %cmp11 = icmp eq i64 %dec, 0, !dbg !767
  br i1 %cmp11, label %if.else.13, label %cleanup.251, !dbg !769

if.else.13:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !770
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !770, !tbaa !736
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !770
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !770, !tbaa !737
  tail call void %3(%struct._object* %call) #1, !dbg !770
  br label %cleanup.251

if.end.15:                                        ; preds = %if.end.8
  %call16 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call, %struct._object* %args.0, %struct._object* null) #1, !dbg !772
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* %call16, %struct._object** %result, align 8, !dbg !774, !tbaa !775
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !448, metadata !707), !dbg !776
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !778
  %4 = load i64, i64* %ob_refcnt19, align 8, !dbg !778, !tbaa !727
  %dec20 = add i64 %4, -1, !dbg !778
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !778, !tbaa !727
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !778
  br i1 %cmp21, label %if.else.23, label %if.end.26, !dbg !780

if.else.23:                                       ; preds = %if.end.15
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !781
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !781, !tbaa !736
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !781
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !781, !tbaa !737
  tail call void %6(%struct._object* %call) #1, !dbg !781
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.15, %if.else.23
  tail call void @llvm.dbg.value(metadata %struct._object* %args.0, i64 0, metadata !450, metadata !707), !dbg !783
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 0, !dbg !785
  %7 = load i64, i64* %ob_refcnt31, align 8, !dbg !785, !tbaa !727
  %dec32 = add i64 %7, -1, !dbg !785
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !785, !tbaa !727
  %cmp33 = icmp eq i64 %dec32, 0, !dbg !785
  br i1 %cmp33, label %if.else.35, label %if.end.38, !dbg !787

if.else.35:                                       ; preds = %if.end.26
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %args.0, i64 0, i32 1, !dbg !788
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !788, !tbaa !736
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !788
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !788, !tbaa !737
  tail call void %9(%struct._object* %args.0) #1, !dbg !788
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.26, %if.else.35
  tail call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %cmp41 = icmp eq %struct._object* %call16, null, !dbg !790
  br i1 %cmp41, label %cleanup.cont, label %land.lhs.true, !dbg !791

land.lhs.true:                                    ; preds = %if.end.38
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !792
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !794, !tbaa !736
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !792
  %11 = load i64, i64* %tp_flags, align 8, !dbg !792, !tbaa !797
  %12 = and i64 %11, 402653184, !dbg !798
  %13 = icmp eq i64 %12, 0, !dbg !798
  br i1 %13, label %do.body.50, label %cleanup.cont, !dbg !798

do.body.50:                                       ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !452, metadata !707), !dbg !799
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !801
  %14 = load i64, i64* %ob_refcnt52, align 8, !dbg !801, !tbaa !727
  %dec53 = add i64 %14, -1, !dbg !801
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !801, !tbaa !727
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !801
  br i1 %cmp54, label %if.else.56, label %if.end.59, !dbg !802

if.else.56:                                       ; preds = %do.body.50
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !794
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !794, !tbaa !737
  tail call void %15(%struct._object* %call16) #1, !dbg !794
  br label %if.end.59

if.end.59:                                        ; preds = %do.body.50, %if.else.56
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* null, %struct._object** %result, align 8, !dbg !803, !tbaa !775
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !804, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !805
  br label %cleanup.cont, !dbg !806

cleanup.cont:                                     ; preds = %land.lhs.true, %if.end.38, %if.end.59
  %cmp64 = icmp slt i32 %n, 0, !dbg !807
  tail call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !808
  %cmp66 = icmp ne %struct._object* %17, null, !dbg !810
  %or.cond = and i1 %cmp64, %cmp66, !dbg !811
  br i1 %or.cond, label %land.lhs.true.67, label %if.end.116, !dbg !811

land.lhs.true.67:                                 ; preds = %cleanup.cont
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !812
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !814, !tbaa !736
  %tp_flags69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 19, !dbg !812
  %19 = load i64, i64* %tp_flags69, align 8, !dbg !812, !tbaa !797
  %and70 = and i64 %19, 134217728, !dbg !812
  %cmp71 = icmp eq i64 %and70, 0, !dbg !812
  br i1 %cmp71, label %if.end.116, label %if.then.72, !dbg !817

if.then.72:                                       ; preds = %land.lhs.true.67
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %17, i64 2, !dbg !818
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !818
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !456, metadata !707), !dbg !819
  %20 = getelementptr inbounds %struct._object, %struct._object* %17, i64 1, i32 0, !dbg !820
  %21 = load i64, i64* %20, align 8, !dbg !820, !tbaa !821
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !459, metadata !707), !dbg !822
  %cmp73 = icmp eq i64 %21, 0, !dbg !823
  br i1 %cmp73, label %do.body.75, label %if.else.87, !dbg !824

do.body.75:                                       ; preds = %if.then.72
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !460, metadata !707), !dbg !825
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !827
  %22 = load i64, i64* %ob_refcnt77, align 8, !dbg !827, !tbaa !727
  %dec78 = add i64 %22, -1, !dbg !827
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !827, !tbaa !727
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !827
  br i1 %cmp79, label %if.else.81, label %if.end.116.thread, !dbg !828

if.else.81:                                       ; preds = %do.body.75
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !814
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !814, !tbaa !737
  tail call void %23(%struct._object* %17) #1, !dbg !814
  br label %if.end.116.thread

if.end.116.thread:                                ; preds = %if.else.81, %do.body.75
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* null, %struct._object** %result, align 8, !dbg !829, !tbaa !775
  %24 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8, !dbg !830, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !831
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  br label %cleanup.251, !dbg !832

if.else.87:                                       ; preds = %if.then.72
  %sub = add i64 %21, -1, !dbg !833
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 %sub, !dbg !834
  %25 = load i8, i8* %arrayidx, align 1, !dbg !834, !tbaa !835
  %cmp88 = icmp eq i8 %25, 10, !dbg !836
  br i1 %cmp88, label %if.then.90, label %if.end.116, !dbg !837

if.then.90:                                       ; preds = %if.else.87
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !838
  %26 = load i64, i64* %ob_refcnt91, align 8, !dbg !838, !tbaa !727
  %cmp92 = icmp eq i64 %26, 1, !dbg !839
  br i1 %cmp92, label %if.then.94, label %if.else.97, !dbg !840

if.then.94:                                       ; preds = %if.then.90
  tail call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %call96 = call i32 @_PyBytes_Resize(%struct._object** nonnull %result, i64 %sub) #1, !dbg !841
  %.pre = load %struct._object*, %struct._object** %result, align 8
  br label %if.end.116, !dbg !841

if.else.97:                                       ; preds = %if.then.90
  %call99 = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay, i64 %sub) #1, !dbg !842
  tail call void @llvm.dbg.value(metadata %struct._object* %call99, i64 0, metadata !464, metadata !707), !dbg !843
  tail call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !469, metadata !707), !dbg !808
  %27 = load i64, i64* %ob_refcnt91, align 8, !dbg !844, !tbaa !727
  %dec103 = add i64 %27, -1, !dbg !844
  store i64 %dec103, i64* %ob_refcnt91, align 8, !dbg !844, !tbaa !727
  %cmp104 = icmp eq i64 %dec103, 0, !dbg !844
  br i1 %cmp104, label %if.else.107, label %if.end.110, !dbg !846

if.else.107:                                      ; preds = %if.else.97
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !847, !tbaa !736
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !847
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8, !dbg !847, !tbaa !737
  tail call void %29(%struct._object* %17) #1, !dbg !847
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.97, %if.else.107
  tail call void @llvm.dbg.value(metadata %struct._object* %call99, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* %call99, %struct._object** %result, align 8, !dbg !849, !tbaa !775
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.94, %if.end.110, %if.else.87, %land.lhs.true.67, %cleanup.cont
  %30 = phi %struct._object* [ %.pre, %if.then.94 ], [ %call99, %if.end.110 ], [ %17, %if.else.87 ], [ %17, %land.lhs.true.67 ], [ %17, %cleanup.cont ], !dbg !850
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %cmp120 = icmp ne %struct._object* %30, null, !dbg !851
  %or.cond253 = and i1 %cmp64, %cmp120, !dbg !832
  br i1 %or.cond253, label %land.lhs.true.122, label %cleanup.251, !dbg !832

land.lhs.true.122:                                ; preds = %if.end.116
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 1, !dbg !852
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8, !dbg !854, !tbaa !736
  %tp_flags124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 19, !dbg !852
  %32 = load i64, i64* %tp_flags124, align 8, !dbg !852, !tbaa !797
  %and125 = and i64 %32, 268435456, !dbg !852
  %cmp126 = icmp eq i64 %and125, 0, !dbg !852
  br i1 %cmp126, label %cleanup.251, label %if.then.128, !dbg !857

if.then.128:                                      ; preds = %land.lhs.true.122
  %33 = getelementptr inbounds %struct._object, %struct._object* %30, i64 1, i32 0, !dbg !858
  %34 = load i64, i64* %33, align 8, !dbg !858, !tbaa !859
  call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !471, metadata !707), !dbg !862
  %cmp130 = icmp eq i64 %34, 0, !dbg !863
  br i1 %cmp130, label %do.body.133, label %if.else.146, !dbg !864

do.body.133:                                      ; preds = %if.then.128
  call void @llvm.dbg.value(metadata %struct._object* %30, i64 0, metadata !474, metadata !707), !dbg !865
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 0, !dbg !867
  %35 = load i64, i64* %ob_refcnt135, align 8, !dbg !867, !tbaa !727
  %dec136 = add i64 %35, -1, !dbg !867
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !867, !tbaa !727
  %cmp137 = icmp eq i64 %dec136, 0, !dbg !867
  br i1 %cmp137, label %if.else.140, label %if.end.143, !dbg !868

if.else.140:                                      ; preds = %do.body.133
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !854
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8, !dbg !854, !tbaa !737
  call void %36(%struct._object* %30) #1, !dbg !854
  br label %if.end.143

if.end.143:                                       ; preds = %do.body.133, %if.else.140
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* null, %struct._object** %result, align 8, !dbg !869, !tbaa !775
  %37 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8, !dbg !870, !tbaa !775
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !871
  %.pre304 = load %struct._object*, %struct._object** %result, align 8, !dbg !872, !tbaa !775
  br label %cleanup.251, !dbg !873

if.else.146:                                      ; preds = %if.then.128
  %state = getelementptr inbounds %struct._object, %struct._object* %30, i64 2, !dbg !874
  %38 = bitcast %struct._object* %state to i32*, !dbg !874
  %bf.load = load i32, i32* %38, align 4, !dbg !874
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !874
  %bf.clear = and i32 %bf.lshr, 7, !dbg !874
  %cmp147 = icmp eq i32 %bf.clear, 1, !dbg !874
  br i1 %cmp147, label %cond.true, label %cond.false.167, !dbg !874

cond.true:                                        ; preds = %if.else.146
  %sub149 = add i64 %34, -1, !dbg !875
  %bf.clear153 = and i32 %bf.load, 32, !dbg !875
  %tobool = icmp eq i32 %bf.clear153, 0, !dbg !875
  br i1 %tobool, label %cond.false.162, label %cond.true.154, !dbg !875

cond.true.154:                                    ; preds = %cond.true
  %bf.clear158 = and i32 %bf.load, 64, !dbg !877
  %tobool159 = icmp ne i32 %bf.clear158, 0, !dbg !877
  %add.ptr = getelementptr %struct._object, %struct._object* %30, i64 3, !dbg !879
  %39 = bitcast %struct._object* %add.ptr to i8*, !dbg !879
  %add.ptr161 = getelementptr %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !881
  %40 = bitcast %struct._typeobject** %add.ptr161 to i8*, !dbg !881
  %cond = select i1 %tobool159, i8* %39, i8* %40, !dbg !877
  br label %cond.end.163, !dbg !877

cond.false.162:                                   ; preds = %cond.true
  %data = getelementptr inbounds %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !883
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !883
  %41 = load i8*, i8** %any, align 8, !dbg !883, !tbaa !775
  br label %cond.end.163, !dbg !883

cond.end.163:                                     ; preds = %cond.true.154, %cond.false.162
  %cond164 = phi i8* [ %41, %cond.false.162 ], [ %cond, %cond.true.154 ], !dbg !874
  %arrayidx165 = getelementptr i8, i8* %cond164, i64 %sub149, !dbg !885
  %42 = load i8, i8* %arrayidx165, align 1, !dbg !885, !tbaa !835
  %conv166 = zext i8 %42 to i32, !dbg !885
  br label %cond.end.227, !dbg !885

cond.false.167:                                   ; preds = %if.else.146
  %cmp172 = icmp eq i32 %bf.clear, 2, !dbg !888
  %sub175 = add i64 %34, -1, !dbg !890
  %bf.clear179 = and i32 %bf.load, 32, !dbg !890
  %tobool180 = icmp ne i32 %bf.clear179, 0, !dbg !890
  br i1 %cmp172, label %cond.true.174, label %cond.false.200, !dbg !888

cond.true.174:                                    ; preds = %cond.false.167
  br i1 %tobool180, label %cond.true.181, label %cond.false.193, !dbg !890

cond.true.181:                                    ; preds = %cond.true.174
  %bf.clear185 = and i32 %bf.load, 64, !dbg !892
  %tobool186 = icmp ne i32 %bf.clear185, 0, !dbg !892
  %add.ptr188 = getelementptr %struct._object, %struct._object* %30, i64 3, !dbg !894
  %43 = bitcast %struct._object* %add.ptr188 to i8*, !dbg !894
  %add.ptr190 = getelementptr %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !896
  %44 = bitcast %struct._typeobject** %add.ptr190 to i8*, !dbg !896
  %cond192 = select i1 %tobool186, i8* %43, i8* %44, !dbg !892
  br label %cond.end.196, !dbg !892

cond.false.193:                                   ; preds = %cond.true.174
  %data194 = getelementptr inbounds %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !898
  %any195 = bitcast %struct._typeobject** %data194 to i8**, !dbg !898
  %45 = load i8*, i8** %any195, align 8, !dbg !898, !tbaa !775
  br label %cond.end.196, !dbg !898

cond.end.196:                                     ; preds = %cond.true.181, %cond.false.193
  %cond197 = phi i8* [ %45, %cond.false.193 ], [ %cond192, %cond.true.181 ], !dbg !874
  %46 = bitcast i8* %cond197 to i16*, !dbg !900
  %arrayidx198 = getelementptr i16, i16* %46, i64 %sub175, !dbg !900
  %47 = load i16, i16* %arrayidx198, align 2, !dbg !900, !tbaa !903
  %conv199 = zext i16 %47 to i32, !dbg !900
  br label %cond.end.227, !dbg !900

cond.false.200:                                   ; preds = %cond.false.167
  br i1 %tobool180, label %cond.true.207, label %cond.false.219, !dbg !905

cond.true.207:                                    ; preds = %cond.false.200
  %bf.clear211 = and i32 %bf.load, 64, !dbg !907
  %tobool212 = icmp ne i32 %bf.clear211, 0, !dbg !907
  %add.ptr214 = getelementptr %struct._object, %struct._object* %30, i64 3, !dbg !909
  %48 = bitcast %struct._object* %add.ptr214 to i8*, !dbg !909
  %add.ptr216 = getelementptr %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !911
  %49 = bitcast %struct._typeobject** %add.ptr216 to i8*, !dbg !911
  %cond218 = select i1 %tobool212, i8* %48, i8* %49, !dbg !907
  br label %cond.end.222, !dbg !907

cond.false.219:                                   ; preds = %cond.false.200
  %data220 = getelementptr inbounds %struct._object, %struct._object* %30, i64 4, i32 1, !dbg !913
  %any221 = bitcast %struct._typeobject** %data220 to i8**, !dbg !913
  %50 = load i8*, i8** %any221, align 8, !dbg !913, !tbaa !775
  br label %cond.end.222, !dbg !913

cond.end.222:                                     ; preds = %cond.true.207, %cond.false.219
  %cond223 = phi i8* [ %50, %cond.false.219 ], [ %cond218, %cond.true.207 ], !dbg !874
  %51 = bitcast i8* %cond223 to i32*, !dbg !915
  %arrayidx224 = getelementptr i32, i32* %51, i64 %sub175, !dbg !915
  %52 = load i32, i32* %arrayidx224, align 4, !dbg !915, !tbaa !918
  br label %cond.end.227, !dbg !915

cond.end.227:                                     ; preds = %cond.end.196, %cond.end.222, %cond.end.163
  %cond228 = phi i32 [ %conv166, %cond.end.163 ], [ %conv199, %cond.end.196 ], [ %52, %cond.end.222 ], !dbg !874
  %cmp229 = icmp eq i32 %cond228, 10, !dbg !919
  br i1 %cmp229, label %if.then.231, label %cleanup.251, !dbg !922

if.then.231:                                      ; preds = %cond.end.227
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %sub233 = add i64 %34, -1, !dbg !923
  %call234 = call %struct._object* @PyUnicode_Substring(%struct._object* %30, i64 0, i64 %sub233) #1, !dbg !924
  call void @llvm.dbg.value(metadata %struct._object* %call234, i64 0, metadata !478, metadata !707), !dbg !925
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !440, metadata !707), !dbg !773
  %53 = load %struct._object*, %struct._object** %result, align 8, !dbg !926, !tbaa !775
  call void @llvm.dbg.value(metadata %struct._object* %53, i64 0, metadata !481, metadata !707), !dbg !926
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %53, i64 0, i32 0, !dbg !928
  %54 = load i64, i64* %ob_refcnt237, align 8, !dbg !928, !tbaa !727
  %dec238 = add i64 %54, -1, !dbg !928
  store i64 %dec238, i64* %ob_refcnt237, align 8, !dbg !928, !tbaa !727
  %cmp239 = icmp eq i64 %dec238, 0, !dbg !928
  br i1 %cmp239, label %if.else.242, label %if.end.245, !dbg !930

if.else.242:                                      ; preds = %if.then.231
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %53, i64 0, i32 1, !dbg !931
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8, !dbg !931, !tbaa !736
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i64 0, i32 4, !dbg !931
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8, !dbg !931, !tbaa !737
  call void %56(%struct._object* %53) #1, !dbg !931
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.231, %if.else.242
  call void @llvm.dbg.value(metadata %struct._object* %call234, i64 0, metadata !440, metadata !707), !dbg !773
  store %struct._object* %call234, %struct._object** %result, align 8, !dbg !933, !tbaa !775
  br label %cleanup.251, !dbg !934

cleanup.251:                                      ; preds = %if.end.116, %land.lhs.true.122, %cond.end.227, %if.end.245, %if.end.143, %if.end.116.thread, %do.body, %if.end, %if.else.13, %if.then
  %retval.1 = phi %struct._object* [ null, %if.then ], [ null, %if.else.13 ], [ null, %if.end ], [ null, %do.body ], [ %.pre304, %if.end.143 ], [ %call234, %if.end.245 ], [ %30, %cond.end.227 ], [ %30, %land.lhs.true.122 ], [ %30, %if.end.116 ], [ null, %if.end.116.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !935
  ret %struct._object* %retval.1, !dbg !935
}

declare void @_PyErr_BadInternalCall(i8*, i32) #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #2

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @_PyBytes_Resize(%struct._object**, i64) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @PyFile_WriteObject(%struct._object* %v, %struct._object* %f, i32 %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !487, metadata !707), !dbg !936
  tail call void @llvm.dbg.value(metadata %struct._object* %f, i64 0, metadata !488, metadata !707), !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !489, metadata !707), !dbg !938
  %cmp = icmp eq %struct._object* %f, null, !dbg !939
  br i1 %cmp, label %if.then, label %if.end, !dbg !941

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !942, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #1, !dbg !944
  br label %cleanup, !dbg !945

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %f, %struct._Py_Identifier* nonnull @PyFile_WriteObject.PyId_write) #1, !dbg !946
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !490, metadata !707), !dbg !947
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !948
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !950

if.end.3:                                         ; preds = %if.end
  %and = and i32 %flags, 1, !dbg !951
  %tobool = icmp eq i32 %and, 0, !dbg !951
  br i1 %tobool, label %if.else, label %if.then.4, !dbg !953

if.then.4:                                        ; preds = %if.end.3
  %call5 = tail call %struct._object* @PyObject_Str(%struct._object* %v) #1, !dbg !954
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !491, metadata !707), !dbg !956
  br label %if.end.7, !dbg !957

if.else:                                          ; preds = %if.end.3
  %call6 = tail call %struct._object* @PyObject_Repr(%struct._object* %v) #1, !dbg !958
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !491, metadata !707), !dbg !956
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %value.0 = phi %struct._object* [ %call5, %if.then.4 ], [ %call6, %if.else ]
  %cmp8 = icmp eq %struct._object* %value.0, null, !dbg !959
  br i1 %cmp8, label %do.body, label %if.end.14, !dbg !960

do.body:                                          ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !494, metadata !707), !dbg !961
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !963
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !963, !tbaa !727
  %dec = add i64 %1, -1, !dbg !963
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !963, !tbaa !727
  %cmp10 = icmp eq i64 %dec, 0, !dbg !963
  br i1 %cmp10, label %if.else.12, label %cleanup, !dbg !965

if.else.12:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !966
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !966, !tbaa !736
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !966
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !966, !tbaa !737
  tail call void %3(%struct._object* %call) #1, !dbg !966
  br label %cleanup

if.end.14:                                        ; preds = %if.end.7
  %call15 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %value.0) #1, !dbg !968
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !492, metadata !707), !dbg !969
  %cmp16 = icmp eq %struct._object* %call15, null, !dbg !970
  br i1 %cmp16, label %do.body.18, label %if.end.42, !dbg !971

do.body.18:                                       ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata %struct._object* %value.0, i64 0, metadata !498, metadata !707), !dbg !972
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 0, !dbg !974
  %4 = load i64, i64* %ob_refcnt20, align 8, !dbg !974, !tbaa !727
  %dec21 = add i64 %4, -1, !dbg !974
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !974, !tbaa !727
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !974
  br i1 %cmp22, label %if.else.24, label %if.end.27, !dbg !976

if.else.24:                                       ; preds = %do.body.18
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 1, !dbg !977
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !977, !tbaa !736
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !977
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !977, !tbaa !737
  tail call void %6(%struct._object* %value.0) #1, !dbg !977
  br label %if.end.27

if.end.27:                                        ; preds = %do.body.18, %if.else.24
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !502, metadata !707), !dbg !979
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !981
  %7 = load i64, i64* %ob_refcnt32, align 8, !dbg !981, !tbaa !727
  %dec33 = add i64 %7, -1, !dbg !981
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !981, !tbaa !727
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !981
  br i1 %cmp34, label %if.else.36, label %cleanup, !dbg !983

if.else.36:                                       ; preds = %if.end.27
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !984
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !984, !tbaa !736
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !984
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !984, !tbaa !737
  tail call void %9(%struct._object* %call) #1, !dbg !984
  br label %cleanup

if.end.42:                                        ; preds = %if.end.14
  %call43 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call, %struct._object* %call15, %struct._object* null) #1, !dbg !986
  tail call void @llvm.dbg.value(metadata %struct._object* %call43, i64 0, metadata !493, metadata !707), !dbg !987
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !504, metadata !707), !dbg !988
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 0, !dbg !990
  %10 = load i64, i64* %ob_refcnt46, align 8, !dbg !990, !tbaa !727
  %dec47 = add i64 %10, -1, !dbg !990
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !990, !tbaa !727
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !990
  br i1 %cmp48, label %if.else.50, label %if.end.53, !dbg !992

if.else.50:                                       ; preds = %if.end.42
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %call15, i64 0, i32 1, !dbg !993
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !993, !tbaa !736
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !993
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !993, !tbaa !737
  tail call void %12(%struct._object* %call15) #1, !dbg !993
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.42, %if.else.50
  tail call void @llvm.dbg.value(metadata %struct._object* %value.0, i64 0, metadata !506, metadata !707), !dbg !995
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 0, !dbg !997
  %13 = load i64, i64* %ob_refcnt58, align 8, !dbg !997, !tbaa !727
  %dec59 = add i64 %13, -1, !dbg !997
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !997, !tbaa !727
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !997
  br i1 %cmp60, label %if.else.62, label %if.end.65, !dbg !999

if.else.62:                                       ; preds = %if.end.53
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %value.0, i64 0, i32 1, !dbg !1000
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1000, !tbaa !736
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1000
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1000, !tbaa !737
  tail call void %15(%struct._object* %value.0) #1, !dbg !1000
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.53, %if.else.62
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !508, metadata !707), !dbg !1002
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1004
  %16 = load i64, i64* %ob_refcnt70, align 8, !dbg !1004, !tbaa !727
  %dec71 = add i64 %16, -1, !dbg !1004
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !1004, !tbaa !727
  %cmp72 = icmp eq i64 %dec71, 0, !dbg !1004
  br i1 %cmp72, label %if.else.74, label %if.end.77, !dbg !1006

if.else.74:                                       ; preds = %if.end.65
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1007
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !1007, !tbaa !736
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1007
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !1007, !tbaa !737
  tail call void %18(%struct._object* %call) #1, !dbg !1007
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.65, %if.else.74
  %cmp80 = icmp eq %struct._object* %call43, null, !dbg !1009
  br i1 %cmp80, label %cleanup, label %do.body.83, !dbg !1011

do.body.83:                                       ; preds = %if.end.77
  tail call void @llvm.dbg.value(metadata %struct._object* %call43, i64 0, metadata !510, metadata !707), !dbg !1012
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %call43, i64 0, i32 0, !dbg !1014
  %19 = load i64, i64* %ob_refcnt85, align 8, !dbg !1014, !tbaa !727
  %dec86 = add i64 %19, -1, !dbg !1014
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !1014, !tbaa !727
  %cmp87 = icmp eq i64 %dec86, 0, !dbg !1014
  br i1 %cmp87, label %if.else.89, label %cleanup, !dbg !1016

if.else.89:                                       ; preds = %do.body.83
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %call43, i64 0, i32 1, !dbg !1017
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !1017, !tbaa !736
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1017
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !1017, !tbaa !737
  tail call void %21(%struct._object* %call43) #1, !dbg !1017
  br label %cleanup

cleanup:                                          ; preds = %if.else.89, %do.body.83, %if.end.77, %if.else.36, %if.end.27, %if.else.12, %do.body, %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end ], [ -1, %do.body ], [ -1, %if.else.12 ], [ -1, %if.end.27 ], [ -1, %if.else.36 ], [ -1, %if.end.77 ], [ 0, %do.body.83 ], [ 0, %if.else.89 ]
  ret i32 %retval.0, !dbg !1019
}

declare %struct._object* @PyObject_Str(%struct._object*) #2

declare %struct._object* @PyObject_Repr(%struct._object*) #2

declare %struct._object* @PyTuple_Pack(i64, ...) #2

; Function Attrs: nounwind uwtable
define i32 @PyFile_WriteString(i8* %s, %struct._object* %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !516, metadata !707), !dbg !1020
  tail call void @llvm.dbg.value(metadata %struct._object* %f, i64 0, metadata !517, metadata !707), !dbg !1021
  %cmp = icmp eq %struct._object* %f, null, !dbg !1022
  %call = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1023
  %tobool = icmp ne %struct._object* %call, null, !dbg !1023
  br i1 %cmp, label %if.then, label %if.else, !dbg !1026

if.then:                                          ; preds = %entry
  br i1 %tobool, label %return, label %if.then.1, !dbg !1027

if.then.1:                                        ; preds = %if.then
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1028, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1029
  br label %return, !dbg !1029

if.else:                                          ; preds = %entry
  br i1 %tobool, label %return, label %if.then.4, !dbg !1030

if.then.4:                                        ; preds = %if.else
  %call5 = tail call %struct._object* @PyUnicode_FromString(i8* %s) #1, !dbg !1031
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !518, metadata !707), !dbg !1032
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1033
  br i1 %cmp6, label %return, label %if.end.8, !dbg !1035

if.end.8:                                         ; preds = %if.then.4
  %call9 = tail call i32 @PyFile_WriteObject(%struct._object* %call5, %struct._object* %f, i32 1), !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %call9, i64 0, metadata !522, metadata !707), !dbg !1037
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !523, metadata !707), !dbg !1038
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1040
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1040, !tbaa !727
  %dec = add i64 %1, -1, !dbg !1040
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1040, !tbaa !727
  %cmp10 = icmp eq i64 %dec, 0, !dbg !1040
  br i1 %cmp10, label %if.else.12, label %return, !dbg !1042

if.else.12:                                       ; preds = %if.end.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1043
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1043, !tbaa !736
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1043
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1043, !tbaa !737
  tail call void %3(%struct._object* %call5) #1, !dbg !1043
  br label %return

return:                                           ; preds = %if.else, %if.then.4, %if.end.8, %if.else.12, %if.then, %if.then.1
  %retval.1 = phi i32 [ -1, %if.then.1 ], [ -1, %if.then ], [ -1, %if.then.4 ], [ %call9, %if.end.8 ], [ %call9, %if.else.12 ], [ -1, %if.else ]
  ret i32 %retval.1, !dbg !1045
}

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyObject_AsFileDescriptor(%struct._object* %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !527, metadata !707), !dbg !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !1047
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1047, !tbaa !736
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1047
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1047, !tbaa !797
  %and = and i64 %1, 16777216, !dbg !1047
  %cmp = icmp eq i64 %and, 0, !dbg !1047
  br i1 %cmp, label %if.else, label %if.then, !dbg !1048

if.then:                                          ; preds = %entry
  %call = tail call i32 @_PyLong_AsInt(%struct._object* %o) #1, !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !528, metadata !707), !dbg !1051
  br label %if.end.46, !dbg !1052

if.else:                                          ; preds = %entry
  %call1 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %o, %struct._Py_Identifier* nonnull @PyObject_AsFileDescriptor.PyId_fileno) #1, !dbg !1053
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !529, metadata !707), !dbg !1054
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1055
  br i1 %cmp2, label %if.else.44, label %if.then.3, !dbg !1056

if.then.3:                                        ; preds = %if.else
  %call4 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %call1, %struct._object* null, %struct._object* null) #1, !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !530, metadata !707), !dbg !1058
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !534, metadata !707), !dbg !1059
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1061
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1061, !tbaa !727
  %dec = add i64 %2, -1, !dbg !1061
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1061, !tbaa !727
  %cmp5 = icmp eq i64 %dec, 0, !dbg !1061
  br i1 %cmp5, label %if.else.7, label %if.end, !dbg !1063

if.else.7:                                        ; preds = %if.then.3
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1064
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1064, !tbaa !736
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1064
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1064, !tbaa !737
  tail call void %4(%struct._object* %call1) #1, !dbg !1064
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else.7
  %cmp9 = icmp eq %struct._object* %call4, null, !dbg !1066
  br i1 %cmp9, label %cleanup.55, label %if.end.11, !dbg !1068

if.end.11:                                        ; preds = %if.end
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !1069
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1069, !tbaa !736
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1069
  %6 = load i64, i64* %tp_flags13, align 8, !dbg !1069, !tbaa !797
  %and14 = and i64 %6, 16777216, !dbg !1069
  %cmp15 = icmp eq i64 %and14, 0, !dbg !1069
  br i1 %cmp15, label %if.else.30, label %if.then.16, !dbg !1070

if.then.16:                                       ; preds = %if.end.11
  %call17 = tail call i32 @_PyLong_AsInt(%struct._object* %call4) #1, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %call17, i64 0, metadata !528, metadata !707), !dbg !1051
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !536, metadata !707), !dbg !1072
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1074
  %7 = load i64, i64* %ob_refcnt20, align 8, !dbg !1074, !tbaa !727
  %dec21 = add i64 %7, -1, !dbg !1074
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1074, !tbaa !727
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1074
  br i1 %cmp22, label %if.else.24, label %if.end.46, !dbg !1076

if.else.24:                                       ; preds = %if.then.16
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1077, !tbaa !736
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1077
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1077, !tbaa !737
  tail call void %9(%struct._object* %call4) #1, !dbg !1077
  br label %if.end.46

if.else.30:                                       ; preds = %if.end.11
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1079, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0)) #1, !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !540, metadata !707), !dbg !1081
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !1083
  %11 = load i64, i64* %ob_refcnt33, align 8, !dbg !1083, !tbaa !727
  %dec34 = add i64 %11, -1, !dbg !1083
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1083, !tbaa !727
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !1083
  br i1 %cmp35, label %if.else.37, label %cleanup.55, !dbg !1085

if.else.37:                                       ; preds = %if.else.30
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !1086, !tbaa !736
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1086
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1086, !tbaa !737
  tail call void %13(%struct._object* %call4) #1, !dbg !1086
  br label %cleanup.55

if.else.44:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1088, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !1090
  br label %cleanup.55, !dbg !1091

if.end.46:                                        ; preds = %if.then.16, %if.else.24, %if.then
  %fd.1 = phi i32 [ %call, %if.then ], [ %call17, %if.then.16 ], [ %call17, %if.else.24 ]
  %cmp47 = icmp eq i32 %fd.1, -1, !dbg !1092
  br i1 %cmp47, label %land.lhs.true, label %if.end.50, !dbg !1094

land.lhs.true:                                    ; preds = %if.end.46
  %call48 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1095
  %tobool = icmp eq %struct._object* %call48, null, !dbg !1095
  br i1 %tobool, label %if.then.52, label %cleanup.55, !dbg !1097

if.end.50:                                        ; preds = %if.end.46
  %cmp51 = icmp slt i32 %fd.1, 0, !dbg !1098
  br i1 %cmp51, label %if.then.52, label %cleanup.55, !dbg !1100

if.then.52:                                       ; preds = %land.lhs.true, %if.end.50
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1101, !tbaa !775
  %call53 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 %fd.1) #1, !dbg !1103
  br label %cleanup.55, !dbg !1104

cleanup.55:                                       ; preds = %if.else.37, %if.else.30, %if.end, %if.end.50, %land.lhs.true, %if.then.52, %if.else.44
  %retval.1 = phi i32 [ -1, %if.then.52 ], [ -1, %if.else.44 ], [ -1, %land.lhs.true ], [ %fd.1, %if.end.50 ], [ -1, %if.end ], [ -1, %if.else.30 ], [ -1, %if.else.37 ]
  ret i32 %retval.1, !dbg !1105
}

declare i32 @_PyLong_AsInt(%struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @Py_UniversalNewlineFgets(i8* %buf, i32 %n, %struct._IO_FILE* %stream, %struct._object* readnone %fobj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !547, metadata !707), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !548, metadata !707), !dbg !1107
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !549, metadata !707), !dbg !1108
  tail call void @llvm.dbg.value(metadata %struct._object* %fobj, i64 0, metadata !550, metadata !707), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !551, metadata !707), !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !553, metadata !707), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !554, metadata !707), !dbg !1112
  %tobool = icmp eq %struct._object* %fobj, null, !dbg !1113
  br i1 %tobool, label %if.end, label %if.then, !dbg !1115

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #6, !dbg !1116
  store i32 6, i32* %call, align 4, !dbg !1118, !tbaa !918
  br label %cleanup, !dbg !1119

if.end:                                           ; preds = %entry
  tail call void @flockfile(%struct._IO_FILE* %stream) #1, !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 120, i64 0, metadata !552, metadata !707), !dbg !1121
  %_IO_read_ptr.i = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %stream, i64 0, i32 1, !dbg !1122
  %_IO_read_end.i = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %stream, i64 0, i32 2, !dbg !1122
  br label %while.cond, !dbg !1125

while.cond:                                       ; preds = %if.end.21, %if.end
  %n.addr.0 = phi i32 [ %n, %if.end ], [ %dec, %if.end.21 ]
  %p.0 = phi i8* [ %buf, %if.end ], [ %incdec.ptr, %if.end.21 ]
  %dec = add i32 %n.addr.0, -1, !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !548, metadata !707), !dbg !1107
  %cmp = icmp sgt i32 %dec, 0, !dbg !1129
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !1130

land.rhs:                                         ; preds = %while.cond
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !566, metadata !707) #1, !dbg !1131
  %0 = load i8*, i8** %_IO_read_ptr.i, align 8, !dbg !1122, !tbaa !1132
  %1 = load i8*, i8** %_IO_read_end.i, align 8, !dbg !1122, !tbaa !1134
  %cmp.i = icmp ult i8* %0, %1, !dbg !1122
  br i1 %cmp.i, label %getc_unlocked.exit.thread, label %getc_unlocked.exit, !dbg !1122, !prof !1135

getc_unlocked.exit.thread:                        ; preds = %land.rhs
  %incdec.ptr.i = getelementptr i8, i8* %0, i64 1, !dbg !1136
  store i8* %incdec.ptr.i, i8** %_IO_read_ptr.i, align 8, !dbg !1136, !tbaa !1132
  %2 = load i8, i8* %0, align 1, !dbg !1136, !tbaa !835
  %conv3.i = zext i8 %2 to i32, !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !552, metadata !707), !dbg !1121
  br label %if.end.13, !dbg !1138

getc_unlocked.exit:                               ; preds = %land.rhs
  %call.i = tail call i32 @__uflow(%struct._IO_FILE* %stream) #1, !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !552, metadata !707), !dbg !1121
  %cmp2 = icmp eq i32 %call.i, -1, !dbg !1142
  br i1 %cmp2, label %while.end, label %if.end.13, !dbg !1138

if.end.13:                                        ; preds = %getc_unlocked.exit, %getc_unlocked.exit.thread
  %cond.i85 = phi i32 [ %conv3.i, %getc_unlocked.exit.thread ], [ %call.i, %getc_unlocked.exit ]
  %cmp14 = icmp eq i32 %cond.i85, 13, !dbg !1143
  br i1 %cmp14, label %while.end.thread92, label %if.end.21, !dbg !1146

while.end.thread92:                               ; preds = %if.end.13
  %p.0.lcssa105 = phi i8* [ %p.0, %if.end.13 ]
  %incdec.ptr.88 = getelementptr i8, i8* %p.0.lcssa105, i64 1, !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !551, metadata !707), !dbg !1110
  store i8 10, i8* %p.0.lcssa105, align 1, !dbg !1148, !tbaa !835
  tail call void @funlockfile(%struct._IO_FILE* %stream) #1, !dbg !1149
  store i8 0, i8* %incdec.ptr.88, align 1, !dbg !1150, !tbaa !835
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !566, metadata !707) #1, !dbg !1151
  %3 = load i8*, i8** %_IO_read_ptr.i, align 8, !dbg !1155, !tbaa !1132
  %4 = load i8*, i8** %_IO_read_end.i, align 8, !dbg !1155, !tbaa !1134
  %cmp.i.76 = icmp ult i8* %3, %4, !dbg !1155
  br i1 %cmp.i.76, label %cond.false.i.81, label %cond.true.i.78, !dbg !1155, !prof !1135

if.end.21:                                        ; preds = %if.end.13
  %cmp17 = icmp eq i32 %cond.i85, 10, !dbg !1156
  %conv = trunc i32 %cond.i85 to i8, !dbg !1158
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1, !dbg !1147
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !551, metadata !707), !dbg !1110
  store i8 %conv, i8* %p.0, align 1, !dbg !1148, !tbaa !835
  br i1 %cmp17, label %while.end.thread, label %while.cond, !dbg !1159

while.end.thread:                                 ; preds = %if.end.21
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %if.end.21 ]
  tail call void @funlockfile(%struct._IO_FILE* %stream) #1, !dbg !1149
  store i8 0, i8* %incdec.ptr.lcssa, align 1, !dbg !1150, !tbaa !835
  br label %if.end.34, !dbg !1160

while.end:                                        ; preds = %getc_unlocked.exit, %while.cond
  %p.0.lcssa = phi i8* [ %p.0, %getc_unlocked.exit ], [ %p.0, %while.cond ]
  tail call void @funlockfile(%struct._IO_FILE* %stream) #1, !dbg !1149
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !1150, !tbaa !835
  br label %if.end.34, !dbg !1160

cond.true.i.78:                                   ; preds = %while.end.thread92
  %call.i.77 = tail call i32 @__uflow(%struct._IO_FILE* %stream) #1, !dbg !1161
  br label %getc_unlocked.exit83, !dbg !1161

cond.false.i.81:                                  ; preds = %while.end.thread92
  %incdec.ptr.i.79 = getelementptr i8, i8* %3, i64 1, !dbg !1162
  store i8* %incdec.ptr.i.79, i8** %_IO_read_ptr.i, align 8, !dbg !1162, !tbaa !1132
  %5 = load i8, i8* %3, align 1, !dbg !1162, !tbaa !835
  %conv3.i.80 = zext i8 %5 to i32, !dbg !1162
  br label %getc_unlocked.exit83, !dbg !1162

getc_unlocked.exit83:                             ; preds = %cond.true.i.78, %cond.false.i.81
  %cond.i.82 = phi i32 [ %call.i.77, %cond.true.i.78 ], [ %conv3.i.80, %cond.false.i.81 ], !dbg !1155
  tail call void @llvm.dbg.value(metadata i32 %cond.i.82, i64 0, metadata !552, metadata !707), !dbg !1121
  %cmp29 = icmp eq i32 %cond.i.82, 10, !dbg !1163
  br i1 %cmp29, label %if.end.34, label %if.then.31, !dbg !1165

if.then.31:                                       ; preds = %getc_unlocked.exit83
  %call32 = tail call i32 @ungetc(i32 %cond.i.82, %struct._IO_FILE* %stream) #1, !dbg !1166
  br label %if.end.34, !dbg !1166

if.end.34:                                        ; preds = %while.end, %while.end.thread, %getc_unlocked.exit83, %if.then.31
  %p.191 = phi i8* [ %incdec.ptr.lcssa, %while.end.thread ], [ %incdec.ptr.88, %getc_unlocked.exit83 ], [ %p.0.lcssa, %while.end ], [ %incdec.ptr.88, %if.then.31 ]
  %cmp35 = icmp eq i8* %p.191, %buf, !dbg !1167
  %.buf = select i1 %cmp35, i8* null, i8* %buf, !dbg !1169
  br label %cleanup, !dbg !1169

cleanup:                                          ; preds = %if.end.34, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %.buf, %if.end.34 ]
  ret i8* %retval.0, !dbg !1170
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare void @flockfile(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @funlockfile(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyFile_NewStdPrinter(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !559, metadata !707), !dbg !1171
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !775
  %call = tail call i32 @fileno(%struct._IO_FILE* %0) #1, !dbg !1174
  %cmp = icmp eq i32 %call, %fd, !dbg !1175
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1176

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1177, !tbaa !775
  %call1 = tail call i32 @fileno(%struct._IO_FILE* %1) #1, !dbg !1178
  %cmp2 = icmp eq i32 %call1, %fd, !dbg !1179
  br i1 %cmp2, label %if.end, label %cleanup, !dbg !1180

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PyStdPrinter_Type) #1, !dbg !1181
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1182
  br i1 %cmp4, label %cleanup, label %if.then.5, !dbg !1184

if.then.5:                                        ; preds = %if.end
  %fd6 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 1, !dbg !1185
  %2 = bitcast %struct._object* %fd6 to i32*, !dbg !1185
  store i32 %fd, i32* %2, align 4, !dbg !1187, !tbaa !1188
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %if.then.5, %if.end, %land.lhs.true
  %retval.0 = phi %struct._object* [ null, %land.lhs.true ], [ null, %if.end ], [ %call3, %if.then.5 ]
  ret %struct._object* %retval.0, !dbg !1191
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #4

declare %struct._object* @_PyObject_New(%struct._typeobject*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_repr(%struct.PyStdPrinter_Object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !571, metadata !707), !dbg !1192
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %self, i64 0, i32 1, !dbg !1193
  %0 = load i32, i32* %fd, align 4, !dbg !1193, !tbaa !1188
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %0, %struct.PyStdPrinter_Object* %self) #1, !dbg !1194
  ret %struct._object* %call, !dbg !1195
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @stdprinter_init(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !668, metadata !707), !dbg !1196
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !669, metadata !707), !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !670, metadata !707), !dbg !1198
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1199, !tbaa !775
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #1, !dbg !1200
  ret i32 -1, !dbg !1201
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kews) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !677, metadata !707), !dbg !1202
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !678, metadata !707), !dbg !1203
  tail call void @llvm.dbg.value(metadata %struct._object* %kews, i64 0, metadata !679, metadata !707), !dbg !1204
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1205
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1205, !tbaa !1206
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #1, !dbg !1207
  %cmp = icmp eq %struct._object* %call, null, !dbg !1208
  br i1 %cmp, label %if.end, label %if.then, !dbg !1210

if.then:                                          ; preds = %entry
  %fd = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1211
  %1 = bitcast %struct._object* %fd to i32*, !dbg !1211
  store i32 -1, i32* %1, align 4, !dbg !1213, !tbaa !1188
  br label %if.end, !dbg !1214

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !1215
}

declare void @PyObject_Free(i8*) #2

declare i32 @__uflow(%struct._IO_FILE*) #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_noop(%struct.PyStdPrinter_Object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !574, metadata !707), !dbg !1216
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1217, !tbaa !727
  %inc = add i64 %0, 1, !dbg !1217
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1217, !tbaa !727
  ret %struct._object* @_Py_NoneStruct, !dbg !1217
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_fileno(%struct.PyStdPrinter_Object* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !577, metadata !707), !dbg !1218
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %self, i64 0, i32 1, !dbg !1219
  %0 = load i32, i32* %fd, align 4, !dbg !1219, !tbaa !1188
  %conv = sext i32 %0 to i64, !dbg !1220
  %call = tail call %struct._object* @PyLong_FromLong(i64 %conv) #1, !dbg !1221
  ret %struct._object* %call, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_isatty(%struct.PyStdPrinter_Object* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !580, metadata !707), !dbg !1223
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %self, i64 0, i32 1, !dbg !1224
  %0 = load i32, i32* %fd, align 4, !dbg !1224, !tbaa !1188
  %cmp = icmp slt i32 %0, 0, !dbg !1226
  br i1 %cmp, label %if.then, label %if.end, !dbg !1227

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1228, !tbaa !727
  %inc = add i64 %1, 1, !dbg !1228
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1228, !tbaa !727
  br label %cleanup, !dbg !1228

if.end:                                           ; preds = %entry
  %call = tail call %struct._ts* @PyEval_SaveThread() #1, !dbg !1230
  tail call void @llvm.dbg.value(metadata %struct._ts* %call, i64 0, metadata !582, metadata !707), !dbg !1230
  %2 = load i32, i32* %fd, align 4, !dbg !1231, !tbaa !1188
  %call2 = tail call i32 @isatty(i32 %2) #1, !dbg !1232
  %conv = sext i32 %call2 to i64, !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !581, metadata !707), !dbg !1233
  tail call void @PyEval_RestoreThread(%struct._ts* %call) #1, !dbg !1234
  %call3 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1235
  br label %cleanup, !dbg !1236

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then ], [ %call3, %if.end ]
  ret %struct._object* %retval.0, !dbg !1237
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stdprinter_write(%struct.PyStdPrinter_Object* nocapture readonly %self, %struct._object* %args) #0 {
entry:
  %c = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !646, metadata !707), !dbg !1238
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !647, metadata !707), !dbg !1239
  %0 = bitcast i8** %c to i8*, !dbg !1240
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1240
  %fd = getelementptr inbounds %struct.PyStdPrinter_Object, %struct.PyStdPrinter_Object* %self, i64 0, i32 1, !dbg !1241
  %1 = load i32, i32* %fd, align 4, !dbg !1241, !tbaa !1188
  %cmp = icmp slt i32 %1, 0, !dbg !1243
  br i1 %cmp, label %if.then, label %if.end, !dbg !1244

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1245, !tbaa !727
  %inc = add i64 %2, 1, !dbg !1245
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1245, !tbaa !727
  br label %cleanup, !dbg !1245

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8** %c, i64 0, metadata !648, metadata !707), !dbg !1247
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8** nonnull %c) #1, !dbg !1248
  %tobool = icmp eq i32 %call, 0, !dbg !1248
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1250

if.end.2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8** %c, i64 0, metadata !648, metadata !707), !dbg !1247
  %3 = load i8*, i8** %c, align 8, !dbg !1251, !tbaa !775
  %call3 = call i64 @strlen(i8* %3) #7, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !649, metadata !707), !dbg !1253
  %call4 = call %struct._ts* @PyEval_SaveThread() #1, !dbg !1254
  call void @llvm.dbg.value(metadata %struct._ts* %call4, i64 0, metadata !650, metadata !707), !dbg !1254
  %call5 = tail call i32* @__errno_location() #6, !dbg !1255
  store i32 0, i32* %call5, align 4, !dbg !1256, !tbaa !918
  %4 = load i32, i32* %fd, align 4, !dbg !1257, !tbaa !1188
  call void @llvm.dbg.value(metadata i8** %c, i64 0, metadata !648, metadata !707), !dbg !1247
  %5 = load i8*, i8** %c, align 8, !dbg !1258, !tbaa !775
  %call7 = call i64 @write(i32 %4, i8* %5, i64 %call3) #1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %call7, i64 0, metadata !649, metadata !707), !dbg !1253
  call void @PyEval_RestoreThread(%struct._ts* %call4) #1, !dbg !1260
  %cmp8 = icmp slt i64 %call7, 0, !dbg !1261
  br i1 %cmp8, label %if.then.9, label %if.end.16, !dbg !1263

if.then.9:                                        ; preds = %if.end.2
  %6 = load i32, i32* %call5, align 4, !dbg !1264, !tbaa !918
  %cmp11 = icmp eq i32 %6, 11, !dbg !1267
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1268

if.then.12:                                       ; preds = %if.then.9
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1269, !tbaa !727
  %inc13 = add i64 %7, 1, !dbg !1269
  store i64 %inc13, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1269, !tbaa !727
  br label %cleanup, !dbg !1269

if.end.14:                                        ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1270, !tbaa !775
  %call15 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8) #1, !dbg !1271
  br label %cleanup, !dbg !1272

if.end.16:                                        ; preds = %if.end.2
  %call17 = call %struct._object* @PyLong_FromSsize_t(i64 %call7) #1, !dbg !1273
  br label %cleanup, !dbg !1274

cleanup:                                          ; preds = %if.end, %if.end.16, %if.end.14, %if.then.12, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then ], [ @_Py_NoneStruct, %if.then.12 ], [ null, %if.end.14 ], [ %call17, %if.end.16 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1275
  ret %struct._object* %retval.0, !dbg !1275
}

declare %struct._object* @PyLong_FromLong(i64) #2

declare %struct._ts* @PyEval_SaveThread() #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #4

declare void @PyEval_RestoreThread(%struct._ts*) #2

declare %struct._object* @PyBool_FromLong(i64) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

declare i64 @write(i32, i8* nocapture readonly, i64) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closed(%struct.PyStdPrinter_Object* nocapture readnone %self, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !656, metadata !707), !dbg !1276
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !657, metadata !707), !dbg !1277
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1278, !tbaa !727
  %inc = add i64 %0, 1, !dbg !1278
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1278, !tbaa !727
  ret %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1279
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_encoding(%struct.PyStdPrinter_Object* nocapture readnone %self, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !660, metadata !707), !dbg !1280
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !661, metadata !707), !dbg !1281
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1282, !tbaa !727
  %inc = add i64 %0, 1, !dbg !1282
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1282, !tbaa !727
  ret %struct._object* @_Py_NoneStruct, !dbg !1282
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.PyStdPrinter_Object* nocapture readnone %self, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStdPrinter_Object* %self, i64 0, metadata !664, metadata !707), !dbg !1283
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !665, metadata !707), !dbg !1284
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #1, !dbg !1285
  ret %struct._object* %call, !dbg !1286
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!704, !705}
!llvm.ident = !{!706}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !417, globals: !681)
!1 = !DIFile(filename: "Objects/fileobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !358, !359, !377, !378, !382, !390, !406, !408, !410, !416, !24}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!102 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!352 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStdPrinter_Object", file: !1, line: 329, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 326, size: 192, align: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !412, file: !1, line: 327, baseType: !13, size: 128, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !412, file: !1, line: 328, baseType: !51, size: 32, align: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!417 = !{!418, !434, !483, !512, !525, !543, !555, !561, !567, !572, !575, !578, !642, !652, !658, !662, !666, !671}
!418 = !DISubprogram(name: "PyFile_FromFd", scope: !1, file: !1, line: 29, type: !419, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, i8*, i8*, i32, i8*, i8*, i8*, i32)* @PyFile_FromFd, variables: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!12, !51, !36, !36, !51, !36, !36, !36, !51}
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !418, file: !1, line: 29, type: !51)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !418, file: !1, line: 29, type: !36)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !418, file: !1, line: 29, type: !36)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffering", arg: 4, scope: !418, file: !1, line: 29, type: !51)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 5, scope: !418, file: !1, line: 29, type: !36)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 6, scope: !418, file: !1, line: 30, type: !36)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newline", arg: 7, scope: !418, file: !1, line: 30, type: !36)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closefd", arg: 8, scope: !418, file: !1, line: 30, type: !51)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "io", scope: !418, file: !1, line: 32, type: !12)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stream", scope: !418, file: !1, line: 32, type: !12)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !1, line: 41, type: !12)
!433 = distinct !DILexicalBlock(scope: !418, file: !1, line: 41, column: 5)
!434 = !DISubprogram(name: "PyFile_GetLine", scope: !1, file: !1, line: 50, type: !435, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32)* @PyFile_GetLine, variables: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!12, !12, !51}
!437 = !{!438, !439, !440, !441, !443, !444, !448, !450, !452, !456, !459, !460, !464, !469, !471, !474, !478, !481}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !434, file: !1, line: 50, type: !12)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !434, file: !1, line: 50, type: !51)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !434, file: !1, line: 52, type: !12)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reader", scope: !442, file: !1, line: 60, type: !12)
!442 = distinct !DILexicalBlock(scope: !434, file: !1, line: 59, column: 5)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !442, file: !1, line: 61, type: !12)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !1, line: 72, type: !12)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 72, column: 13)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 71, column: 27)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 71, column: 13)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !449, file: !1, line: 76, type: !12)
!449 = distinct !DILexicalBlock(scope: !442, file: !1, line: 76, column: 9)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 77, type: !12)
!451 = distinct !DILexicalBlock(scope: !442, file: !1, line: 77, column: 9)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !1, line: 80, type: !12)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 80, column: 13)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 79, column: 39)
!455 = distinct !DILexicalBlock(scope: !442, file: !1, line: 78, column: 13)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !457, file: !1, line: 88, type: !59)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 87, column: 59)
!458 = distinct !DILexicalBlock(scope: !434, file: !1, line: 87, column: 9)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !457, file: !1, line: 89, type: !18)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !461, file: !1, line: 91, type: !12)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 91, column: 13)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 90, column: 23)
!463 = distinct !DILexicalBlock(scope: !457, file: !1, line: 90, column: 13)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !465, file: !1, line: 100, type: !12)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 99, column: 18)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 97, column: 17)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 96, column: 36)
!468 = distinct !DILexicalBlock(scope: !463, file: !1, line: 96, column: 18)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !470, file: !1, line: 102, type: !12)
!470 = distinct !DILexicalBlock(scope: !465, file: !1, line: 102, column: 17)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !472, file: !1, line: 108, type: !18)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 107, column: 61)
!473 = distinct !DILexicalBlock(scope: !434, file: !1, line: 107, column: 9)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !1, line: 110, type: !12)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 110, column: 13)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 109, column: 23)
!477 = distinct !DILexicalBlock(scope: !472, file: !1, line: 109, column: 13)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !479, file: !1, line: 116, type: !12)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 115, column: 62)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 115, column: 18)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !482, file: !1, line: 118, type: !12)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 118, column: 13)
!483 = !DISubprogram(name: "PyFile_WriteObject", scope: !1, file: !1, line: 128, type: !484, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i32)* @PyFile_WriteObject, variables: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!51, !12, !12, !51}
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !498, !502, !504, !506, !508, !510}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !483, file: !1, line: 128, type: !12)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !483, file: !1, line: 128, type: !12)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !483, file: !1, line: 128, type: !51)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !483, file: !1, line: 130, type: !12)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !483, file: !1, line: 130, type: !12)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !483, file: !1, line: 130, type: !12)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !483, file: !1, line: 130, type: !12)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !1, line: 146, type: !12)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 146, column: 9)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 145, column: 24)
!497 = distinct !DILexicalBlock(scope: !483, file: !1, line: 145, column: 9)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !1, line: 151, type: !12)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 151, column: 9)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 150, column: 23)
!501 = distinct !DILexicalBlock(scope: !483, file: !1, line: 150, column: 9)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !1, line: 152, type: !12)
!503 = distinct !DILexicalBlock(scope: !500, file: !1, line: 152, column: 9)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !505, file: !1, line: 156, type: !12)
!505 = distinct !DILexicalBlock(scope: !483, file: !1, line: 156, column: 5)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !507, file: !1, line: 157, type: !12)
!507 = distinct !DILexicalBlock(scope: !483, file: !1, line: 157, column: 5)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !509, file: !1, line: 158, type: !12)
!509 = distinct !DILexicalBlock(scope: !483, file: !1, line: 158, column: 5)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !511, file: !1, line: 161, type: !12)
!511 = distinct !DILexicalBlock(scope: !483, file: !1, line: 161, column: 5)
!512 = !DISubprogram(name: "PyFile_WriteString", scope: !1, file: !1, line: 166, type: !513, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*)* @PyFile_WriteString, variables: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!51, !36, !12}
!515 = !{!516, !517, !518, !522, !523}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !512, file: !1, line: 166, type: !36)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !512, file: !1, line: 166, type: !12)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !519, file: !1, line: 176, type: !12)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 175, column: 33)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 175, column: 14)
!521 = distinct !DILexicalBlock(scope: !512, file: !1, line: 168, column: 9)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !519, file: !1, line: 177, type: !51)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 181, type: !12)
!524 = distinct !DILexicalBlock(scope: !519, file: !1, line: 181, column: 9)
!525 = !DISubprogram(name: "PyObject_AsFileDescriptor", scope: !1, file: !1, line: 196, type: !151, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyObject_AsFileDescriptor, variables: !526)
!526 = !{!527, !528, !529, !530, !534, !536, !540}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !525, file: !1, line: 196, type: !12)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !525, file: !1, line: 198, type: !51)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !525, file: !1, line: 199, type: !12)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fno", scope: !531, file: !1, line: 207, type: !12)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 206, column: 5)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 205, column: 14)
!533 = distinct !DILexicalBlock(scope: !525, file: !1, line: 202, column: 9)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !535, file: !1, line: 208, type: !12)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 208, column: 9)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !1, line: 214, type: !12)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 214, column: 13)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 212, column: 32)
!539 = distinct !DILexicalBlock(scope: !531, file: !1, line: 212, column: 13)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !541, file: !1, line: 219, type: !12)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 219, column: 13)
!542 = distinct !DILexicalBlock(scope: !539, file: !1, line: 216, column: 14)
!543 = !DISubprogram(name: "Py_UniversalNewlineFgets", scope: !1, file: !1, line: 255, type: !544, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct._IO_FILE*, %struct._object*)* @Py_UniversalNewlineFgets, variables: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!59, !59, !51, !52, !12}
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !543, file: !1, line: 255, type: !59)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !543, file: !1, line: 255, type: !51)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 3, scope: !543, file: !1, line: 255, type: !52)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fobj", arg: 4, scope: !543, file: !1, line: 255, type: !12)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !543, file: !1, line: 257, type: !59)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !543, file: !1, line: 258, type: !51)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newlinetypes", scope: !543, file: !1, line: 259, type: !51)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skipnextlf", scope: !543, file: !1, line: 260, type: !51)
!555 = !DISubprogram(name: "PyFile_NewStdPrinter", scope: !1, file: !1, line: 355, type: !556, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @PyFile_NewStdPrinter, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!12, !51}
!558 = !{!559, !560}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !555, file: !1, line: 355, type: !51)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !555, file: !1, line: 357, type: !410)
!561 = !DISubprogram(name: "getc_unlocked", scope: !562, file: !562, line: 63, type: !563, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, variables: !565)
!562 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!563 = !DISubroutineType(types: !564)
!564 = !{!51, !52}
!565 = !{!566}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fp", arg: 1, scope: !561, file: !562, line: 63, type: !52)
!567 = !DISubprogram(name: "stdprinter_repr", scope: !1, file: !1, line: 419, type: !568, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_repr, variables: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!12, !410}
!570 = !{!571}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !567, file: !1, line: 419, type: !410)
!572 = !DISubprogram(name: "stdprinter_noop", scope: !1, file: !1, line: 426, type: !568, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_noop, variables: !573)
!573 = !{!574}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !572, file: !1, line: 426, type: !410)
!575 = !DISubprogram(name: "stdprinter_fileno", scope: !1, file: !1, line: 413, type: !568, isLocal: true, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_fileno, variables: !576)
!576 = !{!577}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !575, file: !1, line: 413, type: !410)
!578 = !DISubprogram(name: "stdprinter_isatty", scope: !1, file: !1, line: 432, type: !568, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*)* @stdprinter_isatty, variables: !579)
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !578, file: !1, line: 432, type: !410)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !578, file: !1, line: 434, type: !24)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !583, file: !1, line: 439, type: !584)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 439, column: 5)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !586, line: 139, baseType: !587)
!586 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !586, line: 69, size: 1536, align: 64, elements: !588)
!588 = !{!589, !591, !592, !612, !615, !616, !617, !618, !619, !620, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !587, file: !586, line: 72, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !586, line: 73, baseType: !590, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !587, file: !586, line: 74, baseType: !593, size: 64, align: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !586, line: 44, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !586, line: 19, size: 832, align: 64, elements: !596)
!596 = !{!597, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !586, line: 21, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !595, file: !586, line: 22, baseType: !590, size: 64, align: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !595, file: !586, line: 24, baseType: !12, size: 64, align: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !595, file: !586, line: 25, baseType: !12, size: 64, align: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !595, file: !586, line: 26, baseType: !12, size: 64, align: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !595, file: !586, line: 27, baseType: !12, size: 64, align: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !595, file: !586, line: 28, baseType: !12, size: 64, align: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !595, file: !586, line: 30, baseType: !12, size: 64, align: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !595, file: !586, line: 31, baseType: !12, size: 64, align: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !595, file: !586, line: 32, baseType: !12, size: 64, align: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !595, file: !586, line: 33, baseType: !51, size: 32, align: 32, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !595, file: !586, line: 34, baseType: !51, size: 32, align: 32, offset: 672)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !595, file: !586, line: 37, baseType: !51, size: 32, align: 32, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !595, file: !586, line: 43, baseType: !12, size: 64, align: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !587, file: !586, line: 76, baseType: !613, size: 64, align: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !586, line: 50, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !587, file: !586, line: 77, baseType: !51, size: 32, align: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !587, file: !586, line: 78, baseType: !38, size: 8, align: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !587, file: !586, line: 80, baseType: !38, size: 8, align: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !587, file: !586, line: 85, baseType: !51, size: 32, align: 32, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !587, file: !586, line: 86, baseType: !51, size: 32, align: 32, offset: 352)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !587, file: !586, line: 88, baseType: !621, size: 64, align: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !586, line: 54, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!51, !12, !613, !51, !12}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !587, file: !586, line: 89, baseType: !621, size: 64, align: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !587, file: !586, line: 90, baseType: !12, size: 64, align: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !587, file: !586, line: 91, baseType: !12, size: 64, align: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !587, file: !586, line: 93, baseType: !12, size: 64, align: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !587, file: !586, line: 94, baseType: !12, size: 64, align: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !587, file: !586, line: 95, baseType: !12, size: 64, align: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !587, file: !586, line: 97, baseType: !12, size: 64, align: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !587, file: !586, line: 98, baseType: !12, size: 64, align: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !587, file: !586, line: 99, baseType: !12, size: 64, align: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !587, file: !586, line: 101, baseType: !12, size: 64, align: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !587, file: !586, line: 103, baseType: !51, size: 32, align: 32, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !587, file: !586, line: 105, baseType: !12, size: 64, align: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !587, file: !586, line: 106, baseType: !24, size: 64, align: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !587, file: !586, line: 108, baseType: !51, size: 32, align: 32, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !587, file: !586, line: 109, baseType: !12, size: 64, align: 64, offset: 1344)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !587, file: !586, line: 134, baseType: !337, size: 64, align: 64, offset: 1408)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !587, file: !586, line: 135, baseType: !11, size: 64, align: 64, offset: 1472)
!642 = !DISubprogram(name: "stdprinter_write", scope: !1, file: !1, line: 373, type: !643, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, %struct._object*)* @stdprinter_write, variables: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!12, !410, !12}
!645 = !{!646, !647, !648, !649, !650}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !642, file: !1, line: 373, type: !410)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !642, file: !1, line: 373, type: !12)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !642, file: !1, line: 375, type: !59)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !642, file: !1, line: 376, type: !18)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !651, file: !1, line: 391, type: !584)
!651 = distinct !DILexicalBlock(scope: !642, file: !1, line: 391, column: 5)
!652 = !DISubprogram(name: "get_closed", scope: !1, file: !1, line: 456, type: !653, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_closed, variables: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!12, !410, !11}
!655 = !{!656, !657}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !652, file: !1, line: 456, type: !410)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !652, file: !1, line: 456, type: !11)
!658 = !DISubprogram(name: "get_encoding", scope: !1, file: !1, line: 469, type: !653, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_encoding, variables: !659)
!659 = !{!660, !661}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !658, file: !1, line: 469, type: !410)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !658, file: !1, line: 469, type: !11)
!662 = !DISubprogram(name: "get_mode", scope: !1, file: !1, line: 463, type: !653, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStdPrinter_Object*, i8*)* @get_mode, variables: !663)
!663 = !{!664, !665}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !662, file: !1, line: 463, type: !410)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !662, file: !1, line: 463, type: !11)
!666 = !DISubprogram(name: "stdprinter_init", scope: !1, file: !1, line: 347, type: !218, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @stdprinter_init, variables: !667)
!667 = !{!668, !669, !670}
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !666, file: !1, line: 347, type: !12)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !666, file: !1, line: 347, type: !12)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !666, file: !1, line: 347, type: !12)
!671 = !DISubprogram(name: "stdprinter_new", scope: !1, file: !1, line: 332, type: !672, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @stdprinter_new, variables: !676)
!672 = !DISubroutineType(types: !673)
!673 = !{!12, !674, !12, !12}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!676 = !{!677, !678, !679, !680}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !671, file: !1, line: 332, type: !674)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !671, file: !1, line: 332, type: !12)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kews", arg: 3, scope: !671, file: !1, line: 332, type: !12)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !671, file: !1, line: 334, type: !410)
!681 = !{!682, !690, !691, !692, !693, !694, !699}
!682 = !DIGlobalVariable(name: "PyId_open", scope: !418, file: !1, line: 33, type: !683, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_FromFd.PyId_open)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !14, line: 144, baseType: !684)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !14, line: 140, size: 192, align: 64, elements: !685)
!685 = !{!686, !688, !689}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !14, line: 141, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !684, file: !14, line: 142, baseType: !36, size: 64, align: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !684, file: !14, line: 143, baseType: !12, size: 64, align: 64, offset: 128)
!690 = !DIGlobalVariable(name: "PyId_readline", scope: !434, file: !1, line: 62, type: !683, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_GetLine.PyId_readline)
!691 = !DIGlobalVariable(name: "PyId_write", scope: !483, file: !1, line: 131, type: !683, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyFile_WriteObject.PyId_write)
!692 = !DIGlobalVariable(name: "PyId_fileno", scope: !525, file: !1, line: 200, type: !683, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyObject_AsFileDescriptor.PyId_fileno)
!693 = !DIGlobalVariable(name: "PyStdPrinter_Type", scope: !0, file: !1, line: 481, type: !675, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyStdPrinter_Type)
!694 = !DIGlobalVariable(name: "stdprinter_methods", scope: !0, file: !1, line: 446, type: !695, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @stdprinter_methods)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 1536, align: 64, elements: !697)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!697 = !{!698}
!698 = !DISubrange(count: 6)
!699 = !DIGlobalVariable(name: "stdprinter_getsetlist", scope: !0, file: !1, line: 474, type: !700, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @stdprinter_getsetlist)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 1280, align: 64, elements: !702)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!702 = !{!703}
!703 = !DISubrange(count: 4)
!704 = !{i32 2, !"Dwarf Version", i32 4}
!705 = !{i32 2, !"Debug Info Version", i32 3}
!706 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!707 = !DIExpression()
!708 = !DILocation(line: 29, column: 19, scope: !418)
!709 = !DILocation(line: 29, column: 35, scope: !418)
!710 = !DILocation(line: 29, column: 53, scope: !418)
!711 = !DILocation(line: 29, column: 63, scope: !418)
!712 = !DILocation(line: 29, column: 86, scope: !418)
!713 = !DILocation(line: 30, column: 27, scope: !418)
!714 = !DILocation(line: 30, column: 47, scope: !418)
!715 = !DILocation(line: 30, column: 60, scope: !418)
!716 = !DILocation(line: 35, column: 10, scope: !418)
!717 = !DILocation(line: 32, column: 15, scope: !418)
!718 = !DILocation(line: 36, column: 12, scope: !719)
!719 = distinct !DILexicalBlock(scope: !418, file: !1, line: 36, column: 9)
!720 = !DILocation(line: 36, column: 9, scope: !418)
!721 = !DILocation(line: 38, column: 14, scope: !418)
!722 = !DILocation(line: 32, column: 20, scope: !418)
!723 = !DILocation(line: 41, column: 5, scope: !724)
!724 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!725 = !DILocation(line: 41, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !433, file: !1, line: 41, column: 5)
!727 = !{!728, !729, i64 0}
!728 = !{!"_object", !729, i64 0, !732, i64 8}
!729 = !{!"long", !730, i64 0}
!730 = !{!"omnipotent char", !731, i64 0}
!731 = !{!"Simple C/C++ TBAA"}
!732 = !{!"any pointer", !730, i64 0}
!733 = !DILocation(line: 41, column: 5, scope: !433)
!734 = !DILocation(line: 41, column: 5, scope: !735)
!735 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 3)
!736 = !{!728, !732, i64 8}
!737 = !{!738, !732, i64 48}
!738 = !{!"_typeobject", !739, i64 0, !732, i64 24, !729, i64 32, !729, i64 40, !732, i64 48, !732, i64 56, !732, i64 64, !732, i64 72, !732, i64 80, !732, i64 88, !732, i64 96, !732, i64 104, !732, i64 112, !732, i64 120, !732, i64 128, !732, i64 136, !732, i64 144, !732, i64 152, !732, i64 160, !729, i64 168, !732, i64 176, !732, i64 184, !732, i64 192, !732, i64 200, !729, i64 208, !732, i64 216, !732, i64 224, !732, i64 232, !732, i64 240, !732, i64 248, !732, i64 256, !732, i64 264, !732, i64 272, !732, i64 280, !729, i64 288, !732, i64 296, !732, i64 304, !732, i64 312, !732, i64 320, !732, i64 328, !732, i64 336, !732, i64 344, !732, i64 352, !732, i64 360, !732, i64 368, !732, i64 376, !740, i64 384, !732, i64 392}
!739 = !{!"", !728, i64 0, !729, i64 16}
!740 = !{!"int", !730, i64 0}
!741 = !DILocation(line: 47, column: 1, scope: !418)
!742 = !DILocation(line: 50, column: 26, scope: !434)
!743 = !DILocation(line: 50, column: 33, scope: !434)
!744 = !DILocation(line: 52, column: 5, scope: !434)
!745 = !DILocation(line: 54, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !434, file: !1, line: 54, column: 9)
!747 = !DILocation(line: 54, column: 9, scope: !434)
!748 = !DILocation(line: 55, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !1, line: 54, column: 20)
!750 = !DILocation(line: 56, column: 9, scope: !749)
!751 = !DILocation(line: 64, column: 18, scope: !442)
!752 = !DILocation(line: 60, column: 19, scope: !442)
!753 = !DILocation(line: 65, column: 20, scope: !754)
!754 = distinct !DILexicalBlock(scope: !442, file: !1, line: 65, column: 13)
!755 = !DILocation(line: 65, column: 13, scope: !442)
!756 = !DILocation(line: 67, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !442, file: !1, line: 67, column: 13)
!758 = !DILocation(line: 67, column: 13, scope: !442)
!759 = !DILocation(line: 68, column: 20, scope: !757)
!760 = !DILocation(line: 61, column: 19, scope: !442)
!761 = !DILocation(line: 68, column: 13, scope: !757)
!762 = !DILocation(line: 70, column: 20, scope: !757)
!763 = !DILocation(line: 71, column: 18, scope: !447)
!764 = !DILocation(line: 71, column: 13, scope: !442)
!765 = !DILocation(line: 72, column: 13, scope: !766)
!766 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 1)
!767 = !DILocation(line: 72, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !445, file: !1, line: 72, column: 13)
!769 = !DILocation(line: 72, column: 13, scope: !445)
!770 = !DILocation(line: 72, column: 13, scope: !771)
!771 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 3)
!772 = !DILocation(line: 78, column: 13, scope: !455)
!773 = !DILocation(line: 52, column: 15, scope: !434)
!774 = !DILocation(line: 75, column: 16, scope: !442)
!775 = !{!732, !732, i64 0}
!776 = !DILocation(line: 76, column: 9, scope: !777)
!777 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!778 = !DILocation(line: 76, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !449, file: !1, line: 76, column: 9)
!780 = !DILocation(line: 76, column: 9, scope: !449)
!781 = !DILocation(line: 76, column: 9, scope: !782)
!782 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 3)
!783 = !DILocation(line: 77, column: 9, scope: !784)
!784 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 1)
!785 = !DILocation(line: 77, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !451, file: !1, line: 77, column: 9)
!787 = !DILocation(line: 77, column: 9, scope: !451)
!788 = !DILocation(line: 77, column: 9, scope: !789)
!789 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 3)
!790 = !DILocation(line: 78, column: 20, scope: !455)
!791 = !DILocation(line: 78, column: 28, scope: !455)
!792 = !DILocation(line: 78, column: 32, scope: !793)
!793 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 1)
!794 = !DILocation(line: 80, column: 13, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 3)
!796 = distinct !DILexicalBlock(scope: !453, file: !1, line: 80, column: 13)
!797 = !{!738, !729, i64 168}
!798 = !DILocation(line: 78, column: 54, scope: !455)
!799 = !DILocation(line: 80, column: 13, scope: !800)
!800 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!801 = !DILocation(line: 80, column: 13, scope: !796)
!802 = !DILocation(line: 80, column: 13, scope: !453)
!803 = !DILocation(line: 81, column: 20, scope: !454)
!804 = !DILocation(line: 82, column: 29, scope: !454)
!805 = !DILocation(line: 82, column: 13, scope: !454)
!806 = !DILocation(line: 84, column: 9, scope: !454)
!807 = !DILocation(line: 87, column: 11, scope: !458)
!808 = !DILocation(line: 102, column: 17, scope: !809)
!809 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!810 = !DILocation(line: 87, column: 25, scope: !458)
!811 = !DILocation(line: 87, column: 15, scope: !458)
!812 = !DILocation(line: 87, column: 36, scope: !813)
!813 = !DILexicalBlockFile(scope: !458, file: !1, discriminator: 2)
!814 = !DILocation(line: 91, column: 13, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !1, discriminator: 3)
!816 = distinct !DILexicalBlock(scope: !461, file: !1, line: 91, column: 13)
!817 = !DILocation(line: 87, column: 9, scope: !434)
!818 = !DILocation(line: 88, column: 19, scope: !457)
!819 = !DILocation(line: 88, column: 15, scope: !457)
!820 = !DILocation(line: 89, column: 26, scope: !457)
!821 = !{!739, !729, i64 16}
!822 = !DILocation(line: 89, column: 20, scope: !457)
!823 = !DILocation(line: 90, column: 17, scope: !463)
!824 = !DILocation(line: 90, column: 13, scope: !457)
!825 = !DILocation(line: 91, column: 13, scope: !826)
!826 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 1)
!827 = !DILocation(line: 91, column: 13, scope: !816)
!828 = !DILocation(line: 91, column: 13, scope: !461)
!829 = !DILocation(line: 92, column: 20, scope: !462)
!830 = !DILocation(line: 93, column: 29, scope: !462)
!831 = !DILocation(line: 93, column: 13, scope: !462)
!832 = !DILocation(line: 107, column: 15, scope: !473)
!833 = !DILocation(line: 96, column: 23, scope: !468)
!834 = !DILocation(line: 96, column: 18, scope: !468)
!835 = !{!730, !730, i64 0}
!836 = !DILocation(line: 96, column: 27, scope: !468)
!837 = !DILocation(line: 96, column: 18, scope: !463)
!838 = !DILocation(line: 97, column: 25, scope: !466)
!839 = !DILocation(line: 97, column: 35, scope: !466)
!840 = !DILocation(line: 97, column: 17, scope: !467)
!841 = !DILocation(line: 98, column: 17, scope: !466)
!842 = !DILocation(line: 101, column: 21, scope: !465)
!843 = !DILocation(line: 100, column: 27, scope: !465)
!844 = !DILocation(line: 102, column: 17, scope: !845)
!845 = distinct !DILexicalBlock(scope: !470, file: !1, line: 102, column: 17)
!846 = !DILocation(line: 102, column: 17, scope: !470)
!847 = !DILocation(line: 102, column: 17, scope: !848)
!848 = !DILexicalBlockFile(scope: !845, file: !1, discriminator: 3)
!849 = !DILocation(line: 103, column: 24, scope: !465)
!850 = !DILocation(line: 117, column: 37, scope: !479)
!851 = !DILocation(line: 107, column: 25, scope: !473)
!852 = !DILocation(line: 107, column: 36, scope: !853)
!853 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 2)
!854 = !DILocation(line: 110, column: 13, scope: !855)
!855 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 3)
!856 = distinct !DILexicalBlock(scope: !475, file: !1, line: 110, column: 13)
!857 = !DILocation(line: 107, column: 9, scope: !434)
!858 = !DILocation(line: 108, column: 26, scope: !472)
!859 = !{!860, !729, i64 16}
!860 = !{!"", !728, i64 0, !729, i64 16, !729, i64 24, !861, i64 32, !732, i64 40}
!861 = !{!"", !740, i64 0, !740, i64 0, !740, i64 0, !740, i64 0, !740, i64 0, !740, i64 1}
!862 = !DILocation(line: 108, column: 20, scope: !472)
!863 = !DILocation(line: 109, column: 17, scope: !477)
!864 = !DILocation(line: 109, column: 13, scope: !472)
!865 = !DILocation(line: 110, column: 13, scope: !866)
!866 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!867 = !DILocation(line: 110, column: 13, scope: !856)
!868 = !DILocation(line: 110, column: 13, scope: !475)
!869 = !DILocation(line: 111, column: 20, scope: !476)
!870 = !DILocation(line: 112, column: 29, scope: !476)
!871 = !DILocation(line: 112, column: 13, scope: !476)
!872 = !DILocation(line: 122, column: 12, scope: !434)
!873 = !DILocation(line: 114, column: 9, scope: !476)
!874 = !DILocation(line: 115, column: 18, scope: !480)
!875 = !DILocation(line: 115, column: 18, scope: !876)
!876 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 1)
!877 = !DILocation(line: 115, column: 18, scope: !878)
!878 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 3)
!879 = !DILocation(line: 115, column: 18, scope: !880)
!880 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 5)
!881 = !DILocation(line: 115, column: 18, scope: !882)
!882 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 6)
!883 = !DILocation(line: 115, column: 18, scope: !884)
!884 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!885 = !DILocation(line: 115, column: 18, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 10)
!887 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 9)
!888 = !DILocation(line: 115, column: 18, scope: !889)
!889 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 2)
!890 = !DILocation(line: 115, column: 18, scope: !891)
!891 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 12)
!892 = !DILocation(line: 115, column: 18, scope: !893)
!893 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 14)
!894 = !DILocation(line: 115, column: 18, scope: !895)
!895 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 16)
!896 = !DILocation(line: 115, column: 18, scope: !897)
!897 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 17)
!898 = !DILocation(line: 115, column: 18, scope: !899)
!899 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 15)
!900 = !DILocation(line: 115, column: 18, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !1, discriminator: 21)
!902 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 20)
!903 = !{!904, !904, i64 0}
!904 = !{!"short", !730, i64 0}
!905 = !DILocation(line: 115, column: 18, scope: !906)
!906 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 13)
!907 = !DILocation(line: 115, column: 18, scope: !908)
!908 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 23)
!909 = !DILocation(line: 115, column: 18, scope: !910)
!910 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 25)
!911 = !DILocation(line: 115, column: 18, scope: !912)
!912 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 26)
!913 = !DILocation(line: 115, column: 18, scope: !914)
!914 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 24)
!915 = !DILocation(line: 115, column: 18, scope: !916)
!916 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 30)
!917 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 29)
!918 = !{!740, !740, i64 0}
!919 = !DILocation(line: 115, column: 53, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !1, discriminator: 32)
!921 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 11)
!922 = !DILocation(line: 115, column: 18, scope: !477)
!923 = !DILocation(line: 117, column: 51, scope: !479)
!924 = !DILocation(line: 117, column: 17, scope: !479)
!925 = !DILocation(line: 116, column: 23, scope: !479)
!926 = !DILocation(line: 118, column: 13, scope: !927)
!927 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 1)
!928 = !DILocation(line: 118, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !482, file: !1, line: 118, column: 13)
!930 = !DILocation(line: 118, column: 13, scope: !482)
!931 = !DILocation(line: 118, column: 13, scope: !932)
!932 = !DILexicalBlockFile(scope: !929, file: !1, discriminator: 3)
!933 = !DILocation(line: 119, column: 20, scope: !479)
!934 = !DILocation(line: 120, column: 9, scope: !479)
!935 = !DILocation(line: 123, column: 1, scope: !434)
!936 = !DILocation(line: 128, column: 30, scope: !483)
!937 = !DILocation(line: 128, column: 43, scope: !483)
!938 = !DILocation(line: 128, column: 50, scope: !483)
!939 = !DILocation(line: 133, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !483, file: !1, line: 133, column: 9)
!941 = !DILocation(line: 133, column: 9, scope: !483)
!942 = !DILocation(line: 134, column: 25, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !1, line: 133, column: 20)
!944 = !DILocation(line: 134, column: 9, scope: !943)
!945 = !DILocation(line: 135, column: 9, scope: !943)
!946 = !DILocation(line: 137, column: 14, scope: !483)
!947 = !DILocation(line: 130, column: 15, scope: !483)
!948 = !DILocation(line: 138, column: 16, scope: !949)
!949 = distinct !DILexicalBlock(scope: !483, file: !1, line: 138, column: 9)
!950 = !DILocation(line: 138, column: 9, scope: !483)
!951 = !DILocation(line: 140, column: 15, scope: !952)
!952 = distinct !DILexicalBlock(scope: !483, file: !1, line: 140, column: 9)
!953 = !DILocation(line: 140, column: 9, scope: !483)
!954 = !DILocation(line: 141, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !1, line: 140, column: 31)
!956 = !DILocation(line: 130, column: 24, scope: !483)
!957 = !DILocation(line: 142, column: 5, scope: !955)
!958 = !DILocation(line: 144, column: 17, scope: !952)
!959 = !DILocation(line: 145, column: 15, scope: !497)
!960 = !DILocation(line: 145, column: 9, scope: !483)
!961 = !DILocation(line: 146, column: 9, scope: !962)
!962 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 1)
!963 = !DILocation(line: 146, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !495, file: !1, line: 146, column: 9)
!965 = !DILocation(line: 146, column: 9, scope: !495)
!966 = !DILocation(line: 146, column: 9, scope: !967)
!967 = !DILexicalBlockFile(scope: !964, file: !1, discriminator: 3)
!968 = !DILocation(line: 149, column: 12, scope: !483)
!969 = !DILocation(line: 130, column: 32, scope: !483)
!970 = !DILocation(line: 150, column: 14, scope: !501)
!971 = !DILocation(line: 150, column: 9, scope: !483)
!972 = !DILocation(line: 151, column: 9, scope: !973)
!973 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 1)
!974 = !DILocation(line: 151, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !499, file: !1, line: 151, column: 9)
!976 = !DILocation(line: 151, column: 9, scope: !499)
!977 = !DILocation(line: 151, column: 9, scope: !978)
!978 = !DILexicalBlockFile(scope: !975, file: !1, discriminator: 3)
!979 = !DILocation(line: 152, column: 9, scope: !980)
!980 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!981 = !DILocation(line: 152, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !503, file: !1, line: 152, column: 9)
!983 = !DILocation(line: 152, column: 9, scope: !503)
!984 = !DILocation(line: 152, column: 9, scope: !985)
!985 = !DILexicalBlockFile(scope: !982, file: !1, discriminator: 3)
!986 = !DILocation(line: 155, column: 14, scope: !483)
!987 = !DILocation(line: 130, column: 39, scope: !483)
!988 = !DILocation(line: 156, column: 5, scope: !989)
!989 = !DILexicalBlockFile(scope: !505, file: !1, discriminator: 1)
!990 = !DILocation(line: 156, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !505, file: !1, line: 156, column: 5)
!992 = !DILocation(line: 156, column: 5, scope: !505)
!993 = !DILocation(line: 156, column: 5, scope: !994)
!994 = !DILexicalBlockFile(scope: !991, file: !1, discriminator: 3)
!995 = !DILocation(line: 157, column: 5, scope: !996)
!996 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!997 = !DILocation(line: 157, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !507, file: !1, line: 157, column: 5)
!999 = !DILocation(line: 157, column: 5, scope: !507)
!1000 = !DILocation(line: 157, column: 5, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 3)
!1002 = !DILocation(line: 158, column: 5, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 1)
!1004 = !DILocation(line: 158, column: 5, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !509, file: !1, line: 158, column: 5)
!1006 = !DILocation(line: 158, column: 5, scope: !509)
!1007 = !DILocation(line: 158, column: 5, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 3)
!1009 = !DILocation(line: 159, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !483, file: !1, line: 159, column: 9)
!1011 = !DILocation(line: 159, column: 9, scope: !483)
!1012 = !DILocation(line: 161, column: 5, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 1)
!1014 = !DILocation(line: 161, column: 5, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !511, file: !1, line: 161, column: 5)
!1016 = !DILocation(line: 161, column: 5, scope: !511)
!1017 = !DILocation(line: 161, column: 5, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 3)
!1019 = !DILocation(line: 163, column: 1, scope: !483)
!1020 = !DILocation(line: 166, column: 32, scope: !512)
!1021 = !DILocation(line: 166, column: 45, scope: !512)
!1022 = !DILocation(line: 168, column: 11, scope: !521)
!1023 = !DILocation(line: 170, column: 14, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 170, column: 13)
!1025 = distinct !DILexicalBlock(scope: !521, file: !1, line: 168, column: 20)
!1026 = !DILocation(line: 168, column: 9, scope: !512)
!1027 = !DILocation(line: 170, column: 13, scope: !1025)
!1028 = !DILocation(line: 171, column: 29, scope: !1024)
!1029 = !DILocation(line: 171, column: 13, scope: !1024)
!1030 = !DILocation(line: 175, column: 14, scope: !521)
!1031 = !DILocation(line: 176, column: 23, scope: !519)
!1032 = !DILocation(line: 176, column: 19, scope: !519)
!1033 = !DILocation(line: 178, column: 15, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !519, file: !1, line: 178, column: 13)
!1035 = !DILocation(line: 178, column: 13, scope: !519)
!1036 = !DILocation(line: 180, column: 15, scope: !519)
!1037 = !DILocation(line: 177, column: 13, scope: !519)
!1038 = !DILocation(line: 181, column: 9, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1040 = !DILocation(line: 181, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !524, file: !1, line: 181, column: 9)
!1042 = !DILocation(line: 181, column: 9, scope: !524)
!1043 = !DILocation(line: 181, column: 9, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1041, file: !1, discriminator: 3)
!1045 = !DILocation(line: 186, column: 1, scope: !512)
!1046 = !DILocation(line: 196, column: 37, scope: !525)
!1047 = !DILocation(line: 202, column: 9, scope: !533)
!1048 = !DILocation(line: 202, column: 9, scope: !525)
!1049 = !DILocation(line: 203, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !533, file: !1, line: 202, column: 26)
!1051 = !DILocation(line: 198, column: 9, scope: !525)
!1052 = !DILocation(line: 204, column: 5, scope: !1050)
!1053 = !DILocation(line: 205, column: 22, scope: !532)
!1054 = !DILocation(line: 199, column: 15, scope: !525)
!1055 = !DILocation(line: 205, column: 60, scope: !532)
!1056 = !DILocation(line: 205, column: 14, scope: !533)
!1057 = !DILocation(line: 207, column: 25, scope: !531)
!1058 = !DILocation(line: 207, column: 19, scope: !531)
!1059 = !DILocation(line: 208, column: 9, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!1061 = !DILocation(line: 208, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !535, file: !1, line: 208, column: 9)
!1063 = !DILocation(line: 208, column: 9, scope: !535)
!1064 = !DILocation(line: 208, column: 9, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1062, file: !1, discriminator: 3)
!1066 = !DILocation(line: 209, column: 17, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !531, file: !1, line: 209, column: 13)
!1068 = !DILocation(line: 209, column: 13, scope: !531)
!1069 = !DILocation(line: 212, column: 13, scope: !539)
!1070 = !DILocation(line: 212, column: 13, scope: !531)
!1071 = !DILocation(line: 213, column: 18, scope: !538)
!1072 = !DILocation(line: 214, column: 13, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 1)
!1074 = !DILocation(line: 214, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !537, file: !1, line: 214, column: 13)
!1076 = !DILocation(line: 214, column: 13, scope: !537)
!1077 = !DILocation(line: 214, column: 13, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1075, file: !1, discriminator: 3)
!1079 = !DILocation(line: 217, column: 29, scope: !542)
!1080 = !DILocation(line: 217, column: 13, scope: !542)
!1081 = !DILocation(line: 219, column: 13, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 1)
!1083 = !DILocation(line: 219, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !541, file: !1, line: 219, column: 13)
!1085 = !DILocation(line: 219, column: 13, scope: !541)
!1086 = !DILocation(line: 219, column: 13, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 3)
!1088 = !DILocation(line: 224, column: 25, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !532, file: !1, line: 223, column: 10)
!1090 = !DILocation(line: 224, column: 9, scope: !1089)
!1091 = !DILocation(line: 226, column: 9, scope: !1089)
!1092 = !DILocation(line: 229, column: 12, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !525, file: !1, line: 229, column: 9)
!1094 = !DILocation(line: 229, column: 18, scope: !1093)
!1095 = !DILocation(line: 229, column: 21, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !1, discriminator: 1)
!1097 = !DILocation(line: 229, column: 9, scope: !525)
!1098 = !DILocation(line: 231, column: 12, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !525, file: !1, line: 231, column: 9)
!1100 = !DILocation(line: 231, column: 9, scope: !525)
!1101 = !DILocation(line: 232, column: 22, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 231, column: 17)
!1103 = !DILocation(line: 232, column: 9, scope: !1102)
!1104 = !DILocation(line: 235, column: 9, scope: !1102)
!1105 = !DILocation(line: 238, column: 1, scope: !525)
!1106 = !DILocation(line: 255, column: 32, scope: !543)
!1107 = !DILocation(line: 255, column: 41, scope: !543)
!1108 = !DILocation(line: 255, column: 50, scope: !543)
!1109 = !DILocation(line: 255, column: 68, scope: !543)
!1110 = !DILocation(line: 257, column: 11, scope: !543)
!1111 = !DILocation(line: 259, column: 9, scope: !543)
!1112 = !DILocation(line: 260, column: 9, scope: !543)
!1113 = !DILocation(line: 262, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !543, file: !1, line: 262, column: 9)
!1115 = !DILocation(line: 262, column: 9, scope: !543)
!1116 = !DILocation(line: 263, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 262, column: 15)
!1118 = !DILocation(line: 263, column: 15, scope: !1117)
!1119 = !DILocation(line: 264, column: 9, scope: !1117)
!1120 = !DILocation(line: 266, column: 5, scope: !543)
!1121 = !DILocation(line: 258, column: 9, scope: !543)
!1122 = !DILocation(line: 65, column: 10, scope: !561, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 268, column: 28, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 2)
!1125 = !DILocation(line: 268, column: 5, scope: !543)
!1126 = !DILocation(line: 268, column: 12, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 4)
!1128 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 1)
!1129 = !DILocation(line: 268, column: 16, scope: !543)
!1130 = !DILocation(line: 268, column: 20, scope: !543)
!1131 = !DILocation(line: 63, column: 22, scope: !561, inlinedAt: !1123)
!1132 = !{!1133, !732, i64 8}
!1133 = !{!"_IO_FILE", !740, i64 0, !732, i64 8, !732, i64 16, !732, i64 24, !732, i64 32, !732, i64 40, !732, i64 48, !732, i64 56, !732, i64 64, !732, i64 72, !732, i64 80, !732, i64 88, !732, i64 96, !732, i64 104, !740, i64 112, !740, i64 116, !729, i64 120, !904, i64 128, !730, i64 130, !730, i64 131, !732, i64 136, !729, i64 144, !732, i64 152, !732, i64 160, !732, i64 168, !732, i64 176, !729, i64 184, !740, i64 192, !730, i64 196}
!1134 = !{!1133, !732, i64 16}
!1135 = !{!"branch_weights", i32 64, i32 4}
!1136 = !DILocation(line: 65, column: 10, scope: !1137, inlinedAt: !1123)
!1137 = !DILexicalBlockFile(scope: !561, file: !562, discriminator: 2)
!1138 = !DILocation(line: 268, column: 5, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 3)
!1140 = !DILocation(line: 65, column: 10, scope: !1141, inlinedAt: !1123)
!1141 = !DILexicalBlockFile(scope: !561, file: !562, discriminator: 1)
!1142 = !DILocation(line: 268, column: 42, scope: !543)
!1143 = !DILocation(line: 287, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 287, column: 13)
!1145 = distinct !DILexicalBlock(scope: !543, file: !1, line: 268, column: 51)
!1146 = !DILocation(line: 287, column: 13, scope: !1145)
!1147 = !DILocation(line: 297, column: 11, scope: !1145)
!1148 = !DILocation(line: 297, column: 14, scope: !1145)
!1149 = !DILocation(line: 302, column: 5, scope: !543)
!1150 = !DILocation(line: 303, column: 8, scope: !543)
!1151 = !DILocation(line: 63, column: 22, scope: !561, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 312, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 304, column: 23)
!1154 = distinct !DILexicalBlock(scope: !543, file: !1, line: 304, column: 10)
!1155 = !DILocation(line: 65, column: 10, scope: !561, inlinedAt: !1152)
!1156 = !DILocation(line: 294, column: 23, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 294, column: 21)
!1158 = !DILocation(line: 297, column: 16, scope: !1145)
!1159 = !DILocation(line: 298, column: 13, scope: !1145)
!1160 = !DILocation(line: 304, column: 10, scope: !543)
!1161 = !DILocation(line: 65, column: 10, scope: !1141, inlinedAt: !1152)
!1162 = !DILocation(line: 65, column: 10, scope: !1137, inlinedAt: !1152)
!1163 = !DILocation(line: 313, column: 16, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 313, column: 14)
!1165 = !DILocation(line: 313, column: 14, scope: !1153)
!1166 = !DILocation(line: 314, column: 13, scope: !1164)
!1167 = !DILocation(line: 316, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !543, file: !1, line: 316, column: 9)
!1169 = !DILocation(line: 317, column: 9, scope: !1168)
!1170 = !DILocation(line: 319, column: 1, scope: !543)
!1171 = !DILocation(line: 355, column: 26, scope: !555)
!1172 = !DILocation(line: 359, column: 22, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !555, file: !1, line: 359, column: 9)
!1174 = !DILocation(line: 359, column: 15, scope: !1173)
!1175 = !DILocation(line: 359, column: 12, scope: !1173)
!1176 = !DILocation(line: 359, column: 30, scope: !1173)
!1177 = !DILocation(line: 359, column: 46, scope: !1173)
!1178 = !DILocation(line: 359, column: 39, scope: !1173)
!1179 = !DILocation(line: 359, column: 36, scope: !1173)
!1180 = !DILocation(line: 359, column: 9, scope: !555)
!1181 = !DILocation(line: 364, column: 12, scope: !555)
!1182 = !DILocation(line: 366, column: 14, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !555, file: !1, line: 366, column: 9)
!1184 = !DILocation(line: 366, column: 9, scope: !555)
!1185 = !DILocation(line: 367, column: 15, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 366, column: 23)
!1187 = !DILocation(line: 367, column: 18, scope: !1186)
!1188 = !{!1189, !740, i64 16}
!1189 = !{!"", !728, i64 0, !740, i64 16}
!1190 = !DILocation(line: 368, column: 5, scope: !1186)
!1191 = !DILocation(line: 370, column: 1, scope: !555)
!1192 = !DILocation(line: 419, column: 38, scope: !567)
!1193 = !DILocation(line: 422, column: 39, scope: !567)
!1194 = !DILocation(line: 421, column: 12, scope: !567)
!1195 = !DILocation(line: 421, column: 5, scope: !567)
!1196 = !DILocation(line: 347, column: 27, scope: !666)
!1197 = !DILocation(line: 347, column: 43, scope: !666)
!1198 = !DILocation(line: 347, column: 59, scope: !666)
!1199 = !DILocation(line: 349, column: 21, scope: !666)
!1200 = !DILocation(line: 349, column: 5, scope: !666)
!1201 = !DILocation(line: 351, column: 5, scope: !666)
!1202 = !DILocation(line: 332, column: 30, scope: !671)
!1203 = !DILocation(line: 332, column: 46, scope: !671)
!1204 = !DILocation(line: 332, column: 62, scope: !671)
!1205 = !DILocation(line: 338, column: 42, scope: !671)
!1206 = !{!738, !732, i64 304}
!1207 = !DILocation(line: 338, column: 36, scope: !671)
!1208 = !DILocation(line: 339, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !671, file: !1, line: 339, column: 9)
!1210 = !DILocation(line: 339, column: 9, scope: !671)
!1211 = !DILocation(line: 340, column: 15, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 339, column: 23)
!1213 = !DILocation(line: 340, column: 18, scope: !1212)
!1214 = !DILocation(line: 341, column: 5, scope: !1212)
!1215 = !DILocation(line: 343, column: 5, scope: !671)
!1216 = !DILocation(line: 426, column: 38, scope: !572)
!1217 = !DILocation(line: 428, column: 5, scope: !572)
!1218 = !DILocation(line: 413, column: 40, scope: !575)
!1219 = !DILocation(line: 415, column: 41, scope: !575)
!1220 = !DILocation(line: 415, column: 28, scope: !575)
!1221 = !DILocation(line: 415, column: 12, scope: !575)
!1222 = !DILocation(line: 415, column: 5, scope: !575)
!1223 = !DILocation(line: 432, column: 40, scope: !578)
!1224 = !DILocation(line: 435, column: 15, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !578, file: !1, line: 435, column: 9)
!1226 = !DILocation(line: 435, column: 18, scope: !1225)
!1227 = !DILocation(line: 435, column: 9, scope: !578)
!1228 = !DILocation(line: 436, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 435, column: 23)
!1230 = !DILocation(line: 439, column: 5, scope: !583)
!1231 = !DILocation(line: 440, column: 24, scope: !583)
!1232 = !DILocation(line: 440, column: 11, scope: !583)
!1233 = !DILocation(line: 434, column: 10, scope: !578)
!1234 = !DILocation(line: 441, column: 5, scope: !583)
!1235 = !DILocation(line: 443, column: 12, scope: !578)
!1236 = !DILocation(line: 443, column: 5, scope: !578)
!1237 = !DILocation(line: 444, column: 1, scope: !578)
!1238 = !DILocation(line: 373, column: 39, scope: !642)
!1239 = !DILocation(line: 373, column: 55, scope: !642)
!1240 = !DILocation(line: 375, column: 5, scope: !642)
!1241 = !DILocation(line: 378, column: 15, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !642, file: !1, line: 378, column: 9)
!1243 = !DILocation(line: 378, column: 18, scope: !1242)
!1244 = !DILocation(line: 378, column: 9, scope: !642)
!1245 = !DILocation(line: 383, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 378, column: 23)
!1247 = !DILocation(line: 375, column: 11, scope: !642)
!1248 = !DILocation(line: 386, column: 10, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !642, file: !1, line: 386, column: 9)
!1250 = !DILocation(line: 386, column: 9, scope: !642)
!1251 = !DILocation(line: 389, column: 16, scope: !642)
!1252 = !DILocation(line: 389, column: 9, scope: !642)
!1253 = !DILocation(line: 376, column: 16, scope: !642)
!1254 = !DILocation(line: 391, column: 5, scope: !651)
!1255 = !DILocation(line: 392, column: 5, scope: !651)
!1256 = !DILocation(line: 392, column: 11, scope: !651)
!1257 = !DILocation(line: 398, column: 21, scope: !651)
!1258 = !DILocation(line: 398, column: 25, scope: !651)
!1259 = !DILocation(line: 398, column: 9, scope: !651)
!1260 = !DILocation(line: 400, column: 5, scope: !651)
!1261 = !DILocation(line: 402, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !642, file: !1, line: 402, column: 9)
!1263 = !DILocation(line: 402, column: 9, scope: !642)
!1264 = !DILocation(line: 403, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 403, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 402, column: 16)
!1267 = !DILocation(line: 403, column: 19, scope: !1265)
!1268 = !DILocation(line: 403, column: 13, scope: !1266)
!1269 = !DILocation(line: 404, column: 13, scope: !1265)
!1270 = !DILocation(line: 405, column: 28, scope: !1266)
!1271 = !DILocation(line: 405, column: 9, scope: !1266)
!1272 = !DILocation(line: 406, column: 9, scope: !1266)
!1273 = !DILocation(line: 409, column: 12, scope: !642)
!1274 = !DILocation(line: 409, column: 5, scope: !642)
!1275 = !DILocation(line: 410, column: 1, scope: !642)
!1276 = !DILocation(line: 456, column: 33, scope: !652)
!1277 = !DILocation(line: 456, column: 45, scope: !652)
!1278 = !DILocation(line: 458, column: 5, scope: !652)
!1279 = !DILocation(line: 459, column: 5, scope: !652)
!1280 = !DILocation(line: 469, column: 35, scope: !658)
!1281 = !DILocation(line: 469, column: 47, scope: !658)
!1282 = !DILocation(line: 471, column: 5, scope: !658)
!1283 = !DILocation(line: 463, column: 31, scope: !662)
!1284 = !DILocation(line: 463, column: 43, scope: !662)
!1285 = !DILocation(line: 465, column: 12, scope: !662)
!1286 = !DILocation(line: 465, column: 5, scope: !662)
