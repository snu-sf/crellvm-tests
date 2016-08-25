; ModuleID = './bufferedio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyOSErrorObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i64 }
%struct.buffered = type { %struct._object, %struct._object*, i32, i32, i32, i32, i8, i32, i64, i8*, i64, i64, i64, i64, i64, i8*, i64, i64, i64, %struct._object*, %struct._object* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.rwpair = type { %struct._object, %struct.buffered*, %struct.buffered*, %struct._object*, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._PyIO_State = type { i32, %struct._object*, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@.str = private unnamed_addr constant [20 x i8] c"_io._BufferedIOBase\00", align 1
@bufferediobase_doc = internal global [497 x i8] c"Base class for buffered IO objects.\0A\0AThe main difference with RawIOBase is that the read() method\0Asupports omitting the size argument, and does not have a default\0Aimplementation that defers to readinto().\0A\0AIn addition, read(), readinto() and write() may raise\0ABlockingIOError if the underlying raw stream is in non-blocking\0Amode and not ready; unlike their raw counterparts, they will never\0Areturn None.\0A\0AA typical implementation should not inherit from a RawIOBase\0Aimplementation, but wrap one.\0A\00", align 16
@bufferediobase_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @bufferediobase_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @bufferediobase_detach_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bufferediobase_read, i32 1, i8* getelementptr inbounds ([600 x i8], [600 x i8]* @bufferediobase_read_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bufferediobase_read1, i32 1, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @bufferediobase_read1_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bufferediobase_readinto, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bufferediobase_write, i32 1, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @bufferediobase_write_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyIOBase_Type = external global %struct._typeobject, align 8
@PyBufferedIOBase_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263169, i8* getelementptr inbounds ([497 x i8], [497 x i8]* @bufferediobase_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @bufferediobase_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @PyIOBase_Type, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_PyIO_trap_eintr.eintr_int = internal global %struct._object* null, align 8
@PyExc_EnvironmentError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"_io.BufferedReader\00", align 1
@bufferedreader_doc = internal global [69 x i8] c"Create a new buffered reader using the given readable raw IO object.\00", align 16
@bufferedreader_methods = internal global [20 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_simple_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_dealloc_warn to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_peek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_read1 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readinto to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@bufferedreader_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 14, i64 40, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@bufferedreader_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_name_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_mode_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyBufferedReader_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i64 152, i64 0, void (%struct._object*)* bitcast (void (%struct.buffered*)* @buffered_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.buffered*)* @buffered_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @bufferedreader_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.buffered*, i32 (%struct._object*, i8*)*, i8*)* @buffered_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.buffered*)* @buffered_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 144, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.buffered*)* @buffered_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([20 x %struct.PyMethodDef], [20 x %struct.PyMethodDef]* @bufferedreader_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @bufferedreader_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @bufferedreader_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 136, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.buffered*, %struct._object*, %struct._object*)* @bufferedreader_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"_io.BufferedWriter\00", align 1
@bufferedwriter_doc = internal global [198 x i8] c"A buffer for a writeable sequential RawIO object.\0A\0AThe constructor creates a BufferedWriter for the given writeable raw\0Astream. If the buffer_size is not given, it defaults to\0ADEFAULT_BUFFER_SIZE.\0A\00", align 16
@bufferedwriter_methods = internal global [16 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_dealloc_warn to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @bufferedwriter_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@bufferedwriter_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 14, i64 40, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@bufferedwriter_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_name_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_mode_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyBufferedWriter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 152, i64 0, void (%struct._object*)* bitcast (void (%struct.buffered*)* @buffered_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.buffered*)* @buffered_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @bufferedwriter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.buffered*, i32 (%struct._object*, i8*)*, i8*)* @buffered_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.buffered*)* @buffered_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 144, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @bufferedwriter_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @bufferedwriter_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @bufferedwriter_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 136, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.buffered*, %struct._object*, %struct._object*)* @bufferedwriter_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"_io.BufferedRWPair\00", align 1
@bufferedrwpair_doc = internal global [376 x i8] c"A buffered reader and writer object together.\0A\0AA buffered reader object and buffered writer object put together to\0Aform a sequential IO object that can read and write. This is typically\0Aused with a socket or two-way pipe.\0A\0Areader and writer are RawIOBase objects that are readable and\0Awriteable respectively. If the buffer_size is omitted it defaults to\0ADEFAULT_BUFFER_SIZE.\0A\00", align 16
@bufferedrwpair_methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_peek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_read1 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_readinto to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rwpair*, %struct._object*)* @bufferedrwpair_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@bufferedrwpair_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.rwpair*, i8*)* @bufferedrwpair_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyBufferedRWPair_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.rwpair*)* @bufferedrwpair_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @bufferedrwpair_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.rwpair*, i32 (%struct._object*, i8*)*, i8*)* @bufferedrwpair_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.rwpair*)* @bufferedrwpair_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @bufferedrwpair_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @bufferedrwpair_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 32, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.rwpair*, %struct._object*, %struct._object*)* @bufferedrwpair_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"_io.BufferedRandom\00", align 1
@bufferedrandom_doc = internal global [216 x i8] c"A buffered interface to random access streams.\0A\0AThe constructor creates a reader and writer for a seekable stream,\0Araw, given in the first argument. If the buffer_size is omitted it\0Adefaults to DEFAULT_BUFFER_SIZE.\0A\00", align 16
@bufferedrandom_methods = internal global [21 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_detach to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_dealloc_warn to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_read1 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readinto to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @buffered_peek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, %struct._object*)* @bufferedwriter_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@bufferedrandom_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 14, i64 40, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@bufferedrandom_getset = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_name_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.buffered*, i8*)* @buffered_mode_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyBufferedRandom_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i64 152, i64 0, void (%struct._object*)* bitcast (void (%struct.buffered*)* @buffered_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.buffered*)* @buffered_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @bufferedrandom_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.buffered*, i32 (%struct._object*, i8*)*, i8*)* @buffered_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.buffered*)* @buffered_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 144, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.buffered*)* @buffered_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([21 x %struct.PyMethodDef], [21 x %struct.PyMethodDef]* @bufferedrandom_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @bufferedrandom_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @bufferedrandom_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 136, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.buffered*, %struct._object*, %struct._object*)* @bufferedrandom_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@bufferediobase_detach_doc = internal global [147 x i8] c"Disconnect this buffer from its underlying raw stream and return it.\0A\0AAfter the raw stream has been detached, the buffer is in an unusable\0Astate.\0A\00", align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@bufferediobase_read_doc = internal global [600 x i8] c"Read and return up to n bytes.\0A\0AIf the argument is omitted, None, or negative, reads and\0Areturns all data until EOF.\0A\0AIf the argument is positive, and the underlying raw stream is\0Anot 'interactive', multiple raw reads may be issued to satisfy\0Athe byte count (unless EOF is reached first).  But for\0Ainteractive raw streams (as well as sockets and pipes), at most\0Aone raw read will be issued, and a short result does not imply\0Athat EOF is imminent.\0A\0AReturns an empty bytes object on EOF.\0A\0AReturns None if the underlying raw stream was open in non-blocking\0Amode and no data is available at the moment.\0A\00", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"read1\00", align 1
@bufferediobase_read1_doc = internal global [182 x i8] c"Read and return up to n bytes, with at most one read() call\0Ato the underlying raw stream. A short result does not imply\0Athat EOF is imminent.\0A\0AReturns an empty bytes object on EOF.\0A\00", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@bufferediobase_write_doc = internal global [228 x i8] c"Write the given buffer to the IO stream.\0A\0AReturns the number of bytes written, which is never less than\0Alen(b).\0A\0ARaises BlockingIOError if the buffer is full and the\0Aunderlying raw stream cannot accept more data at the moment.\0A\00", align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"w*:readinto\00", align 1
@PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* null }, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"read() should return bytes\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [65 x i8] c"read() returned too much data: %zd bytes requested, %zd returned\00", align 1
@PyId_name = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"<%s name=%R>\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"raw stream has been detached\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"I/O operation on uninitialized object\00", align 1
@_PyIO_str_readline = external global %struct._object*, align 8
@PyExc_IOError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [61 x i8] c"readline() should have returned a bytes object, not '%.200s'\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"readline of closed file\00", align 1
@_PyIO_empty_bytes = external global %struct._object*, align 8
@_PyIO_str_closed = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"reentrant call inside %R\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.22 = private unnamed_addr constant [42 x i8] c"write could not complete without blocking\00", align 1
@_PyIO_str_write = external global %struct._object*, align 8
@.str.23 = private unnamed_addr constant [77 x i8] c"raw write() returned invalid length %zd (should have been between 0 and %zd)\00", align 1
@PyExc_BlockingIOError = external global %struct._object*, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"isn\00", align 1
@_PyIO_str_seek = external global %struct._object*, align 8
@.str.25 = private unnamed_addr constant [41 x i8] c"Raw stream returned invalid position %zd\00", align 1
@_PyIO_str_readinto = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [80 x i8] c"raw readinto() returned invalid length %zd (should have been between 0 and %zd)\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"_dealloc_warn\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"peek\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@_PyIO_str_flush = external global %struct._object*, align 8
@_PyIO_str_close = external global %struct._object*, align 8
@_PyIO_str_seekable = external global %struct._object*, align 8
@_PyIO_str_readable = external global %struct._object*, align 8
@_PyIO_str_writable = external global %struct._object*, align 8
@_PyIO_str_fileno = external global %struct._object*, align 8
@_PyIO_str_isatty = external global %struct._object*, align 8
@PyId__dealloc_warn = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* null }, align 8
@.str.42 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"cannot serialize '%s' object\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"|O&:read\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"read length must be positive or -1\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"read of closed file\00", align 1
@_PyIO_str_readall = external global %struct._object*, align 8
@.str.47 = private unnamed_addr constant [30 x i8] c"readall() should return bytes\00", align 1
@_PyIO_str_read = external global %struct._object*, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"|n:peek\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"n:read1\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"read length must be positive\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"|O&:readline\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"O|i:seek\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"whence value %d unsupported\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"seek of closed file\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_PyIO_str_tell = external global %struct._object*, align 8
@.str.55 = private unnamed_addr constant [12 x i8] c"|O:truncate\00", align 1
@_PyIO_str_truncate = external global %struct._object*, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"_finalizing\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@PyId_mode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), %struct._object* null }, align 8
@.str.60 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@bufferedreader_init.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16
@.str.61 = private unnamed_addr constant [19 x i8] c"O|n:BufferedReader\00", align 1
@PyFileIO_Type = external global %struct._typeobject, align 8
@.str.62 = private unnamed_addr constant [38 x i8] c"buffer size must be strictly positive\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"can't allocate read lock\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"y*:write\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"write to closed file\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"flush of closed file\00", align 1
@bufferedwriter_init.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16
@.str.67 = private unnamed_addr constant [19 x i8] c"O|n:BufferedWriter\00", align 1
@PyId_peek = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* null }, align 8
@PyId_read1 = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@PyId_readinto = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._object* null }, align 8
@PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@PyId_flush = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* null }, align 8
@PyId_readable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* null }, align 8
@PyId_writable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* null }, align 8
@PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* null }, align 8
@PyId_isatty = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.68 = private unnamed_addr constant [53 x i8] c"the BufferedRWPair object is being garbage-collected\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"OO|n:BufferedRWPair\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@bufferedrandom_init.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16
@.str.71 = private unnamed_addr constant [19 x i8] c"O|n:BufferedRandom\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_PyIO_trap_eintr() #0 {
entry:
  %retval = alloca i32, align 4
  %typ = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %env_err = alloca %struct.PyOSErrorObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %0 = load %struct._object*, %struct._object** @_PyIO_trap_eintr.eintr_int, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call, %struct._object** @_PyIO_trap_eintr.eintr_int, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** @PyExc_EnvironmentError, align 8
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  call void @PyErr_Fetch(%struct._object** %typ, %struct._object** %val, %struct._object** %tb)
  call void @PyErr_NormalizeException(%struct._object** %typ, %struct._object** %val, %struct._object** %tb)
  %2 = load %struct._object*, %struct._object** %val, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyOSErrorObject*
  store %struct.PyOSErrorObject* %3, %struct.PyOSErrorObject** %env_err, align 8
  %4 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %env_err, align 8
  %myerrno = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %4, i32 0, i32 7
  %5 = load %struct._object*, %struct._object** %myerrno, align 8
  %cmp4 = icmp ne %struct._object* %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.3
  %6 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %env_err, align 8
  %myerrno5 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %myerrno5, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_trap_eintr.eintr_int, align 8
  %call6 = call i32 @PyObject_RichCompareBool(%struct._object* %7, %struct._object* %8, i32 2)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.39

if.then.8:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %typ, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load %struct._object*, %struct._object** %val, align 8
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
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %23 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp24 = icmp ne %struct._object* %24, null
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %do.body.23
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %27, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %30(%struct._object* %31)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.body.23
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true, %if.end.3
  %32 = load %struct._object*, %struct._object** %typ, align 8
  %33 = load %struct._object*, %struct._object** %val, align 8
  %34 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %32, %struct._object* %33, %struct._object* %34)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %do.end.38, %if.then.2
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @buffered_dealloc(%struct.buffered* %self) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 6
  store i8 1, i8* %finalizing, align 1
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %2 = bitcast %struct.buffered* %1 to %struct._object*
  %call = call i32 @_PyIOBase_finalize(%struct._object* %2)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %4 = bitcast %struct.buffered* %3 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %4, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %6 = load i64, i64* %gc_refs, align 8
  %and = and i64 %6, 1
  %or = or i64 %and, -4
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %9 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %9, %union._gc_head** %gc_next7, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %13 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %15 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %13, %union._gc_head** %gc_prev13, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 2
  store i32 0, i32* %ok, align 4
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 20
  %19 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp17 = icmp ne %struct._object* %19, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %21 = bitcast %struct.buffered* %20 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp21 = icmp ne %struct._object* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %do.body.20
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw23 = getelementptr inbounds %struct.buffered, %struct.buffered* %25, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw23, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.22
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.27

if.else:                                          ; preds = %do.body.24
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.20
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 9
  %34 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %34, null
  br i1 %tobool, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.end.30
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer32 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 9
  %36 = load i8*, i8** %buffer32, align 8
  call void @PyMem_Free(i8* %36)
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer33 = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 9
  store i8* null, i8** %buffer33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.end.30
  %38 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %38, i32 0, i32 15
  %39 = load i8*, i8** %lock, align 8
  %tobool35 = icmp ne i8* %39, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.34
  %40 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock37 = getelementptr inbounds %struct.buffered, %struct.buffered* %40, i32 0, i32 15
  %41 = load i8*, i8** %lock37, align 8
  call void @PyThread_free_lock(i8* %41)
  %42 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock38 = getelementptr inbounds %struct.buffered, %struct.buffered* %42, i32 0, i32 15
  store i8* null, i8** %lock38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.34
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  %43 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict = getelementptr inbounds %struct.buffered, %struct.buffered* %43, i32 0, i32 19
  %44 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %44, %struct._object** %_py_tmp41, align 8
  %45 = load %struct._object*, %struct._object** %_py_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %45, null
  br i1 %cmp42, label %if.then.43, label %if.end.56

if.then.43:                                       ; preds = %do.body.40
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict44 = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 19
  store %struct._object* null, %struct._object** %dict44, align 8
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.43
  %47 = load %struct._object*, %struct._object** %_py_tmp41, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp46, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %49, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %52(%struct._object* %53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.40
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %54 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %55 = bitcast %struct.buffered* %54 to %struct._object*
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 38
  %57 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %58 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %59 = bitcast %struct.buffered* %58 to %struct._object*
  %60 = bitcast %struct._object* %59 to i8*
  call void %57(i8* %60)
  br label %return

return:                                           ; preds = %do.end.57, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_repr(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %nameobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %1 = bitcast %struct.buffered* %0 to %struct._object*
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %5 = bitcast %struct.buffered* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %7)
  store %struct._object* %call3, %struct._object** %res, align 8
  br label %if.end.13

if.else.4:                                        ; preds = %entry
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %9 = bitcast %struct.buffered* %8 to %struct._object*
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_name6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name6, align 8
  %12 = load %struct._object*, %struct._object** %nameobj, align 8
  %call7 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %11, %struct._object* %12)
  store %struct._object* %call7, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.4
  %13 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.12

if.else.10:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.end
  %20 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @buffered_traverse(%struct.buffered* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %raw, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw1 = getelementptr inbounds %struct.buffered, %struct.buffered* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %raw1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 19
  %9 = load %struct._object*, %struct._object** %dict, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict9 = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 19
  %12 = load %struct._object*, %struct._object** %dict9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @buffered_clear(%struct.buffered* %self) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  store i32 0, i32* %ok, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw1 = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw1, align 8
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
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 19
  %13 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %13, %struct._object** %_py_tmp8, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %dict11 = getelementptr inbounds %struct.buffered, %struct.buffered* %15, i32 0, i32 19
  store %struct._object* null, %struct._object** %dict11, align 8
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
define internal %struct._object* @buffered_iternext(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %line = alloca %struct._object*, align 8
  %tp = alloca %struct._typeobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %7 = bitcast %struct.buffered* %6 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %8, %struct._typeobject** %tp, align 8
  %9 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %cmp3 = icmp eq %struct._typeobject* %9, @PyBufferedReader_Type
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %10 = load %struct._typeobject*, %struct._typeobject** %tp, align 8
  %cmp4 = icmp eq %struct._typeobject* %10, @PyBufferedRandom_Type
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.2
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call = call %struct._object* @_buffered_readline(%struct.buffered* %11, i64 -1)
  store %struct._object* %call, %struct._object** %line, align 8
  br label %if.end.20

if.else.6:                                        ; preds = %lor.lhs.false
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %13 = bitcast %struct.buffered* %12 to %struct._object*
  %14 = load %struct._object*, %struct._object** @_PyIO_str_readline, align 8
  %call7 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %13, %struct._object* %14, i8* null)
  store %struct._object* %call7, %struct._object** %line, align 8
  %15 = load %struct._object*, %struct._object** %line, align 8
  %tobool8 = icmp ne %struct._object* %15, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.else.6
  %16 = load %struct._object*, %struct._object** %line, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags, align 8
  %and = and i64 %18, 134217728
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.end.19, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %19 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %20 = load %struct._object*, %struct._object** %line, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1
  %22 = load i8*, i8** %tp_name, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0), i8* %22)
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %23 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  br label %if.end.18

if.else.16:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.else.6
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.5
  %30 = load %struct._object*, %struct._object** %line, align 8
  %cmp21 = icmp eq %struct._object* %30, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %31 = load %struct._object*, %struct._object** %line, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  %cmp24 = icmp eq i64 %33, 0
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end.23
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %34 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp27, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %36, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %39(%struct._object* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.23
  %41 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %do.end.36, %if.then.22, %do.end, %if.end
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal i32 @bufferedreader_init(%struct.buffered* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %buffer_size = alloca i64, align 8
  %raw = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @bufferedreader_init.kwlist to i8*), i64 24, i32 16, i1 false)
  store i64 8192, i64* %buffer_size, align 8
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %1, i32 0, i32 2
  store i32 0, i32* %ok, align 4
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  store i32 0, i32* %detached, align 4
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i8** %arraydecay, %struct._object** %raw, i64* %buffer_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %raw, align 8
  %call1 = call %struct._object* @_PyIOBase_check_readable(%struct._object* %5, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw4 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw4, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp5 = icmp ne %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %do.body
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw7 = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw7, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.6
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %raw, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt14, align 8
  %19 = load %struct._object*, %struct._object** %raw, align 8
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw15 = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %raw15, align 8
  %21 = load i64, i64* %buffer_size, align 8
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size16 = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 17
  store i64 %21, i64* %buffer_size16, align 8
  %23 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %23, i32 0, i32 4
  store i32 1, i32* %readable, align 4
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 5
  store i32 0, i32* %writable, align 4
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call17 = call i32 @_buffered_init(%struct.buffered* %25)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.13
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %26)
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %28 = bitcast %struct.buffered* %27 to %struct._object*
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %cmp22 = icmp eq %struct._typeobject* %29, @PyBufferedReader_Type
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %30 = load %struct._object*, %struct._object** %raw, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %31, @PyFileIO_Type
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %32 = phi i1 [ false, %if.end.20 ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 7
  store i32 %land.ext, i32* %fast_closed_checks, align 4
  %34 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok25 = getelementptr inbounds %struct.buffered, %struct.buffered* %34, i32 0, i32 2
  store i32 1, i32* %ok25, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.19, %if.then.2, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @bufferedwriter_init(%struct.buffered* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %buffer_size = alloca i64, align 8
  %raw = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @bufferedwriter_init.kwlist to i8*), i64 24, i32 16, i1 false)
  store i64 8192, i64* %buffer_size, align 8
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %1, i32 0, i32 2
  store i32 0, i32* %ok, align 4
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  store i32 0, i32* %detached, align 4
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0), i8** %arraydecay, %struct._object** %raw, i64* %buffer_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %raw, align 8
  %call1 = call %struct._object* @_PyIOBase_check_writable(%struct._object* %5, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw4 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw4, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp5 = icmp ne %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %do.body
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw7 = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw7, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.6
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %raw, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt14, align 8
  %19 = load %struct._object*, %struct._object** %raw, align 8
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw15 = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %raw15, align 8
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 4
  store i32 0, i32* %readable, align 4
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 5
  store i32 1, i32* %writable, align 4
  %23 = load i64, i64* %buffer_size, align 8
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size16 = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 17
  store i64 %23, i64* %buffer_size16, align 8
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call17 = call i32 @_buffered_init(%struct.buffered* %25)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.13
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedwriter_reset_buf(%struct.buffered* %26)
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %27, i32 0, i32 10
  store i64 0, i64* %pos, align 8
  %28 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %29 = bitcast %struct.buffered* %28 to %struct._object*
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %cmp22 = icmp eq %struct._typeobject* %30, @PyBufferedWriter_Type
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %31 = load %struct._object*, %struct._object** %raw, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %32, @PyFileIO_Type
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %33 = phi i1 [ false, %if.end.20 ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  %34 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %34, i32 0, i32 7
  store i32 %land.ext, i32* %fast_closed_checks, align 4
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok25 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 2
  store i32 1, i32* %ok25, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.19, %if.then.2, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @bufferedrwpair_dealloc(%struct.rwpair* %self) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %1 = bitcast %struct.rwpair* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %14, i32 0, i32 1
  %15 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %16 = bitcast %struct.buffered* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %do.body.17
  %18 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader18 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %18, i32 0, i32 1
  store %struct.buffered* null, %struct.buffered** %reader18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.19
  br label %if.end

if.else:                                          ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %do.end.22

do.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.17
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %26 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %26, i32 0, i32 2
  %27 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %28 = bitcast %struct.buffered* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %_py_tmp26, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %29, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %30 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer29 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %30, i32 0, i32 2
  store %struct.buffered* null, %struct.buffered** %writer29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %31 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp31, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %33, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %36(%struct._object* %37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %38 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict = getelementptr inbounds %struct.rwpair, %struct.rwpair* %38, i32 0, i32 3
  %39 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %39, %struct._object** %_py_tmp44, align 8
  %40 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %40, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %41 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict47 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %41, i32 0, i32 3
  store %struct._object* null, %struct._object** %dict47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %42 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp49, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %44, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %47(%struct._object* %48)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  %49 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %50 = bitcast %struct.rwpair* %49 to %struct._object*
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 38
  %52 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %53 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %54 = bitcast %struct.rwpair* %53 to %struct._object*
  %55 = bitcast %struct._object* %54 to i8*
  call void %52(i8* %55)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bufferedrwpair_traverse(%struct.rwpair* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.rwpair*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %dict1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @bufferedrwpair_clear(%struct.rwpair* %self) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = bitcast %struct.buffered* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader1 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %4, i32 0, i32 1
  store %struct.buffered* null, %struct.buffered** %reader1, align 8
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
  %12 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %12, i32 0, i32 2
  %13 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %14 = bitcast %struct.buffered* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer11 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %16, i32 0, i32 2
  store %struct.buffered* null, %struct.buffered** %writer11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
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
  %24 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict = getelementptr inbounds %struct.rwpair, %struct.rwpair* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %25, %struct._object** %_py_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %27 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %dict29 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %27, i32 0, i32 3
  store %struct._object* null, %struct._object** %dict29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %28 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %30, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %33(%struct._object* %34)
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

; Function Attrs: nounwind uwtable
define internal i32 @bufferedrwpair_init(%struct.rwpair* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %reader = alloca %struct._object*, align 8
  %writer = alloca %struct._object*, align 8
  %buffer_size = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 8192, i64* %buffer_size, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), %struct._object** %reader, %struct._object** %writer, i64* %buffer_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %reader, align 8
  %call1 = call %struct._object* @_PyIOBase_check_readable(%struct._object* %1, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %writer, align 8
  %call4 = call %struct._object* @_PyIOBase_check_writable(%struct._object* %2, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp5 = icmp eq %struct._object* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %reader, align 8
  %4 = load i64, i64* %buffer_size, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedReader_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), %struct._object* %3, i64 %4)
  %5 = bitcast %struct._object* %call8 to %struct.buffered*
  %6 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader9 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %6, i32 0, i32 1
  store %struct.buffered* %5, %struct.buffered** %reader9, align 8
  %7 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader10 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %7, i32 0, i32 1
  %8 = load %struct.buffered*, %struct.buffered** %reader10, align 8
  %cmp11 = icmp eq %struct.buffered* %8, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %writer, align 8
  %10 = load i64, i64* %buffer_size, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBufferedWriter_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), %struct._object* %9, i64 %10)
  %11 = bitcast %struct._object* %call14 to %struct.buffered*
  %12 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer15 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %12, i32 0, i32 2
  store %struct.buffered* %11, %struct.buffered** %writer15, align 8
  %13 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer16 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %13, i32 0, i32 2
  %14 = load %struct.buffered*, %struct.buffered** %writer16, align 8
  %cmp17 = icmp eq %struct.buffered* %14, null
  br i1 %cmp17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %15 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader19 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %15, i32 0, i32 1
  %16 = load %struct.buffered*, %struct.buffered** %reader19, align 8
  %17 = bitcast %struct.buffered* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp20 = icmp ne %struct._object* %18, null
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %do.body
  %19 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader22 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %19, i32 0, i32 1
  store %struct.buffered* null, %struct.buffered** %reader22, align 8
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.21
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.26

if.else:                                          ; preds = %do.body.23
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %do.body
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %do.end.28, %if.then.12, %if.then.6, %if.then.2, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @bufferedrandom_init(%struct.buffered* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %buffer_size = alloca i64, align 8
  %raw = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @bufferedrandom_init.kwlist to i8*), i64 24, i32 16, i1 false)
  store i64 8192, i64* %buffer_size, align 8
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %1, i32 0, i32 2
  store i32 0, i32* %ok, align 4
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  store i32 0, i32* %detached, align 4
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8** %arraydecay, %struct._object** %raw, i64* %buffer_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %raw, align 8
  %call1 = call %struct._object* @_PyIOBase_check_seekable(%struct._object* %5, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %raw, align 8
  %call4 = call %struct._object* @_PyIOBase_check_readable(%struct._object* %6, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp5 = icmp eq %struct._object* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %call8 = call %struct._object* @_PyIOBase_check_writable(%struct._object* %7, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp9 = icmp eq %struct._object* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw12 = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %raw12, align 8
  store %struct._object* %9, %struct._object** %_py_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp13 = icmp ne %struct._object* %10, null
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %do.body
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw15 = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw15, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.14
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19

if.else:                                          ; preds = %do.body.16
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %19 = load %struct._object*, %struct._object** %raw, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt22, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt22, align 8
  %21 = load %struct._object*, %struct._object** %raw, align 8
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw23 = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 1
  store %struct._object* %21, %struct._object** %raw23, align 8
  %23 = load i64, i64* %buffer_size, align 8
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size24 = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 17
  store i64 %23, i64* %buffer_size24, align 8
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %25, i32 0, i32 4
  store i32 1, i32* %readable, align 4
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %26, i32 0, i32 5
  store i32 1, i32* %writable, align 4
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call25 = call i32 @_buffered_init(%struct.buffered* %27)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.21
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.end.21
  %28 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %28)
  %29 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedwriter_reset_buf(%struct.buffered* %29)
  %30 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %30, i32 0, i32 10
  store i64 0, i64* %pos, align 8
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %32 = bitcast %struct.buffered* %31 to %struct._object*
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %cmp30 = icmp eq %struct._typeobject* %33, @PyBufferedRandom_Type
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.28
  %34 = load %struct._object*, %struct._object** %raw, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %cmp32 = icmp eq %struct._typeobject* %35, @PyFileIO_Type
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.28
  %36 = phi i1 [ false, %if.end.28 ], [ %cmp32, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 7
  store i32 %land.ext, i32* %fast_closed_checks, align 4
  %38 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok33 = getelementptr inbounds %struct.buffered, %struct.buffered* %38, i32 0, i32 2
  store i32 1, i32* %ok33, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.27, %if.then.10, %if.then.6, %if.then.2, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_detach(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @bufferediobase_unsupported(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_read(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @bufferediobase_unsupported(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_read1(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @bufferediobase_unsupported(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_readinto(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %len = alloca i64, align 8
  %data = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct.bufferinfo* %buf)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %2 = load i64, i64* %len1, align 8
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %1, %struct._Py_Identifier* @PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 %2)
  store %struct._object* %call2, %struct._object** %data, align 8
  %3 = load %struct._object*, %struct._object** %data, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %error

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 134217728
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %7 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  br label %error

if.end.11:                                        ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %data, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  store i64 %17, i64* %len, align 8
  %18 = load i64, i64* %len, align 8
  %len12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %19 = load i64, i64* %len12, align 8
  %cmp13 = icmp sgt i64 %18, %19
  br i1 %cmp13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end.11
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %len15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %21 = load i64, i64* %len15, align 8
  %22 = load i64, i64* %len, align 8
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i64 %21, i64 %22)
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.14
  %23 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp18, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %25, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %28(%struct._object* %29)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %error

if.end.28:                                        ; preds = %if.end.11
  %buf29 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %30 = load i8*, i8** %buf29, align 8
  %31 = load %struct._object*, %struct._object** %data, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %32, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %33 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %arraydecay, i64 %33, i32 1, i1 false)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.28
  %34 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp31, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %36, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %39(%struct._object* %40)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %41 = load i64, i64* %len, align 8
  %call41 = call %struct._object* @PyLong_FromSsize_t(i64 %41)
  store %struct._object* %call41, %struct._object** %retval
  br label %return

error:                                            ; preds = %do.end.27, %do.end, %if.then.3
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %do.end.40, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_write(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @bufferediobase_unsupported(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferediobase_unsupported(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  store i8* %message, i8** %message.addr, align 8
  %call = call %struct._PyIO_State* @_PyIO_get_module_state()
  store %struct._PyIO_State* %call, %struct._PyIO_State** %state, align 8
  %0 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %cmp = icmp ne %struct._PyIO_State* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %unsupported_operation, align 8
  %3 = load i8*, i8** %message.addr, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct._object* null
}

declare %struct._PyIO_State* @_PyIO_get_module_state() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @_PyIOBase_finalize(%struct._object*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyMem_Free(i8*) #1

declare void @PyThread_free_lock(i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_buffered_readline(%struct.buffered* %self, i64 %limit) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %limit.addr = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %chunks = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %written = alloca i64, align 8
  %start = alloca i8*, align 8
  %s = alloca i8*, align 8
  %end = alloca i8*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_tmp161 = alloca %struct._object*, align 8
  %_py_decref_tmp166 = alloca %struct._object*, align 8
  %_py_tmp181 = alloca %struct._object*, align 8
  %_py_decref_tmp186 = alloca %struct._object*, align 8
  %_py_tmp213 = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_tmp233 = alloca %struct._object*, align 8
  %_py_decref_tmp238 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp262 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store %struct._object* null, %struct._object** %chunks, align 8
  store i64 0, i64* %written, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 7
  %1 = load i32, i32* %fast_closed_checks, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %raw, align 8
  %call = call i32 @_PyFileIO_closed(%struct._object* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call2 = call i32 @buffered_closed(%struct.buffered* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 4
  %7 = load i32, i32* %readable, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %land.lhs.true, label %cond.false.10

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable5 = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 4
  %9 = load i32, i32* %readable5, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true.7, label %cond.false.10

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 12
  %11 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %11, -1
  br i1 %cmp, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %land.lhs.true.7
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end9 = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 12
  %13 = load i64, i64* %read_end9, align 8
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 10
  %15 = load i64, i64* %pos, align 8
  %sub = sub i64 %13, %15
  br label %cond.end

cond.false.10:                                    ; preds = %land.lhs.true.7, %land.lhs.true, %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.8
  %cond = phi i64 [ %sub, %cond.true.8 ], [ 0, %cond.false.10 ]
  store i64 %cond, i64* %n, align 8
  %16 = load i64, i64* %limit.addr, align 8
  %cmp11 = icmp sge i64 %16, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %cond.end
  %17 = load i64, i64* %n, align 8
  %18 = load i64, i64* %limit.addr, align 8
  %cmp13 = icmp sgt i64 %17, %18
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.12
  %19 = load i64, i64* %limit.addr, align 8
  store i64 %19, i64* %n, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %cond.end
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 9
  %21 = load i8*, i8** %buffer, align 8
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos16 = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 10
  %23 = load i64, i64* %pos16, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %23
  store i8* %add.ptr, i8** %start, align 8
  %24 = load i8*, i8** %start, align 8
  %25 = load i64, i64* %n, align 8
  %call17 = call i8* @memchr(i8* %24, i32 10, i64 %25) #5
  store i8* %call17, i8** %s, align 8
  %26 = load i8*, i8** %s, align 8
  %cmp18 = icmp ne i8* %26, null
  br i1 %cmp18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %if.end.15
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i64 %sub.ptr.sub, 1
  %call20 = call %struct._object* @PyBytes_FromStringAndSize(i8* %27, i64 %add)
  store %struct._object* %call20, %struct._object** %res, align 8
  %30 = load %struct._object*, %struct._object** %res, align 8
  %cmp21 = icmp ne %struct._object* %30, null
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.then.19
  %31 = load i8*, i8** %s, align 8
  %32 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %32 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %add26 = add i64 %sub.ptr.sub25, 1
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos27 = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 10
  %34 = load i64, i64* %pos27, align 8
  %add28 = add i64 %34, %add26
  store i64 %add28, i64* %pos27, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.22, %if.then.19
  br label %end_unlocked

if.end.30:                                        ; preds = %if.end.15
  %35 = load i64, i64* %n, align 8
  %36 = load i64, i64* %limit.addr, align 8
  %cmp31 = icmp eq i64 %35, %36
  br i1 %cmp31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.30
  %37 = load i8*, i8** %start, align 8
  %38 = load i64, i64* %n, align 8
  %call33 = call %struct._object* @PyBytes_FromStringAndSize(i8* %37, i64 %38)
  store %struct._object* %call33, %struct._object** %res, align 8
  %39 = load %struct._object*, %struct._object** %res, align 8
  %cmp34 = icmp ne %struct._object* %39, null
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.then.32
  %40 = load i64, i64* %n, align 8
  %41 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos36 = getelementptr inbounds %struct.buffered, %struct.buffered* %41, i32 0, i32 10
  %42 = load i64, i64* %pos36, align 8
  %add37 = add i64 %42, %40
  store i64 %add37, i64* %pos36, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.then.32
  br label %end_unlocked

if.end.39:                                        ; preds = %if.end.30
  %43 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %43, i32 0, i32 15
  %44 = load i8*, i8** %lock, align 8
  %call40 = call i32 @PyThread_acquire_lock(i8* %44, i32 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.end.39
  br i1 true, label %land.lhs.true.46, label %if.then.48

cond.false.43:                                    ; preds = %if.end.39
  %45 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call44 = call i32 @_enter_buffered_busy(%struct.buffered* %45)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.then.48

land.lhs.true.46:                                 ; preds = %cond.false.43, %cond.true.42
  %call47 = call i64 @PyThread_get_thread_ident()
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 16
  store volatile i64 %call47, i64* %owner, align 8
  br i1 true, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46, %cond.false.43, %cond.true.42
  br label %end_unlocked

if.end.49:                                        ; preds = %land.lhs.true.46
  %call50 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call50, %struct._object** %chunks, align 8
  %47 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp51 = icmp eq %struct._object* %47, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  br label %end.252

if.end.53:                                        ; preds = %if.end.49
  %48 = load i64, i64* %n, align 8
  %cmp54 = icmp sgt i64 %48, 0
  br i1 %cmp54, label %if.then.55, label %if.end.96

if.then.55:                                       ; preds = %if.end.53
  %49 = load i8*, i8** %start, align 8
  %50 = load i64, i64* %n, align 8
  %call56 = call %struct._object* @PyBytes_FromStringAndSize(i8* %49, i64 %50)
  store %struct._object* %call56, %struct._object** %res, align 8
  %51 = load %struct._object*, %struct._object** %res, align 8
  %cmp57 = icmp eq %struct._object* %51, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  br label %end.252

if.end.59:                                        ; preds = %if.then.55
  %52 = load %struct._object*, %struct._object** %chunks, align 8
  %53 = load %struct._object*, %struct._object** %res, align 8
  %call60 = call i32 @PyList_Append(%struct._object* %52, %struct._object* %53)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.end.59
  br label %do.body

do.body:                                          ; preds = %if.then.62
  %54 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %54, %struct._object** %_py_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp63 = icmp ne %struct._object* %55, null
  br i1 %cmp63, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %56 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp66 = icmp ne i64 %dec, 0
  br i1 %cmp66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %do.body.65
  br label %if.end.68

if.else:                                          ; preds = %do.body.65
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %61(%struct._object* %62)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.67
  br label %do.end

do.end:                                           ; preds = %if.end.68
  br label %if.end.69

if.end.69:                                        ; preds = %do.end, %do.body
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %end.252

if.end.71:                                        ; preds = %if.end.59
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.71
  %63 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %63, %struct._object** %_py_tmp73, align 8
  %64 = load %struct._object*, %struct._object** %_py_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %64, null
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %do.body.72
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %65 = load %struct._object*, %struct._object** %_py_tmp73, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp77, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %67, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %70(%struct._object* %71)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.72
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %72 = load i64, i64* %n, align 8
  %73 = load i64, i64* %written, align 8
  %add89 = add i64 %73, %72
  store i64 %add89, i64* %written, align 8
  %74 = load i64, i64* %n, align 8
  %75 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos90 = getelementptr inbounds %struct.buffered, %struct.buffered* %75, i32 0, i32 10
  %76 = load i64, i64* %pos90, align 8
  %add91 = add i64 %76, %74
  store i64 %add91, i64* %pos90, align 8
  %77 = load i64, i64* %limit.addr, align 8
  %cmp92 = icmp sge i64 %77, 0
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %do.end.88
  %78 = load i64, i64* %n, align 8
  %79 = load i64, i64* %limit.addr, align 8
  %sub94 = sub i64 %79, %78
  store i64 %sub94, i64* %limit.addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %do.end.88
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.53
  %80 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %80, i32 0, i32 5
  %81 = load i32, i32* %writable, align 4
  %tobool97 = icmp ne i32 %81, 0
  br i1 %tobool97, label %if.then.98, label %if.end.114

if.then.98:                                       ; preds = %if.end.96
  %82 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call99 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %82)
  store %struct._object* %call99, %struct._object** %r, align 8
  %83 = load %struct._object*, %struct._object** %r, align 8
  %cmp100 = icmp eq %struct._object* %83, null
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.98
  br label %end.252

if.end.102:                                       ; preds = %if.then.98
  br label %do.body.103

do.body.103:                                      ; preds = %if.end.102
  %84 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp104, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %86, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112

if.else.109:                                      ; preds = %do.body.103
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %89(%struct._object* %90)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %if.end.96
  br label %for.cond

for.cond:                                         ; preds = %if.end.204, %if.end.114
  %91 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %91)
  %92 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call115 = call i64 @_bufferedreader_fill_buffer(%struct.buffered* %92)
  store i64 %call115, i64* %n, align 8
  %93 = load i64, i64* %n, align 8
  %cmp116 = icmp eq i64 %93, -1
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.cond
  br label %end.252

if.end.118:                                       ; preds = %for.cond
  %94 = load i64, i64* %n, align 8
  %cmp119 = icmp sle i64 %94, 0
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.118
  br label %for.end

if.end.121:                                       ; preds = %if.end.118
  %95 = load i64, i64* %limit.addr, align 8
  %cmp122 = icmp sge i64 %95, 0
  br i1 %cmp122, label %land.lhs.true.123, label %if.end.126

land.lhs.true.123:                                ; preds = %if.end.121
  %96 = load i64, i64* %n, align 8
  %97 = load i64, i64* %limit.addr, align 8
  %cmp124 = icmp sgt i64 %96, %97
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.123
  %98 = load i64, i64* %limit.addr, align 8
  store i64 %98, i64* %n, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.123, %if.end.121
  %99 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer127 = getelementptr inbounds %struct.buffered, %struct.buffered* %99, i32 0, i32 9
  %100 = load i8*, i8** %buffer127, align 8
  store i8* %100, i8** %start, align 8
  %101 = load i8*, i8** %start, align 8
  %102 = load i64, i64* %n, align 8
  %add.ptr128 = getelementptr i8, i8* %101, i64 %102
  store i8* %add.ptr128, i8** %end, align 8
  %103 = load i8*, i8** %start, align 8
  store i8* %103, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.145, %if.end.126
  %104 = load i8*, i8** %s, align 8
  %105 = load i8*, i8** %end, align 8
  %cmp129 = icmp ult i8* %104, %105
  br i1 %cmp129, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %106 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %106, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %107 = load i8, i8* %106, align 1
  %conv = sext i8 %107 to i32
  %cmp130 = icmp eq i32 %conv, 10
  br i1 %cmp130, label %if.then.132, label %if.end.145

if.then.132:                                      ; preds = %while.body
  %108 = load i8*, i8** %start, align 8
  %109 = load i8*, i8** %s, align 8
  %110 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast133 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast134 = ptrtoint i8* %110 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %call136 = call %struct._object* @PyBytes_FromStringAndSize(i8* %108, i64 %sub.ptr.sub135)
  store %struct._object* %call136, %struct._object** %res, align 8
  %111 = load %struct._object*, %struct._object** %res, align 8
  %cmp137 = icmp eq %struct._object* %111, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.132
  br label %end.252

if.end.140:                                       ; preds = %if.then.132
  %112 = load i8*, i8** %s, align 8
  %113 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast141 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast142 = ptrtoint i8* %113 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %114 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos144 = getelementptr inbounds %struct.buffered, %struct.buffered* %114, i32 0, i32 10
  store i64 %sub.ptr.sub143, i64* %pos144, align 8
  br label %found

if.end.145:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %115 = load i8*, i8** %start, align 8
  %116 = load i64, i64* %n, align 8
  %call146 = call %struct._object* @PyBytes_FromStringAndSize(i8* %115, i64 %116)
  store %struct._object* %call146, %struct._object** %res, align 8
  %117 = load %struct._object*, %struct._object** %res, align 8
  %cmp147 = icmp eq %struct._object* %117, null
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %while.end
  br label %end.252

if.end.150:                                       ; preds = %while.end
  %118 = load i64, i64* %n, align 8
  %119 = load i64, i64* %limit.addr, align 8
  %cmp151 = icmp eq i64 %118, %119
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.150
  %120 = load i64, i64* %n, align 8
  %121 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos154 = getelementptr inbounds %struct.buffered, %struct.buffered* %121, i32 0, i32 10
  store i64 %120, i64* %pos154, align 8
  br label %for.end

if.end.155:                                       ; preds = %if.end.150
  %122 = load %struct._object*, %struct._object** %chunks, align 8
  %123 = load %struct._object*, %struct._object** %res, align 8
  %call156 = call i32 @PyList_Append(%struct._object* %122, %struct._object* %123)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.179

if.then.159:                                      ; preds = %if.end.155
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  %124 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %124, %struct._object** %_py_tmp161, align 8
  %125 = load %struct._object*, %struct._object** %_py_tmp161, align 8
  %cmp162 = icmp ne %struct._object* %125, null
  br i1 %cmp162, label %if.then.164, label %if.end.177

if.then.164:                                      ; preds = %do.body.160
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.165

do.body.165:                                      ; preds = %if.then.164
  %126 = load %struct._object*, %struct._object** %_py_tmp161, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp166, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt167, align 8
  %dec168 = add i64 %128, -1
  store i64 %dec168, i64* %ob_refcnt167, align 8
  %cmp169 = icmp ne i64 %dec168, 0
  br i1 %cmp169, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %do.body.165
  br label %if.end.175

if.else.172:                                      ; preds = %do.body.165
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  call void %131(%struct._object* %132)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.body.160
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %end.252

if.end.179:                                       ; preds = %if.end.155
  br label %do.body.180

do.body.180:                                      ; preds = %if.end.179
  %133 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %133, %struct._object** %_py_tmp181, align 8
  %134 = load %struct._object*, %struct._object** %_py_tmp181, align 8
  %cmp182 = icmp ne %struct._object* %134, null
  br i1 %cmp182, label %if.then.184, label %if.end.197

if.then.184:                                      ; preds = %do.body.180
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.185

do.body.185:                                      ; preds = %if.then.184
  %135 = load %struct._object*, %struct._object** %_py_tmp181, align 8
  store %struct._object* %135, %struct._object** %_py_decref_tmp186, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_refcnt187 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0
  %137 = load i64, i64* %ob_refcnt187, align 8
  %dec188 = add i64 %137, -1
  store i64 %dec188, i64* %ob_refcnt187, align 8
  %cmp189 = icmp ne i64 %dec188, 0
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %do.body.185
  br label %if.end.195

if.else.192:                                      ; preds = %do.body.185
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  %ob_type193 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 1
  %139 = load %struct._typeobject*, %struct._typeobject** %ob_type193, align 8
  %tp_dealloc194 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %139, i32 0, i32 4
  %140 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc194, align 8
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp186, align 8
  call void %140(%struct._object* %141)
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.191
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %if.end.197

if.end.197:                                       ; preds = %do.end.196, %do.body.180
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  %142 = load i64, i64* %n, align 8
  %143 = load i64, i64* %written, align 8
  %add199 = add i64 %143, %142
  store i64 %add199, i64* %written, align 8
  %144 = load i64, i64* %limit.addr, align 8
  %cmp200 = icmp sge i64 %144, 0
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %do.end.198
  %145 = load i64, i64* %n, align 8
  %146 = load i64, i64* %limit.addr, align 8
  %sub203 = sub i64 %146, %145
  store i64 %sub203, i64* %limit.addr, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %do.end.198
  br label %for.cond

for.end:                                          ; preds = %if.then.153, %if.then.120
  br label %found

found:                                            ; preds = %for.end, %if.end.140
  %147 = load %struct._object*, %struct._object** %res, align 8
  %cmp205 = icmp ne %struct._object* %147, null
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.231

land.lhs.true.207:                                ; preds = %found
  %148 = load %struct._object*, %struct._object** %chunks, align 8
  %149 = load %struct._object*, %struct._object** %res, align 8
  %call208 = call i32 @PyList_Append(%struct._object* %148, %struct._object* %149)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.231

if.then.211:                                      ; preds = %land.lhs.true.207
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %150 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %150, %struct._object** %_py_tmp213, align 8
  %151 = load %struct._object*, %struct._object** %_py_tmp213, align 8
  %cmp214 = icmp ne %struct._object* %151, null
  br i1 %cmp214, label %if.then.216, label %if.end.229

if.then.216:                                      ; preds = %do.body.212
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %152 = load %struct._object*, %struct._object** %_py_tmp213, align 8
  store %struct._object* %152, %struct._object** %_py_decref_tmp218, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0
  %154 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %154, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.217
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.217
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 1
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i32 0, i32 4
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %157(%struct._object* %158)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %do.end.228, %do.body.212
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  br label %end.252

if.end.231:                                       ; preds = %land.lhs.true.207, %found
  br label %do.body.232

do.body.232:                                      ; preds = %if.end.231
  %159 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %159, %struct._object** %_py_tmp233, align 8
  %160 = load %struct._object*, %struct._object** %_py_tmp233, align 8
  %cmp234 = icmp ne %struct._object* %160, null
  br i1 %cmp234, label %if.then.236, label %if.end.249

if.then.236:                                      ; preds = %do.body.232
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  %161 = load %struct._object*, %struct._object** %_py_tmp233, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp238, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  %ob_refcnt239 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt239, align 8
  %dec240 = add i64 %163, -1
  store i64 %dec240, i64* %ob_refcnt239, align 8
  %cmp241 = icmp ne i64 %dec240, 0
  br i1 %cmp241, label %if.then.243, label %if.else.244

if.then.243:                                      ; preds = %do.body.237
  br label %if.end.247

if.else.244:                                      ; preds = %do.body.237
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  %ob_type245 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type245, align 8
  %tp_dealloc246 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc246, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp238, align 8
  call void %166(%struct._object* %167)
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.244, %if.then.243
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  br label %if.end.249

if.end.249:                                       ; preds = %do.end.248, %do.body.232
  br label %do.end.250

do.end.250:                                       ; preds = %if.end.249
  %168 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8
  %169 = load %struct._object*, %struct._object** %chunks, align 8
  %call251 = call %struct._object* @_PyBytes_Join(%struct._object* %168, %struct._object* %169)
  store %struct._object* %call251, %struct._object** %res, align 8
  br label %end.252

end.252:                                          ; preds = %do.end.250, %do.end.230, %do.end.178, %if.then.149, %if.then.139, %if.then.117, %if.then.101, %do.end.70, %if.then.58, %if.then.52
  br label %do.body.253

do.body.253:                                      ; preds = %end.252
  %170 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner254 = getelementptr inbounds %struct.buffered, %struct.buffered* %170, i32 0, i32 16
  store volatile i64 0, i64* %owner254, align 8
  %171 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock255 = getelementptr inbounds %struct.buffered, %struct.buffered* %171, i32 0, i32 15
  %172 = load i8*, i8** %lock255, align 8
  call void @PyThread_release_lock(i8* %172)
  br label %do.end.256

do.end.256:                                       ; preds = %do.body.253
  br label %end_unlocked

end_unlocked:                                     ; preds = %do.end.256, %if.then.48, %if.end.38, %if.end.29
  br label %do.body.257

do.body.257:                                      ; preds = %end_unlocked
  %173 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %173, %struct._object** %_py_xdecref_tmp, align 8
  %174 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp258 = icmp ne %struct._object* %174, null
  br i1 %cmp258, label %if.then.260, label %if.end.273

if.then.260:                                      ; preds = %do.body.257
  br label %do.body.261

do.body.261:                                      ; preds = %if.then.260
  %175 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %175, %struct._object** %_py_decref_tmp262, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  %ob_refcnt263 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 0
  %177 = load i64, i64* %ob_refcnt263, align 8
  %dec264 = add i64 %177, -1
  store i64 %dec264, i64* %ob_refcnt263, align 8
  %cmp265 = icmp ne i64 %dec264, 0
  br i1 %cmp265, label %if.then.267, label %if.else.268

if.then.267:                                      ; preds = %do.body.261
  br label %if.end.271

if.else.268:                                      ; preds = %do.body.261
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  %ob_type269 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 1
  %179 = load %struct._typeobject*, %struct._typeobject** %ob_type269, align 8
  %tp_dealloc270 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %179, i32 0, i32 4
  %180 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc270, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  call void %180(%struct._object* %181)
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.268, %if.then.267
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  br label %if.end.273

if.end.273:                                       ; preds = %do.end.272, %do.body.257
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  %182 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %182, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.274, %if.then
  %183 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %183
}

declare %struct._object* @PyObject_CallMethodObjArgs(%struct._object*, %struct._object*, ...) #1

declare i32 @_PyFileIO_closed(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @buffered_closed(%struct.buffered* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %closed = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call, %struct._object** %res, align 8
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %10 = load %struct._object*, %struct._object** %res, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %10)
  store i32 %call6, i32* %closed, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else.9:                                        ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %18 = load i32, i32* %closed, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @_enter_buffered_busy(%struct.buffered* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 16
  %1 = load volatile i64, i64* %owner, align 8
  %call = call i64 @PyThread_get_thread_ident()
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), %struct.buffered* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 15
  %5 = load i8*, i8** %lock, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %5, i32 1)
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i64 @PyThread_get_thread_ident() #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call = call %struct._object* @_bufferedwriter_flush_unlocked(%struct.buffered* %0)
  store %struct._object* %call, %struct._object** %res, align 8
  %1 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 4
  %10 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.end.19

if.then.4:                                        ; preds = %do.end
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable5 = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 4
  %13 = load i32, i32* %readable5, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.4
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 12
  %15 = load i64, i64* %read_end, align 8
  %cmp7 = icmp ne i64 %15, -1
  br i1 %cmp7, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.4
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 5
  %17 = load i32, i32* %writable, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 14
  %19 = load i64, i64* %write_end, align 8
  %cmp10 = icmp ne i64 %19, -1
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %land.lhs.true.9, %land.lhs.true
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 11
  %21 = load i64, i64* %raw_pos, align 8
  %cmp12 = icmp sge i64 %21, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos13 = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 11
  %23 = load i64, i64* %raw_pos13, align 8
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 10
  %25 = load i64, i64* %pos, align 8
  %sub = sub i64 %23, %25
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.11, %land.lhs.true.9, %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %sub14 = sub i64 0, %cond
  %call15 = call i64 @_buffered_raw_seek(%struct.buffered* %11, i64 %sub14, i32 1)
  store i64 %call15, i64* %n, align 8
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %26)
  %27 = load i64, i64* %n, align 8
  %cmp16 = icmp eq i64 %27, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.end
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal void @_bufferedreader_reset_buf(%struct.buffered* %self) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 12
  store i64 -1, i64* %read_end, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @_bufferedreader_fill_buffer(%struct.buffered* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %start = alloca i64, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 4
  %1 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 12
  %3 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end1 = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 12
  %5 = load i64, i64* %read_end1, align 8
  store i64 %5, i64* %start, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i64 0, i64* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 17
  %7 = load i64, i64* %buffer_size, align 8
  %8 = load i64, i64* %start, align 8
  %sub = sub i64 %7, %8
  store i64 %sub, i64* %len, align 8
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 9
  %11 = load i8*, i8** %buffer, align 8
  %12 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %12
  %13 = load i64, i64* %len, align 8
  %call = call i64 @_bufferedreader_raw_read(%struct.buffered* %9, i8* %add.ptr, i64 %13)
  store i64 %call, i64* %n, align 8
  %14 = load i64, i64* %n, align 8
  %cmp2 = icmp sle i64 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %n, align 8
  store i64 %15, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %16 = load i64, i64* %start, align 8
  %17 = load i64, i64* %n, align 8
  %add = add i64 %16, %17
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end5 = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 12
  store i64 %add, i64* %read_end5, align 8
  %19 = load i64, i64* %start, align 8
  %20 = load i64, i64* %n, align 8
  %add6 = add i64 %19, %20
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 11
  store i64 %add6, i64* %raw_pos, align 8
  %22 = load i64, i64* %n, align 8
  store i64 %22, i64* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %23 = load i64, i64* %retval
  ret i64 %23
}

declare %struct._object* @_PyBytes_Join(%struct._object*, %struct._object*) #1

declare void @PyThread_release_lock(i8*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bufferedwriter_flush_unlocked(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %written = alloca i64, align 8
  %n = alloca i64, align 8
  %rewind = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i64 0, i64* %written, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 5
  %1 = load i32, i32* %writable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 14
  %3 = load i64, i64* %write_end, align 8
  %cmp = icmp ne i64 %3, -1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 13
  %5 = load i64, i64* %write_pos, align 8
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end1 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 14
  %7 = load i64, i64* %write_end1, align 8
  %cmp2 = icmp eq i64 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 4
  %9 = load i32, i32* %readable, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %if.end
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 12
  %11 = load i64, i64* %read_end, align 8
  %cmp5 = icmp ne i64 %11, -1
  br i1 %cmp5, label %land.lhs.true.12, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %if.end
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable7 = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 5
  %13 = load i32, i32* %writable7, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %lor.lhs.false.6
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end10 = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 14
  %15 = load i64, i64* %write_end10, align 8
  %cmp11 = icmp ne i64 %15, -1
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %land.lhs.true.9, %land.lhs.true.4
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 11
  %17 = load i64, i64* %raw_pos, align 8
  %cmp13 = icmp sge i64 %17, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos14 = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 11
  %19 = load i64, i64* %raw_pos14, align 8
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 10
  %21 = load i64, i64* %pos, align 8
  %sub = sub i64 %19, %21
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %lor.lhs.false.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos15 = getelementptr inbounds %struct.buffered, %struct.buffered* %22, i32 0, i32 10
  %23 = load i64, i64* %pos15, align 8
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos16 = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 13
  %25 = load i64, i64* %write_pos16, align 8
  %sub17 = sub i64 %23, %25
  %add = add i64 %cond, %sub17
  store i64 %add, i64* %rewind, align 8
  %26 = load i64, i64* %rewind, align 8
  %cmp18 = icmp ne i64 %26, 0
  br i1 %cmp18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %cond.end
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %28 = load i64, i64* %rewind, align 8
  %sub20 = sub i64 0, %28
  %call = call i64 @_buffered_raw_seek(%struct.buffered* %27, i64 %sub20, i32 1)
  store i64 %call, i64* %n, align 8
  %29 = load i64, i64* %n, align 8
  %cmp21 = icmp slt i64 %29, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  br label %error

if.end.23:                                        ; preds = %if.then.19
  %30 = load i64, i64* %rewind, align 8
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos24 = getelementptr inbounds %struct.buffered, %struct.buffered* %31, i32 0, i32 11
  %32 = load i64, i64* %raw_pos24, align 8
  %sub25 = sub i64 %32, %30
  store i64 %sub25, i64* %raw_pos24, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.23, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end.26
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos27 = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 13
  %34 = load i64, i64* %write_pos27, align 8
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end28 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 14
  %36 = load i64, i64* %write_end28, align 8
  %cmp29 = icmp slt i64 %34, %36
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %38 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %38, i32 0, i32 9
  %39 = load i8*, i8** %buffer, align 8
  %40 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos30 = getelementptr inbounds %struct.buffered, %struct.buffered* %40, i32 0, i32 13
  %41 = load i64, i64* %write_pos30, align 8
  %add.ptr = getelementptr i8, i8* %39, i64 %41
  %42 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end31 = getelementptr inbounds %struct.buffered, %struct.buffered* %42, i32 0, i32 14
  %43 = load i64, i64* %write_end31, align 8
  %44 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos32 = getelementptr inbounds %struct.buffered, %struct.buffered* %44, i32 0, i32 13
  %45 = load i64, i64* %write_pos32, align 8
  %sub33 = sub i64 %43, %45
  %call34 = call i64 @_bufferedwriter_raw_write(%struct.buffered* %37, i8* %add.ptr, i64 %sub33)
  store i64 %call34, i64* %n, align 8
  %46 = load i64, i64* %n, align 8
  %cmp35 = icmp eq i64 %46, -1
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %while.body
  br label %error

if.else:                                          ; preds = %while.body
  %47 = load i64, i64* %n, align 8
  %cmp37 = icmp eq i64 %47, -2
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  call void @_set_BlockingIOError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i64 0)
  br label %error

if.end.39:                                        ; preds = %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  %48 = load i64, i64* %n, align 8
  %49 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos41 = getelementptr inbounds %struct.buffered, %struct.buffered* %49, i32 0, i32 13
  %50 = load i64, i64* %write_pos41, align 8
  %add42 = add i64 %50, %48
  store i64 %add42, i64* %write_pos41, align 8
  %51 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos43 = getelementptr inbounds %struct.buffered, %struct.buffered* %51, i32 0, i32 13
  %52 = load i64, i64* %write_pos43, align 8
  %53 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos44 = getelementptr inbounds %struct.buffered, %struct.buffered* %53, i32 0, i32 11
  store i64 %52, i64* %raw_pos44, align 8
  %54 = load i64, i64* %n, align 8
  %55 = load i64, i64* %written, align 8
  %add45 = add i64 %55, %54
  store i64 %add45, i64* %written, align 8
  %call46 = call i32 @PyErr_CheckSignals()
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.40
  br label %error

if.end.49:                                        ; preds = %if.end.40
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedwriter_reset_buf(%struct.buffered* %56)
  br label %end

end:                                              ; preds = %while.end, %if.then
  %57 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.48, %if.then.38, %if.then.36, %if.then.22
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %end
  %58 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %58
}

; Function Attrs: nounwind uwtable
define internal i64 @_buffered_raw_seek(%struct.buffered* %self, i64 %target, i32 %whence) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %target.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %whenceobj = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i64 %target, i64* %target.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load i64, i64* %target.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %0)
  store %struct._object* %call, %struct._object** %posobj, align 8
  %1 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %whence.addr, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %whenceobj, align 8
  %3 = load %struct._object*, %struct._object** %whenceobj, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %4 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i64 -1, i64* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %raw, align 8
  %13 = load %struct._object*, %struct._object** @_PyIO_str_seek, align 8
  %14 = load %struct._object*, %struct._object** %posobj, align 8
  %15 = load %struct._object*, %struct._object** %whenceobj, align 8
  %call10 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %12, %struct._object* %13, %struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call10, %struct._object** %res, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp12, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %18, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.11
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %23 = load %struct._object*, %struct._object** %whenceobj, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %25, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.23
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %28(%struct._object* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %30 = load %struct._object*, %struct._object** %res, align 8
  %cmp35 = icmp eq %struct._object* %30, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.34
  store i64 -1, i64* %retval
  br label %return

if.end.38:                                        ; preds = %do.end.34
  %31 = load %struct._object*, %struct._object** %res, align 8
  %32 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call39 = call i64 @PyNumber_AsOff_t(%struct._object* %31, %struct._object* %32)
  store i64 %call39, i64* %n, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.38
  %33 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp41, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %35, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %38(%struct._object* %39)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %40 = load i64, i64* %n, align 8
  %cmp52 = icmp slt i64 %40, 0
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %do.end.51
  %call55 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call55, null
  br i1 %tobool, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %if.then.54
  %41 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %42 = load i64, i64* %n, align 8
  %call57 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i64 %42)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.54
  store i64 -1, i64* %retval
  br label %return

if.end.59:                                        ; preds = %do.end.51
  %43 = load i64, i64* %n, align 8
  %44 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %44, i32 0, i32 8
  store i64 %43, i64* %abs_pos, align 8
  %45 = load i64, i64* %n, align 8
  store i64 %45, i64* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.end.58, %if.then.37, %do.end, %if.then
  %46 = load i64, i64* %retval
  ret i64 %46
}

; Function Attrs: nounwind uwtable
define internal i64 @_bufferedwriter_raw_write(%struct.buffered* %self, i8* %start, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %memobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %errnum = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %buf, %struct._object* null, i8* %0, i64 %1, i32 1, i32 8)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %buf)
  store %struct._object* %call1, %struct._object** %memobj, align 8
  %2 = load %struct._object*, %struct._object** %memobj, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.4
  %call5 = call i32* @__errno_location() #6
  store i32 0, i32* %call5, align 4
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %raw, align 8
  %5 = load %struct._object*, %struct._object** @_PyIO_str_write, align 8
  %6 = load %struct._object*, %struct._object** %memobj, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %4, %struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call6, %struct._object** %res, align 8
  %call7 = call i32* @__errno_location() #6
  %7 = load i32, i32* %call7, align 4
  store i32 %7, i32* %errnum, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %res, align 8
  %cmp8 = icmp eq %struct._object* %8, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call9 = call i32 @_PyIO_trap_eintr()
  %tobool = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %memobj, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %res, align 8
  %cmp16 = icmp eq %struct._object* %17, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end.15
  store i64 -1, i64* %retval
  br label %return

if.end.18:                                        ; preds = %do.end.15
  %18 = load %struct._object*, %struct._object** %res, align 8
  %cmp19 = icmp eq %struct._object* %18, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %if.end.18
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %19 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp22, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %21, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %24(%struct._object* %25)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.30
  %26 = load i32, i32* %errnum, align 4
  %call33 = call i32* @__errno_location() #6
  store i32 %26, i32* %call33, align 4
  store i64 -2, i64* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.18
  %27 = load %struct._object*, %struct._object** %res, align 8
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call35 = call i64 @PyNumber_AsSsize_t(%struct._object* %27, %struct._object* %28)
  store i64 %call35, i64* %n, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.34
  %29 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp37, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %31, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %34(%struct._object* %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.45
  %36 = load i64, i64* %n, align 8
  %cmp48 = icmp slt i64 %36, 0
  br i1 %cmp48, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.47
  %37 = load i64, i64* %n, align 8
  %38 = load i64, i64* %len.addr, align 8
  %cmp49 = icmp sgt i64 %37, %38
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false, %do.end.47
  %39 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %40 = load i64, i64* %n, align 8
  %41 = load i64, i64* %len.addr, align 8
  %call51 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %39, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.23, i32 0, i32 0), i64 %40, i64 %41)
  store i64 -1, i64* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false
  %42 = load i64, i64* %n, align 8
  %cmp53 = icmp sgt i64 %42, 0
  br i1 %cmp53, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.52
  %43 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %43, i32 0, i32 8
  %44 = load i64, i64* %abs_pos, align 8
  %cmp54 = icmp ne i64 %44, -1
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true
  %45 = load i64, i64* %n, align 8
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos56 = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 8
  %47 = load i64, i64* %abs_pos56, align 8
  %add = add i64 %47, %45
  store i64 %add, i64* %abs_pos56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true, %if.end.52
  %48 = load i64, i64* %n, align 8
  store i64 %48, i64* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.50, %do.end.32, %if.then.17, %if.then.3, %if.then
  %49 = load i64, i64* %retval
  ret i64 %49
}

; Function Attrs: nounwind uwtable
define internal void @_set_BlockingIOError(i8* %msg, i64 %written) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %written.addr = alloca i64, align 8
  %err = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i64 %written, i64* %written.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call = call i32* @__errno_location() #6
  %1 = load i32, i32* %call, align 4
  %2 = load i8*, i8** %msg.addr, align 8
  %3 = load i64, i64* %written.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 %1, i8* %2, i64 %3)
  store %struct._object* %call1, %struct._object** %err, align 8
  %4 = load %struct._object*, %struct._object** %err, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %6 = load %struct._object*, %struct._object** %err, align 8
  call void @PyErr_SetObject(%struct._object* %5, %struct._object* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %err, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  ret void
}

declare i32 @PyErr_CheckSignals() #1

; Function Attrs: nounwind uwtable
define internal void @_bufferedwriter_reset_buf(%struct.buffered* %self) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 13
  store i64 0, i64* %write_pos, align 8
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %1, i32 0, i32 14
  store i64 -1, i64* %write_end, align 8
  ret void
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

declare %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare i64 @PyNumber_AsOff_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i64 @_bufferedreader_raw_read(%struct.buffered* %self, i8* %start, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %memobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %buf, %struct._object* null, i8* %0, i64 %1, i32 0, i32 9)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %buf)
  store %struct._object* %call1, %struct._object** %memobj, align 8
  %2 = load %struct._object*, %struct._object** %memobj, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.4
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %raw, align 8
  %5 = load %struct._object*, %struct._object** @_PyIO_str_readinto, align 8
  %6 = load %struct._object*, %struct._object** %memobj, align 8
  %call5 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %4, %struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call5, %struct._object** %res, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %res, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call7 = call i32 @_PyIO_trap_eintr()
  %tobool = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  %9 = load %struct._object*, %struct._object** %memobj, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** %res, align 8
  %cmp14 = icmp eq %struct._object* %16, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end.13
  store i64 -1, i64* %retval
  br label %return

if.end.16:                                        ; preds = %do.end.13
  %17 = load %struct._object*, %struct._object** %res, align 8
  %cmp17 = icmp eq %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %if.end.16
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %18 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %20, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %23(%struct._object* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.28
  store i64 -2, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.16
  %25 = load %struct._object*, %struct._object** %res, align 8
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call32 = call i64 @PyNumber_AsSsize_t(%struct._object* %25, %struct._object* %26)
  store i64 %call32, i64* %n, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.31
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp34, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %29, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %32(%struct._object* %33)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.42
  %34 = load i64, i64* %n, align 8
  %cmp45 = icmp slt i64 %34, 0
  br i1 %cmp45, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.44
  %35 = load i64, i64* %n, align 8
  %36 = load i64, i64* %len.addr, align 8
  %cmp46 = icmp sgt i64 %35, %36
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false, %do.end.44
  %37 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %38 = load i64, i64* %n, align 8
  %39 = load i64, i64* %len.addr, align 8
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i32 0, i32 0), i64 %38, i64 %39)
  store i64 -1, i64* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false
  %40 = load i64, i64* %n, align 8
  %cmp50 = icmp sgt i64 %40, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.49
  %41 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %41, i32 0, i32 8
  %42 = load i64, i64* %abs_pos, align 8
  %cmp51 = icmp ne i64 %42, -1
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true
  %43 = load i64, i64* %n, align 8
  %44 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos53 = getelementptr inbounds %struct.buffered, %struct.buffered* %44, i32 0, i32 8
  %45 = load i64, i64* %abs_pos53, align 8
  %add = add i64 %45, %43
  store i64 %add, i64* %abs_pos53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true, %if.end.49
  %46 = load i64, i64* %n, align 8
  store i64 %46, i64* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.47, %do.end.30, %if.then.15, %if.then.3, %if.then
  %47 = load i64, i64* %retval
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_detach(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %raw = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %7 = bitcast %struct.buffered* %6 to %struct._object*
  %8 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw10 = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %raw10, align 8
  store %struct._object* %18, %struct._object** %raw, align 8
  %19 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw11 = getelementptr inbounds %struct.buffered, %struct.buffered* %19, i32 0, i32 1
  store %struct._object* null, %struct._object** %raw11, align 8
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached12 = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 3
  store i32 1, i32* %detached12, align 4
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok13 = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 2
  store i32 0, i32* %ok13, align 4
  %22 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.end
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_simple_flush(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_close(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %r18 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %val2 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store %struct._object* null, %struct._object** %exc, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 15
  %7 = load i8*, i8** %lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %7, i32 0)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  br i1 true, label %land.lhs.true, label %if.then.7

cond.false:                                       ; preds = %if.end.2
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call4 = call i32 @_enter_buffered_busy(%struct.buffered* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.then.7

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %call6 = call i64 @PyThread_get_thread_ident()
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 16
  store volatile i64 %call6, i64* %owner, align 8
  br i1 true, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true, %cond.false, %cond.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call9 = call i32 @buffered_closed(%struct.buffered* %10)
  store i32 %call9, i32* %r, align 4
  %11 = load i32, i32* %r, align 4
  %cmp10 = icmp slt i32 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %end

if.end.12:                                        ; preds = %if.end.8
  %12 = load i32, i32* %r, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store %struct._object* @_Py_NoneStruct, %struct._object** %res, align 8
  %13 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %end

if.end.15:                                        ; preds = %if.end.12
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.buffered, %struct.buffered* %15, i32 0, i32 6
  %16 = load i8, i8* %finalizing, align 1
  %tobool16 = icmp ne i8 %16, 0
  br i1 %tobool16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end.15
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %19 = bitcast %struct.buffered* %18 to %struct._object*
  %call19 = call %struct._object* @buffered_dealloc_warn(%struct.buffered* %17, %struct._object* %19)
  store %struct._object* %call19, %struct._object** %r18, align 8
  %20 = load %struct._object*, %struct._object** %r18, align 8
  %tobool20 = icmp ne %struct._object* %20, null
  br i1 %tobool20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %21 = load %struct._object*, %struct._object** %r18, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt22, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt22, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else.25:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.17
  call void @PyErr_Clear()
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %do.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.15
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %28 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner31 = getelementptr inbounds %struct.buffered, %struct.buffered* %28, i32 0, i32 16
  store volatile i64 0, i64* %owner31, align 8
  %29 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock32 = getelementptr inbounds %struct.buffered, %struct.buffered* %29, i32 0, i32 15
  %30 = load i8*, i8** %lock32, align 8
  call void @PyThread_release_lock(i8* %30)
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.30
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %32 = bitcast %struct.buffered* %31 to %struct._object*
  %33 = load %struct._object*, %struct._object** @_PyIO_str_flush, align 8
  %call34 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %32, %struct._object* %33, i8* null)
  store %struct._object* %call34, %struct._object** %res, align 8
  %34 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock35 = getelementptr inbounds %struct.buffered, %struct.buffered* %34, i32 0, i32 15
  %35 = load i8*, i8** %lock35, align 8
  %call36 = call i32 @PyThread_acquire_lock(i8* %35, i32 0)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %do.end.33
  br i1 true, label %land.lhs.true.42, label %if.then.45

cond.false.39:                                    ; preds = %do.end.33
  %36 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call40 = call i32 @_enter_buffered_busy(%struct.buffered* %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.then.45

land.lhs.true.42:                                 ; preds = %cond.false.39, %cond.true.38
  %call43 = call i64 @PyThread_get_thread_ident()
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner44 = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 16
  store volatile i64 %call43, i64* %owner44, align 8
  br i1 true, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.42, %cond.false.39, %cond.true.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.42
  %38 = load %struct._object*, %struct._object** %res, align 8
  %cmp47 = icmp eq %struct._object* %38, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.46
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  br label %if.end.61

if.else.49:                                       ; preds = %if.end.46
  br label %do.body.50

do.body.50:                                       ; preds = %if.else.49
  %39 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp51, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %41, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %44(%struct._object* %45)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.then.48
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 1
  %47 = load %struct._object*, %struct._object** %raw, align 8
  %48 = load %struct._object*, %struct._object** @_PyIO_str_close, align 8
  %call62 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %47, %struct._object* %48, i8* null)
  store %struct._object* %call62, %struct._object** %res, align 8
  %49 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %49, i32 0, i32 9
  %50 = load i8*, i8** %buffer, align 8
  %tobool63 = icmp ne i8* %50, null
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  %51 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer65 = getelementptr inbounds %struct.buffered, %struct.buffered* %51, i32 0, i32 9
  %52 = load i8*, i8** %buffer65, align 8
  call void @PyMem_Free(i8* %52)
  %53 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer66 = getelementptr inbounds %struct.buffered, %struct.buffered* %53, i32 0, i32 9
  store i8* null, i8** %buffer66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.61
  %54 = load %struct._object*, %struct._object** %exc, align 8
  %cmp68 = icmp ne %struct._object* %54, null
  br i1 %cmp68, label %if.then.69, label %if.end.117

if.then.69:                                       ; preds = %if.end.67
  %55 = load %struct._object*, %struct._object** %res, align 8
  %cmp70 = icmp ne %struct._object* %55, null
  br i1 %cmp70, label %if.then.71, label %if.else.88

if.then.71:                                       ; preds = %if.then.69
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %56 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %56, %struct._object** %_py_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp73 = icmp ne %struct._object* %57, null
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %do.body.72
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %58 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp76, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %60, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %63(%struct._object* %64)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.72
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %65 = load %struct._object*, %struct._object** %exc, align 8
  %66 = load %struct._object*, %struct._object** %val, align 8
  %67 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %65, %struct._object* %66, %struct._object* %67)
  br label %if.end.116

if.else.88:                                       ; preds = %if.then.69
  br label %do.body.89

do.body.89:                                       ; preds = %if.else.88
  %68 = load %struct._object*, %struct._object** %exc, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp90, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %70, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.89
  br label %if.end.98

if.else.95:                                       ; preds = %do.body.89
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %73(%struct._object* %74)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %75 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp101 = icmp ne %struct._object* %76, null
  br i1 %cmp101, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %do.body.100
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp104, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %79, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112

if.else.109:                                      ; preds = %do.body.103
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %82(%struct._object* %83)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.body.100
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val2, %struct._object** %tb)
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val2, %struct._object** %tb)
  %84 = load %struct._object*, %struct._object** %val2, align 8
  %85 = load %struct._object*, %struct._object** %val, align 8
  call void @PyException_SetContext(%struct._object* %84, %struct._object* %85)
  %86 = load %struct._object*, %struct._object** %exc, align 8
  %87 = load %struct._object*, %struct._object** %val2, align 8
  %88 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %86, %struct._object* %87, %struct._object* %88)
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %do.end.87
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.67
  br label %end

end:                                              ; preds = %if.end.117, %if.then.14, %if.then.11
  br label %do.body.118

do.body.118:                                      ; preds = %end
  %89 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner119 = getelementptr inbounds %struct.buffered, %struct.buffered* %89, i32 0, i32 16
  store volatile i64 0, i64* %owner119, align 8
  %90 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock120 = getelementptr inbounds %struct.buffered, %struct.buffered* %90, i32 0, i32 15
  %91 = load i8*, i8** %lock120, align 8
  call void @PyThread_release_lock(i8* %91)
  br label %do.end.121

do.end.121:                                       ; preds = %do.body.118
  %92 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %92, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.121, %if.then.45, %if.then.7, %if.end
  %93 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %93
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_seekable(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_seekable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_readable(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_readable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_writable(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_writable, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_fileno(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_fileno, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_isatty(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_isatty, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %7, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_dealloc_warn(%struct.buffered* %self, %struct._object* %source) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  %source.addr = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %source, %struct._object** %source.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %raw, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw2 = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %raw2, align 8
  %6 = load %struct._object*, %struct._object** %source.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %5, %struct._Py_Identifier* @PyId__dealloc_warn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %6)
  store %struct._object* %call, %struct._object** %r, align 8
  %7 = load %struct._object*, %struct._object** %r, align 8
  %tobool3 = icmp ne %struct._object* %7, null
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %8 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.else.6:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %do.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %land.lhs.true, %entry
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_getstate(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %2 = bitcast %struct.buffered* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0), i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_read(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %n, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %n)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load i64, i64* %n, align 8
  %cmp6 = icmp slt i64 %7, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 7
  %10 = load i32, i32* %fast_closed_checks, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %raw, align 8
  %call10 = call i32 @_PyFileIO_closed(%struct._object* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.14, label %if.end.15

cond.false:                                       ; preds = %if.end.8
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call12 = call i32 @buffered_closed(%struct.buffered* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.false, %cond.true
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %cond.false, %cond.true
  %15 = load i64, i64* %n, align 8
  %cmp16 = icmp eq i64 %15, -1
  br i1 %cmp16, label %if.then.17, label %if.else.28

if.then.17:                                       ; preds = %if.end.15
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 15
  %17 = load i8*, i8** %lock, align 8
  %call18 = call i32 @PyThread_acquire_lock(i8* %17, i32 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.then.17
  br i1 true, label %land.lhs.true, label %if.then.25

cond.false.21:                                    ; preds = %if.then.17
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call22 = call i32 @_enter_buffered_busy(%struct.buffered* %18)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.then.25

land.lhs.true:                                    ; preds = %cond.false.21, %cond.true.20
  %call24 = call i64 @PyThread_get_thread_ident()
  %19 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %19, i32 0, i32 16
  store volatile i64 %call24, i64* %owner, align 8
  br i1 true, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true, %cond.false.21, %cond.true.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call27 = call %struct._object* @_bufferedreader_read_all(%struct.buffered* %20)
  store %struct._object* %call27, %struct._object** %res, align 8
  br label %if.end.50

if.else.28:                                       ; preds = %if.end.15
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %22 = load i64, i64* %n, align 8
  %call29 = call %struct._object* @_bufferedreader_read_fast(%struct.buffered* %21, i64 %22)
  store %struct._object* %call29, %struct._object** %res, align 8
  %23 = load %struct._object*, %struct._object** %res, align 8
  %cmp30 = icmp ne %struct._object* %23, @_Py_NoneStruct
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else.28
  %24 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.else.28
  br label %do.body

do.body:                                          ; preds = %if.end.32
  %25 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else.35:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  %32 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock37 = getelementptr inbounds %struct.buffered, %struct.buffered* %32, i32 0, i32 15
  %33 = load i8*, i8** %lock37, align 8
  %call38 = call i32 @PyThread_acquire_lock(i8* %33, i32 0)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %do.end
  br i1 true, label %land.lhs.true.44, label %if.then.47

cond.false.41:                                    ; preds = %do.end
  %34 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call42 = call i32 @_enter_buffered_busy(%struct.buffered* %34)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.then.47

land.lhs.true.44:                                 ; preds = %cond.false.41, %cond.true.40
  %call45 = call i64 @PyThread_get_thread_ident()
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner46 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 16
  store volatile i64 %call45, i64* %owner46, align 8
  br i1 true, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.44, %cond.false.41, %cond.true.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.44
  %36 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %37 = load i64, i64* %n, align 8
  %call49 = call %struct._object* @_bufferedreader_read_generic(%struct.buffered* %36, i64 %37)
  store %struct._object* %call49, %struct._object** %res, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.48, %if.end.26
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.50
  %38 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner52 = getelementptr inbounds %struct.buffered, %struct.buffered* %38, i32 0, i32 16
  store volatile i64 0, i64* %owner52, align 8
  %39 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock53 = getelementptr inbounds %struct.buffered, %struct.buffered* %39, i32 0, i32 15
  %40 = load i8*, i8** %lock53, align 8
  call void @PyThread_release_lock(i8* %40)
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.51
  %41 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.54, %if.then.47, %if.then.31, %if.then.25, %if.then.14, %if.then.7, %if.then.4, %if.end
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_peek(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %n, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i64* %n)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %7, i32 0, i32 15
  %8 = load i8*, i8** %lock, align 8
  %call6 = call i32 @PyThread_acquire_lock(i8* %8, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br i1 true, label %land.lhs.true, label %if.then.11

cond.false:                                       ; preds = %if.end.5
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call8 = call i32 @_enter_buffered_busy(%struct.buffered* %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.then.11

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %call10 = call i64 @PyThread_get_thread_ident()
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 16
  store volatile i64 %call10, i64* %owner, align 8
  br i1 true, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %cond.false, %cond.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 5
  %12 = load i32, i32* %writable, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end.12
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call15 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %13)
  store %struct._object* %call15, %struct._object** %res, align 8
  %14 = load %struct._object*, %struct._object** %res, align 8
  %cmp16 = icmp eq %struct._object* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  br label %end

if.end.18:                                        ; preds = %if.then.14
  br label %do.body

do.body:                                          ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %_py_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp19 = icmp ne %struct._object* %16, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.21
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %do.body
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.end.12
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call29 = call %struct._object* @_bufferedreader_peek_unlocked(%struct.buffered* %24)
  store %struct._object* %call29, %struct._object** %res, align 8
  br label %end

end:                                              ; preds = %if.end.28, %if.then.17
  br label %do.body.30

do.body.30:                                       ; preds = %end
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner31 = getelementptr inbounds %struct.buffered, %struct.buffered* %25, i32 0, i32 16
  store volatile i64 0, i64* %owner31, align 8
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock32 = getelementptr inbounds %struct.buffered, %struct.buffered* %26, i32 0, i32 15
  %27 = load i8*, i8** %lock32, align 8
  call void @PyThread_release_lock(i8* %27)
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.30
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %if.then.11, %if.then.4, %if.end
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_read1(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %have = alloca i64, align 8
  %r = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i64* %n)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load i64, i64* %n, align 8
  %cmp6 = icmp slt i64 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %9 = load i64, i64* %n, align 8
  %cmp9 = icmp eq i64 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 4
  %11 = load i32, i32* %readable, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.12
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable14 = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 4
  %13 = load i32, i32* %readable14, align 4
  %tobool15 = icmp ne i32 %13, 0
  br i1 %tobool15, label %land.lhs.true.16, label %cond.false

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 12
  %15 = load i64, i64* %read_end, align 8
  %cmp17 = icmp ne i64 %15, -1
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end18 = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 12
  %17 = load i64, i64* %read_end18, align 8
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 10
  %19 = load i64, i64* %pos, align 8
  %sub = sub i64 %17, %19
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.16, %land.lhs.true, %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %have, align 8
  %20 = load i64, i64* %have, align 8
  %cmp19 = icmp sgt i64 %20, 0
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %cond.end
  %21 = load i64, i64* %have, align 8
  %22 = load i64, i64* %n, align 8
  %cmp21 = icmp sgt i64 %21, %22
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.then.20
  %23 = load i64, i64* %n, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then.20
  %24 = load i64, i64* %have, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi i64 [ %23, %cond.true.22 ], [ %24, %cond.false.23 ]
  store i64 %cond25, i64* %n, align 8
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %26 = load i64, i64* %n, align 8
  %call26 = call %struct._object* @_bufferedreader_read_fast(%struct.buffered* %25, i64 %26)
  store %struct._object* %call26, %struct._object** %res, align 8
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %cond.end
  %28 = load i64, i64* %n, align 8
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %28)
  store %struct._object* %call28, %struct._object** %res, align 8
  %29 = load %struct._object*, %struct._object** %res, align 8
  %cmp29 = icmp eq %struct._object* %29, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %30 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %30, i32 0, i32 15
  %31 = load i8*, i8** %lock, align 8
  %call32 = call i32 @PyThread_acquire_lock(i8* %31, i32 0)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.end.31
  br i1 true, label %land.lhs.true.38, label %if.then.40

cond.false.35:                                    ; preds = %if.end.31
  %32 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call36 = call i32 @_enter_buffered_busy(%struct.buffered* %32)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.then.40

land.lhs.true.38:                                 ; preds = %cond.false.35, %cond.true.34
  %call39 = call i64 @PyThread_get_thread_ident()
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 16
  store volatile i64 %call39, i64* %owner, align 8
  br i1 true, label %if.end.45, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38, %cond.false.35, %cond.true.34
  br label %do.body

do.body:                                          ; preds = %if.then.40
  %34 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp41 = icmp ne i64 %dec, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body
  br label %if.end.44

if.else.43:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end

do.end:                                           ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.38
  %41 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %41)
  %42 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %43 = load %struct._object*, %struct._object** %res, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %44, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %45 = load i64, i64* %n, align 8
  %call46 = call i64 @_bufferedreader_raw_read(%struct.buffered* %42, i8* %arraydecay, i64 %45)
  store i64 %call46, i64* %r, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.45
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner48 = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 16
  store volatile i64 0, i64* %owner48, align 8
  %47 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock49 = getelementptr inbounds %struct.buffered, %struct.buffered* %47, i32 0, i32 15
  %48 = load i8*, i8** %lock49, align 8
  call void @PyThread_release_lock(i8* %48)
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.47
  %49 = load i64, i64* %r, align 8
  %cmp51 = icmp eq i64 %49, -1
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %do.end.50
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %50 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp54, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %52, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %55(%struct._object* %56)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %do.end.50
  %57 = load i64, i64* %r, align 8
  %cmp65 = icmp eq i64 %57, -2
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  store i64 0, i64* %r, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %58 = load i64, i64* %n, align 8
  %59 = load i64, i64* %r, align 8
  %cmp68 = icmp sgt i64 %58, %59
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.67
  %60 = load i64, i64* %r, align 8
  %call70 = call i32 @_PyBytes_Resize(%struct._object** %res, i64 %60)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.67
  %61 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.71, %do.end.63, %do.end, %if.then.30, %cond.end.24, %if.then.10, %if.then.7, %if.then.4, %if.end
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_readinto(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %n = alloca i64, align 8
  %written = alloca i64, align 8
  %remaining = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %written, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct.bufferinfo* %buf)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %7, i32 0, i32 4
  %8 = load i32, i32* %readable, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.5
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable7 = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 4
  %10 = load i32, i32* %readable7, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 12
  %12 = load i64, i64* %read_end, align 8
  %cmp10 = icmp ne i64 %12, -1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.9
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end11 = getelementptr inbounds %struct.buffered, %struct.buffered* %13, i32 0, i32 12
  %14 = load i64, i64* %read_end11, align 8
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %15, i32 0, i32 10
  %16 = load i64, i64* %pos, align 8
  %sub = sub i64 %14, %16
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.9, %land.lhs.true, %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %n, align 8
  %17 = load i64, i64* %n, align 8
  %cmp12 = icmp sgt i64 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.30

if.then.13:                                       ; preds = %cond.end
  %18 = load i64, i64* %n, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %19 = load i64, i64* %len, align 8
  %cmp14 = icmp sge i64 %18, %19
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.then.13
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %20 = load i8*, i8** %buf16, align 8
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 9
  %22 = load i8*, i8** %buffer, align 8
  %23 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos17 = getelementptr inbounds %struct.buffered, %struct.buffered* %23, i32 0, i32 10
  %24 = load i64, i64* %pos17, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 %24
  %len18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %25 = load i64, i64* %len18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %add.ptr, i64 %25, i32 1, i1 false)
  %len19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %26 = load i64, i64* %len19, align 8
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos20 = getelementptr inbounds %struct.buffered, %struct.buffered* %27, i32 0, i32 10
  %28 = load i64, i64* %pos20, align 8
  %add = add i64 %28, %26
  store i64 %add, i64* %pos20, align 8
  %len21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %29 = load i64, i64* %len21, align 8
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %29)
  store %struct._object* %call22, %struct._object** %res, align 8
  br label %end_unlocked

if.end.23:                                        ; preds = %if.then.13
  %buf24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %30 = load i8*, i8** %buf24, align 8
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer25 = getelementptr inbounds %struct.buffered, %struct.buffered* %31, i32 0, i32 9
  %32 = load i8*, i8** %buffer25, align 8
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos26 = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 10
  %34 = load i64, i64* %pos26, align 8
  %add.ptr27 = getelementptr i8, i8* %32, i64 %34
  %35 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %add.ptr27, i64 %35, i32 1, i1 false)
  %36 = load i64, i64* %n, align 8
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos28 = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 10
  %38 = load i64, i64* %pos28, align 8
  %add29 = add i64 %38, %36
  store i64 %add29, i64* %pos28, align 8
  %39 = load i64, i64* %n, align 8
  store i64 %39, i64* %written, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.23, %cond.end
  %40 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %40, i32 0, i32 15
  %41 = load i8*, i8** %lock, align 8
  %call31 = call i32 @PyThread_acquire_lock(i8* %41, i32 0)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.end.30
  br i1 true, label %land.lhs.true.37, label %if.then.39

cond.false.34:                                    ; preds = %if.end.30
  %42 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call35 = call i32 @_enter_buffered_busy(%struct.buffered* %42)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.then.39

land.lhs.true.37:                                 ; preds = %cond.false.34, %cond.true.33
  %call38 = call i64 @PyThread_get_thread_ident()
  %43 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %43, i32 0, i32 16
  store volatile i64 %call38, i64* %owner, align 8
  br i1 true, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37, %cond.false.34, %cond.true.33
  br label %end_unlocked

if.end.40:                                        ; preds = %land.lhs.true.37
  %44 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %44, i32 0, i32 5
  %45 = load i32, i32* %writable, align 4
  %tobool41 = icmp ne i32 %45, 0
  br i1 %tobool41, label %if.then.42, label %if.end.56

if.then.42:                                       ; preds = %if.end.40
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call43 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %46)
  store %struct._object* %call43, %struct._object** %res, align 8
  %47 = load %struct._object*, %struct._object** %res, align 8
  %cmp44 = icmp eq %struct._object* %47, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  br label %end

if.end.46:                                        ; preds = %if.then.42
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %48 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %48, %struct._object** %_py_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp47 = icmp ne %struct._object* %49, null
  br i1 %cmp47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %52, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.49
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.49
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %55(%struct._object* %56)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end

do.end:                                           ; preds = %if.end.53
  br label %if.end.54

if.end.54:                                        ; preds = %do.end, %do.body
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %if.end.40
  %57 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %57)
  %58 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos57 = getelementptr inbounds %struct.buffered, %struct.buffered* %58, i32 0, i32 10
  store i64 0, i64* %pos57, align 8
  %len58 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %59 = load i64, i64* %len58, align 8
  %60 = load i64, i64* %written, align 8
  %sub59 = sub i64 %59, %60
  store i64 %sub59, i64* %remaining, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.56
  %61 = load i64, i64* %remaining, align 8
  %cmp60 = icmp sgt i64 %61, 0
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i64, i64* %remaining, align 8
  %63 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %63, i32 0, i32 17
  %64 = load i64, i64* %buffer_size, align 8
  %cmp61 = icmp sgt i64 %62, %64
  br i1 %cmp61, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %for.body
  %65 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buf63 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %66 = load i8*, i8** %buf63, align 8
  %67 = load i64, i64* %written, align 8
  %add.ptr64 = getelementptr i8, i8* %66, i64 %67
  %68 = load i64, i64* %remaining, align 8
  %call65 = call i64 @_bufferedreader_raw_read(%struct.buffered* %65, i8* %add.ptr64, i64 %68)
  store i64 %call65, i64* %n, align 8
  br label %if.end.81

if.else.66:                                       ; preds = %for.body
  %69 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call67 = call i64 @_bufferedreader_fill_buffer(%struct.buffered* %69)
  store i64 %call67, i64* %n, align 8
  %70 = load i64, i64* %n, align 8
  %cmp68 = icmp sgt i64 %70, 0
  br i1 %cmp68, label %if.then.69, label %if.end.80

if.then.69:                                       ; preds = %if.else.66
  %71 = load i64, i64* %n, align 8
  %72 = load i64, i64* %remaining, align 8
  %cmp70 = icmp sgt i64 %71, %72
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  %73 = load i64, i64* %remaining, align 8
  store i64 %73, i64* %n, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.69
  %buf73 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %74 = load i8*, i8** %buf73, align 8
  %75 = load i64, i64* %written, align 8
  %add.ptr74 = getelementptr i8, i8* %74, i64 %75
  %76 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer75 = getelementptr inbounds %struct.buffered, %struct.buffered* %76, i32 0, i32 9
  %77 = load i8*, i8** %buffer75, align 8
  %78 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos76 = getelementptr inbounds %struct.buffered, %struct.buffered* %78, i32 0, i32 10
  %79 = load i64, i64* %pos76, align 8
  %add.ptr77 = getelementptr i8, i8* %77, i64 %79
  %80 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr74, i8* %add.ptr77, i64 %80, i32 1, i1 false)
  %81 = load i64, i64* %n, align 8
  %82 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos78 = getelementptr inbounds %struct.buffered, %struct.buffered* %82, i32 0, i32 10
  %83 = load i64, i64* %pos78, align 8
  %add79 = add i64 %83, %81
  store i64 %add79, i64* %pos78, align 8
  br label %for.inc

if.end.80:                                        ; preds = %if.else.66
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.62
  %84 = load i64, i64* %n, align 8
  %cmp82 = icmp eq i64 %84, 0
  br i1 %cmp82, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.81
  %85 = load i64, i64* %n, align 8
  %cmp83 = icmp eq i64 %85, -2
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.87

land.lhs.true.84:                                 ; preds = %lor.lhs.false
  %86 = load i64, i64* %written, align 8
  %cmp85 = icmp sgt i64 %86, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %land.lhs.true.84, %if.end.81
  br label %for.end

if.end.87:                                        ; preds = %land.lhs.true.84, %lor.lhs.false
  %87 = load i64, i64* %n, align 8
  %cmp88 = icmp slt i64 %87, 0
  br i1 %cmp88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %if.end.87
  %88 = load i64, i64* %n, align 8
  %cmp90 = icmp eq i64 %88, -2
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.89
  %89 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %89, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %res, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.then.89
  br label %end

if.end.93:                                        ; preds = %if.end.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.93, %if.end.72
  %90 = load i64, i64* %n, align 8
  %91 = load i64, i64* %written, align 8
  %add94 = add i64 %91, %90
  store i64 %add94, i64* %written, align 8
  %92 = load i64, i64* %n, align 8
  %93 = load i64, i64* %remaining, align 8
  %sub95 = sub i64 %93, %92
  store i64 %sub95, i64* %remaining, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.86, %for.cond
  %94 = load i64, i64* %written, align 8
  %call96 = call %struct._object* @PyLong_FromSsize_t(i64 %94)
  store %struct._object* %call96, %struct._object** %res, align 8
  br label %end

end:                                              ; preds = %for.end, %if.end.92, %if.then.45
  br label %do.body.97

do.body.97:                                       ; preds = %end
  %95 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner98 = getelementptr inbounds %struct.buffered, %struct.buffered* %95, i32 0, i32 16
  store volatile i64 0, i64* %owner98, align 8
  %96 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock99 = getelementptr inbounds %struct.buffered, %struct.buffered* %96, i32 0, i32 15
  %97 = load i8*, i8** %lock99, align 8
  call void @PyThread_release_lock(i8* %97)
  br label %do.end.100

do.end.100:                                       ; preds = %do.body.97
  br label %end_unlocked

end_unlocked:                                     ; preds = %do.end.100, %if.then.39, %if.then.15
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  %98 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %98, %struct._object** %retval
  br label %return

return:                                           ; preds = %end_unlocked, %if.then.4, %if.end
  %99 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %99
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_readline(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %limit, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %limit)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %8 = load i64, i64* %limit, align 8
  %call6 = call %struct._object* @_buffered_readline(%struct.buffered* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_seek(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %target = alloca i64, align 8
  %n = alloca i64, align 8
  %whence = alloca i32, align 4
  %targetobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %current = alloca i64, align 8
  %avail = alloca i64, align 8
  %offset = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %whence, align 4
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %struct._object** %targetobj, i32* %whence)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load i32, i32* %whence, align 4
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %8 = load i32, i32* %whence, align 4
  %cmp7 = icmp sgt i32 %8, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.5
  %9 = load i32, i32* %whence, align 4
  %cmp8 = icmp ne i32 %9, 4
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %whence, align 4
  %cmp10 = icmp ne i32 %10, 3
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.9
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %12 = load i32, i32* %whence, align 4
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0), i32 %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %lor.lhs.false
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %13, i32 0, i32 7
  %14 = load i32, i32* %fast_closed_checks, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %raw, align 8
  %call15 = call i32 @_PyFileIO_closed(%struct._object* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.19, label %if.end.20

cond.false:                                       ; preds = %if.end.13
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call17 = call i32 @buffered_closed(%struct.buffered* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %cond.false, %cond.true
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %cond.false, %cond.true
  %19 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw21 = getelementptr inbounds %struct.buffered, %struct.buffered* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %raw21, align 8
  %call22 = call %struct._object* @_PyIOBase_check_seekable(%struct._object* %20, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0))
  %cmp23 = icmp eq %struct._object* %call22, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %21 = load %struct._object*, %struct._object** %targetobj, align 8
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call26 = call i64 @PyNumber_AsOff_t(%struct._object* %21, %struct._object* %22)
  store i64 %call26, i64* %target, align 8
  %23 = load i64, i64* %target, align 8
  %cmp27 = icmp eq i64 %23, -1
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.32

land.lhs.true.28:                                 ; preds = %if.end.25
  %call29 = call %struct._object* @PyErr_Occurred()
  %tobool30 = icmp ne %struct._object* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.28, %if.end.25
  %24 = load i32, i32* %whence, align 4
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %land.lhs.true.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.32
  %25 = load i32, i32* %whence, align 4
  %cmp35 = icmp eq i32 %25, 1
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.94

land.lhs.true.36:                                 ; preds = %lor.lhs.false.34, %if.end.32
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %26, i32 0, i32 4
  %27 = load i32, i32* %readable, align 4
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.end.94

if.then.38:                                       ; preds = %land.lhs.true.36
  %28 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %28, i32 0, i32 8
  %29 = load i64, i64* %abs_pos, align 8
  %cmp39 = icmp ne i64 %29, -1
  br i1 %cmp39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.then.38
  %30 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos41 = getelementptr inbounds %struct.buffered, %struct.buffered* %30, i32 0, i32 8
  %31 = load i64, i64* %abs_pos41, align 8
  br label %cond.end

cond.false.42:                                    ; preds = %if.then.38
  %32 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call43 = call i64 @_buffered_raw_tell(%struct.buffered* %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.42, %cond.true.40
  %cond = phi i64 [ %31, %cond.true.40 ], [ %call43, %cond.false.42 ]
  store i64 %cond, i64* %current, align 8
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable44 = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 4
  %34 = load i32, i32* %readable44, align 4
  %tobool45 = icmp ne i32 %34, 0
  br i1 %tobool45, label %land.lhs.true.46, label %cond.false.53

land.lhs.true.46:                                 ; preds = %cond.end
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable47 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 4
  %36 = load i32, i32* %readable47, align 4
  %tobool48 = icmp ne i32 %36, 0
  br i1 %tobool48, label %land.lhs.true.49, label %cond.false.53

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 12
  %38 = load i64, i64* %read_end, align 8
  %cmp50 = icmp ne i64 %38, -1
  br i1 %cmp50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %land.lhs.true.49
  %39 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end52 = getelementptr inbounds %struct.buffered, %struct.buffered* %39, i32 0, i32 12
  %40 = load i64, i64* %read_end52, align 8
  %41 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %41, i32 0, i32 10
  %42 = load i64, i64* %pos, align 8
  %sub = sub i64 %40, %42
  br label %cond.end.54

cond.false.53:                                    ; preds = %land.lhs.true.49, %land.lhs.true.46, %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi i64 [ %sub, %cond.true.51 ], [ 0, %cond.false.53 ]
  store i64 %cond55, i64* %avail, align 8
  %43 = load i64, i64* %avail, align 8
  %cmp56 = icmp sgt i64 %43, 0
  br i1 %cmp56, label %if.then.57, label %if.end.93

if.then.57:                                       ; preds = %cond.end.54
  %44 = load i32, i32* %whence, align 4
  %cmp58 = icmp eq i32 %44, 0
  br i1 %cmp58, label %if.then.59, label %if.else.80

if.then.59:                                       ; preds = %if.then.57
  %45 = load i64, i64* %target, align 8
  %46 = load i64, i64* %current, align 8
  %47 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable60 = getelementptr inbounds %struct.buffered, %struct.buffered* %47, i32 0, i32 4
  %48 = load i32, i32* %readable60, align 4
  %tobool61 = icmp ne i32 %48, 0
  br i1 %tobool61, label %land.lhs.true.62, label %lor.lhs.false.65

land.lhs.true.62:                                 ; preds = %if.then.59
  %49 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end63 = getelementptr inbounds %struct.buffered, %struct.buffered* %49, i32 0, i32 12
  %50 = load i64, i64* %read_end63, align 8
  %cmp64 = icmp ne i64 %50, -1
  br i1 %cmp64, label %land.lhs.true.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %if.then.59
  %51 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %51, i32 0, i32 5
  %52 = load i32, i32* %writable, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %land.lhs.true.67, label %cond.false.75

land.lhs.true.67:                                 ; preds = %lor.lhs.false.65
  %53 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %53, i32 0, i32 14
  %54 = load i64, i64* %write_end, align 8
  %cmp68 = icmp ne i64 %54, -1
  br i1 %cmp68, label %land.lhs.true.69, label %cond.false.75

land.lhs.true.69:                                 ; preds = %land.lhs.true.67, %land.lhs.true.62
  %55 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %55, i32 0, i32 11
  %56 = load i64, i64* %raw_pos, align 8
  %cmp70 = icmp sge i64 %56, 0
  br i1 %cmp70, label %cond.true.71, label %cond.false.75

cond.true.71:                                     ; preds = %land.lhs.true.69
  %57 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos72 = getelementptr inbounds %struct.buffered, %struct.buffered* %57, i32 0, i32 11
  %58 = load i64, i64* %raw_pos72, align 8
  %59 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos73 = getelementptr inbounds %struct.buffered, %struct.buffered* %59, i32 0, i32 10
  %60 = load i64, i64* %pos73, align 8
  %sub74 = sub i64 %58, %60
  br label %cond.end.76

cond.false.75:                                    ; preds = %land.lhs.true.69, %land.lhs.true.67, %lor.lhs.false.65
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.71
  %cond77 = phi i64 [ %sub74, %cond.true.71 ], [ 0, %cond.false.75 ]
  %sub78 = sub i64 %46, %cond77
  %sub79 = sub i64 %45, %sub78
  store i64 %sub79, i64* %offset, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.then.57
  %61 = load i64, i64* %target, align 8
  store i64 %61, i64* %offset, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %cond.end.76
  %62 = load i64, i64* %offset, align 8
  %63 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos82 = getelementptr inbounds %struct.buffered, %struct.buffered* %63, i32 0, i32 10
  %64 = load i64, i64* %pos82, align 8
  %sub83 = sub i64 0, %64
  %cmp84 = icmp sge i64 %62, %sub83
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %if.end.81
  %65 = load i64, i64* %offset, align 8
  %66 = load i64, i64* %avail, align 8
  %cmp86 = icmp sle i64 %65, %66
  br i1 %cmp86, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.85
  %67 = load i64, i64* %offset, align 8
  %68 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos88 = getelementptr inbounds %struct.buffered, %struct.buffered* %68, i32 0, i32 10
  %69 = load i64, i64* %pos88, align 8
  %add = add i64 %69, %67
  store i64 %add, i64* %pos88, align 8
  %70 = load i64, i64* %current, align 8
  %71 = load i64, i64* %avail, align 8
  %sub89 = sub i64 %70, %71
  %72 = load i64, i64* %offset, align 8
  %add90 = add i64 %sub89, %72
  %call91 = call %struct._object* @PyLong_FromSsize_t(i64 %add90)
  store %struct._object* %call91, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %land.lhs.true.85, %if.end.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.end.54
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.36, %lor.lhs.false.34
  %73 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %73, i32 0, i32 15
  %74 = load i8*, i8** %lock, align 8
  %call95 = call i32 @PyThread_acquire_lock(i8* %74, i32 0)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %if.end.94
  br i1 true, label %land.lhs.true.101, label %if.then.103

cond.false.98:                                    ; preds = %if.end.94
  %75 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call99 = call i32 @_enter_buffered_busy(%struct.buffered* %75)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.then.103

land.lhs.true.101:                                ; preds = %cond.false.98, %cond.true.97
  %call102 = call i64 @PyThread_get_thread_ident()
  %76 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %76, i32 0, i32 16
  store volatile i64 %call102, i64* %owner, align 8
  br i1 true, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.101, %cond.false.98, %cond.true.97
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %land.lhs.true.101
  %77 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable105 = getelementptr inbounds %struct.buffered, %struct.buffered* %77, i32 0, i32 5
  %78 = load i32, i32* %writable105, align 4
  %tobool106 = icmp ne i32 %78, 0
  br i1 %tobool106, label %if.then.107, label %if.end.121

if.then.107:                                      ; preds = %if.end.104
  %79 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call108 = call %struct._object* @_bufferedwriter_flush_unlocked(%struct.buffered* %79)
  store %struct._object* %call108, %struct._object** %res, align 8
  %80 = load %struct._object*, %struct._object** %res, align 8
  %cmp109 = icmp eq %struct._object* %80, null
  br i1 %cmp109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.107
  br label %end

if.end.111:                                       ; preds = %if.then.107
  br label %do.body

do.body:                                          ; preds = %if.end.111
  %81 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %81, %struct._object** %_py_tmp, align 8
  %82 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp112 = icmp ne %struct._object* %82, null
  br i1 %cmp112, label %if.then.113, label %if.end.119

if.then.113:                                      ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %83 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %85, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp115 = icmp ne i64 %dec, 0
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.114
  br label %if.end.118

if.else.117:                                      ; preds = %do.body.114
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %88(%struct._object* %89)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end

do.end:                                           ; preds = %if.end.118
  br label %if.end.119

if.end.119:                                       ; preds = %do.end, %do.body
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  %90 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedwriter_reset_buf(%struct.buffered* %90)
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %if.end.104
  %91 = load i32, i32* %whence, align 4
  %cmp122 = icmp eq i32 %91, 1
  br i1 %cmp122, label %if.then.123, label %if.end.146

if.then.123:                                      ; preds = %if.end.121
  %92 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable124 = getelementptr inbounds %struct.buffered, %struct.buffered* %92, i32 0, i32 4
  %93 = load i32, i32* %readable124, align 4
  %tobool125 = icmp ne i32 %93, 0
  br i1 %tobool125, label %land.lhs.true.126, label %lor.lhs.false.129

land.lhs.true.126:                                ; preds = %if.then.123
  %94 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end127 = getelementptr inbounds %struct.buffered, %struct.buffered* %94, i32 0, i32 12
  %95 = load i64, i64* %read_end127, align 8
  %cmp128 = icmp ne i64 %95, -1
  br i1 %cmp128, label %land.lhs.true.135, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.126, %if.then.123
  %96 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable130 = getelementptr inbounds %struct.buffered, %struct.buffered* %96, i32 0, i32 5
  %97 = load i32, i32* %writable130, align 4
  %tobool131 = icmp ne i32 %97, 0
  br i1 %tobool131, label %land.lhs.true.132, label %cond.false.142

land.lhs.true.132:                                ; preds = %lor.lhs.false.129
  %98 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end133 = getelementptr inbounds %struct.buffered, %struct.buffered* %98, i32 0, i32 14
  %99 = load i64, i64* %write_end133, align 8
  %cmp134 = icmp ne i64 %99, -1
  br i1 %cmp134, label %land.lhs.true.135, label %cond.false.142

land.lhs.true.135:                                ; preds = %land.lhs.true.132, %land.lhs.true.126
  %100 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos136 = getelementptr inbounds %struct.buffered, %struct.buffered* %100, i32 0, i32 11
  %101 = load i64, i64* %raw_pos136, align 8
  %cmp137 = icmp sge i64 %101, 0
  br i1 %cmp137, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %land.lhs.true.135
  %102 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos139 = getelementptr inbounds %struct.buffered, %struct.buffered* %102, i32 0, i32 11
  %103 = load i64, i64* %raw_pos139, align 8
  %104 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos140 = getelementptr inbounds %struct.buffered, %struct.buffered* %104, i32 0, i32 10
  %105 = load i64, i64* %pos140, align 8
  %sub141 = sub i64 %103, %105
  br label %cond.end.143

cond.false.142:                                   ; preds = %land.lhs.true.135, %land.lhs.true.132, %lor.lhs.false.129
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.138
  %cond144 = phi i64 [ %sub141, %cond.true.138 ], [ 0, %cond.false.142 ]
  %106 = load i64, i64* %target, align 8
  %sub145 = sub i64 %106, %cond144
  store i64 %sub145, i64* %target, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %cond.end.143, %if.end.121
  %107 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %108 = load i64, i64* %target, align 8
  %109 = load i32, i32* %whence, align 4
  %call147 = call i64 @_buffered_raw_seek(%struct.buffered* %107, i64 %108, i32 %109)
  store i64 %call147, i64* %n, align 8
  %110 = load i64, i64* %n, align 8
  %cmp148 = icmp eq i64 %110, -1
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.146
  br label %end

if.end.150:                                       ; preds = %if.end.146
  %111 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos151 = getelementptr inbounds %struct.buffered, %struct.buffered* %111, i32 0, i32 11
  store i64 -1, i64* %raw_pos151, align 8
  %112 = load i64, i64* %n, align 8
  %call152 = call %struct._object* @PyLong_FromSsize_t(i64 %112)
  store %struct._object* %call152, %struct._object** %res, align 8
  %113 = load %struct._object*, %struct._object** %res, align 8
  %cmp153 = icmp ne %struct._object* %113, null
  br i1 %cmp153, label %land.lhs.true.154, label %if.end.158

land.lhs.true.154:                                ; preds = %if.end.150
  %114 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable155 = getelementptr inbounds %struct.buffered, %struct.buffered* %114, i32 0, i32 4
  %115 = load i32, i32* %readable155, align 4
  %tobool156 = icmp ne i32 %115, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.154
  %116 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %116)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %land.lhs.true.154, %if.end.150
  br label %end

end:                                              ; preds = %if.end.158, %if.then.149, %if.then.110
  br label %do.body.159

do.body.159:                                      ; preds = %end
  %117 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner160 = getelementptr inbounds %struct.buffered, %struct.buffered* %117, i32 0, i32 16
  store volatile i64 0, i64* %owner160, align 8
  %118 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock161 = getelementptr inbounds %struct.buffered, %struct.buffered* %118, i32 0, i32 15
  %119 = load i8*, i8** %lock161, align 8
  call void @PyThread_release_lock(i8* %119)
  br label %do.end.162

do.end.162:                                       ; preds = %do.body.159
  %120 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %120, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.162, %if.then.103, %if.then.87, %if.then.31, %if.then.24, %if.then.19, %if.then.11, %if.then.4, %if.end
  %121 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %121
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_tell(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call = call i64 @_buffered_raw_tell(%struct.buffered* %6)
  store i64 %call, i64* %pos, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp3 = icmp eq i64 %7, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 4
  %9 = load i32, i32* %readable, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 12
  %11 = load i64, i64* %read_end, align 8
  %cmp7 = icmp ne i64 %11, -1
  br i1 %cmp7, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.5
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 5
  %13 = load i32, i32* %writable, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 14
  %15 = load i64, i64* %write_end, align 8
  %cmp10 = icmp ne i64 %15, -1
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %land.lhs.true.9, %land.lhs.true
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 11
  %17 = load i64, i64* %raw_pos, align 8
  %cmp12 = icmp sge i64 %17, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos13 = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 11
  %19 = load i64, i64* %raw_pos13, align 8
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 10
  %21 = load i64, i64* %pos14, align 8
  %sub = sub i64 %19, %21
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.11, %land.lhs.true.9, %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %22 = load i64, i64* %pos, align 8
  %sub15 = sub i64 %22, %cond
  store i64 %sub15, i64* %pos, align 8
  %23 = load i64, i64* %pos, align 8
  %call16 = call %struct._object* @PyLong_FromSsize_t(i64 %23)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4, %if.end
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_truncate(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %pos, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), %struct._object** %pos)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %7, i32 0, i32 15
  %8 = load i8*, i8** %lock, align 8
  %call6 = call i32 @PyThread_acquire_lock(i8* %8, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br i1 true, label %land.lhs.true, label %if.then.11

cond.false:                                       ; preds = %if.end.5
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call8 = call i32 @_enter_buffered_busy(%struct.buffered* %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.then.11

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %call10 = call i64 @PyThread_get_thread_ident()
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 16
  store volatile i64 %call10, i64* %owner, align 8
  br i1 true, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %cond.false, %cond.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 5
  %12 = load i32, i32* %writable, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end.12
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call15 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %13)
  store %struct._object* %call15, %struct._object** %res, align 8
  %14 = load %struct._object*, %struct._object** %res, align 8
  %cmp16 = icmp eq %struct._object* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  br label %end

if.end.18:                                        ; preds = %if.then.14
  br label %do.body

do.body:                                          ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %_py_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp19 = icmp ne %struct._object* %16, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %17 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.21
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %do.body
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.end.12
  %24 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %raw, align 8
  %26 = load %struct._object*, %struct._object** @_PyIO_str_truncate, align 8
  %27 = load %struct._object*, %struct._object** %pos, align 8
  %call29 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %25, %struct._object* %26, %struct._object* %27, i8* null)
  store %struct._object* %call29, %struct._object** %res, align 8
  %28 = load %struct._object*, %struct._object** %res, align 8
  %cmp30 = icmp eq %struct._object* %28, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  br label %end

if.end.32:                                        ; preds = %if.end.28
  %29 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call33 = call i64 @_buffered_raw_tell(%struct.buffered* %29)
  %cmp34 = icmp eq i64 %call33, -1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  call void @PyErr_Clear()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  br label %end

end:                                              ; preds = %if.end.36, %if.then.31, %if.then.17
  br label %do.body.37

do.body.37:                                       ; preds = %end
  %30 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner38 = getelementptr inbounds %struct.buffered, %struct.buffered* %30, i32 0, i32 16
  store volatile i64 0, i64* %owner38, align 8
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock39 = getelementptr inbounds %struct.buffered, %struct.buffered* %31, i32 0, i32 15
  %32 = load i8*, i8** %lock39, align 8
  call void @PyThread_release_lock(i8* %32)
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.37
  %33 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.40, %if.then.11, %if.then.4, %if.end
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_sizeof(%struct.buffered* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.buffered*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 152, i64* %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 9
  %1 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 17
  %3 = load i64, i64* %buffer_size, align 8
  %4 = load i64, i64* %res, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  ret %struct._object* %call
}

declare void @PyException_SetContext(%struct._object*, %struct._object*) #1

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bufferedreader_read_all(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %current_size = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %chunks = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_xdecref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_xdecref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store %struct._object* null, %struct._object** %data, align 8
  store %struct._object* null, %struct._object** %tmp, align 8
  store %struct._object* null, %struct._object** %chunks, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 4
  %1 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable2 = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 4
  %3 = load i32, i32* %readable2, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 12
  %5 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.4
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end5 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 12
  %7 = load i64, i64* %read_end5, align 8
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 10
  %9 = load i64, i64* %pos, align 8
  %sub = sub i64 %7, %9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %current_size, align 8
  %10 = load i64, i64* %current_size, align 8
  %tobool6 = icmp ne i64 %10, 0
  br i1 %tobool6, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 9
  %12 = load i8*, i8** %buffer, align 8
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos7 = getelementptr inbounds %struct.buffered, %struct.buffered* %13, i32 0, i32 10
  %14 = load i64, i64* %pos7, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  %15 = load i64, i64* %current_size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %15)
  store %struct._object* %call, %struct._object** %data, align 8
  %16 = load %struct._object*, %struct._object** %data, align 8
  %cmp8 = icmp eq %struct._object* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i64, i64* %current_size, align 8
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos10 = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 10
  %19 = load i64, i64* %pos10, align 8
  %add = add i64 %19, %17
  store i64 %add, i64* %pos10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %cond.end
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 5
  %21 = load i32, i32* %writable, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %if.end.11
  %22 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call14 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %22)
  store %struct._object* %call14, %struct._object** %tmp, align 8
  %23 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp15 = icmp eq %struct._object* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  br label %cleanup

if.end.17:                                        ; preds = %if.then.13
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %24 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %24, %struct._object** %_py_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp19 = icmp ne %struct._object* %25, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %tmp, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body.21
  br label %if.end.25

if.else:                                          ; preds = %do.body.21
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %do.body
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.end.11
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %33)
  %34 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %raw, align 8
  %36 = load %struct._object*, %struct._object** @_PyIO_str_readall, align 8
  %call29 = call i32 @PyObject_HasAttr(%struct._object* %35, %struct._object* %36)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %if.end.28
  %37 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw32 = getelementptr inbounds %struct.buffered, %struct.buffered* %37, i32 0, i32 1
  %38 = load %struct._object*, %struct._object** %raw32, align 8
  %39 = load %struct._object*, %struct._object** @_PyIO_str_readall, align 8
  %call33 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %38, %struct._object* %39, i8* null)
  store %struct._object* %call33, %struct._object** %tmp, align 8
  %40 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp34 = icmp eq %struct._object* %40, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.31
  br label %cleanup

if.end.36:                                        ; preds = %if.then.31
  %41 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp37 = icmp ne %struct._object* %41, @_Py_NoneStruct
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %if.end.36
  %42 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 19
  %44 = load i64, i64* %tp_flags, align 8
  %and = and i64 %44, 134217728
  %cmp40 = icmp ne i64 %and, 0
  br i1 %cmp40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.38
  %45 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0))
  br label %cleanup

if.end.42:                                        ; preds = %land.lhs.true.38, %if.end.36
  %46 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp43 = icmp eq %struct._object* %46, @_Py_NoneStruct
  br i1 %cmp43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.end.42
  %47 = load i64, i64* %current_size, align 8
  %cmp45 = icmp eq i64 %47, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.then.44
  store %struct._object* @_Py_NoneStruct, %struct._object** %res, align 8
  br label %cleanup

if.else.47:                                       ; preds = %if.then.44
  %48 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %48, %struct._object** %res, align 8
  br label %cleanup

if.else.48:                                       ; preds = %if.end.42
  %49 = load i64, i64* %current_size, align 8
  %tobool49 = icmp ne i64 %49, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.48
  %50 = load %struct._object*, %struct._object** %tmp, align 8
  call void @PyBytes_Concat(%struct._object** %data, %struct._object* %50)
  %51 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %51, %struct._object** %res, align 8
  br label %cleanup

if.else.51:                                       ; preds = %if.else.48
  %52 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %52, %struct._object** %res, align 8
  br label %cleanup

if.end.52:                                        ; preds = %if.end.28
  %call53 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call53, %struct._object** %chunks, align 8
  %53 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp54 = icmp eq %struct._object* %53, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  br label %cleanup

if.end.56:                                        ; preds = %if.end.52
  br label %while.body

while.body:                                       ; preds = %if.end.56, %if.end.111
  %54 = load %struct._object*, %struct._object** %data, align 8
  %tobool57 = icmp ne %struct._object* %54, null
  br i1 %tobool57, label %if.then.58, label %if.end.82

if.then.58:                                       ; preds = %while.body
  %55 = load %struct._object*, %struct._object** %chunks, align 8
  %56 = load %struct._object*, %struct._object** %data, align 8
  %call59 = call i32 @PyList_Append(%struct._object* %55, %struct._object* %56)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  br label %cleanup

if.end.62:                                        ; preds = %if.then.58
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.62
  %57 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %57, %struct._object** %_py_tmp65, align 8
  %58 = load %struct._object*, %struct._object** %_py_tmp65, align 8
  %cmp66 = icmp ne %struct._object* %58, null
  br i1 %cmp66, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %do.body.63
  store %struct._object* null, %struct._object** %data, align 8
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %59 = load %struct._object*, %struct._object** %_py_tmp65, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp70, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %61, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.68
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.68
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %64(%struct._object* %65)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.63
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %while.body
  %66 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw83 = getelementptr inbounds %struct.buffered, %struct.buffered* %66, i32 0, i32 1
  %67 = load %struct._object*, %struct._object** %raw83, align 8
  %68 = load %struct._object*, %struct._object** @_PyIO_str_read, align 8
  %call84 = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %67, %struct._object* %68, i8* null)
  store %struct._object* %call84, %struct._object** %data, align 8
  %69 = load %struct._object*, %struct._object** %data, align 8
  %cmp85 = icmp eq %struct._object* %69, null
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  br label %cleanup

if.end.87:                                        ; preds = %if.end.82
  %70 = load %struct._object*, %struct._object** %data, align 8
  %cmp88 = icmp ne %struct._object* %70, @_Py_NoneStruct
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.95

land.lhs.true.89:                                 ; preds = %if.end.87
  %71 = load %struct._object*, %struct._object** %data, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_flags91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 19
  %73 = load i64, i64* %tp_flags91, align 8
  %and92 = and i64 %73, 134217728
  %cmp93 = icmp ne i64 %and92, 0
  br i1 %cmp93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.89
  %74 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  br label %cleanup

if.end.95:                                        ; preds = %land.lhs.true.89, %if.end.87
  %75 = load %struct._object*, %struct._object** %data, align 8
  %cmp96 = icmp eq %struct._object* %75, @_Py_NoneStruct
  br i1 %cmp96, label %if.then.98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.95
  %76 = load %struct._object*, %struct._object** %data, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %77, i32 0, i32 1
  %78 = load i64, i64* %ob_size, align 8
  %cmp97 = icmp eq i64 %78, 0
  br i1 %cmp97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %lor.lhs.false, %if.end.95
  %79 = load i64, i64* %current_size, align 8
  %cmp99 = icmp eq i64 %79, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.then.98
  %80 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %80, %struct._object** %res, align 8
  br label %cleanup

if.else.101:                                      ; preds = %if.then.98
  %81 = load %struct._object*, %struct._object** @_PyIO_empty_bytes, align 8
  %82 = load %struct._object*, %struct._object** %chunks, align 8
  %call102 = call %struct._object* @_PyBytes_Join(%struct._object* %81, %struct._object* %82)
  store %struct._object* %call102, %struct._object** %tmp, align 8
  %83 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %83, %struct._object** %res, align 8
  br label %cleanup

if.end.103:                                       ; preds = %lor.lhs.false
  %84 = load %struct._object*, %struct._object** %data, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyVarObject*
  %ob_size104 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %85, i32 0, i32 1
  %86 = load i64, i64* %ob_size104, align 8
  %87 = load i64, i64* %current_size, align 8
  %add105 = add i64 %87, %86
  store i64 %add105, i64* %current_size, align 8
  %88 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %88, i32 0, i32 8
  %89 = load i64, i64* %abs_pos, align 8
  %cmp106 = icmp ne i64 %89, -1
  br i1 %cmp106, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.end.103
  %90 = load %struct._object*, %struct._object** %data, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyVarObject*
  %ob_size108 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %91, i32 0, i32 1
  %92 = load i64, i64* %ob_size108, align 8
  %93 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos109 = getelementptr inbounds %struct.buffered, %struct.buffered* %93, i32 0, i32 8
  %94 = load i64, i64* %abs_pos109, align 8
  %add110 = add i64 %94, %92
  store i64 %add110, i64* %abs_pos109, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %if.end.103
  br label %while.body

cleanup:                                          ; preds = %if.else.101, %if.then.100, %if.then.94, %if.then.86, %if.then.61, %if.then.55, %if.else.51, %if.then.50, %if.else.47, %if.then.46, %if.then.41, %if.then.35, %if.then.16
  br label %do.body.112

do.body.112:                                      ; preds = %cleanup
  %95 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %95, %struct._object** %_py_xincref_tmp, align 8
  %96 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp114 = icmp ne %struct._object* %96, null
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %do.body.112
  %97 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt116, align 8
  %inc = add i64 %98, 1
  store i64 %inc, i64* %ob_refcnt116, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %do.body.112
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.end.118
  %99 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %99, %struct._object** %_py_xdecref_tmp, align 8
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp121 = icmp ne %struct._object* %100, null
  br i1 %cmp121, label %if.then.122, label %if.end.135

if.then.122:                                      ; preds = %do.body.119
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp125, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %103, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.123
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.123
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %106(%struct._object* %107)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %do.body.119
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %108 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %108, %struct._object** %_py_xdecref_tmp139, align 8
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8
  %cmp140 = icmp ne %struct._object* %109, null
  br i1 %cmp140, label %if.then.141, label %if.end.154

if.then.141:                                      ; preds = %do.body.137
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp144, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %112, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.142
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.142
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %115(%struct._object* %116)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.body.137
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  br label %do.body.156

do.body.156:                                      ; preds = %do.end.155
  %117 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %117, %struct._object** %_py_xdecref_tmp158, align 8
  %118 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8
  %cmp159 = icmp ne %struct._object* %118, null
  br i1 %cmp159, label %if.then.160, label %if.end.173

if.then.160:                                      ; preds = %do.body.156
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  %119 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8
  store %struct._object* %119, %struct._object** %_py_decref_tmp163, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0
  %121 = load i64, i64* %ob_refcnt164, align 8
  %dec165 = add i64 %121, -1
  store i64 %dec165, i64* %ob_refcnt164, align 8
  %cmp166 = icmp ne i64 %dec165, 0
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %do.body.161
  br label %if.end.171

if.else.168:                                      ; preds = %do.body.161
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %124(%struct._object* %125)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  br label %if.end.173

if.end.173:                                       ; preds = %do.end.172, %do.body.156
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  %126 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %126, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.174, %if.then.9
  %127 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %127
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bufferedreader_read_fast(%struct.buffered* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %n.addr = alloca i64, align 8
  %current_size = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 4
  %1 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable1 = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 4
  %3 = load i32, i32* %readable1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 12
  %5 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end4 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 12
  %7 = load i64, i64* %read_end4, align 8
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 10
  %9 = load i64, i64* %pos, align 8
  %sub = sub i64 %7, %9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %current_size, align 8
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64, i64* %current_size, align 8
  %cmp5 = icmp sle i64 %10, %11
  br i1 %cmp5, label %if.then, label %if.end.10

if.then:                                          ; preds = %cond.end
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 9
  %13 = load i8*, i8** %buffer, align 8
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos6 = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 10
  %15 = load i64, i64* %pos6, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %15
  %16 = load i64, i64* %n.addr, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %16)
  store %struct._object* %call, %struct._object** %res, align 8
  %17 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp ne %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %18 = load i64, i64* %n.addr, align 8
  %19 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos9 = getelementptr inbounds %struct.buffered, %struct.buffered* %19, i32 0, i32 10
  %20 = load i64, i64* %pos9, align 8
  %add = add i64 %20, %18
  store i64 %add, i64* %pos9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bufferedreader_read_generic(%struct.buffered* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %n.addr = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %current_size = alloca i64, align 8
  %remaining = alloca i64, align 8
  %written = alloca i64, align 8
  %out = alloca i8*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %r28 = alloca i64, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %r78 = alloca i64, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 4
  %1 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable1 = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 4
  %3 = load i32, i32* %readable1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 12
  %5 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end4 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 12
  %7 = load i64, i64* %read_end4, align 8
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 10
  %9 = load i64, i64* %pos, align 8
  %sub = sub i64 %7, %9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %current_size, align 8
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64, i64* %current_size, align 8
  %cmp5 = icmp sle i64 %10, %11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %13 = load i64, i64* %n.addr, align 8
  %call = call %struct._object* @_bufferedreader_read_fast(%struct.buffered* %12, i64 %13)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load i64, i64* %n.addr, align 8
  %call6 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call6, %struct._object** %res, align 8
  %15 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp eq %struct._object* %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %error

if.end.9:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %res, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %out, align 8
  %18 = load i64, i64* %n.addr, align 8
  store i64 %18, i64* %remaining, align 8
  store i64 0, i64* %written, align 8
  %19 = load i64, i64* %current_size, align 8
  %cmp10 = icmp sgt i64 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.9
  %20 = load i8*, i8** %out, align 8
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 9
  %22 = load i8*, i8** %buffer, align 8
  %23 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos12 = getelementptr inbounds %struct.buffered, %struct.buffered* %23, i32 0, i32 10
  %24 = load i64, i64* %pos12, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 %24
  %25 = load i64, i64* %current_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %add.ptr, i64 %25, i32 1, i1 false)
  %26 = load i64, i64* %current_size, align 8
  %27 = load i64, i64* %remaining, align 8
  %sub13 = sub i64 %27, %26
  store i64 %sub13, i64* %remaining, align 8
  %28 = load i64, i64* %current_size, align 8
  %29 = load i64, i64* %written, align 8
  %add = add i64 %29, %28
  store i64 %add, i64* %written, align 8
  %30 = load i64, i64* %current_size, align 8
  %31 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.buffered, %struct.buffered* %31, i32 0, i32 10
  %32 = load i64, i64* %pos14, align 8
  %add15 = add i64 %32, %30
  store i64 %add15, i64* %pos14, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end.9
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 5
  %34 = load i32, i32* %writable, align 4
  %tobool17 = icmp ne i32 %34, 0
  br i1 %tobool17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end.16
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call19 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %35)
  store %struct._object* %call19, %struct._object** %r, align 8
  %36 = load %struct._object*, %struct._object** %r, align 8
  %cmp20 = icmp eq %struct._object* %36, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  br label %error

if.end.22:                                        ; preds = %if.then.18
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %37 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %if.end.16
  %44 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %44)
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end.26
  %45 = load i64, i64* %remaining, align 8
  %cmp27 = icmp sgt i64 %45, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_mask = getelementptr inbounds %struct.buffered, %struct.buffered* %46, i32 0, i32 18
  %47 = load i64, i64* %buffer_mask, align 8
  %tobool29 = icmp ne i64 %47, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %while.body
  %48 = load i64, i64* %remaining, align 8
  %49 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_mask31 = getelementptr inbounds %struct.buffered, %struct.buffered* %49, i32 0, i32 18
  %50 = load i64, i64* %buffer_mask31, align 8
  %neg = xor i64 %50, -1
  %and = and i64 %48, %neg
  br label %cond.end.34

cond.false.32:                                    ; preds = %while.body
  %51 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %51, i32 0, i32 17
  %52 = load i64, i64* %buffer_size, align 8
  %53 = load i64, i64* %remaining, align 8
  %54 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size33 = getelementptr inbounds %struct.buffered, %struct.buffered* %54, i32 0, i32 17
  %55 = load i64, i64* %buffer_size33, align 8
  %div = sdiv i64 %53, %55
  %mul = mul i64 %52, %div
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.30
  %cond35 = phi i64 [ %and, %cond.true.30 ], [ %mul, %cond.false.32 ]
  store i64 %cond35, i64* %r28, align 8
  %56 = load i64, i64* %r28, align 8
  %cmp36 = icmp eq i64 %56, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cond.end.34
  br label %while.end

if.end.38:                                        ; preds = %cond.end.34
  %57 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %58 = load i8*, i8** %out, align 8
  %59 = load i64, i64* %written, align 8
  %add.ptr39 = getelementptr i8, i8* %58, i64 %59
  %60 = load i64, i64* %r28, align 8
  %call40 = call i64 @_bufferedreader_raw_read(%struct.buffered* %57, i8* %add.ptr39, i64 %60)
  store i64 %call40, i64* %r28, align 8
  %61 = load i64, i64* %r28, align 8
  %cmp41 = icmp eq i64 %61, -1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  br label %error

if.end.43:                                        ; preds = %if.end.38
  %62 = load i64, i64* %r28, align 8
  %cmp44 = icmp eq i64 %62, 0
  br i1 %cmp44, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %63 = load i64, i64* %r28, align 8
  %cmp45 = icmp eq i64 %63, -2
  br i1 %cmp45, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.43
  %64 = load i64, i64* %r28, align 8
  %cmp47 = icmp eq i64 %64, 0
  br i1 %cmp47, label %if.then.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.then.46
  %65 = load i64, i64* %written, align 8
  %cmp49 = icmp sgt i64 %65, 0
  br i1 %cmp49, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %lor.lhs.false.48, %if.then.46
  %66 = load i64, i64* %written, align 8
  %call51 = call i32 @_PyBytes_Resize(%struct._object** %res, i64 %66)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.50
  br label %error

if.end.54:                                        ; preds = %if.then.50
  %67 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %67, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.48
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  %68 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp57, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %70, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %73(%struct._object* %74)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %75 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %75, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %lor.lhs.false
  %76 = load i64, i64* %r28, align 8
  %77 = load i64, i64* %remaining, align 8
  %sub68 = sub i64 %77, %76
  store i64 %sub68, i64* %remaining, align 8
  %78 = load i64, i64* %r28, align 8
  %79 = load i64, i64* %written, align 8
  %add69 = add i64 %79, %78
  store i64 %add69, i64* %written, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.37, %while.cond
  %80 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos70 = getelementptr inbounds %struct.buffered, %struct.buffered* %80, i32 0, i32 10
  store i64 0, i64* %pos70, align 8
  %81 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %81, i32 0, i32 11
  store i64 0, i64* %raw_pos, align 8
  %82 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end71 = getelementptr inbounds %struct.buffered, %struct.buffered* %82, i32 0, i32 12
  store i64 0, i64* %read_end71, align 8
  br label %while.cond.72

while.cond.72:                                    ; preds = %if.end.133, %while.end
  %83 = load i64, i64* %remaining, align 8
  %cmp73 = icmp sgt i64 %83, 0
  br i1 %cmp73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.72
  %84 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end74 = getelementptr inbounds %struct.buffered, %struct.buffered* %84, i32 0, i32 12
  %85 = load i64, i64* %read_end74, align 8
  %86 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size75 = getelementptr inbounds %struct.buffered, %struct.buffered* %86, i32 0, i32 17
  %87 = load i64, i64* %buffer_size75, align 8
  %cmp76 = icmp slt i64 %85, %87
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.72
  %88 = phi i1 [ false, %while.cond.72 ], [ %cmp76, %land.rhs ]
  br i1 %88, label %while.body.77, label %while.end.134

while.body.77:                                    ; preds = %land.end
  %89 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call79 = call i64 @_bufferedreader_fill_buffer(%struct.buffered* %89)
  store i64 %call79, i64* %r78, align 8
  %90 = load i64, i64* %r78, align 8
  %cmp80 = icmp eq i64 %90, -1
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %while.body.77
  br label %error

if.end.82:                                        ; preds = %while.body.77
  %91 = load i64, i64* %r78, align 8
  %cmp83 = icmp eq i64 %91, 0
  br i1 %cmp83, label %if.then.86, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.end.82
  %92 = load i64, i64* %r78, align 8
  %cmp85 = icmp eq i64 %92, -2
  br i1 %cmp85, label %if.then.86, label %if.end.108

if.then.86:                                       ; preds = %lor.lhs.false.84, %if.end.82
  %93 = load i64, i64* %r78, align 8
  %cmp87 = icmp eq i64 %93, 0
  br i1 %cmp87, label %if.then.90, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.then.86
  %94 = load i64, i64* %written, align 8
  %cmp89 = icmp sgt i64 %94, 0
  br i1 %cmp89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %lor.lhs.false.88, %if.then.86
  %95 = load i64, i64* %written, align 8
  %call91 = call i32 @_PyBytes_Resize(%struct._object** %res, i64 %95)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.90
  br label %error

if.end.94:                                        ; preds = %if.then.90
  %96 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %96, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %lor.lhs.false.88
  br label %do.body.96

do.body.96:                                       ; preds = %if.end.95
  %97 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp97, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt98, align 8
  %dec99 = add i64 %99, -1
  store i64 %dec99, i64* %ob_refcnt98, align 8
  %cmp100 = icmp ne i64 %dec99, 0
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.96
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.96
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  call void %102(%struct._object* %103)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %104 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc107 = add i64 %104, 1
  store i64 %inc107, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.108:                                       ; preds = %lor.lhs.false.84
  %105 = load i64, i64* %remaining, align 8
  %106 = load i64, i64* %r78, align 8
  %cmp109 = icmp sgt i64 %105, %106
  br i1 %cmp109, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.end.108
  %107 = load i8*, i8** %out, align 8
  %108 = load i64, i64* %written, align 8
  %add.ptr111 = getelementptr i8, i8* %107, i64 %108
  %109 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer112 = getelementptr inbounds %struct.buffered, %struct.buffered* %109, i32 0, i32 9
  %110 = load i8*, i8** %buffer112, align 8
  %111 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos113 = getelementptr inbounds %struct.buffered, %struct.buffered* %111, i32 0, i32 10
  %112 = load i64, i64* %pos113, align 8
  %add.ptr114 = getelementptr i8, i8* %110, i64 %112
  %113 = load i64, i64* %r78, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr111, i8* %add.ptr114, i64 %113, i32 1, i1 false)
  %114 = load i64, i64* %r78, align 8
  %115 = load i64, i64* %written, align 8
  %add115 = add i64 %115, %114
  store i64 %add115, i64* %written, align 8
  %116 = load i64, i64* %r78, align 8
  %117 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos116 = getelementptr inbounds %struct.buffered, %struct.buffered* %117, i32 0, i32 10
  %118 = load i64, i64* %pos116, align 8
  %add117 = add i64 %118, %116
  store i64 %add117, i64* %pos116, align 8
  %119 = load i64, i64* %r78, align 8
  %120 = load i64, i64* %remaining, align 8
  %sub118 = sub i64 %120, %119
  store i64 %sub118, i64* %remaining, align 8
  br label %if.end.130

if.else.119:                                      ; preds = %if.end.108
  %121 = load i64, i64* %remaining, align 8
  %cmp120 = icmp sgt i64 %121, 0
  br i1 %cmp120, label %if.then.121, label %if.end.129

if.then.121:                                      ; preds = %if.else.119
  %122 = load i8*, i8** %out, align 8
  %123 = load i64, i64* %written, align 8
  %add.ptr122 = getelementptr i8, i8* %122, i64 %123
  %124 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer123 = getelementptr inbounds %struct.buffered, %struct.buffered* %124, i32 0, i32 9
  %125 = load i8*, i8** %buffer123, align 8
  %126 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos124 = getelementptr inbounds %struct.buffered, %struct.buffered* %126, i32 0, i32 10
  %127 = load i64, i64* %pos124, align 8
  %add.ptr125 = getelementptr i8, i8* %125, i64 %127
  %128 = load i64, i64* %remaining, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr122, i8* %add.ptr125, i64 %128, i32 1, i1 false)
  %129 = load i64, i64* %remaining, align 8
  %130 = load i64, i64* %written, align 8
  %add126 = add i64 %130, %129
  store i64 %add126, i64* %written, align 8
  %131 = load i64, i64* %remaining, align 8
  %132 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos127 = getelementptr inbounds %struct.buffered, %struct.buffered* %132, i32 0, i32 10
  %133 = load i64, i64* %pos127, align 8
  %add128 = add i64 %133, %131
  store i64 %add128, i64* %pos127, align 8
  store i64 0, i64* %remaining, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.121, %if.else.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.110
  %134 = load i64, i64* %remaining, align 8
  %cmp131 = icmp eq i64 %134, 0
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.130
  br label %while.end.134

if.end.133:                                       ; preds = %if.end.130
  br label %while.cond.72

while.end.134:                                    ; preds = %if.then.132, %land.end
  %135 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %135, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.93, %if.then.81, %if.then.53, %if.then.42, %if.then.21, %if.then.8
  br label %do.body.135

do.body.135:                                      ; preds = %error
  %136 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %136, %struct._object** %_py_xdecref_tmp, align 8
  %137 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp136 = icmp ne %struct._object* %137, null
  br i1 %cmp136, label %if.then.137, label %if.end.149

if.then.137:                                      ; preds = %do.body.135
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  %138 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %138, %struct._object** %_py_decref_tmp139, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %140, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %do.body.138
  br label %if.end.147

if.else.144:                                      ; preds = %do.body.138
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type145 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 1
  %142 = load %struct._typeobject*, %struct._typeobject** %ob_type145, align 8
  %tp_dealloc146 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %142, i32 0, i32 4
  %143 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc146, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %143(%struct._object* %144)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %if.end.149

if.end.149:                                       ; preds = %do.end.148, %do.body.135
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.150, %while.end.134, %do.end.106, %if.end.94, %do.end.66, %if.end.54, %if.then
  %145 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %145
}

declare i32 @PyObject_HasAttr(%struct._object*, %struct._object*) #1

declare void @PyBytes_Concat(%struct._object**, %struct._object*) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bufferedreader_peek_unlocked(%struct.buffered* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %have = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 4
  %1 = load i32, i32* %readable, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable1 = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 4
  %3 = load i32, i32* %readable1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %4, i32 0, i32 12
  %5 = load i64, i64* %read_end, align 8
  %cmp = icmp ne i64 %5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end4 = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 12
  %7 = load i64, i64* %read_end4, align 8
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 10
  %9 = load i64, i64* %pos, align 8
  %sub = sub i64 %7, %9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %have, align 8
  %10 = load i64, i64* %have, align 8
  %cmp5 = icmp sgt i64 %10, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %11, i32 0, i32 9
  %12 = load i8*, i8** %buffer, align 8
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos6 = getelementptr inbounds %struct.buffered, %struct.buffered* %13, i32 0, i32 10
  %14 = load i64, i64* %pos6, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  %15 = load i64, i64* %have, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %15)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %16)
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call7 = call i64 @_bufferedreader_fill_buffer(%struct.buffered* %17)
  store i64 %call7, i64* %r, align 8
  %18 = load i64, i64* %r, align 8
  %cmp8 = icmp eq i64 %18, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %19 = load i64, i64* %r, align 8
  %cmp11 = icmp eq i64 %19, -2
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i64 0, i64* %r, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 10
  store i64 0, i64* %pos14, align 8
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer15 = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 9
  %22 = load i8*, i8** %buffer15, align 8
  %23 = load i64, i64* %r, align 8
  %call16 = call %struct._object* @PyBytes_FromStringAndSize(i8* %22, i64 %23)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.9, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._object* @_PyIOBase_check_seekable(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @_buffered_raw_tell(%struct.buffered* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %n = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %raw, align 8
  %2 = load %struct._object*, %struct._object** @_PyIO_str_tell, align 8
  %call = call %struct._object* (%struct._object*, %struct._object*, ...) @PyObject_CallMethodObjArgs(%struct._object* %1, %struct._object* %2, i8* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %3 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %res, align 8
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call1 = call i64 @PyNumber_AsOff_t(%struct._object* %4, %struct._object* %5)
  store i64 %call1, i64* %n, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %res, align 8
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
  %13 = load i64, i64* %n, align 8
  %cmp5 = icmp slt i64 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.end
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call7, null
  br i1 %tobool, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %14 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %15 = load i64, i64* %n, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i64 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  store i64 -1, i64* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %16 = load i64, i64* %n, align 8
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %abs_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 8
  store i64 %16, i64* %abs_pos, align 8
  %18 = load i64, i64* %n, align 8
  store i64 %18, i64* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end.10, %if.then
  %19 = load i64, i64* %retval
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_closed_get(%struct.buffered* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %8 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_name_get(%struct.buffered* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %7, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_mode_get(%struct.buffered* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %raw, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %7, %struct._Py_Identifier* @PyId_mode)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @_PyIOBase_check_readable(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_buffered_init(%struct.buffered* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.buffered*, align 8
  %n = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 17
  %1 = load i64, i64* %buffer_size, align 8
  %cmp = icmp sle i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %3, i32 0, i32 9
  %4 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer2 = getelementptr inbounds %struct.buffered, %struct.buffered* %5, i32 0, i32 9
  %6 = load i8*, i8** %buffer2, align 8
  call void @PyMem_Free(i8* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size4 = getelementptr inbounds %struct.buffered, %struct.buffered* %7, i32 0, i32 17
  %8 = load i64, i64* %buffer_size4, align 8
  %call = call i8* @PyMem_Malloc(i64 %8)
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer5 = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 9
  store i8* %call, i8** %buffer5, align 8
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer6 = getelementptr inbounds %struct.buffered, %struct.buffered* %10, i32 0, i32 9
  %11 = load i8*, i8** %buffer6, align 8
  %cmp7 = icmp eq i8* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.3
  %call9 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 15
  %13 = load i8*, i8** %lock, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock13 = getelementptr inbounds %struct.buffered, %struct.buffered* %14, i32 0, i32 15
  %15 = load i8*, i8** %lock13, align 8
  call void @PyThread_free_lock(i8* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %call15 = call i8* @PyThread_allocate_lock()
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock16 = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 15
  store i8* %call15, i8** %lock16, align 8
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock17 = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 15
  %18 = load i8*, i8** %lock17, align 8
  %cmp18 = icmp eq i8* %18, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  %19 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %20 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %20, i32 0, i32 16
  store volatile i64 0, i64* %owner, align 8
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size21 = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 17
  %22 = load i64, i64* %buffer_size21, align 8
  %sub = sub i64 %22, 1
  store i64 %sub, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %23 = load i64, i64* %n, align 8
  %and = and i64 %23, 1
  %tobool22 = icmp ne i64 %and, 0
  br i1 %tobool22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %n, align 8
  %shr = ashr i64 %24, 1
  store i64 %shr, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* %n, align 8
  %cmp23 = icmp eq i64 %25, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.end
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size25 = getelementptr inbounds %struct.buffered, %struct.buffered* %26, i32 0, i32 17
  %27 = load i64, i64* %buffer_size25, align 8
  %sub26 = sub i64 %27, 1
  %28 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_mask = getelementptr inbounds %struct.buffered, %struct.buffered* %28, i32 0, i32 18
  store i64 %sub26, i64* %buffer_mask, align 8
  br label %if.end.28

if.else:                                          ; preds = %for.end
  %29 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_mask27 = getelementptr inbounds %struct.buffered, %struct.buffered* %29, i32 0, i32 18
  store i64 0, i64* %buffer_mask27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  %30 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call29 = call i64 @_buffered_raw_tell(%struct.buffered* %30)
  %cmp30 = icmp eq i64 %call29, -1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  call void @PyErr_Clear()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.8, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyThread_allocate_lock() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedwriter_write(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %written = alloca i64, align 8
  %avail = alloca i64, align 8
  %remaining = alloca i64, align 8
  %offset = alloca i64, align 8
  %w = alloca i64*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), %struct.bufferinfo* %buf)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %7, i32 0, i32 7
  %8 = load i32, i32* %fast_closed_checks, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %9 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %raw, align 8
  %call7 = call i32 @_PyFileIO_closed(%struct._object* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.11, label %if.end.12

cond.false:                                       ; preds = %if.end.5
  %11 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call9 = call i32 @buffered_closed(%struct.buffered* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.false, %cond.true
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %cond.false, %cond.true
  %13 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %13, i32 0, i32 15
  %14 = load i8*, i8** %lock, align 8
  %call13 = call i32 @PyThread_acquire_lock(i8* %14, i32 0)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.end.12
  br i1 true, label %land.lhs.true, label %if.then.20

cond.false.16:                                    ; preds = %if.end.12
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call17 = call i32 @_enter_buffered_busy(%struct.buffered* %15)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.then.20

land.lhs.true:                                    ; preds = %cond.false.16, %cond.true.15
  %call19 = call i64 @PyThread_get_thread_ident()
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %16, i32 0, i32 16
  store volatile i64 %call19, i64* %owner, align 8
  br i1 true, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true, %cond.false.16, %cond.true.15
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 4
  %18 = load i32, i32* %readable, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %land.lhs.true.23, label %land.lhs.true.25

land.lhs.true.23:                                 ; preds = %if.end.21
  %19 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end = getelementptr inbounds %struct.buffered, %struct.buffered* %19, i32 0, i32 12
  %20 = load i64, i64* %read_end, align 8
  %cmp24 = icmp ne i64 %20, -1
  br i1 %cmp24, label %if.end.30, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true.23, %if.end.21
  %21 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable = getelementptr inbounds %struct.buffered, %struct.buffered* %21, i32 0, i32 5
  %22 = load i32, i32* %writable, align 4
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.then.29

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %23 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end = getelementptr inbounds %struct.buffered, %struct.buffered* %23, i32 0, i32 14
  %24 = load i64, i64* %write_end, align 8
  %cmp28 = icmp ne i64 %24, -1
  br i1 %cmp28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27, %land.lhs.true.25
  %25 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos = getelementptr inbounds %struct.buffered, %struct.buffered* %25, i32 0, i32 10
  store i64 0, i64* %pos, align 8
  %26 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %26, i32 0, i32 11
  store i64 0, i64* %raw_pos, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.27, %land.lhs.true.23
  %27 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.buffered, %struct.buffered* %27, i32 0, i32 17
  %28 = load i64, i64* %buffer_size, align 8
  %29 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos31 = getelementptr inbounds %struct.buffered, %struct.buffered* %29, i32 0, i32 10
  %30 = load i64, i64* %pos31, align 8
  %sub = sub i64 %28, %30
  store i64 %sub, i64* %avail, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %31 = load i64, i64* %len, align 8
  %32 = load i64, i64* %avail, align 8
  %cmp32 = icmp sle i64 %31, %32
  br i1 %cmp32, label %if.then.33, label %if.end.72

if.then.33:                                       ; preds = %if.end.30
  %33 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.buffered, %struct.buffered* %33, i32 0, i32 9
  %34 = load i8*, i8** %buffer, align 8
  %35 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos34 = getelementptr inbounds %struct.buffered, %struct.buffered* %35, i32 0, i32 10
  %36 = load i64, i64* %pos34, align 8
  %add.ptr = getelementptr i8, i8* %34, i64 %36
  %buf35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %37 = load i8*, i8** %buf35, align 8
  %len36 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %38 = load i64, i64* %len36, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %37, i64 %38, i32 1, i1 false)
  %39 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable37 = getelementptr inbounds %struct.buffered, %struct.buffered* %39, i32 0, i32 5
  %40 = load i32, i32* %writable37, align 4
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.then.44

land.lhs.true.39:                                 ; preds = %if.then.33
  %41 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end40 = getelementptr inbounds %struct.buffered, %struct.buffered* %41, i32 0, i32 14
  %42 = load i64, i64* %write_end40, align 8
  %cmp41 = icmp ne i64 %42, -1
  br i1 %cmp41, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %land.lhs.true.39
  %43 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos = getelementptr inbounds %struct.buffered, %struct.buffered* %43, i32 0, i32 13
  %44 = load i64, i64* %write_pos, align 8
  %45 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos42 = getelementptr inbounds %struct.buffered, %struct.buffered* %45, i32 0, i32 10
  %46 = load i64, i64* %pos42, align 8
  %cmp43 = icmp sgt i64 %44, %46
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %lor.lhs.false, %land.lhs.true.39, %if.then.33
  %47 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos45 = getelementptr inbounds %struct.buffered, %struct.buffered* %47, i32 0, i32 10
  %48 = load i64, i64* %pos45, align 8
  %49 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos46 = getelementptr inbounds %struct.buffered, %struct.buffered* %49, i32 0, i32 13
  store i64 %48, i64* %write_pos46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.47
  %50 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos48 = getelementptr inbounds %struct.buffered, %struct.buffered* %50, i32 0, i32 10
  %51 = load i64, i64* %pos48, align 8
  %len49 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %52 = load i64, i64* %len49, align 8
  %add = add i64 %51, %52
  %53 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos50 = getelementptr inbounds %struct.buffered, %struct.buffered* %53, i32 0, i32 10
  store i64 %add, i64* %pos50, align 8
  %54 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable51 = getelementptr inbounds %struct.buffered, %struct.buffered* %54, i32 0, i32 4
  %55 = load i32, i32* %readable51, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.63

land.lhs.true.53:                                 ; preds = %do.body
  %56 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end54 = getelementptr inbounds %struct.buffered, %struct.buffered* %56, i32 0, i32 12
  %57 = load i64, i64* %read_end54, align 8
  %cmp55 = icmp ne i64 %57, -1
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.63

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %58 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end57 = getelementptr inbounds %struct.buffered, %struct.buffered* %58, i32 0, i32 12
  %59 = load i64, i64* %read_end57, align 8
  %60 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos58 = getelementptr inbounds %struct.buffered, %struct.buffered* %60, i32 0, i32 10
  %61 = load i64, i64* %pos58, align 8
  %cmp59 = icmp slt i64 %59, %61
  br i1 %cmp59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %land.lhs.true.56
  %62 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos61 = getelementptr inbounds %struct.buffered, %struct.buffered* %62, i32 0, i32 10
  %63 = load i64, i64* %pos61, align 8
  %64 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end62 = getelementptr inbounds %struct.buffered, %struct.buffered* %64, i32 0, i32 12
  store i64 %63, i64* %read_end62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.56, %land.lhs.true.53, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.63
  %65 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos64 = getelementptr inbounds %struct.buffered, %struct.buffered* %65, i32 0, i32 10
  %66 = load i64, i64* %pos64, align 8
  %67 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end65 = getelementptr inbounds %struct.buffered, %struct.buffered* %67, i32 0, i32 14
  %68 = load i64, i64* %write_end65, align 8
  %cmp66 = icmp sgt i64 %66, %68
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %do.end
  %69 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos68 = getelementptr inbounds %struct.buffered, %struct.buffered* %69, i32 0, i32 10
  %70 = load i64, i64* %pos68, align 8
  %71 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end69 = getelementptr inbounds %struct.buffered, %struct.buffered* %71, i32 0, i32 14
  store i64 %70, i64* %write_end69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %do.end
  %len71 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %72 = load i64, i64* %len71, align 8
  store i64 %72, i64* %written, align 8
  br label %end

if.end.72:                                        ; preds = %if.end.30
  %73 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call73 = call %struct._object* @_bufferedwriter_flush_unlocked(%struct.buffered* %73)
  store %struct._object* %call73, %struct._object** %res, align 8
  %74 = load %struct._object*, %struct._object** %res, align 8
  %cmp74 = icmp eq %struct._object* %74, null
  br i1 %cmp74, label %if.then.75, label %if.end.128

if.then.75:                                       ; preds = %if.end.72
  %call76 = call i64* @_buffered_check_blocking_error()
  store i64* %call76, i64** %w, align 8
  %75 = load i64*, i64** %w, align 8
  %cmp77 = icmp eq i64* %75, null
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  br label %error

if.end.79:                                        ; preds = %if.then.75
  %76 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable80 = getelementptr inbounds %struct.buffered, %struct.buffered* %76, i32 0, i32 4
  %77 = load i32, i32* %readable80, align 4
  %tobool81 = icmp ne i32 %77, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  %78 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %78)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.79
  %79 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer84 = getelementptr inbounds %struct.buffered, %struct.buffered* %79, i32 0, i32 9
  %80 = load i8*, i8** %buffer84, align 8
  %81 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer85 = getelementptr inbounds %struct.buffered, %struct.buffered* %81, i32 0, i32 9
  %82 = load i8*, i8** %buffer85, align 8
  %83 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos86 = getelementptr inbounds %struct.buffered, %struct.buffered* %83, i32 0, i32 13
  %84 = load i64, i64* %write_pos86, align 8
  %add.ptr87 = getelementptr i8, i8* %82, i64 %84
  %85 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end88 = getelementptr inbounds %struct.buffered, %struct.buffered* %85, i32 0, i32 14
  %86 = load i64, i64* %write_end88, align 8
  %87 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos89 = getelementptr inbounds %struct.buffered, %struct.buffered* %87, i32 0, i32 13
  %88 = load i64, i64* %write_pos89, align 8
  %sub90 = sub i64 %86, %88
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %80, i8* %add.ptr87, i64 %sub90, i32 1, i1 false)
  %89 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos91 = getelementptr inbounds %struct.buffered, %struct.buffered* %89, i32 0, i32 13
  %90 = load i64, i64* %write_pos91, align 8
  %91 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end92 = getelementptr inbounds %struct.buffered, %struct.buffered* %91, i32 0, i32 14
  %92 = load i64, i64* %write_end92, align 8
  %sub93 = sub i64 %92, %90
  store i64 %sub93, i64* %write_end92, align 8
  %93 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos94 = getelementptr inbounds %struct.buffered, %struct.buffered* %93, i32 0, i32 13
  %94 = load i64, i64* %write_pos94, align 8
  %95 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos95 = getelementptr inbounds %struct.buffered, %struct.buffered* %95, i32 0, i32 11
  %96 = load i64, i64* %raw_pos95, align 8
  %sub96 = sub i64 %96, %94
  store i64 %sub96, i64* %raw_pos95, align 8
  %97 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos97 = getelementptr inbounds %struct.buffered, %struct.buffered* %97, i32 0, i32 13
  %98 = load i64, i64* %write_pos97, align 8
  %99 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos98 = getelementptr inbounds %struct.buffered, %struct.buffered* %99, i32 0, i32 10
  %100 = load i64, i64* %pos98, align 8
  %sub99 = sub i64 %100, %98
  store i64 %sub99, i64* %pos98, align 8
  %101 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos100 = getelementptr inbounds %struct.buffered, %struct.buffered* %101, i32 0, i32 13
  store i64 0, i64* %write_pos100, align 8
  %102 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size101 = getelementptr inbounds %struct.buffered, %struct.buffered* %102, i32 0, i32 17
  %103 = load i64, i64* %buffer_size101, align 8
  %104 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end102 = getelementptr inbounds %struct.buffered, %struct.buffered* %104, i32 0, i32 14
  %105 = load i64, i64* %write_end102, align 8
  %sub103 = sub i64 %103, %105
  store i64 %sub103, i64* %avail, align 8
  %len104 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %106 = load i64, i64* %len104, align 8
  %107 = load i64, i64* %avail, align 8
  %cmp105 = icmp sle i64 %106, %107
  br i1 %cmp105, label %if.then.106, label %if.end.119

if.then.106:                                      ; preds = %if.end.83
  call void @PyErr_Clear()
  %108 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer107 = getelementptr inbounds %struct.buffered, %struct.buffered* %108, i32 0, i32 9
  %109 = load i8*, i8** %buffer107, align 8
  %110 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end108 = getelementptr inbounds %struct.buffered, %struct.buffered* %110, i32 0, i32 14
  %111 = load i64, i64* %write_end108, align 8
  %add.ptr109 = getelementptr i8, i8* %109, i64 %111
  %buf110 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %112 = load i8*, i8** %buf110, align 8
  %len111 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %113 = load i64, i64* %len111, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr109, i8* %112, i64 %113, i32 1, i1 false)
  %len112 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %114 = load i64, i64* %len112, align 8
  %115 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end113 = getelementptr inbounds %struct.buffered, %struct.buffered* %115, i32 0, i32 14
  %116 = load i64, i64* %write_end113, align 8
  %add114 = add i64 %116, %114
  store i64 %add114, i64* %write_end113, align 8
  %len115 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %117 = load i64, i64* %len115, align 8
  %118 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos116 = getelementptr inbounds %struct.buffered, %struct.buffered* %118, i32 0, i32 10
  %119 = load i64, i64* %pos116, align 8
  %add117 = add i64 %119, %117
  store i64 %add117, i64* %pos116, align 8
  %len118 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %120 = load i64, i64* %len118, align 8
  store i64 %120, i64* %written, align 8
  br label %end

if.end.119:                                       ; preds = %if.end.83
  %121 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer120 = getelementptr inbounds %struct.buffered, %struct.buffered* %121, i32 0, i32 9
  %122 = load i8*, i8** %buffer120, align 8
  %123 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end121 = getelementptr inbounds %struct.buffered, %struct.buffered* %123, i32 0, i32 14
  %124 = load i64, i64* %write_end121, align 8
  %add.ptr122 = getelementptr i8, i8* %122, i64 %124
  %buf123 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %125 = load i8*, i8** %buf123, align 8
  %126 = load i64, i64* %avail, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr122, i8* %125, i64 %126, i32 1, i1 false)
  %127 = load i64, i64* %avail, align 8
  %128 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end124 = getelementptr inbounds %struct.buffered, %struct.buffered* %128, i32 0, i32 14
  %129 = load i64, i64* %write_end124, align 8
  %add125 = add i64 %129, %127
  store i64 %add125, i64* %write_end124, align 8
  %130 = load i64, i64* %avail, align 8
  %131 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos126 = getelementptr inbounds %struct.buffered, %struct.buffered* %131, i32 0, i32 10
  %132 = load i64, i64* %pos126, align 8
  %add127 = add i64 %132, %130
  store i64 %add127, i64* %pos126, align 8
  %133 = load i64, i64* %avail, align 8
  call void @_set_BlockingIOError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i64 %133)
  br label %error

if.end.128:                                       ; preds = %if.end.72
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %134 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %134, %struct._object** %_py_tmp, align 8
  %135 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp130 = icmp ne %struct._object* %135, null
  br i1 %cmp130, label %if.then.131, label %if.end.138

if.then.131:                                      ; preds = %do.body.129
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %136 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %138, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp133 = icmp ne i64 %dec, 0
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.132
  br label %if.end.136

if.else.135:                                      ; preds = %do.body.132
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %141(%struct._object* %142)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.137, %do.body.129
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %143 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable140 = getelementptr inbounds %struct.buffered, %struct.buffered* %143, i32 0, i32 4
  %144 = load i32, i32* %readable140, align 4
  %tobool141 = icmp ne i32 %144, 0
  br i1 %tobool141, label %land.lhs.true.142, label %lor.lhs.false.145

land.lhs.true.142:                                ; preds = %do.end.139
  %145 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end143 = getelementptr inbounds %struct.buffered, %struct.buffered* %145, i32 0, i32 12
  %146 = load i64, i64* %read_end143, align 8
  %cmp144 = icmp ne i64 %146, -1
  br i1 %cmp144, label %land.lhs.true.151, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.lhs.true.142, %do.end.139
  %147 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %writable146 = getelementptr inbounds %struct.buffered, %struct.buffered* %147, i32 0, i32 5
  %148 = load i32, i32* %writable146, align 4
  %tobool147 = icmp ne i32 %148, 0
  br i1 %tobool147, label %land.lhs.true.148, label %cond.false.158

land.lhs.true.148:                                ; preds = %lor.lhs.false.145
  %149 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end149 = getelementptr inbounds %struct.buffered, %struct.buffered* %149, i32 0, i32 14
  %150 = load i64, i64* %write_end149, align 8
  %cmp150 = icmp ne i64 %150, -1
  br i1 %cmp150, label %land.lhs.true.151, label %cond.false.158

land.lhs.true.151:                                ; preds = %land.lhs.true.148, %land.lhs.true.142
  %151 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos152 = getelementptr inbounds %struct.buffered, %struct.buffered* %151, i32 0, i32 11
  %152 = load i64, i64* %raw_pos152, align 8
  %cmp153 = icmp sge i64 %152, 0
  br i1 %cmp153, label %cond.true.154, label %cond.false.158

cond.true.154:                                    ; preds = %land.lhs.true.151
  %153 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos155 = getelementptr inbounds %struct.buffered, %struct.buffered* %153, i32 0, i32 11
  %154 = load i64, i64* %raw_pos155, align 8
  %155 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos156 = getelementptr inbounds %struct.buffered, %struct.buffered* %155, i32 0, i32 10
  %156 = load i64, i64* %pos156, align 8
  %sub157 = sub i64 %154, %156
  br label %cond.end

cond.false.158:                                   ; preds = %land.lhs.true.151, %land.lhs.true.148, %lor.lhs.false.145
  br label %cond.end

cond.end:                                         ; preds = %cond.false.158, %cond.true.154
  %cond = phi i64 [ %sub157, %cond.true.154 ], [ 0, %cond.false.158 ]
  store i64 %cond, i64* %offset, align 8
  %157 = load i64, i64* %offset, align 8
  %cmp159 = icmp ne i64 %157, 0
  br i1 %cmp159, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %cond.end
  %158 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %159 = load i64, i64* %offset, align 8
  %sub161 = sub i64 0, %159
  %call162 = call i64 @_buffered_raw_seek(%struct.buffered* %158, i64 %sub161, i32 1)
  %cmp163 = icmp slt i64 %call162, 0
  br i1 %cmp163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.then.160
  br label %error

if.end.165:                                       ; preds = %if.then.160
  %160 = load i64, i64* %offset, align 8
  %161 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos166 = getelementptr inbounds %struct.buffered, %struct.buffered* %161, i32 0, i32 11
  %162 = load i64, i64* %raw_pos166, align 8
  %sub167 = sub i64 %162, %160
  store i64 %sub167, i64* %raw_pos166, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.165, %cond.end
  %len169 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %163 = load i64, i64* %len169, align 8
  store i64 %163, i64* %remaining, align 8
  store i64 0, i64* %written, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.219, %if.end.168
  %164 = load i64, i64* %remaining, align 8
  %165 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size170 = getelementptr inbounds %struct.buffered, %struct.buffered* %165, i32 0, i32 17
  %166 = load i64, i64* %buffer_size170, align 8
  %cmp171 = icmp sgt i64 %164, %166
  br i1 %cmp171, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %167 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buf172 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %168 = load i8*, i8** %buf172, align 8
  %169 = load i64, i64* %written, align 8
  %add.ptr173 = getelementptr i8, i8* %168, i64 %169
  %len174 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %170 = load i64, i64* %len174, align 8
  %171 = load i64, i64* %written, align 8
  %sub175 = sub i64 %170, %171
  %call176 = call i64 @_bufferedwriter_raw_write(%struct.buffered* %167, i8* %add.ptr173, i64 %sub175)
  store i64 %call176, i64* %n, align 8
  %172 = load i64, i64* %n, align 8
  %cmp177 = icmp eq i64 %172, -1
  br i1 %cmp177, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %while.body
  br label %error

if.else.179:                                      ; preds = %while.body
  %173 = load i64, i64* %n, align 8
  %cmp180 = icmp eq i64 %173, -2
  br i1 %cmp180, label %if.then.181, label %if.end.212

if.then.181:                                      ; preds = %if.else.179
  %174 = load i64, i64* %remaining, align 8
  %175 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size182 = getelementptr inbounds %struct.buffered, %struct.buffered* %175, i32 0, i32 17
  %176 = load i64, i64* %buffer_size182, align 8
  %cmp183 = icmp sgt i64 %174, %176
  br i1 %cmp183, label %if.then.184, label %if.end.211

if.then.184:                                      ; preds = %if.then.181
  %177 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer185 = getelementptr inbounds %struct.buffered, %struct.buffered* %177, i32 0, i32 9
  %178 = load i8*, i8** %buffer185, align 8
  %buf186 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %179 = load i8*, i8** %buf186, align 8
  %180 = load i64, i64* %written, align 8
  %add.ptr187 = getelementptr i8, i8* %179, i64 %180
  %181 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size188 = getelementptr inbounds %struct.buffered, %struct.buffered* %181, i32 0, i32 17
  %182 = load i64, i64* %buffer_size188, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %add.ptr187, i64 %182, i32 1, i1 false)
  %183 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos189 = getelementptr inbounds %struct.buffered, %struct.buffered* %183, i32 0, i32 11
  store i64 0, i64* %raw_pos189, align 8
  br label %do.body.190

do.body.190:                                      ; preds = %if.then.184
  %184 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size191 = getelementptr inbounds %struct.buffered, %struct.buffered* %184, i32 0, i32 17
  %185 = load i64, i64* %buffer_size191, align 8
  %186 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos192 = getelementptr inbounds %struct.buffered, %struct.buffered* %186, i32 0, i32 10
  store i64 %185, i64* %pos192, align 8
  %187 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable193 = getelementptr inbounds %struct.buffered, %struct.buffered* %187, i32 0, i32 4
  %188 = load i32, i32* %readable193, align 4
  %tobool194 = icmp ne i32 %188, 0
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.205

land.lhs.true.195:                                ; preds = %do.body.190
  %189 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end196 = getelementptr inbounds %struct.buffered, %struct.buffered* %189, i32 0, i32 12
  %190 = load i64, i64* %read_end196, align 8
  %cmp197 = icmp ne i64 %190, -1
  br i1 %cmp197, label %land.lhs.true.198, label %if.end.205

land.lhs.true.198:                                ; preds = %land.lhs.true.195
  %191 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end199 = getelementptr inbounds %struct.buffered, %struct.buffered* %191, i32 0, i32 12
  %192 = load i64, i64* %read_end199, align 8
  %193 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos200 = getelementptr inbounds %struct.buffered, %struct.buffered* %193, i32 0, i32 10
  %194 = load i64, i64* %pos200, align 8
  %cmp201 = icmp slt i64 %192, %194
  br i1 %cmp201, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %land.lhs.true.198
  %195 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos203 = getelementptr inbounds %struct.buffered, %struct.buffered* %195, i32 0, i32 10
  %196 = load i64, i64* %pos203, align 8
  %197 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end204 = getelementptr inbounds %struct.buffered, %struct.buffered* %197, i32 0, i32 12
  store i64 %196, i64* %read_end204, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %land.lhs.true.198, %land.lhs.true.195, %do.body.190
  br label %do.end.206

do.end.206:                                       ; preds = %if.end.205
  %198 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size207 = getelementptr inbounds %struct.buffered, %struct.buffered* %198, i32 0, i32 17
  %199 = load i64, i64* %buffer_size207, align 8
  %200 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end208 = getelementptr inbounds %struct.buffered, %struct.buffered* %200, i32 0, i32 14
  store i64 %199, i64* %write_end208, align 8
  %201 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer_size209 = getelementptr inbounds %struct.buffered, %struct.buffered* %201, i32 0, i32 17
  %202 = load i64, i64* %buffer_size209, align 8
  %203 = load i64, i64* %written, align 8
  %add210 = add i64 %203, %202
  store i64 %add210, i64* %written, align 8
  %204 = load i64, i64* %written, align 8
  call void @_set_BlockingIOError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i64 %204)
  br label %error

if.end.211:                                       ; preds = %if.then.181
  call void @PyErr_Clear()
  br label %while.end

if.end.212:                                       ; preds = %if.else.179
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212
  %205 = load i64, i64* %n, align 8
  %206 = load i64, i64* %written, align 8
  %add214 = add i64 %206, %205
  store i64 %add214, i64* %written, align 8
  %207 = load i64, i64* %n, align 8
  %208 = load i64, i64* %remaining, align 8
  %sub215 = sub i64 %208, %207
  store i64 %sub215, i64* %remaining, align 8
  %call216 = call i32 @PyErr_CheckSignals()
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.213
  br label %error

if.end.219:                                       ; preds = %if.end.213
  br label %while.cond

while.end:                                        ; preds = %if.end.211, %while.cond
  %209 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable220 = getelementptr inbounds %struct.buffered, %struct.buffered* %209, i32 0, i32 4
  %210 = load i32, i32* %readable220, align 4
  %tobool221 = icmp ne i32 %210, 0
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %while.end
  %211 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  call void @_bufferedreader_reset_buf(%struct.buffered* %211)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %while.end
  %212 = load i64, i64* %remaining, align 8
  %cmp224 = icmp sgt i64 %212, 0
  br i1 %cmp224, label %if.then.225, label %if.end.230

if.then.225:                                      ; preds = %if.end.223
  %213 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %buffer226 = getelementptr inbounds %struct.buffered, %struct.buffered* %213, i32 0, i32 9
  %214 = load i8*, i8** %buffer226, align 8
  %buf227 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %215 = load i8*, i8** %buf227, align 8
  %216 = load i64, i64* %written, align 8
  %add.ptr228 = getelementptr i8, i8* %215, i64 %216
  %217 = load i64, i64* %remaining, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %add.ptr228, i64 %217, i32 1, i1 false)
  %218 = load i64, i64* %remaining, align 8
  %219 = load i64, i64* %written, align 8
  %add229 = add i64 %219, %218
  store i64 %add229, i64* %written, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.225, %if.end.223
  %220 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_pos231 = getelementptr inbounds %struct.buffered, %struct.buffered* %220, i32 0, i32 13
  store i64 0, i64* %write_pos231, align 8
  %221 = load i64, i64* %remaining, align 8
  %222 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %write_end232 = getelementptr inbounds %struct.buffered, %struct.buffered* %222, i32 0, i32 14
  store i64 %221, i64* %write_end232, align 8
  br label %do.body.233

do.body.233:                                      ; preds = %if.end.230
  %223 = load i64, i64* %remaining, align 8
  %224 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos234 = getelementptr inbounds %struct.buffered, %struct.buffered* %224, i32 0, i32 10
  store i64 %223, i64* %pos234, align 8
  %225 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %readable235 = getelementptr inbounds %struct.buffered, %struct.buffered* %225, i32 0, i32 4
  %226 = load i32, i32* %readable235, align 4
  %tobool236 = icmp ne i32 %226, 0
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.247

land.lhs.true.237:                                ; preds = %do.body.233
  %227 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end238 = getelementptr inbounds %struct.buffered, %struct.buffered* %227, i32 0, i32 12
  %228 = load i64, i64* %read_end238, align 8
  %cmp239 = icmp ne i64 %228, -1
  br i1 %cmp239, label %land.lhs.true.240, label %if.end.247

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %229 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end241 = getelementptr inbounds %struct.buffered, %struct.buffered* %229, i32 0, i32 12
  %230 = load i64, i64* %read_end241, align 8
  %231 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos242 = getelementptr inbounds %struct.buffered, %struct.buffered* %231, i32 0, i32 10
  %232 = load i64, i64* %pos242, align 8
  %cmp243 = icmp slt i64 %230, %232
  br i1 %cmp243, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %land.lhs.true.240
  %233 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %pos245 = getelementptr inbounds %struct.buffered, %struct.buffered* %233, i32 0, i32 10
  %234 = load i64, i64* %pos245, align 8
  %235 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %read_end246 = getelementptr inbounds %struct.buffered, %struct.buffered* %235, i32 0, i32 12
  store i64 %234, i64* %read_end246, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.244, %land.lhs.true.240, %land.lhs.true.237, %do.body.233
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  %236 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw_pos249 = getelementptr inbounds %struct.buffered, %struct.buffered* %236, i32 0, i32 11
  store i64 0, i64* %raw_pos249, align 8
  br label %end

end:                                              ; preds = %do.end.248, %if.then.106, %if.end.70
  %237 = load i64, i64* %written, align 8
  %call250 = call %struct._object* @PyLong_FromSsize_t(i64 %237)
  store %struct._object* %call250, %struct._object** %res, align 8
  br label %error

error:                                            ; preds = %end, %if.then.218, %do.end.206, %if.then.178, %if.then.164, %if.end.119, %if.then.78
  br label %do.body.251

do.body.251:                                      ; preds = %error
  %238 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner252 = getelementptr inbounds %struct.buffered, %struct.buffered* %238, i32 0, i32 16
  store volatile i64 0, i64* %owner252, align 8
  %239 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock253 = getelementptr inbounds %struct.buffered, %struct.buffered* %239, i32 0, i32 15
  %240 = load i8*, i8** %lock253, align 8
  call void @PyThread_release_lock(i8* %240)
  br label %do.end.254

do.end.254:                                       ; preds = %do.body.251
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  %241 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %241, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.254, %if.then.20, %if.then.11, %if.then.4, %if.end
  %242 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %242
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @buffered_flush(%struct.buffered* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %args.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %ok = getelementptr inbounds %struct.buffered, %struct.buffered* %0, i32 0, i32 2
  %1 = load i32, i32* %ok, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %detached = getelementptr inbounds %struct.buffered, %struct.buffered* %2, i32 0, i32 3
  %3 = load i32, i32* %detached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %6 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %fast_closed_checks = getelementptr inbounds %struct.buffered, %struct.buffered* %6, i32 0, i32 7
  %7 = load i32, i32* %fast_closed_checks, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %8 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %raw = getelementptr inbounds %struct.buffered, %struct.buffered* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %raw, align 8
  %call = call i32 @_PyFileIO_closed(%struct._object* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.7, label %if.end.8

cond.false:                                       ; preds = %if.end.2
  %10 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call5 = call i32 @buffered_closed(%struct.buffered* %10)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.false, %cond.true
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %cond.false, %cond.true
  %12 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock = getelementptr inbounds %struct.buffered, %struct.buffered* %12, i32 0, i32 15
  %13 = load i8*, i8** %lock, align 8
  %call9 = call i32 @PyThread_acquire_lock(i8* %13, i32 0)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end.8
  br i1 true, label %land.lhs.true, label %if.then.16

cond.false.12:                                    ; preds = %if.end.8
  %14 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call13 = call i32 @_enter_buffered_busy(%struct.buffered* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.then.16

land.lhs.true:                                    ; preds = %cond.false.12, %cond.true.11
  %call15 = call i64 @PyThread_get_thread_ident()
  %15 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner = getelementptr inbounds %struct.buffered, %struct.buffered* %15, i32 0, i32 16
  store volatile i64 %call15, i64* %owner, align 8
  br i1 true, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true, %cond.false.12, %cond.true.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true
  %16 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %call18 = call %struct._object* @buffered_flush_and_rewind_unlocked(%struct.buffered* %16)
  store %struct._object* %call18, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %17 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %owner19 = getelementptr inbounds %struct.buffered, %struct.buffered* %17, i32 0, i32 16
  store volatile i64 0, i64* %owner19, align 8
  %18 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %lock20 = getelementptr inbounds %struct.buffered, %struct.buffered* %18, i32 0, i32 15
  %19 = load i8*, i8** %lock20, align 8
  call void @PyThread_release_lock(i8* %19)
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.16, %if.then.7, %if.end
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal i64* @_buffered_check_blocking_error() #0 {
entry:
  %retval = alloca i64*, align 8
  %t = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %err = alloca %struct.PyOSErrorObject*, align 8
  call void @PyErr_Fetch(%struct._object** %t, %struct._object** %v, %struct._object** %tb)
  %0 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call = call i32 @PyErr_GivenExceptionMatches(%struct._object* %1, %struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._object*, %struct._object** %t, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %5 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %3, %struct._object* %4, %struct._object* %5)
  store i64* null, i64** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyOSErrorObject*
  store %struct.PyOSErrorObject* %7, %struct.PyOSErrorObject** %err, align 8
  %8 = load %struct._object*, %struct._object** %t, align 8
  %9 = load %struct._object*, %struct._object** %v, align 8
  %10 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %8, %struct._object* %9, %struct._object* %10)
  %11 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %err, align 8
  %written = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %11, i32 0, i32 11
  store i64* %written, i64** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64*, i64** %retval
  ret i64* %12
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

declare %struct._object* @_PyIOBase_check_writable(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_read(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_read, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_peek(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_peek, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_read1(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_read1, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_readinto(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_readinto, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_write(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_write, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_flush(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_flush, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_readable(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 1
  %1 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_readable, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_writable(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_writable, %struct._object* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_close(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_close, %struct._object* %2)
  store %struct._object* %call, %struct._object** %ret, align 8
  %3 = load %struct._object*, %struct._object** %ret, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %11 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %11, i32 0, i32 1
  %12 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call %struct._object* @_forward_call(%struct.buffered* %12, %struct._Py_Identifier* @PyId_close, %struct._object* %13)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_isatty(%struct.rwpair* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rwpair*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_forward_call(%struct.buffered* %1, %struct._Py_Identifier* @PyId_isatty, %struct._object* %2)
  store %struct._object* %call, %struct._object** %ret, align 8
  %3 = load %struct._object*, %struct._object** %ret, align 8
  %cmp = icmp ne %struct._object* %3, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %12 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %reader = getelementptr inbounds %struct.rwpair, %struct.rwpair* %12, i32 0, i32 1
  %13 = load %struct.buffered*, %struct.buffered** %reader, align 8
  %14 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call %struct._object* @_forward_call(%struct.buffered* %13, %struct._Py_Identifier* @PyId_isatty, %struct._object* %14)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_forward_call(%struct.buffered* %self, %struct._Py_Identifier* %name, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.buffered*, align 8
  %name.addr = alloca %struct._Py_Identifier*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.buffered* %self, %struct.buffered** %self.addr, align 8
  store %struct._Py_Identifier* %name, %struct._Py_Identifier** %name.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %cmp = icmp eq %struct.buffered* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.buffered*, %struct.buffered** %self.addr, align 8
  %3 = bitcast %struct.buffered* %2 to %struct._object*
  %4 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %3, %struct._Py_Identifier* %4)
  store %struct._object* %call, %struct._object** %func, align 8
  %5 = load %struct._object*, %struct._object** %func, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %7 = load %struct._Py_Identifier*, %struct._Py_Identifier** %name.addr, align 8
  %string = getelementptr inbounds %struct._Py_Identifier, %struct._Py_Identifier* %7, i32 0, i32 1
  %8 = load i8*, i8** %string, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %func, align 8
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call %struct._object* @PyObject_CallObject(%struct._object* %9, %struct._object* %10)
  store %struct._object* %call4, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %18 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bufferedrwpair_closed_get(%struct.rwpair* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rwpair*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.rwpair* %self, %struct.rwpair** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer = getelementptr inbounds %struct.rwpair, %struct.rwpair* %0, i32 0, i32 2
  %1 = load %struct.buffered*, %struct.buffered** %writer, align 8
  %cmp = icmp eq %struct.buffered* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rwpair*, %struct.rwpair** %self.addr, align 8
  %writer1 = getelementptr inbounds %struct.rwpair, %struct.rwpair* %3, i32 0, i32 2
  %4 = load %struct.buffered*, %struct.buffered** %writer1, align 8
  %5 = bitcast %struct.buffered* %4 to %struct._object*
  %6 = load %struct._object*, %struct._object** @_PyIO_str_closed, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
