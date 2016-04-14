; ModuleID = 'programs_new/Python-new/bytesio.bc.ll'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.bytesio = type { %struct._object, i8*, i64, i64, i64, %struct._object*, %struct._object*, i64 }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.bytesiobuf = type { %struct._object, %struct.bytesio* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [12 x i8] c"_io.BytesIO\00", align 1
@bytesio_doc = internal global [130 x i8] c"BytesIO([buffer]) -> object\0A\0ACreate a buffered I/O implementation using an in-memory bytes\0Abuffer, ready for reading and writing.\00", align 16
@bytesio_methods = internal global [22 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @return_not_closed to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @readable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @return_not_closed to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @seekable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @return_not_closed to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @writable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @close_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @flush_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @isatty_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @tell_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_write to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @write_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_writelines to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @writelines_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read1 to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @read1_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readinto to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @readinto_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @readline_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readlines to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @readlines_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @read_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_getbuffer to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @getbuffer_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_getvalue to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @getval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @seek_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @truncate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesio*, i8*)* @bytesio_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@bytesio_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_get_closed to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyBytesIO_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* bitcast (void (%struct.bytesio*)* @bytesio_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @bytesio_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.bytesio*, i32 (%struct._object*, i8*)*, i8*)* @bytesio_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.bytesio*)* @bytesio_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 56, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.bytesio*)* @bytesio_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([22 x %struct.PyMethodDef], [22 x %struct.PyMethodDef]* @bytesio_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @bytesio_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 48, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.bytesio*, %struct._object*, %struct._object*)* @bytesio_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bytesio_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"_io._BytesIOBuffer\00", align 1
@bytesiobuf_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.bytesiobuf*, %struct.bufferinfo*, i32)* @bytesiobuf_getbuffer to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (void (%struct.bytesiobuf*, %struct.bufferinfo*)* @bytesiobuf_releasebuffer to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@_PyBytesIOBuffer_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.bytesiobuf*)* @bytesiobuf_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @bytesiobuf_as_buffer, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.bytesiobuf*, i32 (%struct._object*, i8*)*, i8*)* @bytesiobuf_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"deallocated BytesIO object has exported buffers\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"I/O operation on closed file.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@readable_doc = internal global [63 x i8] c"readable() -> bool. Returns True if the IO object can be read.\00", align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@seekable_doc = internal global [65 x i8] c"seekable() -> bool. Returns True if the IO object can be seeked.\00", align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@writable_doc = internal global [66 x i8] c"writable() -> bool. Returns True if the IO object can be written.\00", align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@close_doc = internal global [46 x i8] c"close() -> None.  Disable all I/O operations.\00", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@flush_doc = internal global [32 x i8] c"flush() -> None.  Does nothing.\00", align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@isatty_doc = internal global [103 x i8] c"isatty() -> False.\0A\0AAlways returns False since BytesIO objects are not connected\0Ato a tty-like device.\00", align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@tell_doc = internal global [45 x i8] c"tell() -> current file position, an integer\0A\00", align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@write_doc = internal global [80 x i8] c"write(bytes) -> int.  Write bytes to file.\0A\0AReturn the number of bytes written.\00", align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"writelines\00", align 1
@writelines_doc = internal global [219 x i8] c"writelines(sequence_of_strings) -> None.  Write strings to the file.\0A\0ANote that newlines are not added.  The sequence can be any iterable\0Aobject producing strings. This is equivalent to calling write() for\0Aeach string.\00", align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"read1\00", align 1
@read1_doc = internal global [166 x i8] c"read1(size) -> read at most size bytes, returned as a string.\0A\0AIf the size argument is negative or omitted, read until EOF is reached.\0AReturn an empty string at EOF.\00", align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@readinto_doc = internal global [170 x i8] c"readinto(bytearray) -> int.  Read up to len(b) bytes into b.\0A\0AReturns number of bytes read (0 for EOF), or None if the object\0Ais set not to block as has no data to read.\00", align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@readline_doc = internal global [225 x i8] c"readline([size]) -> next line from the file, as a string.\0A\0ARetain newline.  A non-negative size argument limits the maximum\0Anumber of bytes to return (an incomplete line may be returned then).\0AReturn an empty string at EOF.\0A\00", align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"readlines\00", align 1
@readlines_doc = internal global [248 x i8] c"readlines([size]) -> list of strings, each a line from the file.\0A\0ACall readline() repeatedly and return a list of the lines so read.\0AThe optional size argument, if given, is an approximate bound on the\0Atotal number of bytes in the lines returned.\0A\00", align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@read_doc = internal global [156 x i8] c"read([size]) -> read at most size bytes, returned as a string.\0A\0AIf the size argument is negative, read until EOF is reached.\0AReturn an empty string at EOF.\00", align 16
@.str.18 = private unnamed_addr constant [10 x i8] c"getbuffer\00", align 1
@getbuffer_doc = internal global [86 x i8] c"getbuffer() -> bytes.\0A\0AGet a read-write view over the contents of the BytesIO object.\00", align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"getvalue\00", align 1
@getval_doc = internal global [74 x i8] c"getvalue() -> bytes.\0A\0ARetrieve the entire contents of the BytesIO object.\00", align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@seek_doc = internal global [309 x i8] c"seek(pos, whence=0) -> int.  Change stream position.\0A\0ASeek to byte offset pos relative to position indicated by whence:\0A     0  Start of stream (the default).  pos should be >= 0;\0A     1  Current position - pos may be negative;\0A     2  End of stream - pos usually negative.\0AReturns the new absolute position.\00", align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@truncate_doc = internal global [199 x i8] c"truncate([size]) -> int.  Truncate the file to at most size bytes.\0A\0ASize defaults to the current file position, as returned by tell().\0AThe current file position is unchanged.  Returns the new size.\0A\00", align 16
@.str.22 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyExc_BufferError = external global %struct._object*, align 8
@.str.25 = private unnamed_addr constant [52 x i8] c"Existing exports of data: object cannot be re-sized\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [26 x i8] c"new buffer size too large\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"|O:readline\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"integer argument expected, got '%s'\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"|O:readlines\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"|O:read\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"n|i:seek\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"negative seek value %zd\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"new position too large\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"invalid whence (%i, should be 0, 1 or 2)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"|O:truncate\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"negative size value %zd\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"(OnN)\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"%.200s.__setstate__ argument should be 3-tuple, got %.200s\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"second item of state must be an integer, not %.200s\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"position value cannot be negative\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"third item of state should be a dict, got a %.200s\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"True if the file is closed.\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"initial_bytes\00", align 1
@bytesio_init.kwlist = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16
@.str.45 = private unnamed_addr constant [11 x i8] c"|O:BytesIO\00", align 1

; Function Attrs: nounwind uwtable
define internal void @bytesio_dealloc(%struct.bytesio* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !397, metadata !773), !dbg !774
  br label %do.body, !dbg !775

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !776
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !398, metadata !773), !dbg !778
  %1 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !779, !tbaa !769
  %2 = bitcast %struct.bytesio* %1 to %union._gc_head*, !dbg !780
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !781
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !778, !tbaa !769
  br label %do.body.1, !dbg !782

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !783, !tbaa !769
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !786
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !787
  %4 = load i64, i64* %gc_refs, align 8, !dbg !787, !tbaa !788
  %and = and i64 %4, 1, !dbg !791
  %or = or i64 %and, -4, !dbg !792
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !793, !tbaa !769
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !794
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !795
  store i64 %or, i64* %gc_refs3, align 8, !dbg !796, !tbaa !788
  br label %do.cond, !dbg !797

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !798

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !800, !tbaa !769
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !802
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !803
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !803, !tbaa !804
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !805, !tbaa !769
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !806
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !807
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !807, !tbaa !808
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !809
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !810
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !811, !tbaa !804
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !812, !tbaa !769
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !813
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !814
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !814, !tbaa !808
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !815, !tbaa !769
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !816
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !817
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !817, !tbaa !804
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !818
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !819
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !820, !tbaa !808
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !821, !tbaa !769
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !822
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !823
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !824, !tbaa !804
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !825
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !825
  br label %do.end.17, !dbg !826

do.end.17:                                        ; preds = %do.end
  %16 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !827, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %16, i32 0, i32 7, !dbg !829
  %17 = load i64, i64* %exports, align 8, !dbg !829, !tbaa !830
  %cmp = icmp sgt i64 %17, 0, !dbg !833
  br i1 %cmp, label %if.then, label %if.end, !dbg !834

if.then:                                          ; preds = %do.end.17
  %18 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !835, !tbaa !769
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)), !dbg !837
  call void @PyErr_Print(), !dbg !838
  br label %if.end, !dbg !839

if.end:                                           ; preds = %if.then, %do.end.17
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !840, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %19, i32 0, i32 1, !dbg !842
  %20 = load i8*, i8** %buf, align 8, !dbg !842, !tbaa !843
  %cmp18 = icmp ne i8* %20, null, !dbg !844
  br i1 %cmp18, label %if.then.19, label %if.end.22, !dbg !845

if.then.19:                                       ; preds = %if.end
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !846, !tbaa !769
  %buf20 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 1, !dbg !848
  %22 = load i8*, i8** %buf20, align 8, !dbg !848, !tbaa !843
  call void @PyMem_Free(i8* %22), !dbg !849
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !850, !tbaa !769
  %buf21 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 1, !dbg !851
  store i8* null, i8** %buf21, align 8, !dbg !852, !tbaa !843
  br label %if.end.22, !dbg !853

if.end.22:                                        ; preds = %if.then.19, %if.end
  br label %do.body.23, !dbg !854

do.body.23:                                       ; preds = %if.end.22
  %24 = bitcast %struct._object** %_py_tmp to i8*, !dbg !855
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !855
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !400, metadata !773), !dbg !857
  %25 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !858, !tbaa !769
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %25, i32 0, i32 5, !dbg !859
  %26 = load %struct._object*, %struct._object** %dict, align 8, !dbg !859, !tbaa !860
  store %struct._object* %26, %struct._object** %_py_tmp, align 8, !dbg !857, !tbaa !769
  %27 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !861, !tbaa !769
  %cmp24 = icmp ne %struct._object* %27, null, !dbg !862
  br i1 %cmp24, label %if.then.25, label %if.end.33, !dbg !863

if.then.25:                                       ; preds = %do.body.23
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !864, !tbaa !769
  %dict26 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 5, !dbg !866
  store %struct._object* null, %struct._object** %dict26, align 8, !dbg !867, !tbaa !860
  br label %do.body.27, !dbg !868

do.body.27:                                       ; preds = %if.then.25
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !869
  call void @llvm.lifetime.start(i64 8, i8* %29) #3, !dbg !869
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !402, metadata !773), !dbg !871
  %30 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !872, !tbaa !769
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !871, !tbaa !769
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !873, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !875
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !876, !tbaa !877
  %dec = add i64 %32, -1, !dbg !876
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !876, !tbaa !877
  %cmp28 = icmp ne i64 %dec, 0, !dbg !878
  br i1 %cmp28, label %if.then.29, label %if.else, !dbg !879

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.30, !dbg !880

if.else:                                          ; preds = %do.body.27
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !882, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !884
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !884, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !886
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !886, !tbaa !887
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !891, !tbaa !769
  call void %35(%struct._object* %36), !dbg !892
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.29
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !893
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !893
  br label %do.cond.31, !dbg !895

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !896

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !898

if.end.33:                                        ; preds = %do.end.32, %do.body.23
  %38 = bitcast %struct._object** %_py_tmp to i8*, !dbg !900
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !900
  br label %do.end.35, !dbg !903

do.end.35:                                        ; preds = %if.end.33
  %39 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !904, !tbaa !769
  %weakreflist = getelementptr inbounds %struct.bytesio, %struct.bytesio* %39, i32 0, i32 6, !dbg !906
  %40 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !906, !tbaa !907
  %cmp36 = icmp ne %struct._object* %40, null, !dbg !908
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !909

if.then.37:                                       ; preds = %do.end.35
  %41 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !910, !tbaa !769
  %42 = bitcast %struct.bytesio* %41 to %struct._object*, !dbg !911
  call void @PyObject_ClearWeakRefs(%struct._object* %42), !dbg !912
  br label %if.end.38, !dbg !912

if.end.38:                                        ; preds = %if.then.37, %do.end.35
  %43 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !913, !tbaa !769
  %44 = bitcast %struct.bytesio* %43 to %struct._object*, !dbg !914
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !915
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !915, !tbaa !885
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 38, !dbg !916
  %46 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !916, !tbaa !917
  %47 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !918, !tbaa !769
  %48 = bitcast %struct.bytesio* %47 to i8*, !dbg !918
  call void %46(i8* %48), !dbg !919
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_traverse(%struct.bytesio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !410, metadata !773), !dbg !921
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !411, metadata !773), !dbg !922
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !412, metadata !773), !dbg !923
  br label %do.body, !dbg !924

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !925, !tbaa !769
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 5, !dbg !927
  %1 = load %struct._object*, %struct._object** %dict, align 8, !dbg !927, !tbaa !860
  %tobool = icmp ne %struct._object* %1, null, !dbg !928
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !929

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !930
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !413, metadata !773), !dbg !932
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !933, !tbaa !769
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !934, !tbaa !769
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 5, !dbg !935
  %5 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !935, !tbaa !860
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !936, !tbaa !769
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !933
  store i32 %call, i32* %vret, align 4, !dbg !932, !tbaa !937
  %7 = load i32, i32* %vret, align 4, !dbg !938, !tbaa !937
  %tobool2 = icmp ne i32 %7, 0, !dbg !938
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !940

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !941, !tbaa !937
  store i32 %8, i32* %retval, !dbg !943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !943

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !944
  br label %cleanup, !dbg !944

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !946
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !946
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !949

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !950

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !953
  br label %return, !dbg !953

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !954
  ret i32 %10, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_clear(%struct.bytesio* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !421, metadata !773), !dbg !955
  br label %do.body, !dbg !956

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !957
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !957
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !422, metadata !773), !dbg !959
  %1 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !960, !tbaa !769
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %1, i32 0, i32 5, !dbg !961
  %2 = load %struct._object*, %struct._object** %dict, align 8, !dbg !961, !tbaa !860
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !959, !tbaa !769
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !962, !tbaa !769
  %cmp = icmp ne %struct._object* %3, null, !dbg !963
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !964

if.then:                                          ; preds = %do.body
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !965, !tbaa !769
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 5, !dbg !967
  store %struct._object* null, %struct._object** %dict1, align 8, !dbg !968, !tbaa !860
  br label %do.body.2, !dbg !969

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !970
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !424, metadata !773), !dbg !972
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !973, !tbaa !769
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !972, !tbaa !769
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !974, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !976
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !977, !tbaa !877
  %dec = add i64 %8, -1, !dbg !977
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !977, !tbaa !877
  %cmp3 = icmp ne i64 %dec, 0, !dbg !978
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !979

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !980

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !982, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !984
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !984, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !985
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !985, !tbaa !887
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !986, !tbaa !769
  call void %11(%struct._object* %12), !dbg !987
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !988
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !988
  br label %do.cond, !dbg !990

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !991

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !993

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !995
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !995
  br label %do.end.7, !dbg !998

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !999
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_iternext(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %next = alloca i8*, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !432, metadata !773), !dbg !1000
  %0 = bitcast i8** %next to i8*, !dbg !1001
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1001
  call void @llvm.dbg.declare(metadata i8** %next, metadata !433, metadata !773), !dbg !1002
  %1 = bitcast i64* %n to i8*, !dbg !1003
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1003
  call void @llvm.dbg.declare(metadata i64* %n, metadata !434, metadata !773), !dbg !1004
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1005, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 1, !dbg !1007
  %3 = load i8*, i8** %buf, align 8, !dbg !1007, !tbaa !843
  %cmp = icmp eq i8* %3, null, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1010, !tbaa !769
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1013
  store %struct._object* null, %struct._object** %retval, !dbg !1014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1014

if.end:                                           ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1015, !tbaa !769
  %call = call i64 @get_line(%struct.bytesio* %5, i8** %next), !dbg !1016
  store i64 %call, i64* %n, align 8, !dbg !1017, !tbaa !1018
  %6 = load i8*, i8** %next, align 8, !dbg !1019, !tbaa !769
  %tobool = icmp ne i8* %6, null, !dbg !1019
  br i1 %tobool, label %lor.lhs.false, label %if.then.2, !dbg !1021

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %n, align 8, !dbg !1022, !tbaa !1018
  %cmp1 = icmp eq i64 %7, 0, !dbg !1024
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1025

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1026
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1026

if.end.3:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %next, align 8, !dbg !1027, !tbaa !769
  %9 = load i64, i64* %n, align 8, !dbg !1028, !tbaa !1018
  %call4 = call %struct._object* @PyBytes_FromStringAndSize(i8* %8, i64 %9), !dbg !1029
  store %struct._object* %call4, %struct._object** %retval, !dbg !1030
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1030

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %10 = bitcast i64* %n to i8*, !dbg !1031
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !1031
  %11 = bitcast i8** %next to i8*, !dbg !1031
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !1031
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1031
  ret %struct._object* %12, !dbg !1031
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_init(%struct.bytesio* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [2 x i8*], align 16
  %initvalue = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !616, metadata !773), !dbg !1032
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !617, metadata !773), !dbg !1033
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !618, metadata !773), !dbg !1034
  %0 = bitcast [2 x i8*]* %kwlist to i8*, !dbg !1035
  call void @llvm.lifetime.start(i64 16, i8* %0) #3, !dbg !1035
  call void @llvm.dbg.declare(metadata [2 x i8*]* %kwlist, metadata !619, metadata !773), !dbg !1036
  %1 = bitcast [2 x i8*]* %kwlist to i8*, !dbg !1036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @bytesio_init.kwlist to i8*), i64 16, i32 16, i1 false), !dbg !1036
  %2 = bitcast %struct._object** %initvalue to i8*, !dbg !1037
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1037
  call void @llvm.dbg.declare(metadata %struct._object** %initvalue, metadata !623, metadata !773), !dbg !1038
  store %struct._object* null, %struct._object** %initvalue, align 8, !dbg !1038, !tbaa !769
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1039, !tbaa !769
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1041, !tbaa !769
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %kwlist, i32 0, i32 0, !dbg !1042
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8** %arraydecay, %struct._object** %initvalue), !dbg !1043
  %tobool = icmp ne i32 %call, 0, !dbg !1043
  br i1 %tobool, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12, !dbg !1045

if.end:                                           ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1046, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 3, !dbg !1047
  store i64 0, i64* %string_size, align 8, !dbg !1048, !tbaa !1049
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1050, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 2, !dbg !1051
  store i64 0, i64* %pos, align 8, !dbg !1052, !tbaa !1053
  %7 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !1054, !tbaa !769
  %tobool1 = icmp ne %struct._object* %7, null, !dbg !1054
  br i1 %tobool1, label %land.lhs.true, label %if.end.11, !dbg !1055

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !1056, !tbaa !769
  %cmp = icmp ne %struct._object* %8, @_Py_NoneStruct, !dbg !1058
  br i1 %cmp, label %if.then.2, label %if.end.11, !dbg !1059

if.then.2:                                        ; preds = %land.lhs.true
  %9 = bitcast %struct._object** %res to i8*, !dbg !1060
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1060
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !624, metadata !773), !dbg !1061
  %10 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1062, !tbaa !769
  %11 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !1063, !tbaa !769
  %call3 = call %struct._object* @bytesio_write(%struct.bytesio* %10, %struct._object* %11), !dbg !1064
  store %struct._object* %call3, %struct._object** %res, align 8, !dbg !1065, !tbaa !769
  %12 = load %struct._object*, %struct._object** %res, align 8, !dbg !1066, !tbaa !769
  %cmp4 = icmp eq %struct._object* %12, null, !dbg !1068
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1069

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval, !dbg !1070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1070

if.end.6:                                         ; preds = %if.then.2
  br label %do.body, !dbg !1071

do.body:                                          ; preds = %if.end.6
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1072
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !627, metadata !773), !dbg !1074
  %14 = load %struct._object*, %struct._object** %res, align 8, !dbg !1075, !tbaa !769
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1074, !tbaa !769
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1076, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1078
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1079, !tbaa !877
  %dec = add i64 %16, -1, !dbg !1079
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1079, !tbaa !877
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1080
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1081

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1082

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1084, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1086
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1086, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1087
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1087, !tbaa !887
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1088, !tbaa !769
  call void %19(%struct._object* %20), !dbg !1089
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1090
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1090
  br label %do.cond, !dbg !1092

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1093

do.end:                                           ; preds = %do.cond
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1095, !tbaa !769
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 2, !dbg !1096
  store i64 0, i64* %pos10, align 8, !dbg !1097, !tbaa !1053
  store i32 0, i32* %cleanup.dest.slot, !dbg !1098
  br label %cleanup, !dbg !1098

cleanup:                                          ; preds = %do.end, %if.then.5
  %23 = bitcast %struct._object** %res to i8*, !dbg !1099
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !1099
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.11, !dbg !1100

if.end.11:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  store i32 0, i32* %retval, !dbg !1101
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12, !dbg !1101

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.12

cleanup.12:                                       ; preds = %NewDefault, %if.end.11, %if.then
  %24 = bitcast %struct._object** %initvalue to i8*, !dbg !1102
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !1102
  %25 = bitcast [2 x i8*]* %kwlist to i8*, !dbg !1102
  call void @llvm.lifetime.end(i64 16, i8* %25) #3, !dbg !1102
  %26 = load i32, i32* %retval, !dbg !1102
  ret i32 %26, !dbg !1102
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.bytesio*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !633, metadata !773), !dbg !1103
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !634, metadata !773), !dbg !1104
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !635, metadata !773), !dbg !1105
  %0 = bitcast %struct.bytesio** %self to i8*, !dbg !1106
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1106
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self, metadata !636, metadata !773), !dbg !1107
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1108, !tbaa !769
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1109
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1109, !tbaa !1110
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1111, !tbaa !769
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1108
  %4 = bitcast %struct._object* %call to %struct.bytesio*, !dbg !1112
  store %struct.bytesio* %4, %struct.bytesio** %self, align 8, !dbg !1113, !tbaa !769
  %5 = load %struct.bytesio*, %struct.bytesio** %self, align 8, !dbg !1114, !tbaa !769
  %cmp = icmp eq %struct.bytesio* %5, null, !dbg !1116
  br i1 %cmp, label %if.then, label %if.end, !dbg !1117

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1118

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 0), !dbg !1119
  %6 = load %struct.bytesio*, %struct.bytesio** %self, align 8, !dbg !1120, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 1, !dbg !1121
  store i8* %call1, i8** %buf, align 8, !dbg !1122, !tbaa !843
  %7 = load %struct.bytesio*, %struct.bytesio** %self, align 8, !dbg !1123, !tbaa !769
  %buf2 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %7, i32 0, i32 1, !dbg !1124
  %8 = load i8*, i8** %buf2, align 8, !dbg !1124, !tbaa !843
  %cmp3 = icmp eq i8* %8, null, !dbg !1125
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !1126

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !1127

do.body:                                          ; preds = %if.then.4
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1128
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !637, metadata !773), !dbg !1130
  %10 = load %struct.bytesio*, %struct.bytesio** %self, align 8, !dbg !1131, !tbaa !769
  %11 = bitcast %struct.bytesio* %10 to %struct._object*, !dbg !1132
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1130, !tbaa !769
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1133, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1135
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1136, !tbaa !877
  %dec = add i64 %13, -1, !dbg !1136
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1136, !tbaa !877
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1137
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1138

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1139

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1141, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1143
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1143, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1144
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1144, !tbaa !887
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1145, !tbaa !769
  call void %16(%struct._object* %17), !dbg !1146
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1147
  br label %do.cond, !dbg !1149

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1150

do.end:                                           ; preds = %do.cond
  %call8 = call %struct._object* @PyErr_NoMemory(), !dbg !1152
  store %struct._object* %call8, %struct._object** %retval, !dbg !1153
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1153

if.end.9:                                         ; preds = %if.end
  %19 = load %struct.bytesio*, %struct.bytesio** %self, align 8, !dbg !1154, !tbaa !769
  %20 = bitcast %struct.bytesio* %19 to %struct._object*, !dbg !1155
  store %struct._object* %20, %struct._object** %retval, !dbg !1156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1156

cleanup:                                          ; preds = %if.end.9, %do.end, %if.then
  %21 = bitcast %struct.bytesio** %self to i8*, !dbg !1157
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1157
  %22 = load %struct._object*, %struct._object** %retval, !dbg !1157
  ret %struct._object* %22, !dbg !1157
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_dealloc(%struct.bytesiobuf* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesiobuf*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesiobuf* %self, %struct.bytesiobuf** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesiobuf** %self.addr, metadata !645, metadata !773), !dbg !1158
  br label %do.body, !dbg !1159

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1160
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !646, metadata !773), !dbg !1162
  %1 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1163, !tbaa !769
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %1, i32 0, i32 1, !dbg !1164
  %2 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !1164, !tbaa !1165
  %3 = bitcast %struct.bytesio* %2 to %struct._object*, !dbg !1167
  store %struct._object* %3, %struct._object** %_py_tmp, align 8, !dbg !1162, !tbaa !769
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1168, !tbaa !769
  %cmp = icmp ne %struct._object* %4, null, !dbg !1169
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1170

if.then:                                          ; preds = %do.body
  %5 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1171, !tbaa !769
  %source1 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %5, i32 0, i32 1, !dbg !1173
  store %struct.bytesio* null, %struct.bytesio** %source1, align 8, !dbg !1174, !tbaa !1165
  br label %do.body.2, !dbg !1175

do.body.2:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1176
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1176
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !648, metadata !773), !dbg !1178
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1179, !tbaa !769
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1178, !tbaa !769
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1180, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1182
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1183, !tbaa !877
  %dec = add i64 %9, -1, !dbg !1183
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1183, !tbaa !877
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1184
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1185

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1186

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1188, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1190
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1190, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1191
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1191, !tbaa !887
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1192, !tbaa !769
  call void %12(%struct._object* %13), !dbg !1193
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1194
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1194
  br label %do.cond, !dbg !1196

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1197

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1199

if.end.5:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1201
  br label %do.end.7, !dbg !1204

do.end.7:                                         ; preds = %if.end.5
  %16 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1205, !tbaa !769
  %17 = bitcast %struct.bytesiobuf* %16 to %struct._object*, !dbg !1206
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1207
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1207, !tbaa !885
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38, !dbg !1208
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1208, !tbaa !917
  %20 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1209, !tbaa !769
  %21 = bitcast %struct.bytesiobuf* %20 to i8*, !dbg !1209
  call void %19(i8* %21), !dbg !1210
  ret void, !dbg !1211
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesiobuf_traverse(%struct.bytesiobuf* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesiobuf*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bytesiobuf* %self, %struct.bytesiobuf** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesiobuf** %self.addr, metadata !672, metadata !773), !dbg !1212
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !673, metadata !773), !dbg !1213
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !674, metadata !773), !dbg !1214
  br label %do.body, !dbg !1215

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1216, !tbaa !769
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %0, i32 0, i32 1, !dbg !1218
  %1 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !1218, !tbaa !1165
  %tobool = icmp ne %struct.bytesio* %1, null, !dbg !1219
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1220

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1221
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !675, metadata !773), !dbg !1223
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1224, !tbaa !769
  %4 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8, !dbg !1225, !tbaa !769
  %source1 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %4, i32 0, i32 1, !dbg !1226
  %5 = load %struct.bytesio*, %struct.bytesio** %source1, align 8, !dbg !1226, !tbaa !1165
  %6 = bitcast %struct.bytesio* %5 to %struct._object*, !dbg !1227
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !1228, !tbaa !769
  %call = call i32 %3(%struct._object* %6, i8* %7), !dbg !1224
  store i32 %call, i32* %vret, align 4, !dbg !1223, !tbaa !937
  %8 = load i32, i32* %vret, align 4, !dbg !1229, !tbaa !937
  %tobool2 = icmp ne i32 %8, 0, !dbg !1229
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1231

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4, !dbg !1232, !tbaa !937
  store i32 %9, i32* %retval, !dbg !1234
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1234

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1235
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast i32* %vret to i8*, !dbg !1237
  call void @llvm.lifetime.end(i64 4, i8* %10) #3, !dbg !1237
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !1240

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1241

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1244
  br label %return, !dbg !1244

return:                                           ; preds = %LeafBlock, %do.end
  %11 = load i32, i32* %retval, !dbg !1245
  ret i32 %11, !dbg !1245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyErr_Print() #1

declare void @PyMem_Free(i8*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_line(%struct.bytesio* %self, i8** %output) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %output.addr = alloca i8**, align 8
  %n = alloca i8*, align 8
  %str_end = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !440, metadata !773), !dbg !1246
  store i8** %output, i8*** %output.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i8*** %output.addr, metadata !441, metadata !773), !dbg !1247
  %0 = bitcast i8** %n to i8*, !dbg !1248
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1248
  call void @llvm.dbg.declare(metadata i8** %n, metadata !442, metadata !773), !dbg !1249
  %1 = bitcast i8** %str_end to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1250
  call void @llvm.dbg.declare(metadata i8** %str_end, metadata !443, metadata !773), !dbg !1251
  %2 = bitcast i64* %len to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1252
  call void @llvm.dbg.declare(metadata i64* %len, metadata !444, metadata !773), !dbg !1253
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1254, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !1255
  %4 = load i8*, i8** %buf, align 8, !dbg !1255, !tbaa !843
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1256, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 3, !dbg !1257
  %6 = load i64, i64* %string_size, align 8, !dbg !1257, !tbaa !1049
  %add.ptr = getelementptr i8, i8* %4, i64 %6, !dbg !1258
  store i8* %add.ptr, i8** %str_end, align 8, !dbg !1259, !tbaa !769
  %7 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1260, !tbaa !769
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %7, i32 0, i32 1, !dbg !1262
  %8 = load i8*, i8** %buf1, align 8, !dbg !1262, !tbaa !843
  %9 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1263, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %9, i32 0, i32 2, !dbg !1264
  %10 = load i64, i64* %pos, align 8, !dbg !1264, !tbaa !1053
  %add.ptr2 = getelementptr i8, i8* %8, i64 %10, !dbg !1265
  store i8* %add.ptr2, i8** %n, align 8, !dbg !1266, !tbaa !769
  br label %for.cond, !dbg !1267

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i8*, i8** %n, align 8, !dbg !1268, !tbaa !769
  %12 = load i8*, i8** %str_end, align 8, !dbg !1270, !tbaa !769
  %cmp = icmp ult i8* %11, %12, !dbg !1271
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1272

land.rhs:                                         ; preds = %for.cond
  %13 = load i8*, i8** %n, align 8, !dbg !1273, !tbaa !769
  %14 = load i8, i8* %13, align 1, !dbg !1275, !tbaa !1276
  %conv = sext i8 %14 to i32, !dbg !1275
  %cmp3 = icmp ne i32 %conv, 10, !dbg !1277
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %15, label %for.body, label %for.end, !dbg !1278

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !1279

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %n, align 8, !dbg !1281, !tbaa !769
  %incdec.ptr = getelementptr i8, i8* %16, i32 1, !dbg !1281
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !1281, !tbaa !769
  br label %for.cond, !dbg !1282

for.end:                                          ; preds = %land.end
  %17 = load i8*, i8** %n, align 8, !dbg !1283, !tbaa !769
  %18 = load i8*, i8** %str_end, align 8, !dbg !1285, !tbaa !769
  %cmp5 = icmp ult i8* %17, %18, !dbg !1286
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1287

if.then:                                          ; preds = %for.end
  %19 = load i8*, i8** %n, align 8, !dbg !1288, !tbaa !769
  %incdec.ptr7 = getelementptr i8, i8* %19, i32 1, !dbg !1288
  store i8* %incdec.ptr7, i8** %n, align 8, !dbg !1288, !tbaa !769
  br label %if.end, !dbg !1289

if.end:                                           ; preds = %if.then, %for.end
  %20 = load i8*, i8** %n, align 8, !dbg !1290, !tbaa !769
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1291, !tbaa !769
  %buf8 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 1, !dbg !1292
  %22 = load i8*, i8** %buf8, align 8, !dbg !1292, !tbaa !843
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1293, !tbaa !769
  %pos9 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 2, !dbg !1294
  %24 = load i64, i64* %pos9, align 8, !dbg !1294, !tbaa !1053
  %add.ptr10 = getelementptr i8, i8* %22, i64 %24, !dbg !1295
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64, !dbg !1296
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr10 to i64, !dbg !1296
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1296
  store i64 %sub.ptr.sub, i64* %len, align 8, !dbg !1297, !tbaa !1018
  %25 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1298, !tbaa !769
  %buf11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %25, i32 0, i32 1, !dbg !1299
  %26 = load i8*, i8** %buf11, align 8, !dbg !1299, !tbaa !843
  %27 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1300, !tbaa !769
  %pos12 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %27, i32 0, i32 2, !dbg !1301
  %28 = load i64, i64* %pos12, align 8, !dbg !1301, !tbaa !1053
  %add.ptr13 = getelementptr i8, i8* %26, i64 %28, !dbg !1302
  %29 = load i8**, i8*** %output.addr, align 8, !dbg !1303, !tbaa !769
  store i8* %add.ptr13, i8** %29, align 8, !dbg !1304, !tbaa !769
  %30 = load i64, i64* %len, align 8, !dbg !1305, !tbaa !1018
  %31 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1306, !tbaa !769
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %31, i32 0, i32 2, !dbg !1307
  %32 = load i64, i64* %pos14, align 8, !dbg !1308, !tbaa !1053
  %add = add i64 %32, %30, !dbg !1308
  store i64 %add, i64* %pos14, align 8, !dbg !1308, !tbaa !1053
  %33 = load i64, i64* %len, align 8, !dbg !1309, !tbaa !1018
  %34 = bitcast i64* %len to i8*, !dbg !1310
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !1310
  %35 = bitcast i8** %str_end to i8*, !dbg !1310
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !1310
  %36 = bitcast i8** %n to i8*, !dbg !1310
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1310
  ret i64 %33, !dbg !1311
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @return_not_closed(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !447, metadata !773), !dbg !1312
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1313, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !1315
  %1 = load i8*, i8** %buf, align 8, !dbg !1315, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !1316
  br i1 %cmp, label %if.then, label %if.end, !dbg !1317

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1318, !tbaa !769
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1321
  store %struct._object* null, %struct._object** %retval, !dbg !1322
  br label %return, !dbg !1322

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1323, !tbaa !877
  %inc = add i64 %3, 1, !dbg !1323
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1323, !tbaa !877
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1324
  br label %return, !dbg !1324

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1325
  ret %struct._object* %4, !dbg !1325
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_close(%struct.bytesio* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !450, metadata !773), !dbg !1326
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1327, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !1329
  %1 = load i8*, i8** %buf, align 8, !dbg !1329, !tbaa !843
  %cmp = icmp ne i8* %1, null, !dbg !1330
  br i1 %cmp, label %if.then, label %if.end, !dbg !1331

if.then:                                          ; preds = %entry
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1332, !tbaa !769
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 1, !dbg !1334
  %3 = load i8*, i8** %buf1, align 8, !dbg !1334, !tbaa !843
  call void @PyMem_Free(i8* %3), !dbg !1335
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1336, !tbaa !769
  %buf2 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 1, !dbg !1337
  store i8* null, i8** %buf2, align 8, !dbg !1338, !tbaa !843
  br label %if.end, !dbg !1339

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1340, !tbaa !877
  %inc = add i64 %5, 1, !dbg !1340
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1340, !tbaa !877
  ret %struct._object* @_Py_NoneStruct, !dbg !1341
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_flush(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !453, metadata !773), !dbg !1342
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1343, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !1345
  %1 = load i8*, i8** %buf, align 8, !dbg !1345, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !1346
  br i1 %cmp, label %if.then, label %if.end, !dbg !1347

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1348, !tbaa !769
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1351
  store %struct._object* null, %struct._object** %retval, !dbg !1352
  br label %return, !dbg !1352

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1353, !tbaa !877
  %inc = add i64 %3, 1, !dbg !1353
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1353, !tbaa !877
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1354
  br label %return, !dbg !1354

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1355
  ret %struct._object* %4, !dbg !1355
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_isatty(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !456, metadata !773), !dbg !1356
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1357, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !1359
  %1 = load i8*, i8** %buf, align 8, !dbg !1359, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !1360
  br i1 %cmp, label %if.then, label %if.end, !dbg !1361

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1362, !tbaa !769
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1365
  store %struct._object* null, %struct._object** %retval, !dbg !1366
  br label %return, !dbg !1366

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1367, !tbaa !877
  %inc = add i64 %3, 1, !dbg !1367
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1367, !tbaa !877
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1368
  br label %return, !dbg !1368

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1369
  ret %struct._object* %4, !dbg !1369
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_tell(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !459, metadata !773), !dbg !1370
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1371, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !1373
  %1 = load i8*, i8** %buf, align 8, !dbg !1373, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !1374
  br i1 %cmp, label %if.then, label %if.end, !dbg !1375

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1376, !tbaa !769
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1379
  store %struct._object* null, %struct._object** %retval, !dbg !1380
  br label %return, !dbg !1380

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1381, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 2, !dbg !1382
  %4 = load i64, i64* %pos, align 8, !dbg !1382, !tbaa !1053
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %4), !dbg !1383
  store %struct._object* %call, %struct._object** %retval, !dbg !1384
  br label %return, !dbg !1384

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1385
  ret %struct._object* %5, !dbg !1385
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_write(%struct.bytesio* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !464, metadata !773), !dbg !1386
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !465, metadata !773), !dbg !1387
  %0 = bitcast i64* %n to i8*, !dbg !1388
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %n, metadata !466, metadata !773), !dbg !1389
  store i64 0, i64* %n, align 8, !dbg !1389, !tbaa !1018
  %1 = bitcast %struct.bufferinfo* %buf to i8*, !dbg !1390
  call void @llvm.lifetime.start(i64 80, i8* %1) #3, !dbg !1390
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %buf, metadata !467, metadata !773), !dbg !1391
  %2 = bitcast %struct._object** %result to i8*, !dbg !1392
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1392
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !468, metadata !773), !dbg !1393
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1393, !tbaa !769
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1394, !tbaa !769
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !1396
  %4 = load i8*, i8** %buf1, align 8, !dbg !1396, !tbaa !843
  %cmp = icmp eq i8* %4, null, !dbg !1397
  br i1 %cmp, label %if.then, label %if.end, !dbg !1398

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1399, !tbaa !769
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1402
  store %struct._object* null, %struct._object** %retval, !dbg !1403
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1403

if.end:                                           ; preds = %entry
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1404, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 7, !dbg !1406
  %7 = load i64, i64* %exports, align 8, !dbg !1406, !tbaa !830
  %cmp2 = icmp sgt i64 %7, 0, !dbg !1407
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1408

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1409, !tbaa !769
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0)), !dbg !1412
  store %struct._object* null, %struct._object** %retval, !dbg !1413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1413

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1414, !tbaa !769
  %call = call i32 @PyObject_GetBuffer(%struct._object* %9, %struct.bufferinfo* %buf, i32 8), !dbg !1416
  %cmp5 = icmp slt i32 %call, 0, !dbg !1417
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1418

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1419

if.end.7:                                         ; preds = %if.end.4
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2, !dbg !1420
  %10 = load i64, i64* %len, align 8, !dbg !1420, !tbaa !1422
  %cmp8 = icmp ne i64 %10, 0, !dbg !1424
  br i1 %cmp8, label %if.then.9, label %if.end.13, !dbg !1425

if.then.9:                                        ; preds = %if.end.7
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1426, !tbaa !769
  %buf10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0, !dbg !1427
  %12 = load i8*, i8** %buf10, align 8, !dbg !1427, !tbaa !1428
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2, !dbg !1429
  %13 = load i64, i64* %len11, align 8, !dbg !1429, !tbaa !1422
  %call12 = call i64 @write_bytes(%struct.bytesio* %11, i8* %12, i64 %13), !dbg !1430
  store i64 %call12, i64* %n, align 8, !dbg !1431, !tbaa !1018
  br label %if.end.13, !dbg !1432

if.end.13:                                        ; preds = %if.then.9, %if.end.7
  %14 = load i64, i64* %n, align 8, !dbg !1433, !tbaa !1018
  %cmp14 = icmp sge i64 %14, 0, !dbg !1435
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !1436

if.then.15:                                       ; preds = %if.end.13
  %15 = load i64, i64* %n, align 8, !dbg !1437, !tbaa !1018
  %call16 = call %struct._object* @PyLong_FromSsize_t(i64 %15), !dbg !1438
  store %struct._object* %call16, %struct._object** %result, align 8, !dbg !1439, !tbaa !769
  br label %if.end.17, !dbg !1440

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  call void @PyBuffer_Release(%struct.bufferinfo* %buf), !dbg !1441
  %16 = load %struct._object*, %struct._object** %result, align 8, !dbg !1442, !tbaa !769
  store %struct._object* %16, %struct._object** %retval, !dbg !1443
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1443

cleanup:                                          ; preds = %if.end.17, %if.then.6, %if.then.3, %if.then
  %17 = bitcast %struct._object** %result to i8*, !dbg !1444
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1444
  %18 = bitcast %struct.bufferinfo* %buf to i8*, !dbg !1444
  call void @llvm.lifetime.end(i64 80, i8* %18) #3, !dbg !1444
  %19 = bitcast i64* %n to i8*, !dbg !1444
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1444
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1444
  ret %struct._object* %20, !dbg !1444
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_writelines(%struct.bytesio* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %v.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !486, metadata !773), !dbg !1445
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !487, metadata !773), !dbg !1446
  %0 = bitcast %struct._object** %it to i8*, !dbg !1447
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1447
  call void @llvm.dbg.declare(metadata %struct._object** %it, metadata !488, metadata !773), !dbg !1448
  %1 = bitcast %struct._object** %item to i8*, !dbg !1447
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1447
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !489, metadata !773), !dbg !1449
  %2 = bitcast %struct._object** %ret to i8*, !dbg !1450
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1450
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !490, metadata !773), !dbg !1451
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1452, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !1454
  %4 = load i8*, i8** %buf, align 8, !dbg !1454, !tbaa !843
  %cmp = icmp eq i8* %4, null, !dbg !1455
  br i1 %cmp, label %if.then, label %if.end, !dbg !1456

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1457, !tbaa !769
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1460
  store %struct._object* null, %struct._object** %retval, !dbg !1461
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1461

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1462, !tbaa !769
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %6), !dbg !1463
  store %struct._object* %call, %struct._object** %it, align 8, !dbg !1464, !tbaa !769
  %7 = load %struct._object*, %struct._object** %it, align 8, !dbg !1465, !tbaa !769
  %cmp1 = icmp eq %struct._object* %7, null, !dbg !1467
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1468

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1469
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1469

if.end.3:                                         ; preds = %if.end
  br label %while.cond, !dbg !1470

while.cond:                                       ; preds = %do.end.36, %if.end.3
  %8 = load %struct._object*, %struct._object** %it, align 8, !dbg !1471, !tbaa !769
  %call4 = call %struct._object* @PyIter_Next(%struct._object* %8), !dbg !1474
  store %struct._object* %call4, %struct._object** %item, align 8, !dbg !1475, !tbaa !769
  %cmp5 = icmp ne %struct._object* %call4, null, !dbg !1476
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1470

while.body:                                       ; preds = %while.cond
  %9 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1477, !tbaa !769
  %10 = load %struct._object*, %struct._object** %item, align 8, !dbg !1478, !tbaa !769
  %call6 = call %struct._object* @bytesio_write(%struct.bytesio* %9, %struct._object* %10), !dbg !1479
  store %struct._object* %call6, %struct._object** %ret, align 8, !dbg !1480, !tbaa !769
  br label %do.body, !dbg !1481

do.body:                                          ; preds = %while.body
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1482
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1482
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !491, metadata !773), !dbg !1484
  %12 = load %struct._object*, %struct._object** %item, align 8, !dbg !1485, !tbaa !769
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !1484, !tbaa !769
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1486, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1488
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1489, !tbaa !877
  %dec = add i64 %14, -1, !dbg !1489
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1489, !tbaa !877
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1490
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1491

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1492

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1494, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1496
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1496, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1497
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1497, !tbaa !887
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1498, !tbaa !769
  call void %17(%struct._object* %18), !dbg !1499
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1500
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1500
  br label %do.cond, !dbg !1502

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1503

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %ret, align 8, !dbg !1505, !tbaa !769
  %cmp10 = icmp eq %struct._object* %20, null, !dbg !1506
  br i1 %cmp10, label %if.then.11, label %if.end.24, !dbg !1507

if.then.11:                                       ; preds = %do.end
  br label %do.body.12, !dbg !1508

do.body.12:                                       ; preds = %if.then.11
  %21 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1509
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1509
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !494, metadata !773), !dbg !1511
  %22 = load %struct._object*, %struct._object** %it, align 8, !dbg !1512, !tbaa !769
  store %struct._object* %22, %struct._object** %_py_decref_tmp13, align 8, !dbg !1511, !tbaa !769
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1513, !tbaa !769
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1515
  %24 = load i64, i64* %ob_refcnt14, align 8, !dbg !1516, !tbaa !877
  %dec15 = add i64 %24, -1, !dbg !1516
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1516, !tbaa !877
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !1517
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1518

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !1519

if.else.18:                                       ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1521, !tbaa !769
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1523
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1523, !tbaa !885
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1524
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1524, !tbaa !887
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1525, !tbaa !769
  call void %27(%struct._object* %28), !dbg !1526
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %29 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1527
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1527
  br label %do.cond.22, !dbg !1529

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !1530

do.end.23:                                        ; preds = %do.cond.22
  store %struct._object* null, %struct._object** %retval, !dbg !1532
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1532

if.end.24:                                        ; preds = %do.end
  br label %do.body.25, !dbg !1533

do.body.25:                                       ; preds = %if.end.24
  %30 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1534
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !1534
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !498, metadata !773), !dbg !1536
  %31 = load %struct._object*, %struct._object** %ret, align 8, !dbg !1537, !tbaa !769
  store %struct._object* %31, %struct._object** %_py_decref_tmp26, align 8, !dbg !1536, !tbaa !769
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1538, !tbaa !769
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !1540
  %33 = load i64, i64* %ob_refcnt27, align 8, !dbg !1541, !tbaa !877
  %dec28 = add i64 %33, -1, !dbg !1541
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1541, !tbaa !877
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !1542
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !1543

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !1544

if.else.31:                                       ; preds = %do.body.25
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1546, !tbaa !769
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1548
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1548, !tbaa !885
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !1549
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1549, !tbaa !887
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1550, !tbaa !769
  call void %36(%struct._object* %37), !dbg !1551
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %38 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1552
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1552
  br label %do.cond.35, !dbg !1553

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !1554

do.end.36:                                        ; preds = %do.cond.35
  br label %while.cond, !dbg !1470

while.end:                                        ; preds = %while.cond
  br label %do.body.37, !dbg !1556

do.body.37:                                       ; preds = %while.end
  %39 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1557
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !1557
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !500, metadata !773), !dbg !1559
  %40 = load %struct._object*, %struct._object** %it, align 8, !dbg !1560, !tbaa !769
  store %struct._object* %40, %struct._object** %_py_decref_tmp38, align 8, !dbg !1559, !tbaa !769
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1561, !tbaa !769
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1563
  %42 = load i64, i64* %ob_refcnt39, align 8, !dbg !1564, !tbaa !877
  %dec40 = add i64 %42, -1, !dbg !1564
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1564, !tbaa !877
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !1565
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !1566

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !1567

if.else.43:                                       ; preds = %do.body.37
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1569, !tbaa !769
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !1571
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1571, !tbaa !885
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !1572
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1572, !tbaa !887
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1573, !tbaa !769
  call void %45(%struct._object* %46), !dbg !1574
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %47 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1575
  call void @llvm.lifetime.end(i64 8, i8* %47) #3, !dbg !1575
  br label %do.cond.47, !dbg !1577

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !1578

do.end.48:                                        ; preds = %do.cond.47
  %call49 = call %struct._object* @PyErr_Occurred(), !dbg !1580
  %tobool = icmp ne %struct._object* %call49, null, !dbg !1580
  br i1 %tobool, label %if.then.50, label %if.end.51, !dbg !1582

if.then.50:                                       ; preds = %do.end.48
  store %struct._object* null, %struct._object** %retval, !dbg !1583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1583

if.end.51:                                        ; preds = %do.end.48
  %48 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1584, !tbaa !877
  %inc = add i64 %48, 1, !dbg !1584
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1584, !tbaa !877
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1585
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1585

cleanup:                                          ; preds = %if.end.51, %if.then.50, %do.end.23, %if.then.2, %if.then
  %49 = bitcast %struct._object** %ret to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %49) #3, !dbg !1586
  %50 = bitcast %struct._object** %item to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %50) #3, !dbg !1586
  %51 = bitcast %struct._object** %it to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %51) #3, !dbg !1586
  %52 = load %struct._object*, %struct._object** %retval, !dbg !1586
  ret %struct._object* %52, !dbg !1586
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_read1(%struct.bytesio* %self, %struct._object* %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %n.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !504, metadata !773), !dbg !1587
  store %struct._object* %n, %struct._object** %n.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %n.addr, metadata !505, metadata !773), !dbg !1588
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1589
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !506, metadata !773), !dbg !1590
  %1 = bitcast %struct._object** %res to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1589
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !507, metadata !773), !dbg !1591
  %2 = load %struct._object*, %struct._object** %n.addr, align 8, !dbg !1592, !tbaa !769
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %2), !dbg !1593
  store %struct._object* %call, %struct._object** %arg, align 8, !dbg !1594, !tbaa !769
  %3 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1595, !tbaa !769
  %cmp = icmp eq %struct._object* %3, null, !dbg !1597
  br i1 %cmp, label %if.then, label %if.end, !dbg !1598

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1599

if.end:                                           ; preds = %entry
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1600, !tbaa !769
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1601, !tbaa !769
  %call1 = call %struct._object* @bytesio_read(%struct.bytesio* %4, %struct._object* %5), !dbg !1602
  store %struct._object* %call1, %struct._object** %res, align 8, !dbg !1603, !tbaa !769
  br label %do.body, !dbg !1604

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1605
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1605
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !508, metadata !773), !dbg !1607
  %7 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1608, !tbaa !769
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1607, !tbaa !769
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1609, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1611
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1612, !tbaa !877
  %dec = add i64 %9, -1, !dbg !1612
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1612, !tbaa !877
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1613
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1614

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1615

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1617, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1619
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1619, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1620
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1620, !tbaa !887
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1621, !tbaa !769
  call void %12(%struct._object* %13), !dbg !1622
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1623
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1623
  br label %do.cond, !dbg !1625

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1626

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %res, align 8, !dbg !1628, !tbaa !769
  store %struct._object* %15, %struct._object** %retval, !dbg !1629
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1629

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct._object** %res to i8*, !dbg !1630
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1630
  %17 = bitcast %struct._object** %arg to i8*, !dbg !1630
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1630
  %18 = load %struct._object*, %struct._object** %retval, !dbg !1630
  ret %struct._object* %18, !dbg !1630
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readinto(%struct.bytesio* %self, %struct._object* %buffer) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %buffer.addr = alloca %struct._object*, align 8
  %raw_buffer = alloca i8*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !512, metadata !773), !dbg !1631
  store %struct._object* %buffer, %struct._object** %buffer.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %buffer.addr, metadata !513, metadata !773), !dbg !1632
  %0 = bitcast i8** %raw_buffer to i8*, !dbg !1633
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1633
  call void @llvm.dbg.declare(metadata i8** %raw_buffer, metadata !514, metadata !773), !dbg !1634
  %1 = bitcast i64* %len to i8*, !dbg !1635
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %len, metadata !515, metadata !773), !dbg !1636
  %2 = bitcast i64* %n to i8*, !dbg !1635
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %n, metadata !516, metadata !773), !dbg !1637
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1638, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !1640
  %4 = load i8*, i8** %buf, align 8, !dbg !1640, !tbaa !843
  %cmp = icmp eq i8* %4, null, !dbg !1641
  br i1 %cmp, label %if.then, label %if.end, !dbg !1642

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1643, !tbaa !769
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1646
  store %struct._object* null, %struct._object** %retval, !dbg !1647
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1647

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %buffer.addr, align 8, !dbg !1648, !tbaa !769
  %call = call i32 @PyObject_AsWriteBuffer(%struct._object* %6, i8** %raw_buffer, i64* %len), !dbg !1650
  %cmp1 = icmp eq i32 %call, -1, !dbg !1651
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1652

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1653

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1654, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %7, i32 0, i32 3, !dbg !1655
  %8 = load i64, i64* %string_size, align 8, !dbg !1655, !tbaa !1049
  %9 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1656, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %9, i32 0, i32 2, !dbg !1657
  %10 = load i64, i64* %pos, align 8, !dbg !1657, !tbaa !1053
  %sub = sub i64 %8, %10, !dbg !1658
  store i64 %sub, i64* %n, align 8, !dbg !1659, !tbaa !1018
  %11 = load i64, i64* %len, align 8, !dbg !1660, !tbaa !1018
  %12 = load i64, i64* %n, align 8, !dbg !1662, !tbaa !1018
  %cmp4 = icmp sgt i64 %11, %12, !dbg !1663
  br i1 %cmp4, label %if.then.5, label %if.end.9, !dbg !1664

if.then.5:                                        ; preds = %if.end.3
  %13 = load i64, i64* %n, align 8, !dbg !1665, !tbaa !1018
  store i64 %13, i64* %len, align 8, !dbg !1667, !tbaa !1018
  %14 = load i64, i64* %len, align 8, !dbg !1668, !tbaa !1018
  %cmp6 = icmp slt i64 %14, 0, !dbg !1670
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1671

if.then.7:                                        ; preds = %if.then.5
  store i64 0, i64* %len, align 8, !dbg !1672, !tbaa !1018
  br label %if.end.8, !dbg !1673

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9, !dbg !1674

if.end.9:                                         ; preds = %if.end.8, %if.end.3
  %15 = load i8*, i8** %raw_buffer, align 8, !dbg !1675, !tbaa !769
  %16 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1676, !tbaa !769
  %buf10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %16, i32 0, i32 1, !dbg !1677
  %17 = load i8*, i8** %buf10, align 8, !dbg !1677, !tbaa !843
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1678, !tbaa !769
  %pos11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 2, !dbg !1679
  %19 = load i64, i64* %pos11, align 8, !dbg !1679, !tbaa !1053
  %add.ptr = getelementptr i8, i8* %17, i64 %19, !dbg !1680
  %20 = load i64, i64* %len, align 8, !dbg !1681, !tbaa !1018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %add.ptr, i64 %20, i32 1, i1 false), !dbg !1682
  %21 = load i64, i64* %len, align 8, !dbg !1683, !tbaa !1018
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1684, !tbaa !769
  %pos12 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 2, !dbg !1685
  %23 = load i64, i64* %pos12, align 8, !dbg !1686, !tbaa !1053
  %add = add i64 %23, %21, !dbg !1686
  store i64 %add, i64* %pos12, align 8, !dbg !1686, !tbaa !1053
  %24 = load i64, i64* %len, align 8, !dbg !1687, !tbaa !1018
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %24), !dbg !1688
  store %struct._object* %call13, %struct._object** %retval, !dbg !1689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1689

cleanup:                                          ; preds = %if.end.9, %if.then.2, %if.then
  %25 = bitcast i64* %n to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !1690
  %26 = bitcast i64* %len to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1690
  %27 = bitcast i8** %raw_buffer to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1690
  %28 = load %struct._object*, %struct._object** %retval, !dbg !1690
  ret %struct._object* %28, !dbg !1690
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readline(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %output = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !519, metadata !773), !dbg !1691
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !520, metadata !773), !dbg !1692
  %0 = bitcast i64* %size to i8*, !dbg !1693
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1693
  call void @llvm.dbg.declare(metadata i64* %size, metadata !521, metadata !773), !dbg !1694
  %1 = bitcast i64* %n to i8*, !dbg !1693
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1693
  call void @llvm.dbg.declare(metadata i64* %n, metadata !522, metadata !773), !dbg !1695
  %2 = bitcast i8** %output to i8*, !dbg !1696
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1696
  call void @llvm.dbg.declare(metadata i8** %output, metadata !523, metadata !773), !dbg !1697
  %3 = bitcast %struct._object** %arg to i8*, !dbg !1698
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1698
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !524, metadata !773), !dbg !1699
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1699, !tbaa !769
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1700, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 1, !dbg !1702
  %5 = load i8*, i8** %buf, align 8, !dbg !1702, !tbaa !843
  %cmp = icmp eq i8* %5, null, !dbg !1703
  br i1 %cmp, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1705, !tbaa !769
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1708
  store %struct._object* null, %struct._object** %retval, !dbg !1709
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1709

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1710, !tbaa !769
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct._object** %arg), !dbg !1712
  %tobool = icmp ne i32 %call, 0, !dbg !1712
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1713

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1714

if.end.2:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1715, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1717
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1717, !tbaa !885
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !1718
  %10 = load i64, i64* %tp_flags, align 8, !dbg !1718, !tbaa !1719
  %and = and i64 %10, 16777216, !dbg !1720
  %cmp3 = icmp ne i64 %and, 0, !dbg !1721
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1722

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1723, !tbaa !769
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %11), !dbg !1725
  store i64 %call5, i64* %size, align 8, !dbg !1726, !tbaa !1018
  %12 = load i64, i64* %size, align 8, !dbg !1727, !tbaa !1018
  %cmp6 = icmp eq i64 %12, -1, !dbg !1729
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !1730

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred(), !dbg !1731
  %tobool8 = icmp ne %struct._object* %call7, null, !dbg !1731
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !1733

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1734
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1734

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17, !dbg !1735

if.else:                                          ; preds = %if.end.2
  %13 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1736, !tbaa !769
  %cmp11 = icmp eq %struct._object* %13, @_Py_NoneStruct, !dbg !1738
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !1739

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8, !dbg !1740, !tbaa !1018
  br label %if.end.16, !dbg !1742

if.else.13:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1743, !tbaa !769
  %15 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1745, !tbaa !769
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1746
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1746, !tbaa !885
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1, !dbg !1747
  %17 = load i8*, i8** %tp_name, align 8, !dbg !1747, !tbaa !1748
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %17), !dbg !1749
  store %struct._object* null, %struct._object** %retval, !dbg !1750
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1750

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1751, !tbaa !769
  %call18 = call i64 @get_line(%struct.bytesio* %18, i8** %output), !dbg !1752
  store i64 %call18, i64* %n, align 8, !dbg !1753, !tbaa !1018
  %19 = load i64, i64* %size, align 8, !dbg !1754, !tbaa !1018
  %cmp19 = icmp sge i64 %19, 0, !dbg !1756
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.25, !dbg !1757

land.lhs.true.20:                                 ; preds = %if.end.17
  %20 = load i64, i64* %size, align 8, !dbg !1758, !tbaa !1018
  %21 = load i64, i64* %n, align 8, !dbg !1760, !tbaa !1018
  %cmp21 = icmp slt i64 %20, %21, !dbg !1761
  br i1 %cmp21, label %if.then.22, label %if.end.25, !dbg !1762

if.then.22:                                       ; preds = %land.lhs.true.20
  %22 = load i64, i64* %n, align 8, !dbg !1763, !tbaa !1018
  %23 = load i64, i64* %size, align 8, !dbg !1765, !tbaa !1018
  %sub = sub i64 %22, %23, !dbg !1766
  store i64 %sub, i64* %size, align 8, !dbg !1767, !tbaa !1018
  %24 = load i64, i64* %size, align 8, !dbg !1768, !tbaa !1018
  %25 = load i64, i64* %n, align 8, !dbg !1769, !tbaa !1018
  %sub23 = sub i64 %25, %24, !dbg !1769
  store i64 %sub23, i64* %n, align 8, !dbg !1769, !tbaa !1018
  %26 = load i64, i64* %size, align 8, !dbg !1770, !tbaa !1018
  %27 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1771, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %27, i32 0, i32 2, !dbg !1772
  %28 = load i64, i64* %pos, align 8, !dbg !1773, !tbaa !1053
  %sub24 = sub i64 %28, %26, !dbg !1773
  store i64 %sub24, i64* %pos, align 8, !dbg !1773, !tbaa !1053
  br label %if.end.25, !dbg !1774

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.end.17
  %29 = load i8*, i8** %output, align 8, !dbg !1775, !tbaa !769
  %30 = load i64, i64* %n, align 8, !dbg !1776, !tbaa !1018
  %call26 = call %struct._object* @PyBytes_FromStringAndSize(i8* %29, i64 %30), !dbg !1777
  store %struct._object* %call26, %struct._object** %retval, !dbg !1778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1778

cleanup:                                          ; preds = %if.end.25, %if.else.13, %if.then.9, %if.then.1, %if.then
  %31 = bitcast %struct._object** %arg to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !1779
  %32 = bitcast i8** %output to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1779
  %33 = bitcast i64* %n to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !1779
  %34 = bitcast i64* %size to i8*, !dbg !1779
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !1779
  %35 = load %struct._object*, %struct._object** %retval, !dbg !1779
  ret %struct._object* %35, !dbg !1779
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readlines(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %maxsize = alloca i64, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %line = alloca %struct._object*, align 8
  %output = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !527, metadata !773), !dbg !1780
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !528, metadata !773), !dbg !1781
  %0 = bitcast i64* %maxsize to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1782
  call void @llvm.dbg.declare(metadata i64* %maxsize, metadata !529, metadata !773), !dbg !1783
  %1 = bitcast i64* %size to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1782
  call void @llvm.dbg.declare(metadata i64* %size, metadata !530, metadata !773), !dbg !1784
  %2 = bitcast i64* %n to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1782
  call void @llvm.dbg.declare(metadata i64* %n, metadata !531, metadata !773), !dbg !1785
  %3 = bitcast %struct._object** %result to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !532, metadata !773), !dbg !1787
  %4 = bitcast %struct._object** %line to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._object** %line, metadata !533, metadata !773), !dbg !1788
  %5 = bitcast i8** %output to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1789
  call void @llvm.dbg.declare(metadata i8** %output, metadata !534, metadata !773), !dbg !1790
  %6 = bitcast %struct._object** %arg to i8*, !dbg !1791
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1791
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !535, metadata !773), !dbg !1792
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1792, !tbaa !769
  %7 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1793, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %7, i32 0, i32 1, !dbg !1795
  %8 = load i8*, i8** %buf, align 8, !dbg !1795, !tbaa !843
  %cmp = icmp eq i8* %8, null, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1798, !tbaa !769
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1801
  store %struct._object* null, %struct._object** %retval, !dbg !1802
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1802

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1803, !tbaa !769
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), %struct._object** %arg), !dbg !1805
  %tobool = icmp ne i32 %call, 0, !dbg !1805
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1806

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1807
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1807

if.end.2:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1808, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1810
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1810, !tbaa !885
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !1811
  %13 = load i64, i64* %tp_flags, align 8, !dbg !1811, !tbaa !1719
  %and = and i64 %13, 16777216, !dbg !1812
  %cmp3 = icmp ne i64 %and, 0, !dbg !1813
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1814

if.then.4:                                        ; preds = %if.end.2
  %14 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1815, !tbaa !769
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %14), !dbg !1817
  store i64 %call5, i64* %maxsize, align 8, !dbg !1818, !tbaa !1018
  %15 = load i64, i64* %maxsize, align 8, !dbg !1819, !tbaa !1018
  %cmp6 = icmp eq i64 %15, -1, !dbg !1821
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !1822

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred(), !dbg !1823
  %tobool8 = icmp ne %struct._object* %call7, null, !dbg !1823
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !1825

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1826
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1826

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17, !dbg !1827

if.else:                                          ; preds = %if.end.2
  %16 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1828, !tbaa !769
  %cmp11 = icmp eq %struct._object* %16, @_Py_NoneStruct, !dbg !1830
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !1831

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %maxsize, align 8, !dbg !1832, !tbaa !1018
  br label %if.end.16, !dbg !1834

if.else.13:                                       ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1835, !tbaa !769
  %18 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1837, !tbaa !769
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1838
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1838, !tbaa !885
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1, !dbg !1839
  %20 = load i8*, i8** %tp_name, align 8, !dbg !1839, !tbaa !1748
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %20), !dbg !1840
  store %struct._object* null, %struct._object** %retval, !dbg !1841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1841

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  store i64 0, i64* %size, align 8, !dbg !1842, !tbaa !1018
  %call18 = call %struct._object* @PyList_New(i64 0), !dbg !1843
  store %struct._object* %call18, %struct._object** %result, align 8, !dbg !1844, !tbaa !769
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !1845, !tbaa !769
  %tobool19 = icmp ne %struct._object* %21, null, !dbg !1845
  br i1 %tobool19, label %if.end.21, label %if.then.20, !dbg !1847

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval, !dbg !1848
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1848

if.end.21:                                        ; preds = %if.end.17
  br label %while.cond, !dbg !1849

while.cond:                                       ; preds = %if.end.53, %if.end.21
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1850, !tbaa !769
  %call22 = call i64 @get_line(%struct.bytesio* %22, i8** %output), !dbg !1853
  store i64 %call22, i64* %n, align 8, !dbg !1854, !tbaa !1018
  %cmp23 = icmp ne i64 %call22, 0, !dbg !1855
  br i1 %cmp23, label %while.body, label %while.end, !dbg !1849

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %output, align 8, !dbg !1856, !tbaa !769
  %24 = load i64, i64* %n, align 8, !dbg !1857, !tbaa !1018
  %call24 = call %struct._object* @PyBytes_FromStringAndSize(i8* %23, i64 %24), !dbg !1858
  store %struct._object* %call24, %struct._object** %line, align 8, !dbg !1859, !tbaa !769
  %25 = load %struct._object*, %struct._object** %line, align 8, !dbg !1860, !tbaa !769
  %tobool25 = icmp ne %struct._object* %25, null, !dbg !1860
  br i1 %tobool25, label %if.end.27, label %if.then.26, !dbg !1862

if.then.26:                                       ; preds = %while.body
  br label %on_error, !dbg !1863

if.end.27:                                        ; preds = %while.body
  %26 = load %struct._object*, %struct._object** %result, align 8, !dbg !1864, !tbaa !769
  %27 = load %struct._object*, %struct._object** %line, align 8, !dbg !1865, !tbaa !769
  %call28 = call i32 @PyList_Append(%struct._object* %26, %struct._object* %27), !dbg !1866
  %cmp29 = icmp eq i32 %call28, -1, !dbg !1867
  br i1 %cmp29, label %if.then.30, label %if.end.36, !dbg !1868

if.then.30:                                       ; preds = %if.end.27
  br label %do.body, !dbg !1869

do.body:                                          ; preds = %if.then.30
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1870
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1870
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !536, metadata !773), !dbg !1872
  %29 = load %struct._object*, %struct._object** %line, align 8, !dbg !1873, !tbaa !769
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !1872, !tbaa !769
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1874, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1876
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !1877, !tbaa !877
  %dec = add i64 %31, -1, !dbg !1877
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1877, !tbaa !877
  %cmp31 = icmp ne i64 %dec, 0, !dbg !1878
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !1879

if.then.32:                                       ; preds = %do.body
  br label %if.end.35, !dbg !1880

if.else.33:                                       ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1882, !tbaa !769
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1884
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1884, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1885
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1885, !tbaa !887
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1886, !tbaa !769
  call void %34(%struct._object* %35), !dbg !1887
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1888
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1888
  br label %do.cond, !dbg !1890

do.cond:                                          ; preds = %if.end.35
  br label %do.end, !dbg !1891

do.end:                                           ; preds = %do.cond
  br label %on_error, !dbg !1893

if.end.36:                                        ; preds = %if.end.27
  br label %do.body.37, !dbg !1894

do.body.37:                                       ; preds = %if.end.36
  %37 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1895
  call void @llvm.lifetime.start(i64 8, i8* %37) #3, !dbg !1895
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !541, metadata !773), !dbg !1897
  %38 = load %struct._object*, %struct._object** %line, align 8, !dbg !1898, !tbaa !769
  store %struct._object* %38, %struct._object** %_py_decref_tmp38, align 8, !dbg !1897, !tbaa !769
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1899, !tbaa !769
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !1901
  %40 = load i64, i64* %ob_refcnt39, align 8, !dbg !1902, !tbaa !877
  %dec40 = add i64 %40, -1, !dbg !1902
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1902, !tbaa !877
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !1903
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !1904

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !1905

if.else.43:                                       ; preds = %do.body.37
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1907, !tbaa !769
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1909
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1909, !tbaa !885
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !1910
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1910, !tbaa !887
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !1911, !tbaa !769
  call void %43(%struct._object* %44), !dbg !1912
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %45 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !1913
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !1913
  br label %do.cond.47, !dbg !1915

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !1916

do.end.48:                                        ; preds = %do.cond.47
  %46 = load i64, i64* %n, align 8, !dbg !1918, !tbaa !1018
  %47 = load i64, i64* %size, align 8, !dbg !1919, !tbaa !1018
  %add = add i64 %47, %46, !dbg !1919
  store i64 %add, i64* %size, align 8, !dbg !1919, !tbaa !1018
  %48 = load i64, i64* %maxsize, align 8, !dbg !1920, !tbaa !1018
  %cmp49 = icmp sgt i64 %48, 0, !dbg !1922
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.53, !dbg !1923

land.lhs.true.50:                                 ; preds = %do.end.48
  %49 = load i64, i64* %size, align 8, !dbg !1924, !tbaa !1018
  %50 = load i64, i64* %maxsize, align 8, !dbg !1926, !tbaa !1018
  %cmp51 = icmp sge i64 %49, %50, !dbg !1927
  br i1 %cmp51, label %if.then.52, label %if.end.53, !dbg !1928

if.then.52:                                       ; preds = %land.lhs.true.50
  br label %while.end, !dbg !1929

if.end.53:                                        ; preds = %land.lhs.true.50, %do.end.48
  br label %while.cond, !dbg !1849

while.end:                                        ; preds = %if.then.52, %while.cond
  %51 = load %struct._object*, %struct._object** %result, align 8, !dbg !1930, !tbaa !769
  store %struct._object* %51, %struct._object** %retval, !dbg !1931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1931

on_error:                                         ; preds = %do.end, %if.then.26
  br label %do.body.54, !dbg !1932

do.body.54:                                       ; preds = %on_error
  %52 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1933
  call void @llvm.lifetime.start(i64 8, i8* %52) #3, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !543, metadata !773), !dbg !1935
  %53 = load %struct._object*, %struct._object** %result, align 8, !dbg !1936, !tbaa !769
  store %struct._object* %53, %struct._object** %_py_decref_tmp55, align 8, !dbg !1935, !tbaa !769
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1937, !tbaa !769
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1939
  %55 = load i64, i64* %ob_refcnt56, align 8, !dbg !1940, !tbaa !877
  %dec57 = add i64 %55, -1, !dbg !1940
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1940, !tbaa !877
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !1941
  br i1 %cmp58, label %if.then.59, label %if.else.60, !dbg !1942

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63, !dbg !1943

if.else.60:                                       ; preds = %do.body.54
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1945, !tbaa !769
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !1947
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1947, !tbaa !885
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !1948
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1948, !tbaa !887
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1949, !tbaa !769
  call void %58(%struct._object* %59), !dbg !1950
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  %60 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1951
  call void @llvm.lifetime.end(i64 8, i8* %60) #3, !dbg !1951
  br label %do.cond.64, !dbg !1953

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !1954

do.end.65:                                        ; preds = %do.cond.64
  store %struct._object* null, %struct._object** %retval, !dbg !1956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1956

cleanup:                                          ; preds = %do.end.65, %while.end, %if.then.20, %if.else.13, %if.then.9, %if.then.1, %if.then
  %61 = bitcast %struct._object** %arg to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1957
  %62 = bitcast i8** %output to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1957
  %63 = bitcast %struct._object** %line to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !1957
  %64 = bitcast %struct._object** %result to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !1957
  %65 = bitcast i64* %n to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !1957
  %66 = bitcast i64* %size to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !1957
  %67 = bitcast i64* %maxsize to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %67) #3, !dbg !1957
  %68 = load %struct._object*, %struct._object** %retval, !dbg !1957
  ret %struct._object* %68, !dbg !1957
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_read(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %n = alloca i64, align 8
  %output = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !547, metadata !773), !dbg !1958
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !548, metadata !773), !dbg !1959
  %0 = bitcast i64* %size to i8*, !dbg !1960
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1960
  call void @llvm.dbg.declare(metadata i64* %size, metadata !549, metadata !773), !dbg !1961
  %1 = bitcast i64* %n to i8*, !dbg !1960
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1960
  call void @llvm.dbg.declare(metadata i64* %n, metadata !550, metadata !773), !dbg !1962
  %2 = bitcast i8** %output to i8*, !dbg !1963
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1963
  call void @llvm.dbg.declare(metadata i8** %output, metadata !551, metadata !773), !dbg !1964
  %3 = bitcast %struct._object** %arg to i8*, !dbg !1965
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1965
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !552, metadata !773), !dbg !1966
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1966, !tbaa !769
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !1967, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 1, !dbg !1969
  %5 = load i8*, i8** %buf, align 8, !dbg !1969, !tbaa !843
  %cmp = icmp eq i8* %5, null, !dbg !1970
  br i1 %cmp, label %if.then, label %if.end, !dbg !1971

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1972, !tbaa !769
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1975
  store %struct._object* null, %struct._object** %retval, !dbg !1976
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1976

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1977, !tbaa !769
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct._object** %arg), !dbg !1979
  %tobool = icmp ne i32 %call, 0, !dbg !1979
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1980

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1981
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1981

if.end.2:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1982, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1984
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1984, !tbaa !885
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !1985
  %10 = load i64, i64* %tp_flags, align 8, !dbg !1985, !tbaa !1719
  %and = and i64 %10, 16777216, !dbg !1986
  %cmp3 = icmp ne i64 %and, 0, !dbg !1987
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1988

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1989, !tbaa !769
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %11), !dbg !1991
  store i64 %call5, i64* %size, align 8, !dbg !1992, !tbaa !1018
  %12 = load i64, i64* %size, align 8, !dbg !1993, !tbaa !1018
  %cmp6 = icmp eq i64 %12, -1, !dbg !1995
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !1996

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred(), !dbg !1997
  %tobool8 = icmp ne %struct._object* %call7, null, !dbg !1997
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !1999

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2000

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17, !dbg !2001

if.else:                                          ; preds = %if.end.2
  %13 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2002, !tbaa !769
  %cmp11 = icmp eq %struct._object* %13, @_Py_NoneStruct, !dbg !2004
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !2005

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8, !dbg !2006, !tbaa !1018
  br label %if.end.16, !dbg !2008

if.else.13:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2009, !tbaa !769
  %15 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2011, !tbaa !769
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2012
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !2012, !tbaa !885
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1, !dbg !2013
  %17 = load i8*, i8** %tp_name, align 8, !dbg !2013, !tbaa !1748
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %17), !dbg !2014
  store %struct._object* null, %struct._object** %retval, !dbg !2015
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2015

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2016, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 3, !dbg !2017
  %19 = load i64, i64* %string_size, align 8, !dbg !2017, !tbaa !1049
  %20 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2018, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %20, i32 0, i32 2, !dbg !2019
  %21 = load i64, i64* %pos, align 8, !dbg !2019, !tbaa !1053
  %sub = sub i64 %19, %21, !dbg !2020
  store i64 %sub, i64* %n, align 8, !dbg !2021, !tbaa !1018
  %22 = load i64, i64* %size, align 8, !dbg !2022, !tbaa !1018
  %cmp18 = icmp slt i64 %22, 0, !dbg !2024
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false, !dbg !2025

lor.lhs.false:                                    ; preds = %if.end.17
  %23 = load i64, i64* %size, align 8, !dbg !2026, !tbaa !1018
  %24 = load i64, i64* %n, align 8, !dbg !2028, !tbaa !1018
  %cmp19 = icmp sgt i64 %23, %24, !dbg !2029
  br i1 %cmp19, label %if.then.20, label %if.end.24, !dbg !2030

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.17
  %25 = load i64, i64* %n, align 8, !dbg !2031, !tbaa !1018
  store i64 %25, i64* %size, align 8, !dbg !2033, !tbaa !1018
  %26 = load i64, i64* %size, align 8, !dbg !2034, !tbaa !1018
  %cmp21 = icmp slt i64 %26, 0, !dbg !2036
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !2037

if.then.22:                                       ; preds = %if.then.20
  store i64 0, i64* %size, align 8, !dbg !2038, !tbaa !1018
  br label %if.end.23, !dbg !2039

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  br label %if.end.24, !dbg !2040

if.end.24:                                        ; preds = %if.end.23, %lor.lhs.false
  %27 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2041, !tbaa !769
  %buf25 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %27, i32 0, i32 1, !dbg !2042
  %28 = load i8*, i8** %buf25, align 8, !dbg !2042, !tbaa !843
  %29 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2043, !tbaa !769
  %pos26 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %29, i32 0, i32 2, !dbg !2044
  %30 = load i64, i64* %pos26, align 8, !dbg !2044, !tbaa !1053
  %add.ptr = getelementptr i8, i8* %28, i64 %30, !dbg !2045
  store i8* %add.ptr, i8** %output, align 8, !dbg !2046, !tbaa !769
  %31 = load i64, i64* %size, align 8, !dbg !2047, !tbaa !1018
  %32 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2048, !tbaa !769
  %pos27 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %32, i32 0, i32 2, !dbg !2049
  %33 = load i64, i64* %pos27, align 8, !dbg !2050, !tbaa !1053
  %add = add i64 %33, %31, !dbg !2050
  store i64 %add, i64* %pos27, align 8, !dbg !2050, !tbaa !1053
  %34 = load i8*, i8** %output, align 8, !dbg !2051, !tbaa !769
  %35 = load i64, i64* %size, align 8, !dbg !2052, !tbaa !1018
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* %34, i64 %35), !dbg !2053
  store %struct._object* %call28, %struct._object** %retval, !dbg !2054
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2054

cleanup:                                          ; preds = %if.end.24, %if.else.13, %if.then.9, %if.then.1, %if.then
  %36 = bitcast %struct._object** %arg to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2055
  %37 = bitcast i8** %output to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !2055
  %38 = bitcast i64* %n to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2055
  %39 = bitcast i64* %size to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2055
  %40 = load %struct._object*, %struct._object** %retval, !dbg !2055
  ret %struct._object* %40, !dbg !2055
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getbuffer(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %type = alloca %struct._typeobject*, align 8
  %buf = alloca %struct.bytesiobuf*, align 8
  %view = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !555, metadata !773), !dbg !2056
  %0 = bitcast %struct._typeobject** %type to i8*, !dbg !2057
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2057
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !556, metadata !773), !dbg !2058
  store %struct._typeobject* @_PyBytesIOBuffer_Type, %struct._typeobject** %type, align 8, !dbg !2058, !tbaa !769
  %1 = bitcast %struct.bytesiobuf** %buf to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct.bytesiobuf** %buf, metadata !559, metadata !773), !dbg !2060
  %2 = bitcast %struct._object** %view to i8*, !dbg !2061
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2061
  call void @llvm.dbg.declare(metadata %struct._object** %view, metadata !560, metadata !773), !dbg !2062
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2063, !tbaa !769
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !2065
  %4 = load i8*, i8** %buf1, align 8, !dbg !2065, !tbaa !843
  %cmp = icmp eq i8* %4, null, !dbg !2066
  br i1 %cmp, label %if.then, label %if.end, !dbg !2067

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2068, !tbaa !769
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !2071
  store %struct._object* null, %struct._object** %retval, !dbg !2072
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2072

if.end:                                           ; preds = %entry
  %6 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !2073, !tbaa !769
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 36, !dbg !2074
  %7 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !2074, !tbaa !1110
  %8 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !2075, !tbaa !769
  %call = call %struct._object* %7(%struct._typeobject* %8, i64 0), !dbg !2073
  %9 = bitcast %struct._object* %call to %struct.bytesiobuf*, !dbg !2076
  store %struct.bytesiobuf* %9, %struct.bytesiobuf** %buf, align 8, !dbg !2077, !tbaa !769
  %10 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8, !dbg !2078, !tbaa !769
  %cmp2 = icmp eq %struct.bytesiobuf* %10, null, !dbg !2080
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2081

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2082

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2083, !tbaa !769
  %12 = bitcast %struct.bytesio* %11 to %struct._object*, !dbg !2084
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2085
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2086, !tbaa !877
  %inc = add i64 %13, 1, !dbg !2086
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2086, !tbaa !877
  %14 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2087, !tbaa !769
  %15 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8, !dbg !2088, !tbaa !769
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %15, i32 0, i32 1, !dbg !2089
  store %struct.bytesio* %14, %struct.bytesio** %source, align 8, !dbg !2090, !tbaa !1165
  %16 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8, !dbg !2091, !tbaa !769
  %17 = bitcast %struct.bytesiobuf* %16 to %struct._object*, !dbg !2092
  %call5 = call %struct._object* @PyMemoryView_FromObject(%struct._object* %17), !dbg !2093
  store %struct._object* %call5, %struct._object** %view, align 8, !dbg !2094, !tbaa !769
  br label %do.body, !dbg !2095

do.body:                                          ; preds = %if.end.4
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2096
  call void @llvm.lifetime.start(i64 8, i8* %18) #3, !dbg !2096
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !561, metadata !773), !dbg !2098
  %19 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8, !dbg !2099, !tbaa !769
  %20 = bitcast %struct.bytesiobuf* %19 to %struct._object*, !dbg !2100
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !2098, !tbaa !769
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2101, !tbaa !769
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2103
  %22 = load i64, i64* %ob_refcnt6, align 8, !dbg !2104, !tbaa !877
  %dec = add i64 %22, -1, !dbg !2104
  store i64 %dec, i64* %ob_refcnt6, align 8, !dbg !2104, !tbaa !877
  %cmp7 = icmp ne i64 %dec, 0, !dbg !2105
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2106

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2107

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2109, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2111
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2111, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2112
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2112, !tbaa !887
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2113, !tbaa !769
  call void %25(%struct._object* %26), !dbg !2114
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2115
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2115
  br label %do.cond, !dbg !2117

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2118

do.end:                                           ; preds = %do.cond
  %28 = load %struct._object*, %struct._object** %view, align 8, !dbg !2120, !tbaa !769
  store %struct._object* %28, %struct._object** %retval, !dbg !2121
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2121

cleanup:                                          ; preds = %do.end, %if.then.3, %if.then
  %29 = bitcast %struct._object** %view to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2122
  %30 = bitcast %struct.bytesiobuf** %buf to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2122
  %31 = bitcast %struct._typeobject** %type to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !2122
  %32 = load %struct._object*, %struct._object** %retval, !dbg !2122
  ret %struct._object* %32, !dbg !2122
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getvalue(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !565, metadata !773), !dbg !2123
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2124, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !2126
  %1 = load i8*, i8** %buf, align 8, !dbg !2126, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !2127
  br i1 %cmp, label %if.then, label %if.end, !dbg !2128

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2129, !tbaa !769
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !2132
  store %struct._object* null, %struct._object** %retval, !dbg !2133
  br label %return, !dbg !2133

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2134, !tbaa !769
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1, !dbg !2135
  %4 = load i8*, i8** %buf1, align 8, !dbg !2135, !tbaa !843
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2136, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 3, !dbg !2137
  %6 = load i64, i64* %string_size, align 8, !dbg !2137, !tbaa !1049
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %4, i64 %6), !dbg !2138
  store %struct._object* %call, %struct._object** %retval, !dbg !2139
  br label %return, !dbg !2139

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2140
  ret %struct._object* %7, !dbg !2140
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_seek(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !568, metadata !773), !dbg !2141
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !569, metadata !773), !dbg !2142
  %0 = bitcast i64* %pos to i8*, !dbg !2143
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2143
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !570, metadata !773), !dbg !2144
  %1 = bitcast i32* %mode to i8*, !dbg !2145
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !2145
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !571, metadata !773), !dbg !2146
  store i32 0, i32* %mode, align 4, !dbg !2146, !tbaa !937
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2147, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 1, !dbg !2149
  %3 = load i8*, i8** %buf, align 8, !dbg !2149, !tbaa !843
  %cmp = icmp eq i8* %3, null, !dbg !2150
  br i1 %cmp, label %if.then, label %if.end, !dbg !2151

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2152, !tbaa !769
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !2155
  store %struct._object* null, %struct._object** %retval, !dbg !2156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2156

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2157, !tbaa !769
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64* %pos, i32* %mode), !dbg !2159
  %tobool = icmp ne i32 %call, 0, !dbg !2159
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2160

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2161

if.end.2:                                         ; preds = %if.end
  %6 = load i64, i64* %pos, align 8, !dbg !2162, !tbaa !1018
  %cmp3 = icmp slt i64 %6, 0, !dbg !2164
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !2165

land.lhs.true:                                    ; preds = %if.end.2
  %7 = load i32, i32* %mode, align 4, !dbg !2166, !tbaa !937
  %cmp4 = icmp eq i32 %7, 0, !dbg !2168
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !2169

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2170, !tbaa !769
  %9 = load i64, i64* %pos, align 8, !dbg !2172, !tbaa !1018
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i64 %9), !dbg !2173
  store %struct._object* null, %struct._object** %retval, !dbg !2174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2174

if.end.7:                                         ; preds = %land.lhs.true, %if.end.2
  %10 = load i32, i32* %mode, align 4, !dbg !2175, !tbaa !937
  %cmp8 = icmp eq i32 %10, 1, !dbg !2177
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2178

if.then.9:                                        ; preds = %if.end.7
  %11 = load i64, i64* %pos, align 8, !dbg !2179, !tbaa !1018
  %12 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2182, !tbaa !769
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %12, i32 0, i32 2, !dbg !2183
  %13 = load i64, i64* %pos10, align 8, !dbg !2183, !tbaa !1053
  %sub = sub i64 9223372036854775807, %13, !dbg !2184
  %cmp11 = icmp sgt i64 %11, %sub, !dbg !2185
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !2186

if.then.12:                                       ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2187, !tbaa !769
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0)), !dbg !2189
  store %struct._object* null, %struct._object** %retval, !dbg !2190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2190

if.end.13:                                        ; preds = %if.then.9
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2191, !tbaa !769
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 2, !dbg !2192
  %16 = load i64, i64* %pos14, align 8, !dbg !2192, !tbaa !1053
  %17 = load i64, i64* %pos, align 8, !dbg !2193, !tbaa !1018
  %add = add i64 %17, %16, !dbg !2193
  store i64 %add, i64* %pos, align 8, !dbg !2193, !tbaa !1018
  br label %if.end.29, !dbg !2194

if.else:                                          ; preds = %if.end.7
  %18 = load i32, i32* %mode, align 4, !dbg !2195, !tbaa !937
  %cmp15 = icmp eq i32 %18, 2, !dbg !2197
  br i1 %cmp15, label %if.then.16, label %if.else.23, !dbg !2198

if.then.16:                                       ; preds = %if.else
  %19 = load i64, i64* %pos, align 8, !dbg !2199, !tbaa !1018
  %20 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2202, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %20, i32 0, i32 3, !dbg !2203
  %21 = load i64, i64* %string_size, align 8, !dbg !2203, !tbaa !1049
  %sub17 = sub i64 9223372036854775807, %21, !dbg !2204
  %cmp18 = icmp sgt i64 %19, %sub17, !dbg !2205
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !2206

if.then.19:                                       ; preds = %if.then.16
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2207, !tbaa !769
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0)), !dbg !2209
  store %struct._object* null, %struct._object** %retval, !dbg !2210
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2210

if.end.20:                                        ; preds = %if.then.16
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2211, !tbaa !769
  %string_size21 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 3, !dbg !2212
  %24 = load i64, i64* %string_size21, align 8, !dbg !2212, !tbaa !1049
  %25 = load i64, i64* %pos, align 8, !dbg !2213, !tbaa !1018
  %add22 = add i64 %25, %24, !dbg !2213
  store i64 %add22, i64* %pos, align 8, !dbg !2213, !tbaa !1018
  br label %if.end.28, !dbg !2214

if.else.23:                                       ; preds = %if.else
  %26 = load i32, i32* %mode, align 4, !dbg !2215, !tbaa !937
  %cmp24 = icmp ne i32 %26, 0, !dbg !2217
  br i1 %cmp24, label %if.then.25, label %if.end.27, !dbg !2218

if.then.25:                                       ; preds = %if.else.23
  %27 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2219, !tbaa !769
  %28 = load i32, i32* %mode, align 4, !dbg !2221, !tbaa !937
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 %28), !dbg !2222
  store %struct._object* null, %struct._object** %retval, !dbg !2223
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2223

if.end.27:                                        ; preds = %if.else.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.13
  %29 = load i64, i64* %pos, align 8, !dbg !2224, !tbaa !1018
  %cmp30 = icmp slt i64 %29, 0, !dbg !2226
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !2227

if.then.31:                                       ; preds = %if.end.29
  store i64 0, i64* %pos, align 8, !dbg !2228, !tbaa !1018
  br label %if.end.32, !dbg !2229

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %30 = load i64, i64* %pos, align 8, !dbg !2230, !tbaa !1018
  %31 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2231, !tbaa !769
  %pos33 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %31, i32 0, i32 2, !dbg !2232
  store i64 %30, i64* %pos33, align 8, !dbg !2233, !tbaa !1053
  %32 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2234, !tbaa !769
  %pos34 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %32, i32 0, i32 2, !dbg !2235
  %33 = load i64, i64* %pos34, align 8, !dbg !2235, !tbaa !1053
  %call35 = call %struct._object* @PyLong_FromSsize_t(i64 %33), !dbg !2236
  store %struct._object* %call35, %struct._object** %retval, !dbg !2237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2237

cleanup:                                          ; preds = %if.end.32, %if.then.25, %if.then.19, %if.then.12, %if.then.5, %if.then.1, %if.then
  %34 = bitcast i32* %mode to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 4, i8* %34) #3, !dbg !2238
  %35 = bitcast i64* %pos to i8*, !dbg !2238
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2238
  %36 = load %struct._object*, %struct._object** %retval, !dbg !2238
  ret %struct._object* %36, !dbg !2238
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_truncate(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %arg = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !574, metadata !773), !dbg !2239
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !575, metadata !773), !dbg !2240
  %0 = bitcast i64* %size to i8*, !dbg !2241
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2241
  call void @llvm.dbg.declare(metadata i64* %size, metadata !576, metadata !773), !dbg !2242
  %1 = bitcast %struct._object** %arg to i8*, !dbg !2243
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2243
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !577, metadata !773), !dbg !2244
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !2244, !tbaa !769
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2245, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 1, !dbg !2247
  %3 = load i8*, i8** %buf, align 8, !dbg !2247, !tbaa !843
  %cmp = icmp eq i8* %3, null, !dbg !2248
  br i1 %cmp, label %if.then, label %if.end, !dbg !2249

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2250, !tbaa !769
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !2253
  store %struct._object* null, %struct._object** %retval, !dbg !2254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2254

if.end:                                           ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2255, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 7, !dbg !2257
  %6 = load i64, i64* %exports, align 8, !dbg !2257, !tbaa !830
  %cmp1 = icmp sgt i64 %6, 0, !dbg !2258
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2259

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !2260, !tbaa !769
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0)), !dbg !2263
  store %struct._object* null, %struct._object** %retval, !dbg !2264
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2264

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2265, !tbaa !769
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._object** %arg), !dbg !2267
  %tobool = icmp ne i32 %call, 0, !dbg !2267
  br i1 %tobool, label %if.end.5, label %if.then.4, !dbg !2268

if.then.4:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2269
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2269

if.end.5:                                         ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2270, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2272
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2272, !tbaa !885
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19, !dbg !2273
  %11 = load i64, i64* %tp_flags, align 8, !dbg !2273, !tbaa !1719
  %and = and i64 %11, 16777216, !dbg !2274
  %cmp6 = icmp ne i64 %and, 0, !dbg !2275
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2276

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2277, !tbaa !769
  %call8 = call i64 @PyLong_AsSsize_t(%struct._object* %12), !dbg !2279
  store i64 %call8, i64* %size, align 8, !dbg !2280, !tbaa !1018
  %13 = load i64, i64* %size, align 8, !dbg !2281, !tbaa !1018
  %cmp9 = icmp eq i64 %13, -1, !dbg !2283
  br i1 %cmp9, label %land.lhs.true, label %if.end.13, !dbg !2284

land.lhs.true:                                    ; preds = %if.then.7
  %call10 = call %struct._object* @PyErr_Occurred(), !dbg !2285
  %tobool11 = icmp ne %struct._object* %call10, null, !dbg !2285
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2287

if.then.12:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2288

if.end.13:                                        ; preds = %land.lhs.true, %if.then.7
  br label %if.end.20, !dbg !2289

if.else:                                          ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2290, !tbaa !769
  %cmp14 = icmp eq %struct._object* %14, @_Py_NoneStruct, !dbg !2292
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !2293

if.then.15:                                       ; preds = %if.else
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2294, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 2, !dbg !2296
  %16 = load i64, i64* %pos, align 8, !dbg !2296, !tbaa !1053
  store i64 %16, i64* %size, align 8, !dbg !2297, !tbaa !1018
  br label %if.end.19, !dbg !2298

if.else.16:                                       ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2299, !tbaa !769
  %18 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2301, !tbaa !769
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2302
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !2302, !tbaa !885
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 1, !dbg !2303
  %20 = load i8*, i8** %tp_name, align 8, !dbg !2303, !tbaa !1748
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %20), !dbg !2304
  store %struct._object* null, %struct._object** %retval, !dbg !2305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2305

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.13
  %21 = load i64, i64* %size, align 8, !dbg !2306, !tbaa !1018
  %cmp21 = icmp slt i64 %21, 0, !dbg !2308
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !2309

if.then.22:                                       ; preds = %if.end.20
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2310, !tbaa !769
  %23 = load i64, i64* %size, align 8, !dbg !2312, !tbaa !1018
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i64 %23), !dbg !2313
  store %struct._object* null, %struct._object** %retval, !dbg !2314
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2314

if.end.24:                                        ; preds = %if.end.20
  %24 = load i64, i64* %size, align 8, !dbg !2315, !tbaa !1018
  %25 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2317, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %25, i32 0, i32 3, !dbg !2318
  %26 = load i64, i64* %string_size, align 8, !dbg !2318, !tbaa !1049
  %cmp25 = icmp slt i64 %24, %26, !dbg !2319
  br i1 %cmp25, label %if.then.26, label %if.end.32, !dbg !2320

if.then.26:                                       ; preds = %if.end.24
  %27 = load i64, i64* %size, align 8, !dbg !2321, !tbaa !1018
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2323, !tbaa !769
  %string_size27 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 3, !dbg !2324
  store i64 %27, i64* %string_size27, align 8, !dbg !2325, !tbaa !1049
  %29 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2326, !tbaa !769
  %30 = load i64, i64* %size, align 8, !dbg !2328, !tbaa !1018
  %call28 = call i32 @resize_buffer(%struct.bytesio* %29, i64 %30), !dbg !2329
  %cmp29 = icmp slt i32 %call28, 0, !dbg !2330
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !2331

if.then.30:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %retval, !dbg !2332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2332

if.end.31:                                        ; preds = %if.then.26
  br label %if.end.32, !dbg !2333

if.end.32:                                        ; preds = %if.end.31, %if.end.24
  %31 = load i64, i64* %size, align 8, !dbg !2334, !tbaa !1018
  %call33 = call %struct._object* @PyLong_FromSsize_t(i64 %31), !dbg !2335
  store %struct._object* %call33, %struct._object** %retval, !dbg !2336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2336

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.then.22, %if.else.16, %if.then.12, %if.then.4, %if.then.2, %if.then
  %32 = bitcast %struct._object** %arg to i8*, !dbg !2337
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2337
  %33 = bitcast i64* %size to i8*, !dbg !2337
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !2337
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2337
  ret %struct._object* %34, !dbg !2337
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getstate(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %initvalue = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %state = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !580, metadata !773), !dbg !2338
  %0 = bitcast %struct._object** %initvalue to i8*, !dbg !2339
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2339
  call void @llvm.dbg.declare(metadata %struct._object** %initvalue, metadata !581, metadata !773), !dbg !2340
  %1 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2341, !tbaa !769
  %call = call %struct._object* @bytesio_getvalue(%struct.bytesio* %1), !dbg !2342
  store %struct._object* %call, %struct._object** %initvalue, align 8, !dbg !2340, !tbaa !769
  %2 = bitcast %struct._object** %dict to i8*, !dbg !2343
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2343
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !582, metadata !773), !dbg !2344
  %3 = bitcast %struct._object** %state to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._object** %state, metadata !583, metadata !773), !dbg !2346
  %4 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2347, !tbaa !769
  %cmp = icmp eq %struct._object* %4, null, !dbg !2349
  br i1 %cmp, label %if.then, label %if.end, !dbg !2350

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2351
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2351

if.end:                                           ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2352, !tbaa !769
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 5, !dbg !2353
  %6 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !2353, !tbaa !860
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !2354
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2355

if.then.3:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2356, !tbaa !877
  %inc = add i64 %7, 1, !dbg !2356
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2356, !tbaa !877
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8, !dbg !2358, !tbaa !769
  br label %if.end.13, !dbg !2359

if.else:                                          ; preds = %if.end
  %8 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2360, !tbaa !769
  %dict4 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %8, i32 0, i32 5, !dbg !2361
  %9 = load %struct._object*, %struct._object** %dict4, align 8, !dbg !2361, !tbaa !860
  %call5 = call %struct._object* @PyDict_Copy(%struct._object* %9), !dbg !2362
  store %struct._object* %call5, %struct._object** %dict, align 8, !dbg !2363, !tbaa !769
  %10 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2364, !tbaa !769
  %cmp6 = icmp eq %struct._object* %10, null, !dbg !2365
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2366

if.then.7:                                        ; preds = %if.else
  br label %do.body, !dbg !2367

do.body:                                          ; preds = %if.then.7
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2368
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !2368
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !584, metadata !773), !dbg !2370
  %12 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2371, !tbaa !769
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !2370, !tbaa !769
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2372, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !2374
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2375, !tbaa !877
  %dec = add i64 %14, -1, !dbg !2375
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2375, !tbaa !877
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2376
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !2377

if.then.9:                                        ; preds = %do.body
  br label %if.end.11, !dbg !2378

if.else.10:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2380, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2382
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2382, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !2383
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2383, !tbaa !887
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2384, !tbaa !769
  call void %17(%struct._object* %18), !dbg !2385
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2386
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2386
  br label %do.cond, !dbg !2388

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2389

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2391
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2391

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.3
  %20 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2392, !tbaa !769
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2393, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 2, !dbg !2394
  %22 = load i64, i64* %pos, align 8, !dbg !2394, !tbaa !1053
  %23 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2395, !tbaa !769
  %call14 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %struct._object* %20, i64 %22, %struct._object* %23), !dbg !2396
  store %struct._object* %call14, %struct._object** %state, align 8, !dbg !2397, !tbaa !769
  br label %do.body.15, !dbg !2398

do.body.15:                                       ; preds = %if.end.13
  %24 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2399
  call void @llvm.lifetime.start(i64 8, i8* %24) #3, !dbg !2399
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp16, metadata !590, metadata !773), !dbg !2401
  %25 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !2402, !tbaa !769
  store %struct._object* %25, %struct._object** %_py_decref_tmp16, align 8, !dbg !2401, !tbaa !769
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2403, !tbaa !769
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !2405
  %27 = load i64, i64* %ob_refcnt17, align 8, !dbg !2406, !tbaa !877
  %dec18 = add i64 %27, -1, !dbg !2406
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !2406, !tbaa !877
  %cmp19 = icmp ne i64 %dec18, 0, !dbg !2407
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !2408

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24, !dbg !2409

if.else.21:                                       ; preds = %do.body.15
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2411, !tbaa !769
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !2413
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !2413, !tbaa !885
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !2414
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !2414, !tbaa !887
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !2415, !tbaa !769
  call void %30(%struct._object* %31), !dbg !2416
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  %32 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !2417
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2417
  br label %do.cond.25, !dbg !2419

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !2420

do.end.26:                                        ; preds = %do.cond.25
  %33 = load %struct._object*, %struct._object** %state, align 8, !dbg !2422, !tbaa !769
  store %struct._object* %33, %struct._object** %retval, !dbg !2423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2423

cleanup:                                          ; preds = %do.end.26, %do.end, %if.then
  %34 = bitcast %struct._object** %state to i8*, !dbg !2424
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !2424
  %35 = bitcast %struct._object** %dict to i8*, !dbg !2424
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2424
  %36 = bitcast %struct._object** %initvalue to i8*, !dbg !2424
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2424
  %37 = load %struct._object*, %struct._object** %retval, !dbg !2424
  ret %struct._object* %37, !dbg !2424
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_setstate(%struct.bytesio* %self, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %state.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %position_obj = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !594, metadata !773), !dbg !2425
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !595, metadata !773), !dbg !2426
  %0 = bitcast %struct._object** %result to i8*, !dbg !2427
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !596, metadata !773), !dbg !2428
  %1 = bitcast %struct._object** %position_obj to i8*, !dbg !2429
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2429
  call void @llvm.dbg.declare(metadata %struct._object** %position_obj, metadata !597, metadata !773), !dbg !2430
  %2 = bitcast %struct._object** %dict to i8*, !dbg !2431
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2431
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !598, metadata !773), !dbg !2432
  %3 = bitcast i64* %pos to i8*, !dbg !2433
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2433
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !599, metadata !773), !dbg !2434
  %4 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2435, !tbaa !769
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2437
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2437, !tbaa !885
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2438
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2438, !tbaa !1719
  %and = and i64 %6, 67108864, !dbg !2439
  %cmp = icmp ne i64 %and, 0, !dbg !2440
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2441

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2442, !tbaa !769
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*, !dbg !2444
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1, !dbg !2445
  %9 = load i64, i64* %ob_size, align 8, !dbg !2445, !tbaa !2446
  %cmp1 = icmp slt i64 %9, 3, !dbg !2447
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2448

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2449, !tbaa !769
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2451, !tbaa !769
  %12 = bitcast %struct.bytesio* %11 to %struct._object*, !dbg !2452
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !2453
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2453, !tbaa !885
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 1, !dbg !2454
  %14 = load i8*, i8** %tp_name, align 8, !dbg !2454, !tbaa !1748
  %15 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2455, !tbaa !769
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2456
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !2456, !tbaa !885
  %tp_name4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1, !dbg !2457
  %17 = load i8*, i8** %tp_name4, align 8, !dbg !2457, !tbaa !1748
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i32 0, i32 0), i8* %14, i8* %17), !dbg !2458
  store %struct._object* null, %struct._object** %retval, !dbg !2459
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2459

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2460, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 7, !dbg !2462
  %19 = load i64, i64* %exports, align 8, !dbg !2462, !tbaa !830
  %cmp5 = icmp sgt i64 %19, 0, !dbg !2463
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2464

if.then.6:                                        ; preds = %if.end
  %20 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !2465, !tbaa !769
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0)), !dbg !2468
  store %struct._object* null, %struct._object** %retval, !dbg !2469
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2469

if.end.7:                                         ; preds = %if.end
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2470, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 3, !dbg !2471
  store i64 0, i64* %string_size, align 8, !dbg !2472, !tbaa !1049
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2473, !tbaa !769
  %pos8 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 2, !dbg !2474
  store i64 0, i64* %pos8, align 8, !dbg !2475, !tbaa !1053
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2476, !tbaa !769
  %24 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2477, !tbaa !769
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*, !dbg !2478
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1, !dbg !2479
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2480
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2480, !tbaa !769
  %call9 = call %struct._object* @bytesio_write(%struct.bytesio* %23, %struct._object* %26), !dbg !2481
  store %struct._object* %call9, %struct._object** %result, align 8, !dbg !2482, !tbaa !769
  %27 = load %struct._object*, %struct._object** %result, align 8, !dbg !2483, !tbaa !769
  %cmp10 = icmp eq %struct._object* %27, null, !dbg !2485
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !2486

if.then.11:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !2487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2487

if.end.12:                                        ; preds = %if.end.7
  br label %do.body, !dbg !2488

do.body:                                          ; preds = %if.end.12
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2489
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !2489
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !600, metadata !773), !dbg !2491
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !2492, !tbaa !769
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !2491, !tbaa !769
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2493, !tbaa !769
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !2495
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !2496, !tbaa !877
  %dec = add i64 %31, -1, !dbg !2496
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2496, !tbaa !877
  %cmp13 = icmp ne i64 %dec, 0, !dbg !2497
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !2498

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !2499

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2501, !tbaa !769
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2503
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !2503, !tbaa !885
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !2504
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2504, !tbaa !887
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2505, !tbaa !769
  call void %34(%struct._object* %35), !dbg !2506
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2507
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2507
  br label %do.cond, !dbg !2509

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !2510

do.end:                                           ; preds = %do.cond
  %37 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2512, !tbaa !769
  %38 = bitcast %struct._object* %37 to %struct.PyTupleObject*, !dbg !2513
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %38, i32 0, i32 1, !dbg !2514
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 1, !dbg !2515
  %39 = load %struct._object*, %struct._object** %arrayidx18, align 8, !dbg !2515, !tbaa !769
  store %struct._object* %39, %struct._object** %position_obj, align 8, !dbg !2516, !tbaa !769
  %40 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !2517, !tbaa !769
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !2519
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2519, !tbaa !885
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 19, !dbg !2520
  %42 = load i64, i64* %tp_flags20, align 8, !dbg !2520, !tbaa !1719
  %and21 = and i64 %42, 16777216, !dbg !2521
  %cmp22 = icmp ne i64 %and21, 0, !dbg !2522
  br i1 %cmp22, label %if.end.27, label %if.then.23, !dbg !2523

if.then.23:                                       ; preds = %do.end
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2524, !tbaa !769
  %44 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !2526, !tbaa !769
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !2527
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !2527, !tbaa !885
  %tp_name25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 1, !dbg !2528
  %46 = load i8*, i8** %tp_name25, align 8, !dbg !2528, !tbaa !1748
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8* %46), !dbg !2529
  store %struct._object* null, %struct._object** %retval, !dbg !2530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2530

if.end.27:                                        ; preds = %do.end
  %47 = load %struct._object*, %struct._object** %position_obj, align 8, !dbg !2531, !tbaa !769
  %call28 = call i64 @PyLong_AsSsize_t(%struct._object* %47), !dbg !2532
  store i64 %call28, i64* %pos, align 8, !dbg !2533, !tbaa !1018
  %48 = load i64, i64* %pos, align 8, !dbg !2534, !tbaa !1018
  %cmp29 = icmp eq i64 %48, -1, !dbg !2536
  br i1 %cmp29, label %land.lhs.true, label %if.end.32, !dbg !2537

land.lhs.true:                                    ; preds = %if.end.27
  %call30 = call %struct._object* @PyErr_Occurred(), !dbg !2538
  %tobool = icmp ne %struct._object* %call30, null, !dbg !2538
  br i1 %tobool, label %if.then.31, label %if.end.32, !dbg !2540

if.then.31:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2541

if.end.32:                                        ; preds = %land.lhs.true, %if.end.27
  %49 = load i64, i64* %pos, align 8, !dbg !2542, !tbaa !1018
  %cmp33 = icmp slt i64 %49, 0, !dbg !2544
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !2545

if.then.34:                                       ; preds = %if.end.32
  %50 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2546, !tbaa !769
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0)), !dbg !2548
  store %struct._object* null, %struct._object** %retval, !dbg !2549
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2549

if.end.35:                                        ; preds = %if.end.32
  %51 = load i64, i64* %pos, align 8, !dbg !2550, !tbaa !1018
  %52 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2551, !tbaa !769
  %pos36 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %52, i32 0, i32 2, !dbg !2552
  store i64 %51, i64* %pos36, align 8, !dbg !2553, !tbaa !1053
  %53 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !2554, !tbaa !769
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*, !dbg !2555
  %ob_item37 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1, !dbg !2556
  %arrayidx38 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item37, i32 0, i64 2, !dbg !2557
  %55 = load %struct._object*, %struct._object** %arrayidx38, align 8, !dbg !2557, !tbaa !769
  store %struct._object* %55, %struct._object** %dict, align 8, !dbg !2558, !tbaa !769
  %56 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2559, !tbaa !769
  %cmp39 = icmp ne %struct._object* %56, @_Py_NoneStruct, !dbg !2561
  br i1 %cmp39, label %if.then.40, label %if.end.62, !dbg !2562

if.then.40:                                       ; preds = %if.end.35
  %57 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2563, !tbaa !769
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !2566
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2566, !tbaa !885
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 19, !dbg !2567
  %59 = load i64, i64* %tp_flags42, align 8, !dbg !2567, !tbaa !1719
  %and43 = and i64 %59, 536870912, !dbg !2568
  %cmp44 = icmp ne i64 %and43, 0, !dbg !2569
  br i1 %cmp44, label %if.end.49, label %if.then.45, !dbg !2570

if.then.45:                                       ; preds = %if.then.40
  %60 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2571, !tbaa !769
  %61 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2573, !tbaa !769
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1, !dbg !2574
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !2574, !tbaa !885
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 1, !dbg !2575
  %63 = load i8*, i8** %tp_name47, align 8, !dbg !2575, !tbaa !1748
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0), i8* %63), !dbg !2576
  store %struct._object* null, %struct._object** %retval, !dbg !2577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2577

if.end.49:                                        ; preds = %if.then.40
  %64 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2578, !tbaa !769
  %dict50 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %64, i32 0, i32 5, !dbg !2580
  %65 = load %struct._object*, %struct._object** %dict50, align 8, !dbg !2580, !tbaa !860
  %tobool51 = icmp ne %struct._object* %65, null, !dbg !2578
  br i1 %tobool51, label %if.then.52, label %if.else.58, !dbg !2581

if.then.52:                                       ; preds = %if.end.49
  %66 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2582, !tbaa !769
  %dict53 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %66, i32 0, i32 5, !dbg !2585
  %67 = load %struct._object*, %struct._object** %dict53, align 8, !dbg !2585, !tbaa !860
  %68 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2586, !tbaa !769
  %call54 = call i32 @PyDict_Update(%struct._object* %67, %struct._object* %68), !dbg !2587
  %cmp55 = icmp slt i32 %call54, 0, !dbg !2588
  br i1 %cmp55, label %if.then.56, label %if.end.57, !dbg !2589

if.then.56:                                       ; preds = %if.then.52
  store %struct._object* null, %struct._object** %retval, !dbg !2590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2590

if.end.57:                                        ; preds = %if.then.52
  br label %if.end.61, !dbg !2591

if.else.58:                                       ; preds = %if.end.49
  %69 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2592, !tbaa !769
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !2594
  %70 = load i64, i64* %ob_refcnt59, align 8, !dbg !2595, !tbaa !877
  %inc = add i64 %70, 1, !dbg !2595
  store i64 %inc, i64* %ob_refcnt59, align 8, !dbg !2595, !tbaa !877
  %71 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2596, !tbaa !769
  %72 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2597, !tbaa !769
  %dict60 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %72, i32 0, i32 5, !dbg !2598
  store %struct._object* %71, %struct._object** %dict60, align 8, !dbg !2599, !tbaa !860
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.end.57
  br label %if.end.62, !dbg !2600

if.end.62:                                        ; preds = %if.end.61, %if.end.35
  %73 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2601, !tbaa !877
  %inc63 = add i64 %73, 1, !dbg !2601
  store i64 %inc63, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2601, !tbaa !877
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2602

cleanup:                                          ; preds = %if.end.62, %if.then.56, %if.then.45, %if.then.34, %if.then.31, %if.then.23, %if.then.11, %if.then.6, %if.then
  %74 = bitcast i64* %pos to i8*, !dbg !2603
  call void @llvm.lifetime.end(i64 8, i8* %74) #3, !dbg !2603
  %75 = bitcast %struct._object** %dict to i8*, !dbg !2603
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !2603
  %76 = bitcast %struct._object** %position_obj to i8*, !dbg !2603
  call void @llvm.lifetime.end(i64 8, i8* %76) #3, !dbg !2603
  %77 = bitcast %struct._object** %result to i8*, !dbg !2603
  call void @llvm.lifetime.end(i64 8, i8* %77) #3, !dbg !2603
  %78 = load %struct._object*, %struct._object** %retval, !dbg !2603
  ret %struct._object* %78, !dbg !2603
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_sizeof(%struct.bytesio* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !606, metadata !773), !dbg !2604
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !607, metadata !773), !dbg !2605
  %0 = bitcast i64* %res to i8*, !dbg !2606
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2606
  call void @llvm.dbg.declare(metadata i64* %res, metadata !608, metadata !773), !dbg !2607
  store i64 72, i64* %res, align 8, !dbg !2608, !tbaa !1018
  %1 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2609, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %1, i32 0, i32 1, !dbg !2611
  %2 = load i8*, i8** %buf, align 8, !dbg !2611, !tbaa !843
  %tobool = icmp ne i8* %2, null, !dbg !2609
  br i1 %tobool, label %if.then, label %if.end, !dbg !2612

if.then:                                          ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2613, !tbaa !769
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 4, !dbg !2614
  %4 = load i64, i64* %buf_size, align 8, !dbg !2614, !tbaa !2615
  %5 = load i64, i64* %res, align 8, !dbg !2616, !tbaa !1018
  %add = add i64 %5, %4, !dbg !2616
  store i64 %add, i64* %res, align 8, !dbg !2616, !tbaa !1018
  br label %if.end, !dbg !2617

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %res, align 8, !dbg !2618, !tbaa !1018
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %6), !dbg !2619
  %7 = bitcast i64* %res to i8*, !dbg !2620
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !2620
  ret %struct._object* %call, !dbg !2621
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @write_bytes(%struct.bytesio* %self, i8* %bytes, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %bytes.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !473, metadata !773), !dbg !2622
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !474, metadata !773), !dbg !2623
  store i64 %len, i64* %len.addr, align 8, !tbaa !1018
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !475, metadata !773), !dbg !2624
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2625, !tbaa !769
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 2, !dbg !2627
  %1 = load i64, i64* %pos, align 8, !dbg !2627, !tbaa !1053
  %2 = load i64, i64* %len.addr, align 8, !dbg !2628, !tbaa !1018
  %add = add i64 %1, %2, !dbg !2629
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2630, !tbaa !769
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 4, !dbg !2631
  %4 = load i64, i64* %buf_size, align 8, !dbg !2631, !tbaa !2615
  %cmp = icmp ugt i64 %add, %4, !dbg !2632
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !2633

if.then:                                          ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2634, !tbaa !769
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2637, !tbaa !769
  %pos1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 2, !dbg !2638
  %7 = load i64, i64* %pos1, align 8, !dbg !2638, !tbaa !1053
  %8 = load i64, i64* %len.addr, align 8, !dbg !2639, !tbaa !1018
  %add2 = add i64 %7, %8, !dbg !2640
  %call = call i32 @resize_buffer(%struct.bytesio* %5, i64 %add2), !dbg !2641
  %cmp3 = icmp slt i32 %call, 0, !dbg !2642
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2643

if.then.4:                                        ; preds = %if.then
  store i64 -1, i64* %retval, !dbg !2644
  br label %return, !dbg !2644

if.end:                                           ; preds = %if.then
  br label %if.end.5, !dbg !2645

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2646, !tbaa !769
  %pos6 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %9, i32 0, i32 2, !dbg !2648
  %10 = load i64, i64* %pos6, align 8, !dbg !2648, !tbaa !1053
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2649, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %11, i32 0, i32 3, !dbg !2650
  %12 = load i64, i64* %string_size, align 8, !dbg !2650, !tbaa !1049
  %cmp7 = icmp sgt i64 %10, %12, !dbg !2651
  br i1 %cmp7, label %if.then.8, label %if.end.12, !dbg !2652

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2653, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %13, i32 0, i32 1, !dbg !2655
  %14 = load i8*, i8** %buf, align 8, !dbg !2655, !tbaa !843
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2656, !tbaa !769
  %string_size9 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 3, !dbg !2657
  %16 = load i64, i64* %string_size9, align 8, !dbg !2657, !tbaa !1049
  %add.ptr = getelementptr i8, i8* %14, i64 %16, !dbg !2658
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2659, !tbaa !769
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 2, !dbg !2660
  %18 = load i64, i64* %pos10, align 8, !dbg !2660, !tbaa !1053
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2661, !tbaa !769
  %string_size11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %19, i32 0, i32 3, !dbg !2662
  %20 = load i64, i64* %string_size11, align 8, !dbg !2662, !tbaa !1049
  %sub = sub i64 %18, %20, !dbg !2663
  %mul = mul i64 %sub, 1, !dbg !2664
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %mul, i32 1, i1 false), !dbg !2665
  br label %if.end.12, !dbg !2666

if.end.12:                                        ; preds = %if.then.8, %if.end.5
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2667, !tbaa !769
  %buf13 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 1, !dbg !2668
  %22 = load i8*, i8** %buf13, align 8, !dbg !2668, !tbaa !843
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2669, !tbaa !769
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 2, !dbg !2670
  %24 = load i64, i64* %pos14, align 8, !dbg !2670, !tbaa !1053
  %add.ptr15 = getelementptr i8, i8* %22, i64 %24, !dbg !2671
  %25 = load i8*, i8** %bytes.addr, align 8, !dbg !2672, !tbaa !769
  %26 = load i64, i64* %len.addr, align 8, !dbg !2673, !tbaa !1018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr15, i8* %25, i64 %26, i32 1, i1 false), !dbg !2674
  %27 = load i64, i64* %len.addr, align 8, !dbg !2675, !tbaa !1018
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2676, !tbaa !769
  %pos16 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 2, !dbg !2677
  %29 = load i64, i64* %pos16, align 8, !dbg !2678, !tbaa !1053
  %add17 = add i64 %29, %27, !dbg !2678
  store i64 %add17, i64* %pos16, align 8, !dbg !2678, !tbaa !1053
  %30 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2679, !tbaa !769
  %string_size18 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %30, i32 0, i32 3, !dbg !2681
  %31 = load i64, i64* %string_size18, align 8, !dbg !2681, !tbaa !1049
  %32 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2682, !tbaa !769
  %pos19 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %32, i32 0, i32 2, !dbg !2683
  %33 = load i64, i64* %pos19, align 8, !dbg !2683, !tbaa !1053
  %cmp20 = icmp slt i64 %31, %33, !dbg !2684
  br i1 %cmp20, label %if.then.21, label %if.end.24, !dbg !2685

if.then.21:                                       ; preds = %if.end.12
  %34 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2686, !tbaa !769
  %pos22 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %34, i32 0, i32 2, !dbg !2688
  %35 = load i64, i64* %pos22, align 8, !dbg !2688, !tbaa !1053
  %36 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2689, !tbaa !769
  %string_size23 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %36, i32 0, i32 3, !dbg !2690
  store i64 %35, i64* %string_size23, align 8, !dbg !2691, !tbaa !1049
  br label %if.end.24, !dbg !2692

if.end.24:                                        ; preds = %if.then.21, %if.end.12
  %37 = load i64, i64* %len.addr, align 8, !dbg !2693, !tbaa !1018
  store i64 %37, i64* %retval, !dbg !2694
  br label %return, !dbg !2694

return:                                           ; preds = %if.end.24, %if.then.4
  %38 = load i64, i64* %retval, !dbg !2695
  ret i64 %38, !dbg !2695
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @resize_buffer(%struct.bytesio* %self, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesio*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i64, align 8
  %new_buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !480, metadata !773), !dbg !2696
  store i64 %size, i64* %size.addr, align 8, !tbaa !1018
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !481, metadata !773), !dbg !2697
  %0 = bitcast i64* %alloc to i8*, !dbg !2698
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2698
  call void @llvm.dbg.declare(metadata i64* %alloc, metadata !482, metadata !773), !dbg !2699
  %1 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2700, !tbaa !769
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %1, i32 0, i32 4, !dbg !2701
  %2 = load i64, i64* %buf_size, align 8, !dbg !2701, !tbaa !2615
  store i64 %2, i64* %alloc, align 8, !dbg !2699, !tbaa !1018
  %3 = bitcast i8** %new_buf to i8*, !dbg !2702
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2702
  call void @llvm.dbg.declare(metadata i8** %new_buf, metadata !483, metadata !773), !dbg !2703
  store i8* null, i8** %new_buf, align 8, !dbg !2703, !tbaa !769
  %4 = load i64, i64* %size.addr, align 8, !dbg !2704, !tbaa !1018
  %cmp = icmp ugt i64 %4, 9223372036854775807, !dbg !2706
  br i1 %cmp, label %if.then, label %if.end, !dbg !2707

if.then:                                          ; preds = %entry
  br label %overflow, !dbg !2708

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %size.addr, align 8, !dbg !2709, !tbaa !1018
  %6 = load i64, i64* %alloc, align 8, !dbg !2711, !tbaa !1018
  %div = udiv i64 %6, 2, !dbg !2712
  %cmp1 = icmp ult i64 %5, %div, !dbg !2713
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2714

if.then.2:                                        ; preds = %if.end
  %7 = load i64, i64* %size.addr, align 8, !dbg !2715, !tbaa !1018
  %add = add i64 %7, 1, !dbg !2717
  store i64 %add, i64* %alloc, align 8, !dbg !2718, !tbaa !1018
  br label %if.end.19, !dbg !2719

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %size.addr, align 8, !dbg !2720, !tbaa !1018
  %9 = load i64, i64* %alloc, align 8, !dbg !2722, !tbaa !1018
  %cmp3 = icmp ult i64 %8, %9, !dbg !2723
  br i1 %cmp3, label %if.then.4, label %if.else.5, !dbg !2724

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval, !dbg !2725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2725

if.else.5:                                        ; preds = %if.else
  %10 = load i64, i64* %size.addr, align 8, !dbg !2727, !tbaa !1018
  %conv = uitofp i64 %10 to double, !dbg !2727
  %11 = load i64, i64* %alloc, align 8, !dbg !2729, !tbaa !1018
  %conv6 = uitofp i64 %11 to double, !dbg !2729
  %mul = fmul double %conv6, 1.125000e+00, !dbg !2730
  %cmp7 = fcmp ole double %conv, %mul, !dbg !2731
  br i1 %cmp7, label %if.then.9, label %if.else.15, !dbg !2732

if.then.9:                                        ; preds = %if.else.5
  %12 = load i64, i64* %size.addr, align 8, !dbg !2733, !tbaa !1018
  %13 = load i64, i64* %size.addr, align 8, !dbg !2735, !tbaa !1018
  %shr = lshr i64 %13, 3, !dbg !2736
  %add10 = add i64 %12, %shr, !dbg !2737
  %14 = load i64, i64* %size.addr, align 8, !dbg !2738, !tbaa !1018
  %cmp11 = icmp ult i64 %14, 9, !dbg !2739
  %cond = select i1 %cmp11, i32 3, i32 6, !dbg !2738
  %conv13 = sext i32 %cond to i64, !dbg !2740
  %add14 = add i64 %add10, %conv13, !dbg !2741
  store i64 %add14, i64* %alloc, align 8, !dbg !2742, !tbaa !1018
  br label %if.end.17, !dbg !2743

if.else.15:                                       ; preds = %if.else.5
  %15 = load i64, i64* %size.addr, align 8, !dbg !2744, !tbaa !1018
  %add16 = add i64 %15, 1, !dbg !2746
  store i64 %add16, i64* %alloc, align 8, !dbg !2747, !tbaa !1018
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.2
  %16 = load i64, i64* %alloc, align 8, !dbg !2748, !tbaa !1018
  %cmp20 = icmp ugt i64 %16, -1, !dbg !2750
  br i1 %cmp20, label %if.then.22, label %if.end.23, !dbg !2751

if.then.22:                                       ; preds = %if.end.19
  br label %overflow, !dbg !2752

if.end.23:                                        ; preds = %if.end.19
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2753, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 1, !dbg !2754
  %18 = load i8*, i8** %buf, align 8, !dbg !2754, !tbaa !843
  %19 = load i64, i64* %alloc, align 8, !dbg !2755, !tbaa !1018
  %mul24 = mul i64 %19, 1, !dbg !2756
  %call = call i8* @PyMem_Realloc(i8* %18, i64 %mul24), !dbg !2757
  store i8* %call, i8** %new_buf, align 8, !dbg !2758, !tbaa !769
  %20 = load i8*, i8** %new_buf, align 8, !dbg !2759, !tbaa !769
  %cmp25 = icmp eq i8* %20, null, !dbg !2761
  br i1 %cmp25, label %if.then.27, label %if.end.29, !dbg !2762

if.then.27:                                       ; preds = %if.end.23
  %call28 = call %struct._object* @PyErr_NoMemory(), !dbg !2763
  store i32 -1, i32* %retval, !dbg !2765
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2765

if.end.29:                                        ; preds = %if.end.23
  %21 = load i64, i64* %alloc, align 8, !dbg !2766, !tbaa !1018
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2767, !tbaa !769
  %buf_size30 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 4, !dbg !2768
  store i64 %21, i64* %buf_size30, align 8, !dbg !2769, !tbaa !2615
  %23 = load i8*, i8** %new_buf, align 8, !dbg !2770, !tbaa !769
  %24 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2771, !tbaa !769
  %buf31 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %24, i32 0, i32 1, !dbg !2772
  store i8* %23, i8** %buf31, align 8, !dbg !2773, !tbaa !843
  store i32 0, i32* %retval, !dbg !2774
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2774

overflow:                                         ; preds = %if.then.22, %if.then
  %25 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2775, !tbaa !769
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0)), !dbg !2776
  store i32 -1, i32* %retval, !dbg !2777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2777

cleanup:                                          ; preds = %overflow, %if.end.29, %if.then.27, %if.then.4
  %26 = bitcast i8** %new_buf to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !2778
  %27 = bitcast i64* %alloc to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2778
  %28 = load i32, i32* %retval, !dbg !2778
  ret i32 %28, !dbg !2778
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i32 @PyObject_AsWriteBuffer(%struct._object*, i8**, i64*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyMemoryView_FromObject(%struct._object*) #1

declare %struct._object* @PyDict_Copy(%struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_get_closed(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesio** %self.addr, metadata !611, metadata !773), !dbg !2779
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8, !dbg !2780, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1, !dbg !2782
  %1 = load i8*, i8** %buf, align 8, !dbg !2782, !tbaa !843
  %cmp = icmp eq i8* %1, null, !dbg !2783
  br i1 %cmp, label %if.then, label %if.else, !dbg !2784

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2785, !tbaa !877
  %inc = add i64 %2, 1, !dbg !2785
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2785, !tbaa !877
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2787
  br label %return, !dbg !2787

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2788, !tbaa !877
  %inc1 = add i64 %3, 1, !dbg !2788
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2788, !tbaa !877
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2790
  br label %return, !dbg !2790

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2791
  ret %struct._object* %4, !dbg !2791
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @bytesiobuf_getbuffer(%struct.bytesiobuf* %obj, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.bytesiobuf*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %b = alloca %struct.bytesio*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bytesiobuf* %obj, %struct.bytesiobuf** %obj.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesiobuf** %obj.addr, metadata !656, metadata !773), !dbg !2792
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !657, metadata !773), !dbg !2793
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !937
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !658, metadata !773), !dbg !2794
  %0 = bitcast i32* %ret to i8*, !dbg !2795
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2795
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !659, metadata !773), !dbg !2796
  %1 = bitcast %struct.bytesio** %b to i8*, !dbg !2797
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2797
  call void @llvm.dbg.declare(metadata %struct.bytesio** %b, metadata !660, metadata !773), !dbg !2798
  %2 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8, !dbg !2799, !tbaa !769
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %2, i32 0, i32 1, !dbg !2800
  %3 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !2800, !tbaa !1165
  store %struct.bytesio* %3, %struct.bytesio** %b, align 8, !dbg !2798, !tbaa !769
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !2801, !tbaa !769
  %cmp = icmp eq %struct.bufferinfo* %4, null, !dbg !2803
  br i1 %cmp, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %b, align 8, !dbg !2805, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 7, !dbg !2807
  %6 = load i64, i64* %exports, align 8, !dbg !2808, !tbaa !830
  %inc = add i64 %6, 1, !dbg !2808
  store i64 %inc, i64* %exports, align 8, !dbg !2808, !tbaa !830
  store i32 0, i32* %retval, !dbg !2809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2809

if.end:                                           ; preds = %entry
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !2810, !tbaa !769
  %8 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8, !dbg !2811, !tbaa !769
  %9 = bitcast %struct.bytesiobuf* %8 to %struct._object*, !dbg !2812
  %10 = load %struct.bytesio*, %struct.bytesio** %b, align 8, !dbg !2813, !tbaa !769
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %10, i32 0, i32 1, !dbg !2814
  %11 = load i8*, i8** %buf, align 8, !dbg !2814, !tbaa !843
  %12 = load %struct.bytesio*, %struct.bytesio** %b, align 8, !dbg !2815, !tbaa !769
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %12, i32 0, i32 3, !dbg !2816
  %13 = load i64, i64* %string_size, align 8, !dbg !2816, !tbaa !1049
  %14 = load i32, i32* %flags.addr, align 4, !dbg !2817, !tbaa !937
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %7, %struct._object* %9, i8* %11, i64 %13, i32 0, i32 %14), !dbg !2818
  store i32 %call, i32* %ret, align 4, !dbg !2819, !tbaa !937
  %15 = load i32, i32* %ret, align 4, !dbg !2820, !tbaa !937
  %cmp1 = icmp sge i32 %15, 0, !dbg !2822
  br i1 %cmp1, label %if.then.2, label %if.end.5, !dbg !2823

if.then.2:                                        ; preds = %if.end
  %16 = load %struct.bytesio*, %struct.bytesio** %b, align 8, !dbg !2824, !tbaa !769
  %exports3 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %16, i32 0, i32 7, !dbg !2826
  %17 = load i64, i64* %exports3, align 8, !dbg !2827, !tbaa !830
  %inc4 = add i64 %17, 1, !dbg !2827
  store i64 %inc4, i64* %exports3, align 8, !dbg !2827, !tbaa !830
  br label %if.end.5, !dbg !2828

if.end.5:                                         ; preds = %if.then.2, %if.end
  %18 = load i32, i32* %ret, align 4, !dbg !2829, !tbaa !937
  store i32 %18, i32* %retval, !dbg !2830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2830

cleanup:                                          ; preds = %if.end.5, %if.then
  %19 = bitcast %struct.bytesio** %b to i8*, !dbg !2831
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2831
  %20 = bitcast i32* %ret to i8*, !dbg !2831
  call void @llvm.lifetime.end(i64 4, i8* %20) #3, !dbg !2831
  %21 = load i32, i32* %retval, !dbg !2831
  ret i32 %21, !dbg !2831
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_releasebuffer(%struct.bytesiobuf* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %obj.addr = alloca %struct.bytesiobuf*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %b = alloca %struct.bytesio*, align 8
  store %struct.bytesiobuf* %obj, %struct.bytesiobuf** %obj.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bytesiobuf** %obj.addr, metadata !665, metadata !773), !dbg !2832
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !769
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !666, metadata !773), !dbg !2833
  %0 = bitcast %struct.bytesio** %b to i8*, !dbg !2834
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2834
  call void @llvm.dbg.declare(metadata %struct.bytesio** %b, metadata !667, metadata !773), !dbg !2835
  %1 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8, !dbg !2836, !tbaa !769
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %1, i32 0, i32 1, !dbg !2837
  %2 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !2837, !tbaa !1165
  store %struct.bytesio* %2, %struct.bytesio** %b, align 8, !dbg !2835, !tbaa !769
  %3 = load %struct.bytesio*, %struct.bytesio** %b, align 8, !dbg !2838, !tbaa !769
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 7, !dbg !2839
  %4 = load i64, i64* %exports, align 8, !dbg !2840, !tbaa !830
  %dec = add i64 %4, -1, !dbg !2840
  store i64 %dec, i64* %exports, align 8, !dbg !2840, !tbaa !830
  %5 = bitcast %struct.bytesio** %b to i8*, !dbg !2841
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !2841
  ret void, !dbg !2841
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!766, !767}
!llvm.ident = !{!768}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !392, globals: !679)
!1 = !DIFile(filename: "bytesio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !25, !28, !29, !16, !69, !364, !383, !384, !371}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !6, line: 253, baseType: !7)
!6 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !6, line: 246, size: 192, align: 64, elements: !8)
!8 = !{!9, !23}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !7, file: !6, line: 251, baseType: !10, size: 192, align: 64)
!10 = !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !6, line: 247, size: 192, align: 64, elements: !11)
!11 = !{!12, !14, !15}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !10, file: !6, line: 248, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !10, file: !6, line: 249, baseType: !13, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !10, file: !6, line: 250, baseType: !16, size: 64, align: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !17, line: 177, baseType: !18)
!17 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 102, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 181, baseType: !22)
!21 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !7, file: !6, line: 252, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 62, baseType: !27)
!26 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !31, line: 109, baseType: !32)
!31 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !31, line: 105, size: 128, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !32, file: !31, line: 107, baseType: !16, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !32, file: !31, line: 108, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !31, line: 334, size: 3200, align: 64, elements: !38)
!38 = !{!39, !45, !49, !50, !51, !56, !116, !121, !126, !127, !132, !184, !215, !227, !233, !234, !235, !237, !239, !270, !271, !272, !281, !282, !287, !288, !290, !292, !302, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !37, file: !31, line: 335, baseType: !40, size: 192, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !31, line: 114, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 111, size: 192, align: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !41, file: !31, line: 112, baseType: !30, size: 128, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !41, file: !31, line: 113, baseType: !16, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !37, file: !31, line: 336, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !37, file: !31, line: 337, baseType: !16, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !37, file: !31, line: 337, baseType: !16, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !37, file: !31, line: 341, baseType: !52, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !31, line: 308, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !29}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !37, file: !31, line: 342, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !31, line: 314, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !29, !62, !61}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 48, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 246, size: 1728, align: 64, elements: !66)
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !88, !89, !90, !91, !93, !95, !97, !101, !104, !106, !107, !108, !109, !110, !111, !112}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 247, baseType: !61, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 252, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 253, baseType: !69, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 254, baseType: !69, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 255, baseType: !69, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 256, baseType: !69, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 257, baseType: !69, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 258, baseType: !69, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 259, baseType: !69, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 261, baseType: !69, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 262, baseType: !69, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 263, baseType: !69, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 265, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 161, size: 192, align: 64, elements: !83)
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !82, file: !65, line: 162, baseType: !81, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !82, file: !65, line: 163, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !82, file: !65, line: 167, baseType: !61, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 267, baseType: !86, size: 64, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 269, baseType: !61, size: 32, align: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 273, baseType: !61, size: 32, align: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 275, baseType: !92, size: 64, align: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 140, baseType: !22)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 279, baseType: !94, size: 16, align: 16, offset: 1024)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 280, baseType: !96, size: 8, align: 8, offset: 1040)
!96 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 281, baseType: !98, size: 8, align: 8, offset: 1048)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 285, baseType: !102, size: 64, align: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 155, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 294, baseType: !105, size: 64, align: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 141, baseType: !22)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !64, file: !65, line: 303, baseType: !28, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !64, file: !65, line: 304, baseType: !28, size: 64, align: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !64, file: !65, line: 305, baseType: !28, size: 64, align: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !64, file: !65, line: 306, baseType: !28, size: 64, align: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 307, baseType: !25, size: 64, align: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 309, baseType: !61, size: 32, align: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 311, baseType: !113, size: 160, align: 8, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !37, file: !31, line: 343, baseType: !117, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !31, line: 316, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!29, !29, !69}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !37, file: !31, line: 344, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !31, line: 318, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!61, !29, !69, !29}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !37, file: !31, line: 345, baseType: !28, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !37, file: !31, line: 346, baseType: !128, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !31, line: 320, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!29, !29}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !37, file: !31, line: 350, baseType: !133, size: 64, align: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !31, line: 278, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 236, size: 2176, align: 64, elements: !136)
!136 = !{!137, !142, !143, !144, !145, !146, !151, !153, !154, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !135, file: !31, line: 241, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !31, line: 166, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!29, !29, !29}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !135, file: !31, line: 242, baseType: !138, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !135, file: !31, line: 243, baseType: !138, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !135, file: !31, line: 244, baseType: !138, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !135, file: !31, line: 245, baseType: !138, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !135, file: !31, line: 246, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !31, line: 167, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!29, !29, !29, !29}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !135, file: !31, line: 247, baseType: !152, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !31, line: 165, baseType: !129)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !135, file: !31, line: 248, baseType: !152, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !135, file: !31, line: 249, baseType: !152, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !135, file: !31, line: 250, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !31, line: 168, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!61, !29}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !135, file: !31, line: 251, baseType: !152, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !135, file: !31, line: 252, baseType: !138, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !135, file: !31, line: 253, baseType: !138, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !135, file: !31, line: 254, baseType: !138, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !135, file: !31, line: 255, baseType: !138, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !135, file: !31, line: 256, baseType: !138, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !135, file: !31, line: 257, baseType: !152, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !135, file: !31, line: 258, baseType: !28, size: 64, align: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !135, file: !31, line: 259, baseType: !152, size: 64, align: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !135, file: !31, line: 261, baseType: !138, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !135, file: !31, line: 262, baseType: !138, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !135, file: !31, line: 263, baseType: !138, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !135, file: !31, line: 264, baseType: !138, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !135, file: !31, line: 265, baseType: !147, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !135, file: !31, line: 266, baseType: !138, size: 64, align: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !135, file: !31, line: 267, baseType: !138, size: 64, align: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !135, file: !31, line: 268, baseType: !138, size: 64, align: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !135, file: !31, line: 269, baseType: !138, size: 64, align: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !135, file: !31, line: 270, baseType: !138, size: 64, align: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !135, file: !31, line: 272, baseType: !138, size: 64, align: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !135, file: !31, line: 273, baseType: !138, size: 64, align: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !135, file: !31, line: 274, baseType: !138, size: 64, align: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !135, file: !31, line: 275, baseType: !138, size: 64, align: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !135, file: !31, line: 277, baseType: !152, size: 64, align: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !37, file: !31, line: 351, baseType: !185, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !31, line: 292, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 280, size: 640, align: 64, elements: !188)
!188 = !{!189, !194, !195, !200, !201, !202, !207, !208, !213, !214}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !187, file: !31, line: 281, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !31, line: 169, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!16, !29}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !187, file: !31, line: 282, baseType: !138, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !187, file: !31, line: 283, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !31, line: 170, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!29, !29, !16}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !187, file: !31, line: 284, baseType: !196, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !187, file: !31, line: 285, baseType: !28, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !187, file: !31, line: 286, baseType: !203, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !31, line: 172, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!61, !29, !16, !29}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !187, file: !31, line: 287, baseType: !28, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !187, file: !31, line: 288, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !31, line: 231, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!61, !29, !29}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !187, file: !31, line: 290, baseType: !138, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !187, file: !31, line: 291, baseType: !196, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !37, file: !31, line: 352, baseType: !216, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !31, line: 298, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 294, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !218, file: !31, line: 295, baseType: !190, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !218, file: !31, line: 296, baseType: !138, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !218, file: !31, line: 297, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !31, line: 174, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!61, !29, !29, !29}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !37, file: !31, line: 356, baseType: !228, size: 64, align: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !31, line: 321, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !29}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !17, line: 186, baseType: !16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !37, file: !31, line: 357, baseType: !147, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !37, file: !31, line: 358, baseType: !128, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !37, file: !31, line: 359, baseType: !236, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !31, line: 317, baseType: !139)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !37, file: !31, line: 360, baseType: !238, size: 64, align: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !31, line: 319, baseType: !224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !37, file: !31, line: 363, baseType: !240, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !31, line: 304, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 301, size: 128, align: 64, elements: !243)
!243 = !{!244, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !242, file: !31, line: 302, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !31, line: 193, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!61, !29, !249, !61}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !31, line: 191, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !31, line: 178, size: 640, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !251, file: !31, line: 179, baseType: !28, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !251, file: !31, line: 180, baseType: !29, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !31, line: 181, baseType: !16, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !251, file: !31, line: 182, baseType: !16, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !251, file: !31, line: 184, baseType: !61, size: 32, align: 32, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !251, file: !31, line: 185, baseType: !61, size: 32, align: 32, offset: 288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !251, file: !31, line: 186, baseType: !69, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !251, file: !31, line: 187, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !251, file: !31, line: 188, baseType: !261, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !251, file: !31, line: 189, baseType: !261, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !251, file: !31, line: 190, baseType: !28, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !242, file: !31, line: 303, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !31, line: 194, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !29, !249}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !37, file: !31, line: 366, baseType: !27, size: 64, align: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !37, file: !31, line: 368, baseType: !46, size: 64, align: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !37, file: !31, line: 372, baseType: !273, size: 64, align: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !31, line: 233, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!61, !29, !277, !28}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !31, line: 232, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!61, !29, !28}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !37, file: !31, line: 375, baseType: !156, size: 64, align: 64, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !37, file: !31, line: 379, baseType: !283, size: 64, align: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !31, line: 322, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!29, !29, !29, !61}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !37, file: !31, line: 382, baseType: !16, size: 64, align: 64, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !37, file: !31, line: 385, baseType: !289, size: 64, align: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !31, line: 323, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !37, file: !31, line: 386, baseType: !291, size: 64, align: 64, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !31, line: 324, baseType: !129)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !37, file: !31, line: 389, baseType: !293, size: 64, align: 64, offset: 1856)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !46, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !46, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !37, file: !31, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !69, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !61, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !61, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !69, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !37, file: !31, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !69, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!29, !29, !28}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!61, !29, !29, !28}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !69, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !28, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !37, file: !31, line: 392, baseType: !36, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !37, file: !31, line: 393, baseType: !29, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !37, file: !31, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !31, line: 325, baseType: !148)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !37, file: !31, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !31, line: 326, baseType: !224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !37, file: !31, line: 396, baseType: !16, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !37, file: !31, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !31, line: 327, baseType: !224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !37, file: !31, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !31, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!29, !36, !16}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !37, file: !31, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !31, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!29, !36, !29, !29}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !37, file: !31, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !31, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !28}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !37, file: !31, line: 401, baseType: !156, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !37, file: !31, line: 402, baseType: !29, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !37, file: !31, line: 403, baseType: !29, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !37, file: !31, line: 404, baseType: !29, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !37, file: !31, line: 405, baseType: !29, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !37, file: !31, line: 406, baseType: !29, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !37, file: !31, line: 407, baseType: !52, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !37, file: !31, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !37, file: !31, line: 412, baseType: !52, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytesiobuf", file: !366, line: 19, baseType: !367)
!366 = !DIFile(filename: "./Modules/_io/bytesio.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 16, size: 192, align: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !367, file: !366, line: 17, baseType: !30, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !367, file: !366, line: 18, baseType: !371, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytesio", file: !366, line: 14, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 5, size: 576, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !373, file: !366, line: 6, baseType: !30, size: 128, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !373, file: !366, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !373, file: !366, line: 8, baseType: !16, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "string_size", scope: !373, file: !366, line: 9, baseType: !16, size: 64, align: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !373, file: !366, line: 10, baseType: !25, size: 64, align: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !373, file: !366, line: 11, baseType: !29, size: 64, align: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !373, file: !366, line: 12, baseType: !29, size: 64, align: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "exports", scope: !373, file: !366, line: 13, baseType: !16, size: 64, align: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !386, line: 33, baseType: !387)
!386 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!387 = !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 25, size: 256, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !387, file: !386, line: 26, baseType: !40, size: 192, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !387, file: !386, line: 27, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 64, elements: !99)
!392 = !{!393, !406, !417, !428, !435, !445, !448, !451, !454, !457, !460, !469, !476, !484, !502, !510, !517, !525, !545, !553, !563, !566, !572, !578, !592, !602, !609, !612, !629, !641, !652, !661, !668}
!393 = !DISubprogram(name: "bytesio_dealloc", scope: !366, file: !366, line: 783, type: !394, isLocal: true, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesio*)* @bytesio_dealloc, variables: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !371}
!396 = !{!397, !398, !400, !402}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !393, file: !366, line: 783, type: !371)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !399, file: !366, line: 785, type: !4)
!399 = distinct !DILexicalBlock(scope: !393, file: !366, line: 785, column: 8)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !401, file: !366, line: 795, type: !29)
!401 = distinct !DILexicalBlock(scope: !393, file: !366, line: 795, column: 8)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !403, file: !366, line: 795, type: !29)
!403 = distinct !DILexicalBlock(scope: !404, file: !366, line: 795, column: 115)
!404 = distinct !DILexicalBlock(scope: !405, file: !366, line: 795, column: 83)
!405 = distinct !DILexicalBlock(scope: !401, file: !366, line: 795, column: 60)
!406 = !DISubprogram(name: "bytesio_traverse", scope: !366, file: !366, line: 861, type: !407, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*, i32 (%struct._object*, i8*)*, i8*)* @bytesio_traverse, variables: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!61, !371, !277, !28}
!409 = !{!410, !411, !412, !413}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !406, file: !366, line: 861, type: !371)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !406, file: !366, line: 861, type: !277)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !406, file: !366, line: 861, type: !28)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !414, file: !366, line: 863, type: !61)
!414 = distinct !DILexicalBlock(scope: !415, file: !366, line: 863, column: 26)
!415 = distinct !DILexicalBlock(scope: !416, file: !366, line: 863, column: 14)
!416 = distinct !DILexicalBlock(scope: !406, file: !366, line: 863, column: 8)
!417 = !DISubprogram(name: "bytesio_clear", scope: !366, file: !366, line: 868, type: !418, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*)* @bytesio_clear, variables: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!61, !371}
!420 = !{!421, !422, !424}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !417, file: !366, line: 868, type: !371)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !423, file: !366, line: 870, type: !29)
!423 = distinct !DILexicalBlock(scope: !417, file: !366, line: 870, column: 8)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !425, file: !366, line: 870, type: !29)
!425 = distinct !DILexicalBlock(scope: !426, file: !366, line: 870, column: 115)
!426 = distinct !DILexicalBlock(scope: !427, file: !366, line: 870, column: 83)
!427 = distinct !DILexicalBlock(scope: !423, file: !366, line: 870, column: 60)
!428 = !DISubprogram(name: "bytesio_iternext", scope: !366, file: !366, line: 515, type: !429, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_iternext, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!29, !371}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !428, file: !366, line: 515, type: !371)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !428, file: !366, line: 517, type: !69)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !428, file: !366, line: 518, type: !16)
!435 = !DISubprogram(name: "get_line", scope: !366, file: !366, line: 41, type: !436, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.bytesio*, i8**)* @get_line, variables: !439)
!436 = !DISubroutineType(types: !437)
!437 = !{!16, !371, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!439 = !{!440, !441, !442, !443, !444}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !435, file: !366, line: 41, type: !371)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "output", arg: 2, scope: !435, file: !366, line: 41, type: !438)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !435, file: !366, line: 43, type: !69)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str_end", scope: !435, file: !366, line: 44, type: !46)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !435, file: !366, line: 45, type: !16)
!445 = !DISubprogram(name: "return_not_closed", scope: !366, file: !366, line: 185, type: !429, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @return_not_closed, variables: !446)
!446 = !{!447}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !445, file: !366, line: 185, type: !371)
!448 = !DISubprogram(name: "bytesio_close", scope: !366, file: !366, line: 656, type: !429, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_close, variables: !449)
!449 = !{!450}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !448, file: !366, line: 656, type: !371)
!451 = !DISubprogram(name: "bytesio_flush", scope: !366, file: !366, line: 195, type: !429, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_flush, variables: !452)
!452 = !{!453}
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !451, file: !366, line: 195, type: !371)
!454 = !DISubprogram(name: "bytesio_isatty", scope: !366, file: !366, line: 244, type: !429, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_isatty, variables: !455)
!455 = !{!456}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !454, file: !366, line: 244, type: !371)
!457 = !DISubprogram(name: "bytesio_tell", scope: !366, file: !366, line: 254, type: !429, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_tell, variables: !458)
!458 = !{!459}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !457, file: !366, line: 254, type: !371)
!460 = !DISubprogram(name: "bytesio_write", scope: !366, file: !366, line: 594, type: !461, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_write, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!29, !371, !29}
!463 = !{!464, !465, !466, !467, !468}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !460, file: !366, line: 594, type: !371)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !460, file: !366, line: 594, type: !29)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !460, file: !366, line: 596, type: !16)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !460, file: !366, line: 597, type: !250)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !460, file: !366, line: 598, type: !29)
!469 = !DISubprogram(name: "write_bytes", scope: !366, file: !366, line: 126, type: !470, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.bytesio*, i8*, i64)* @write_bytes, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!16, !371, !46, !16}
!472 = !{!473, !474, !475}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !469, file: !366, line: 126, type: !371)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytes", arg: 2, scope: !469, file: !366, line: 126, type: !46)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !469, file: !366, line: 126, type: !16)
!476 = !DISubprogram(name: "resize_buffer", scope: !366, file: !366, line: 74, type: !477, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*, i64)* @resize_buffer, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!61, !371, !25}
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !476, file: !366, line: 74, type: !371)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !476, file: !366, line: 74, type: !25)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !476, file: !366, line: 78, type: !25)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_buf", scope: !476, file: !366, line: 79, type: !69)
!484 = !DISubprogram(name: "bytesio_writelines", scope: !366, file: !366, line: 623, type: !461, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_writelines, variables: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !494, !498, !500}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !484, file: !366, line: 623, type: !371)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !484, file: !366, line: 623, type: !29)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !484, file: !366, line: 625, type: !29)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !484, file: !366, line: 625, type: !29)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !484, file: !366, line: 626, type: !29)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !492, file: !366, line: 636, type: !29)
!492 = distinct !DILexicalBlock(scope: !493, file: !366, line: 636, column: 12)
!493 = distinct !DILexicalBlock(scope: !484, file: !366, line: 634, column: 52)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !366, line: 638, type: !29)
!495 = distinct !DILexicalBlock(scope: !496, file: !366, line: 638, column: 16)
!496 = distinct !DILexicalBlock(scope: !497, file: !366, line: 637, column: 32)
!497 = distinct !DILexicalBlock(scope: !493, file: !366, line: 637, column: 13)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !366, line: 641, type: !29)
!499 = distinct !DILexicalBlock(scope: !493, file: !366, line: 641, column: 12)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !501, file: !366, line: 643, type: !29)
!501 = distinct !DILexicalBlock(scope: !484, file: !366, line: 643, column: 8)
!502 = !DISubprogram(name: "bytesio_read1", scope: !366, file: !366, line: 316, type: !461, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read1, variables: !503)
!503 = !{!504, !505, !506, !507, !508}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !502, file: !366, line: 316, type: !371)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !502, file: !366, line: 316, type: !29)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !502, file: !366, line: 318, type: !29)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !502, file: !366, line: 318, type: !29)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !509, file: !366, line: 324, type: !29)
!509 = distinct !DILexicalBlock(scope: !502, file: !366, line: 324, column: 8)
!510 = !DISubprogram(name: "bytesio_readinto", scope: !366, file: !366, line: 440, type: !461, isLocal: true, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readinto, variables: !511)
!511 = !{!512, !513, !514, !515, !516}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !510, file: !366, line: 440, type: !371)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 2, scope: !510, file: !366, line: 440, type: !29)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw_buffer", scope: !510, file: !366, line: 442, type: !28)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !510, file: !366, line: 443, type: !16)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !510, file: !366, line: 443, type: !16)
!517 = !DISubprogram(name: "bytesio_readline", scope: !366, file: !366, line: 336, type: !461, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readline, variables: !518)
!518 = !{!519, !520, !521, !522, !523, !524}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !517, file: !366, line: 336, type: !371)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !517, file: !366, line: 336, type: !29)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !517, file: !366, line: 338, type: !16)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !517, file: !366, line: 338, type: !16)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !517, file: !366, line: 339, type: !69)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !517, file: !366, line: 340, type: !29)
!525 = !DISubprogram(name: "bytesio_readlines", scope: !366, file: !366, line: 381, type: !461, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readlines, variables: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !541, !543}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !525, file: !366, line: 381, type: !371)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !525, file: !366, line: 381, type: !29)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxsize", scope: !525, file: !366, line: 383, type: !16)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !525, file: !366, line: 383, type: !16)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !525, file: !366, line: 383, type: !16)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !525, file: !366, line: 384, type: !29)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !525, file: !366, line: 384, type: !29)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !525, file: !366, line: 385, type: !69)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !525, file: !366, line: 386, type: !29)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !366, line: 418, type: !29)
!537 = distinct !DILexicalBlock(scope: !538, file: !366, line: 418, column: 16)
!538 = distinct !DILexicalBlock(scope: !539, file: !366, line: 417, column: 48)
!539 = distinct !DILexicalBlock(scope: !540, file: !366, line: 417, column: 13)
!540 = distinct !DILexicalBlock(scope: !525, file: !366, line: 413, column: 48)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !366, line: 421, type: !29)
!542 = distinct !DILexicalBlock(scope: !540, file: !366, line: 421, column: 12)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !366, line: 429, type: !29)
!544 = distinct !DILexicalBlock(scope: !525, file: !366, line: 429, column: 8)
!545 = !DISubprogram(name: "bytesio_read", scope: !366, file: !366, line: 267, type: !461, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read, variables: !546)
!546 = !{!547, !548, !549, !550, !551, !552}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !545, file: !366, line: 267, type: !371)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !545, file: !366, line: 267, type: !29)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !545, file: !366, line: 269, type: !16)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !545, file: !366, line: 269, type: !16)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !545, file: !366, line: 270, type: !69)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !545, file: !366, line: 271, type: !29)
!553 = !DISubprogram(name: "bytesio_getbuffer", scope: !366, file: !366, line: 207, type: !429, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getbuffer, variables: !554)
!554 = !{!555, !556, !559, !560, !561}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !553, file: !366, line: 207, type: !371)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !553, file: !366, line: 209, type: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !31, line: 422, baseType: !37)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !553, file: !366, line: 210, type: !364)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view", scope: !553, file: !366, line: 211, type: !29)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !562, file: !366, line: 221, type: !29)
!562 = distinct !DILexicalBlock(scope: !553, file: !366, line: 221, column: 8)
!563 = !DISubprogram(name: "bytesio_getvalue", scope: !366, file: !366, line: 231, type: !429, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getvalue, variables: !564)
!564 = !{!565}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !563, file: !366, line: 231, type: !371)
!566 = !DISubprogram(name: "bytesio_seek", scope: !366, file: !366, line: 540, type: !461, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_seek, variables: !567)
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !566, file: !366, line: 540, type: !371)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !566, file: !366, line: 540, type: !29)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !566, file: !366, line: 542, type: !16)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !566, file: !366, line: 543, type: !61)
!572 = !DISubprogram(name: "bytesio_truncate", scope: !366, file: !366, line: 473, type: !461, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_truncate, variables: !573)
!573 = !{!574, !575, !576, !577}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !572, file: !366, line: 473, type: !371)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !572, file: !366, line: 473, type: !29)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !572, file: !366, line: 475, type: !16)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !572, file: !366, line: 476, type: !29)
!578 = !DISubprogram(name: "bytesio_getstate", scope: !366, file: !366, line: 681, type: !429, isLocal: true, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getstate, variables: !579)
!579 = !{!580, !581, !582, !583, !584, !590}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !578, file: !366, line: 681, type: !371)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !578, file: !366, line: 683, type: !29)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !578, file: !366, line: 684, type: !29)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !578, file: !366, line: 685, type: !29)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !366, line: 696, type: !29)
!585 = distinct !DILexicalBlock(scope: !586, file: !366, line: 696, column: 16)
!586 = distinct !DILexicalBlock(scope: !587, file: !366, line: 695, column: 33)
!587 = distinct !DILexicalBlock(scope: !588, file: !366, line: 695, column: 13)
!588 = distinct !DILexicalBlock(scope: !589, file: !366, line: 693, column: 10)
!589 = distinct !DILexicalBlock(scope: !578, file: !366, line: 689, column: 9)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !591, file: !366, line: 702, type: !29)
!591 = distinct !DILexicalBlock(scope: !578, file: !366, line: 702, column: 8)
!592 = !DISubprogram(name: "bytesio_setstate", scope: !366, file: !366, line: 707, type: !461, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_setstate, variables: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !592, file: !366, line: 707, type: !371)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !592, file: !366, line: 707, type: !29)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !592, file: !366, line: 709, type: !29)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position_obj", scope: !592, file: !366, line: 710, type: !29)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !592, file: !366, line: 711, type: !29)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !592, file: !366, line: 712, type: !16)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !601, file: !366, line: 736, type: !29)
!601 = distinct !DILexicalBlock(scope: !592, file: !366, line: 736, column: 8)
!602 = !DISubprogram(name: "bytesio_sizeof", scope: !366, file: !366, line: 850, type: !603, isLocal: true, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, i8*)* @bytesio_sizeof, variables: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!29, !371, !28}
!605 = !{!606, !607, !608}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !602, file: !366, line: 850, type: !371)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !602, file: !366, line: 850, type: !28)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !602, file: !366, line: 852, type: !16)
!609 = !DISubprogram(name: "bytesio_get_closed", scope: !366, file: !366, line: 164, type: !429, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_get_closed, variables: !610)
!610 = !{!611}
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !609, file: !366, line: 164, type: !371)
!612 = !DISubprogram(name: "bytesio_init", scope: !366, file: !366, line: 824, type: !613, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*, %struct._object*, %struct._object*)* @bytesio_init, variables: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!61, !371, !29, !29}
!615 = !{!616, !617, !618, !619, !623, !624, !627}
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !612, file: !366, line: 824, type: !371)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !612, file: !366, line: 824, type: !29)
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !612, file: !366, line: 824, type: !29)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !612, file: !366, line: 826, type: !620)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 2)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !612, file: !366, line: 827, type: !29)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !625, file: !366, line: 838, type: !29)
!625 = distinct !DILexicalBlock(scope: !626, file: !366, line: 837, column: 54)
!626 = distinct !DILexicalBlock(scope: !612, file: !366, line: 837, column: 9)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !628, file: !366, line: 842, type: !29)
!628 = distinct !DILexicalBlock(scope: !625, file: !366, line: 842, column: 12)
!629 = !DISubprogram(name: "bytesio_new", scope: !366, file: !366, line: 802, type: !630, isLocal: true, isDefinition: true, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bytesio_new, variables: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!29, !557, !29, !29}
!632 = !{!633, !634, !635, !636, !637}
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !629, file: !366, line: 802, type: !557)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !629, file: !366, line: 802, type: !29)
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !629, file: !366, line: 802, type: !29)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !629, file: !366, line: 804, type: !371)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !638, file: !366, line: 816, type: !29)
!638 = distinct !DILexicalBlock(scope: !639, file: !366, line: 816, column: 12)
!639 = distinct !DILexicalBlock(scope: !640, file: !366, line: 815, column: 34)
!640 = distinct !DILexicalBlock(scope: !629, file: !366, line: 815, column: 9)
!641 = !DISubprogram(name: "bytesiobuf_dealloc", scope: !366, file: !366, line: 993, type: !642, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesiobuf*)* @bytesiobuf_dealloc, variables: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !364}
!644 = !{!645, !646, !648}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !641, file: !366, line: 993, type: !364)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !647, file: !366, line: 995, type: !29)
!647 = distinct !DILexicalBlock(scope: !641, file: !366, line: 995, column: 8)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !649, file: !366, line: 995, type: !29)
!649 = distinct !DILexicalBlock(scope: !650, file: !366, line: 995, column: 119)
!650 = distinct !DILexicalBlock(scope: !651, file: !366, line: 995, column: 85)
!651 = distinct !DILexicalBlock(scope: !647, file: !366, line: 995, column: 62)
!652 = !DISubprogram(name: "bytesiobuf_getbuffer", scope: !366, file: !366, line: 962, type: !653, isLocal: true, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesiobuf*, %struct.bufferinfo*, i32)* @bytesiobuf_getbuffer, variables: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!61, !364, !249, !61}
!655 = !{!656, !657, !658, !659, !660}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !652, file: !366, line: 962, type: !364)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !652, file: !366, line: 962, type: !249)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !652, file: !366, line: 962, type: !61)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !652, file: !366, line: 964, type: !61)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !652, file: !366, line: 965, type: !371)
!661 = !DISubprogram(name: "bytesiobuf_releasebuffer", scope: !366, file: !366, line: 979, type: !662, isLocal: true, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesiobuf*, %struct.bufferinfo*)* @bytesiobuf_releasebuffer, variables: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !364, !249}
!664 = !{!665, !666, !667}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !661, file: !366, line: 979, type: !364)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !661, file: !366, line: 979, type: !249)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !661, file: !366, line: 981, type: !371)
!668 = !DISubprogram(name: "bytesiobuf_traverse", scope: !366, file: !366, line: 986, type: !669, isLocal: true, isDefinition: true, scopeLine: 987, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesiobuf*, i32 (%struct._object*, i8*)*, i8*)* @bytesiobuf_traverse, variables: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!61, !364, !277, !28}
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !668, file: !366, line: 986, type: !364)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !668, file: !366, line: 986, type: !277)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !668, file: !366, line: 986, type: !28)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !676, file: !366, line: 988, type: !61)
!676 = distinct !DILexicalBlock(scope: !677, file: !366, line: 988, column: 28)
!677 = distinct !DILexicalBlock(scope: !678, file: !366, line: 988, column: 14)
!678 = distinct !DILexicalBlock(scope: !668, file: !366, line: 988, column: 8)
!679 = !{!680, !681, !682, !686, !690, !694, !698, !702, !706, !710, !714, !718, !722, !726, !730, !734, !738, !742, !746, !750, !754, !758, !762, !765}
!680 = !DIGlobalVariable(name: "PyBytesIO_Type", scope: !0, file: !366, line: 912, type: !558, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyBytesIO_Type)
!681 = !DIGlobalVariable(name: "_PyBytesIOBuffer_Type", scope: !0, file: !366, line: 1004, type: !558, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyBytesIOBuffer_Type)
!682 = !DIGlobalVariable(name: "bytesio_doc", scope: !0, file: !366, line: 906, type: !683, isLocal: true, isDefinition: true, variable: [130 x i8]* @bytesio_doc)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1040, align: 8, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 130)
!686 = !DIGlobalVariable(name: "bytesio_methods", scope: !0, file: !366, line: 881, type: !687, isLocal: true, isDefinition: true, variable: [22 x %struct.PyMethodDef]* @bytesio_methods)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 5632, align: 64, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 22)
!690 = !DIGlobalVariable(name: "readable_doc", scope: !0, file: !366, line: 174, type: !691, isLocal: true, isDefinition: true, variable: [63 x i8]* @readable_doc)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 504, align: 8, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 63)
!694 = !DIGlobalVariable(name: "seekable_doc", scope: !0, file: !366, line: 180, type: !695, isLocal: true, isDefinition: true, variable: [65 x i8]* @seekable_doc)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 520, align: 8, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 65)
!698 = !DIGlobalVariable(name: "writable_doc", scope: !0, file: !366, line: 177, type: !699, isLocal: true, isDefinition: true, variable: [66 x i8]* @writable_doc)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 528, align: 8, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 66)
!702 = !DIGlobalVariable(name: "close_doc", scope: !0, file: !366, line: 652, type: !703, isLocal: true, isDefinition: true, variable: [46 x i8]* @close_doc)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 368, align: 8, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 46)
!706 = !DIGlobalVariable(name: "flush_doc", scope: !0, file: !366, line: 191, type: !707, isLocal: true, isDefinition: true, variable: [32 x i8]* @flush_doc)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, align: 8, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 32)
!710 = !DIGlobalVariable(name: "isatty_doc", scope: !0, file: !366, line: 237, type: !711, isLocal: true, isDefinition: true, variable: [103 x i8]* @isatty_doc)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 824, align: 8, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 103)
!714 = !DIGlobalVariable(name: "tell_doc", scope: !0, file: !366, line: 250, type: !715, isLocal: true, isDefinition: true, variable: [45 x i8]* @tell_doc)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 360, align: 8, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 45)
!718 = !DIGlobalVariable(name: "write_doc", scope: !0, file: !366, line: 588, type: !719, isLocal: true, isDefinition: true, variable: [80 x i8]* @write_doc)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, align: 8, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 80)
!722 = !DIGlobalVariable(name: "writelines_doc", scope: !0, file: !366, line: 615, type: !723, isLocal: true, isDefinition: true, variable: [219 x i8]* @writelines_doc)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1752, align: 8, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 219)
!726 = !DIGlobalVariable(name: "read1_doc", scope: !0, file: !366, line: 309, type: !727, isLocal: true, isDefinition: true, variable: [166 x i8]* @read1_doc)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1328, align: 8, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 166)
!730 = !DIGlobalVariable(name: "readinto_doc", scope: !0, file: !366, line: 433, type: !731, isLocal: true, isDefinition: true, variable: [170 x i8]* @readinto_doc)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1360, align: 8, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 170)
!734 = !DIGlobalVariable(name: "readline_doc", scope: !0, file: !366, line: 328, type: !735, isLocal: true, isDefinition: true, variable: [225 x i8]* @readline_doc)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1800, align: 8, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 225)
!738 = !DIGlobalVariable(name: "readlines_doc", scope: !0, file: !366, line: 373, type: !739, isLocal: true, isDefinition: true, variable: [248 x i8]* @readlines_doc)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1984, align: 8, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 248)
!742 = !DIGlobalVariable(name: "read_doc", scope: !0, file: !366, line: 260, type: !743, isLocal: true, isDefinition: true, variable: [156 x i8]* @read_doc)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1248, align: 8, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 156)
!746 = !DIGlobalVariable(name: "getbuffer_doc", scope: !0, file: !366, line: 201, type: !747, isLocal: true, isDefinition: true, variable: [86 x i8]* @getbuffer_doc)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 688, align: 8, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 86)
!750 = !DIGlobalVariable(name: "getval_doc", scope: !0, file: !366, line: 225, type: !751, isLocal: true, isDefinition: true, variable: [74 x i8]* @getval_doc)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 592, align: 8, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 74)
!754 = !DIGlobalVariable(name: "seek_doc", scope: !0, file: !366, line: 530, type: !755, isLocal: true, isDefinition: true, variable: [309 x i8]* @seek_doc)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2472, align: 8, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 309)
!758 = !DIGlobalVariable(name: "truncate_doc", scope: !0, file: !366, line: 466, type: !759, isLocal: true, isDefinition: true, variable: [199 x i8]* @truncate_doc)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1592, align: 8, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 199)
!762 = !DIGlobalVariable(name: "bytesio_getsetlist", scope: !0, file: !366, line: 875, type: !763, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @bytesio_getsetlist)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 640, align: 64, elements: !621)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !315, line: 17, baseType: !314)
!765 = !DIGlobalVariable(name: "bytesiobuf_as_buffer", scope: !0, file: !366, line: 999, type: !241, isLocal: true, isDefinition: true, variable: %struct.PyBufferProcs* @bytesiobuf_as_buffer)
!766 = !{i32 2, !"Dwarf Version", i32 4}
!767 = !{i32 2, !"Debug Info Version", i32 3}
!768 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!769 = !{!770, !770, i64 0}
!770 = !{!"any pointer", !771, i64 0}
!771 = !{!"omnipotent char", !772, i64 0}
!772 = !{!"Simple C/C++ TBAA"}
!773 = !DIExpression()
!774 = !DILocation(line: 783, column: 26, scope: !393)
!775 = !DILocation(line: 785, column: 5, scope: !393)
!776 = !DILocation(line: 785, column: 10, scope: !777)
!777 = !DILexicalBlockFile(scope: !399, file: !366, discriminator: 1)
!778 = !DILocation(line: 785, column: 21, scope: !399)
!779 = !DILocation(line: 785, column: 40, scope: !399)
!780 = !DILocation(line: 785, column: 26, scope: !399)
!781 = !DILocation(line: 785, column: 45, scope: !399)
!782 = !DILocation(line: 785, column: 64, scope: !399)
!783 = !DILocation(line: 785, column: 89, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !366, discriminator: 2)
!785 = distinct !DILexicalBlock(scope: !399, file: !366, line: 785, column: 67)
!786 = !DILocation(line: 785, column: 93, scope: !785)
!787 = !DILocation(line: 785, column: 96, scope: !785)
!788 = !{!789, !790, i64 16}
!789 = !{!"", !770, i64 0, !770, i64 8, !790, i64 16}
!790 = !{!"long", !771, i64 0}
!791 = !DILocation(line: 785, column: 104, scope: !785)
!792 = !DILocation(line: 785, column: 131, scope: !785)
!793 = !DILocation(line: 785, column: 70, scope: !785)
!794 = !DILocation(line: 785, column: 74, scope: !785)
!795 = !DILocation(line: 785, column: 77, scope: !785)
!796 = !DILocation(line: 785, column: 85, scope: !785)
!797 = !DILocation(line: 785, column: 160, scope: !785)
!798 = !DILocation(line: 785, column: 160, scope: !799)
!799 = !DILexicalBlockFile(scope: !785, file: !366, discriminator: 3)
!800 = !DILocation(line: 785, column: 201, scope: !801)
!801 = !DILexicalBlockFile(scope: !399, file: !366, discriminator: 4)
!802 = !DILocation(line: 785, column: 204, scope: !399)
!803 = !DILocation(line: 785, column: 207, scope: !399)
!804 = !{!789, !770, i64 0}
!805 = !DILocation(line: 785, column: 173, scope: !399)
!806 = !DILocation(line: 785, column: 176, scope: !399)
!807 = !DILocation(line: 785, column: 179, scope: !399)
!808 = !{!789, !770, i64 8}
!809 = !DILocation(line: 785, column: 188, scope: !399)
!810 = !DILocation(line: 785, column: 191, scope: !399)
!811 = !DILocation(line: 785, column: 199, scope: !399)
!812 = !DILocation(line: 785, column: 244, scope: !399)
!813 = !DILocation(line: 785, column: 247, scope: !399)
!814 = !DILocation(line: 785, column: 250, scope: !399)
!815 = !DILocation(line: 785, column: 216, scope: !399)
!816 = !DILocation(line: 785, column: 219, scope: !399)
!817 = !DILocation(line: 785, column: 222, scope: !399)
!818 = !DILocation(line: 785, column: 231, scope: !399)
!819 = !DILocation(line: 785, column: 234, scope: !399)
!820 = !DILocation(line: 785, column: 242, scope: !399)
!821 = !DILocation(line: 785, column: 259, scope: !399)
!822 = !DILocation(line: 785, column: 262, scope: !399)
!823 = !DILocation(line: 785, column: 265, scope: !399)
!824 = !DILocation(line: 785, column: 273, scope: !399)
!825 = !DILocation(line: 785, column: 287, scope: !393)
!826 = !DILocation(line: 785, column: 287, scope: !399)
!827 = !DILocation(line: 786, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !393, file: !366, line: 786, column: 9)
!829 = !DILocation(line: 786, column: 15, scope: !828)
!830 = !{!831, !790, i64 64}
!831 = !{!"", !832, i64 0, !770, i64 16, !790, i64 24, !790, i64 32, !790, i64 40, !770, i64 48, !770, i64 56, !790, i64 64}
!832 = !{!"_object", !790, i64 0, !770, i64 8}
!833 = !DILocation(line: 786, column: 23, scope: !828)
!834 = !DILocation(line: 786, column: 9, scope: !393)
!835 = !DILocation(line: 787, column: 25, scope: !836)
!836 = distinct !DILexicalBlock(scope: !828, file: !366, line: 786, column: 28)
!837 = !DILocation(line: 787, column: 9, scope: !836)
!838 = !DILocation(line: 789, column: 9, scope: !836)
!839 = !DILocation(line: 790, column: 5, scope: !836)
!840 = !DILocation(line: 791, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !393, file: !366, line: 791, column: 9)
!842 = !DILocation(line: 791, column: 15, scope: !841)
!843 = !{!831, !770, i64 16}
!844 = !DILocation(line: 791, column: 19, scope: !841)
!845 = !DILocation(line: 791, column: 9, scope: !393)
!846 = !DILocation(line: 792, column: 20, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !366, line: 791, column: 34)
!848 = !DILocation(line: 792, column: 26, scope: !847)
!849 = !DILocation(line: 792, column: 9, scope: !847)
!850 = !DILocation(line: 793, column: 9, scope: !847)
!851 = !DILocation(line: 793, column: 15, scope: !847)
!852 = !DILocation(line: 793, column: 19, scope: !847)
!853 = !DILocation(line: 794, column: 5, scope: !847)
!854 = !DILocation(line: 795, column: 5, scope: !393)
!855 = !DILocation(line: 795, column: 10, scope: !856)
!856 = !DILexicalBlockFile(scope: !401, file: !366, discriminator: 1)
!857 = !DILocation(line: 795, column: 20, scope: !401)
!858 = !DILocation(line: 795, column: 43, scope: !401)
!859 = !DILocation(line: 795, column: 49, scope: !401)
!860 = !{!831, !770, i64 48}
!861 = !DILocation(line: 795, column: 60, scope: !405)
!862 = !DILocation(line: 795, column: 68, scope: !405)
!863 = !DILocation(line: 795, column: 60, scope: !401)
!864 = !DILocation(line: 795, column: 86, scope: !865)
!865 = !DILexicalBlockFile(scope: !404, file: !366, discriminator: 2)
!866 = !DILocation(line: 795, column: 92, scope: !404)
!867 = !DILocation(line: 795, column: 98, scope: !404)
!868 = !DILocation(line: 795, column: 112, scope: !404)
!869 = !DILocation(line: 795, column: 117, scope: !870)
!870 = !DILexicalBlockFile(scope: !403, file: !366, discriminator: 4)
!871 = !DILocation(line: 795, column: 127, scope: !403)
!872 = !DILocation(line: 795, column: 157, scope: !403)
!873 = !DILocation(line: 795, column: 175, scope: !874)
!874 = distinct !DILexicalBlock(scope: !403, file: !366, line: 795, column: 172)
!875 = !DILocation(line: 795, column: 192, scope: !874)
!876 = !DILocation(line: 795, column: 172, scope: !874)
!877 = !{!832, !790, i64 0}
!878 = !DILocation(line: 795, column: 202, scope: !874)
!879 = !DILocation(line: 795, column: 172, scope: !403)
!880 = !DILocation(line: 795, column: 172, scope: !881)
!881 = !DILexicalBlockFile(scope: !403, file: !366, discriminator: 5)
!882 = !DILocation(line: 795, column: 233, scope: !883)
!883 = !DILexicalBlockFile(scope: !874, file: !366, discriminator: 6)
!884 = !DILocation(line: 795, column: 251, scope: !874)
!885 = !{!832, !770, i64 8}
!886 = !DILocation(line: 795, column: 261, scope: !874)
!887 = !{!888, !770, i64 48}
!888 = !{!"_typeobject", !889, i64 0, !770, i64 24, !790, i64 32, !790, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120, !770, i64 128, !770, i64 136, !770, i64 144, !770, i64 152, !770, i64 160, !790, i64 168, !770, i64 176, !770, i64 184, !770, i64 192, !770, i64 200, !790, i64 208, !770, i64 216, !770, i64 224, !770, i64 232, !770, i64 240, !770, i64 248, !770, i64 256, !770, i64 264, !770, i64 272, !770, i64 280, !790, i64 288, !770, i64 296, !770, i64 304, !770, i64 312, !770, i64 320, !770, i64 328, !770, i64 336, !770, i64 344, !770, i64 352, !770, i64 360, !770, i64 368, !770, i64 376, !890, i64 384, !770, i64 392}
!889 = !{!"", !832, i64 0, !790, i64 16}
!890 = !{!"int", !771, i64 0}
!891 = !DILocation(line: 795, column: 286, scope: !874)
!892 = !DILocation(line: 795, column: 217, scope: !874)
!893 = !DILocation(line: 795, column: 305, scope: !894)
!894 = !DILexicalBlockFile(scope: !404, file: !366, discriminator: 7)
!895 = !DILocation(line: 795, column: 305, scope: !403)
!896 = !DILocation(line: 795, column: 305, scope: !897)
!897 = !DILexicalBlockFile(scope: !403, file: !366, discriminator: 8)
!898 = !DILocation(line: 795, column: 318, scope: !899)
!899 = !DILexicalBlockFile(scope: !404, file: !366, discriminator: 9)
!900 = !DILocation(line: 795, column: 320, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !366, discriminator: 10)
!902 = !DILexicalBlockFile(scope: !393, file: !366, discriminator: 3)
!903 = !DILocation(line: 795, column: 320, scope: !401)
!904 = !DILocation(line: 796, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !393, file: !366, line: 796, column: 9)
!906 = !DILocation(line: 796, column: 15, scope: !905)
!907 = !{!831, !770, i64 56}
!908 = !DILocation(line: 796, column: 27, scope: !905)
!909 = !DILocation(line: 796, column: 9, scope: !393)
!910 = !DILocation(line: 797, column: 45, scope: !905)
!911 = !DILocation(line: 797, column: 32, scope: !905)
!912 = !DILocation(line: 797, column: 9, scope: !905)
!913 = !DILocation(line: 798, column: 19, scope: !393)
!914 = !DILocation(line: 798, column: 7, scope: !393)
!915 = !DILocation(line: 798, column: 27, scope: !393)
!916 = !DILocation(line: 798, column: 37, scope: !393)
!917 = !{!888, !770, i64 320}
!918 = !DILocation(line: 798, column: 45, scope: !393)
!919 = !DILocation(line: 798, column: 5, scope: !393)
!920 = !DILocation(line: 799, column: 1, scope: !393)
!921 = !DILocation(line: 861, column: 27, scope: !406)
!922 = !DILocation(line: 861, column: 43, scope: !406)
!923 = !DILocation(line: 861, column: 56, scope: !406)
!924 = !DILocation(line: 863, column: 5, scope: !406)
!925 = !DILocation(line: 863, column: 14, scope: !926)
!926 = !DILexicalBlockFile(scope: !415, file: !366, discriminator: 1)
!927 = !DILocation(line: 863, column: 20, scope: !415)
!928 = !DILocation(line: 863, column: 14, scope: !415)
!929 = !DILocation(line: 863, column: 14, scope: !416)
!930 = !DILocation(line: 863, column: 28, scope: !931)
!931 = !DILexicalBlockFile(scope: !414, file: !366, discriminator: 2)
!932 = !DILocation(line: 863, column: 32, scope: !414)
!933 = !DILocation(line: 863, column: 39, scope: !414)
!934 = !DILocation(line: 863, column: 58, scope: !414)
!935 = !DILocation(line: 863, column: 64, scope: !414)
!936 = !DILocation(line: 863, column: 71, scope: !414)
!937 = !{!890, !890, i64 0}
!938 = !DILocation(line: 863, column: 81, scope: !939)
!939 = distinct !DILexicalBlock(scope: !414, file: !366, line: 863, column: 81)
!940 = !DILocation(line: 863, column: 81, scope: !414)
!941 = !DILocation(line: 863, column: 94, scope: !942)
!942 = !DILexicalBlockFile(scope: !939, file: !366, discriminator: 4)
!943 = !DILocation(line: 863, column: 87, scope: !939)
!944 = !DILocation(line: 863, column: 100, scope: !945)
!945 = !DILexicalBlockFile(scope: !415, file: !366, discriminator: 5)
!946 = !DILocation(line: 863, column: 100, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !366, discriminator: 7)
!948 = !DILexicalBlockFile(scope: !415, file: !366, discriminator: 6)
!949 = !DILocation(line: 863, column: 100, scope: !414)
!950 = !DILocation(line: 863, column: 102, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !366, discriminator: 8)
!952 = !DILexicalBlockFile(scope: !416, file: !366, discriminator: 3)
!953 = !DILocation(line: 864, column: 5, scope: !406)
!954 = !DILocation(line: 865, column: 1, scope: !406)
!955 = !DILocation(line: 868, column: 24, scope: !417)
!956 = !DILocation(line: 870, column: 5, scope: !417)
!957 = !DILocation(line: 870, column: 10, scope: !958)
!958 = !DILexicalBlockFile(scope: !423, file: !366, discriminator: 1)
!959 = !DILocation(line: 870, column: 20, scope: !423)
!960 = !DILocation(line: 870, column: 43, scope: !423)
!961 = !DILocation(line: 870, column: 49, scope: !423)
!962 = !DILocation(line: 870, column: 60, scope: !427)
!963 = !DILocation(line: 870, column: 68, scope: !427)
!964 = !DILocation(line: 870, column: 60, scope: !423)
!965 = !DILocation(line: 870, column: 86, scope: !966)
!966 = !DILexicalBlockFile(scope: !426, file: !366, discriminator: 2)
!967 = !DILocation(line: 870, column: 92, scope: !426)
!968 = !DILocation(line: 870, column: 98, scope: !426)
!969 = !DILocation(line: 870, column: 112, scope: !426)
!970 = !DILocation(line: 870, column: 117, scope: !971)
!971 = !DILexicalBlockFile(scope: !425, file: !366, discriminator: 4)
!972 = !DILocation(line: 870, column: 127, scope: !425)
!973 = !DILocation(line: 870, column: 157, scope: !425)
!974 = !DILocation(line: 870, column: 175, scope: !975)
!975 = distinct !DILexicalBlock(scope: !425, file: !366, line: 870, column: 172)
!976 = !DILocation(line: 870, column: 192, scope: !975)
!977 = !DILocation(line: 870, column: 172, scope: !975)
!978 = !DILocation(line: 870, column: 202, scope: !975)
!979 = !DILocation(line: 870, column: 172, scope: !425)
!980 = !DILocation(line: 870, column: 172, scope: !981)
!981 = !DILexicalBlockFile(scope: !425, file: !366, discriminator: 5)
!982 = !DILocation(line: 870, column: 233, scope: !983)
!983 = !DILexicalBlockFile(scope: !975, file: !366, discriminator: 6)
!984 = !DILocation(line: 870, column: 251, scope: !975)
!985 = !DILocation(line: 870, column: 261, scope: !975)
!986 = !DILocation(line: 870, column: 286, scope: !975)
!987 = !DILocation(line: 870, column: 217, scope: !975)
!988 = !DILocation(line: 870, column: 305, scope: !989)
!989 = !DILexicalBlockFile(scope: !426, file: !366, discriminator: 7)
!990 = !DILocation(line: 870, column: 305, scope: !425)
!991 = !DILocation(line: 870, column: 305, scope: !992)
!992 = !DILexicalBlockFile(scope: !425, file: !366, discriminator: 8)
!993 = !DILocation(line: 870, column: 318, scope: !994)
!994 = !DILexicalBlockFile(scope: !426, file: !366, discriminator: 9)
!995 = !DILocation(line: 870, column: 320, scope: !996)
!996 = !DILexicalBlockFile(scope: !997, file: !366, discriminator: 10)
!997 = !DILexicalBlockFile(scope: !417, file: !366, discriminator: 3)
!998 = !DILocation(line: 870, column: 320, scope: !423)
!999 = !DILocation(line: 871, column: 5, scope: !417)
!1000 = !DILocation(line: 515, column: 27, scope: !428)
!1001 = !DILocation(line: 517, column: 5, scope: !428)
!1002 = !DILocation(line: 517, column: 11, scope: !428)
!1003 = !DILocation(line: 518, column: 5, scope: !428)
!1004 = !DILocation(line: 518, column: 16, scope: !428)
!1005 = !DILocation(line: 520, column: 10, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !428, file: !366, line: 520, column: 9)
!1007 = !DILocation(line: 520, column: 17, scope: !1006)
!1008 = !DILocation(line: 520, column: 21, scope: !1006)
!1009 = !DILocation(line: 520, column: 9, scope: !428)
!1010 = !DILocation(line: 520, column: 54, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !366, discriminator: 1)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !366, line: 520, column: 36)
!1013 = !DILocation(line: 520, column: 38, scope: !1012)
!1014 = !DILocation(line: 520, column: 106, scope: !1012)
!1015 = !DILocation(line: 522, column: 18, scope: !428)
!1016 = !DILocation(line: 522, column: 9, scope: !428)
!1017 = !DILocation(line: 522, column: 7, scope: !428)
!1018 = !{!790, !790, i64 0}
!1019 = !DILocation(line: 524, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !428, file: !366, line: 524, column: 9)
!1021 = !DILocation(line: 524, column: 15, scope: !1020)
!1022 = !DILocation(line: 524, column: 18, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1020, file: !366, discriminator: 1)
!1024 = !DILocation(line: 524, column: 20, scope: !1020)
!1025 = !DILocation(line: 524, column: 9, scope: !428)
!1026 = !DILocation(line: 525, column: 9, scope: !1020)
!1027 = !DILocation(line: 527, column: 38, scope: !428)
!1028 = !DILocation(line: 527, column: 44, scope: !428)
!1029 = !DILocation(line: 527, column: 12, scope: !428)
!1030 = !DILocation(line: 527, column: 5, scope: !428)
!1031 = !DILocation(line: 528, column: 1, scope: !428)
!1032 = !DILocation(line: 824, column: 23, scope: !612)
!1033 = !DILocation(line: 824, column: 39, scope: !612)
!1034 = !DILocation(line: 824, column: 55, scope: !612)
!1035 = !DILocation(line: 826, column: 5, scope: !612)
!1036 = !DILocation(line: 826, column: 11, scope: !612)
!1037 = !DILocation(line: 827, column: 5, scope: !612)
!1038 = !DILocation(line: 827, column: 15, scope: !612)
!1039 = !DILocation(line: 829, column: 38, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !612, file: !366, line: 829, column: 9)
!1041 = !DILocation(line: 829, column: 44, scope: !1040)
!1042 = !DILocation(line: 829, column: 64, scope: !1040)
!1043 = !DILocation(line: 829, column: 10, scope: !1040)
!1044 = !DILocation(line: 829, column: 9, scope: !612)
!1045 = !DILocation(line: 831, column: 9, scope: !1040)
!1046 = !DILocation(line: 834, column: 5, scope: !612)
!1047 = !DILocation(line: 834, column: 11, scope: !612)
!1048 = !DILocation(line: 834, column: 23, scope: !612)
!1049 = !{!831, !790, i64 32}
!1050 = !DILocation(line: 835, column: 5, scope: !612)
!1051 = !DILocation(line: 835, column: 11, scope: !612)
!1052 = !DILocation(line: 835, column: 15, scope: !612)
!1053 = !{!831, !790, i64 24}
!1054 = !DILocation(line: 837, column: 9, scope: !626)
!1055 = !DILocation(line: 837, column: 19, scope: !626)
!1056 = !DILocation(line: 837, column: 22, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !626, file: !366, discriminator: 1)
!1058 = !DILocation(line: 837, column: 32, scope: !626)
!1059 = !DILocation(line: 837, column: 9, scope: !612)
!1060 = !DILocation(line: 838, column: 9, scope: !625)
!1061 = !DILocation(line: 838, column: 19, scope: !625)
!1062 = !DILocation(line: 839, column: 29, scope: !625)
!1063 = !DILocation(line: 839, column: 35, scope: !625)
!1064 = !DILocation(line: 839, column: 15, scope: !625)
!1065 = !DILocation(line: 839, column: 13, scope: !625)
!1066 = !DILocation(line: 840, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !625, file: !366, line: 840, column: 13)
!1068 = !DILocation(line: 840, column: 17, scope: !1067)
!1069 = !DILocation(line: 840, column: 13, scope: !625)
!1070 = !DILocation(line: 841, column: 13, scope: !1067)
!1071 = !DILocation(line: 842, column: 9, scope: !625)
!1072 = !DILocation(line: 842, column: 14, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !628, file: !366, discriminator: 1)
!1074 = !DILocation(line: 842, column: 24, scope: !628)
!1075 = !DILocation(line: 842, column: 54, scope: !628)
!1076 = !DILocation(line: 842, column: 68, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !628, file: !366, line: 842, column: 65)
!1078 = !DILocation(line: 842, column: 85, scope: !1077)
!1079 = !DILocation(line: 842, column: 65, scope: !1077)
!1080 = !DILocation(line: 842, column: 95, scope: !1077)
!1081 = !DILocation(line: 842, column: 65, scope: !628)
!1082 = !DILocation(line: 842, column: 65, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !628, file: !366, discriminator: 2)
!1084 = !DILocation(line: 842, column: 126, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1077, file: !366, discriminator: 3)
!1086 = !DILocation(line: 842, column: 144, scope: !1077)
!1087 = !DILocation(line: 842, column: 154, scope: !1077)
!1088 = !DILocation(line: 842, column: 179, scope: !1077)
!1089 = !DILocation(line: 842, column: 110, scope: !1077)
!1090 = !DILocation(line: 842, column: 198, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !625, file: !366, discriminator: 4)
!1092 = !DILocation(line: 842, column: 198, scope: !628)
!1093 = !DILocation(line: 842, column: 198, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !628, file: !366, discriminator: 5)
!1095 = !DILocation(line: 843, column: 9, scope: !625)
!1096 = !DILocation(line: 843, column: 15, scope: !625)
!1097 = !DILocation(line: 843, column: 19, scope: !625)
!1098 = !DILocation(line: 844, column: 5, scope: !626)
!1099 = !DILocation(line: 844, column: 5, scope: !1057)
!1100 = !DILocation(line: 844, column: 5, scope: !625)
!1101 = !DILocation(line: 846, column: 5, scope: !612)
!1102 = !DILocation(line: 847, column: 1, scope: !612)
!1103 = !DILocation(line: 802, column: 27, scope: !629)
!1104 = !DILocation(line: 802, column: 43, scope: !629)
!1105 = !DILocation(line: 802, column: 59, scope: !629)
!1106 = !DILocation(line: 804, column: 5, scope: !629)
!1107 = !DILocation(line: 804, column: 14, scope: !629)
!1108 = !DILocation(line: 807, column: 23, scope: !629)
!1109 = !DILocation(line: 807, column: 29, scope: !629)
!1110 = !{!888, !770, i64 304}
!1111 = !DILocation(line: 807, column: 38, scope: !629)
!1112 = !DILocation(line: 807, column: 12, scope: !629)
!1113 = !DILocation(line: 807, column: 10, scope: !629)
!1114 = !DILocation(line: 808, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !629, file: !366, line: 808, column: 9)
!1116 = !DILocation(line: 808, column: 14, scope: !1115)
!1117 = !DILocation(line: 808, column: 9, scope: !629)
!1118 = !DILocation(line: 809, column: 9, scope: !1115)
!1119 = !DILocation(line: 814, column: 25, scope: !629)
!1120 = !DILocation(line: 814, column: 5, scope: !629)
!1121 = !DILocation(line: 814, column: 11, scope: !629)
!1122 = !DILocation(line: 814, column: 15, scope: !629)
!1123 = !DILocation(line: 815, column: 9, scope: !640)
!1124 = !DILocation(line: 815, column: 15, scope: !640)
!1125 = !DILocation(line: 815, column: 19, scope: !640)
!1126 = !DILocation(line: 815, column: 9, scope: !629)
!1127 = !DILocation(line: 816, column: 9, scope: !639)
!1128 = !DILocation(line: 816, column: 14, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !638, file: !366, discriminator: 1)
!1130 = !DILocation(line: 816, column: 24, scope: !638)
!1131 = !DILocation(line: 816, column: 54, scope: !638)
!1132 = !DILocation(line: 816, column: 41, scope: !638)
!1133 = !DILocation(line: 816, column: 69, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !638, file: !366, line: 816, column: 66)
!1135 = !DILocation(line: 816, column: 86, scope: !1134)
!1136 = !DILocation(line: 816, column: 66, scope: !1134)
!1137 = !DILocation(line: 816, column: 96, scope: !1134)
!1138 = !DILocation(line: 816, column: 66, scope: !638)
!1139 = !DILocation(line: 816, column: 66, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !638, file: !366, discriminator: 2)
!1141 = !DILocation(line: 816, column: 127, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1134, file: !366, discriminator: 3)
!1143 = !DILocation(line: 816, column: 145, scope: !1134)
!1144 = !DILocation(line: 816, column: 155, scope: !1134)
!1145 = !DILocation(line: 816, column: 180, scope: !1134)
!1146 = !DILocation(line: 816, column: 111, scope: !1134)
!1147 = !DILocation(line: 816, column: 199, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !639, file: !366, discriminator: 4)
!1149 = !DILocation(line: 816, column: 199, scope: !638)
!1150 = !DILocation(line: 816, column: 199, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !638, file: !366, discriminator: 5)
!1152 = !DILocation(line: 817, column: 16, scope: !639)
!1153 = !DILocation(line: 817, column: 9, scope: !639)
!1154 = !DILocation(line: 820, column: 24, scope: !629)
!1155 = !DILocation(line: 820, column: 12, scope: !629)
!1156 = !DILocation(line: 820, column: 5, scope: !629)
!1157 = !DILocation(line: 821, column: 1, scope: !629)
!1158 = !DILocation(line: 993, column: 32, scope: !641)
!1159 = !DILocation(line: 995, column: 5, scope: !641)
!1160 = !DILocation(line: 995, column: 10, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !647, file: !366, discriminator: 1)
!1162 = !DILocation(line: 995, column: 20, scope: !647)
!1163 = !DILocation(line: 995, column: 43, scope: !647)
!1164 = !DILocation(line: 995, column: 49, scope: !647)
!1165 = !{!1166, !770, i64 16}
!1166 = !{!"", !832, i64 0, !770, i64 16}
!1167 = !DILocation(line: 995, column: 30, scope: !647)
!1168 = !DILocation(line: 995, column: 62, scope: !651)
!1169 = !DILocation(line: 995, column: 70, scope: !651)
!1170 = !DILocation(line: 995, column: 62, scope: !647)
!1171 = !DILocation(line: 995, column: 88, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !650, file: !366, discriminator: 2)
!1173 = !DILocation(line: 995, column: 94, scope: !650)
!1174 = !DILocation(line: 995, column: 102, scope: !650)
!1175 = !DILocation(line: 995, column: 116, scope: !650)
!1176 = !DILocation(line: 995, column: 121, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !649, file: !366, discriminator: 4)
!1178 = !DILocation(line: 995, column: 131, scope: !649)
!1179 = !DILocation(line: 995, column: 161, scope: !649)
!1180 = !DILocation(line: 995, column: 179, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !649, file: !366, line: 995, column: 176)
!1182 = !DILocation(line: 995, column: 196, scope: !1181)
!1183 = !DILocation(line: 995, column: 176, scope: !1181)
!1184 = !DILocation(line: 995, column: 206, scope: !1181)
!1185 = !DILocation(line: 995, column: 176, scope: !649)
!1186 = !DILocation(line: 995, column: 176, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !649, file: !366, discriminator: 5)
!1188 = !DILocation(line: 995, column: 237, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1181, file: !366, discriminator: 6)
!1190 = !DILocation(line: 995, column: 255, scope: !1181)
!1191 = !DILocation(line: 995, column: 265, scope: !1181)
!1192 = !DILocation(line: 995, column: 290, scope: !1181)
!1193 = !DILocation(line: 995, column: 221, scope: !1181)
!1194 = !DILocation(line: 995, column: 309, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !650, file: !366, discriminator: 7)
!1196 = !DILocation(line: 995, column: 309, scope: !649)
!1197 = !DILocation(line: 995, column: 309, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !649, file: !366, discriminator: 8)
!1199 = !DILocation(line: 995, column: 322, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !650, file: !366, discriminator: 9)
!1201 = !DILocation(line: 995, column: 324, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1203, file: !366, discriminator: 10)
!1203 = !DILexicalBlockFile(scope: !641, file: !366, discriminator: 3)
!1204 = !DILocation(line: 995, column: 324, scope: !647)
!1205 = !DILocation(line: 996, column: 19, scope: !641)
!1206 = !DILocation(line: 996, column: 7, scope: !641)
!1207 = !DILocation(line: 996, column: 27, scope: !641)
!1208 = !DILocation(line: 996, column: 37, scope: !641)
!1209 = !DILocation(line: 996, column: 45, scope: !641)
!1210 = !DILocation(line: 996, column: 5, scope: !641)
!1211 = !DILocation(line: 997, column: 1, scope: !641)
!1212 = !DILocation(line: 986, column: 33, scope: !668)
!1213 = !DILocation(line: 986, column: 49, scope: !668)
!1214 = !DILocation(line: 986, column: 62, scope: !668)
!1215 = !DILocation(line: 988, column: 5, scope: !668)
!1216 = !DILocation(line: 988, column: 14, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !677, file: !366, discriminator: 1)
!1218 = !DILocation(line: 988, column: 20, scope: !677)
!1219 = !DILocation(line: 988, column: 14, scope: !677)
!1220 = !DILocation(line: 988, column: 14, scope: !678)
!1221 = !DILocation(line: 988, column: 30, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !676, file: !366, discriminator: 2)
!1223 = !DILocation(line: 988, column: 34, scope: !676)
!1224 = !DILocation(line: 988, column: 41, scope: !676)
!1225 = !DILocation(line: 988, column: 60, scope: !676)
!1226 = !DILocation(line: 988, column: 66, scope: !676)
!1227 = !DILocation(line: 988, column: 47, scope: !676)
!1228 = !DILocation(line: 988, column: 75, scope: !676)
!1229 = !DILocation(line: 988, column: 85, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !676, file: !366, line: 988, column: 85)
!1231 = !DILocation(line: 988, column: 85, scope: !676)
!1232 = !DILocation(line: 988, column: 98, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1230, file: !366, discriminator: 4)
!1234 = !DILocation(line: 988, column: 91, scope: !1230)
!1235 = !DILocation(line: 988, column: 104, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !677, file: !366, discriminator: 5)
!1237 = !DILocation(line: 988, column: 104, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !366, discriminator: 7)
!1239 = !DILexicalBlockFile(scope: !677, file: !366, discriminator: 6)
!1240 = !DILocation(line: 988, column: 104, scope: !676)
!1241 = !DILocation(line: 988, column: 106, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1243, file: !366, discriminator: 8)
!1243 = !DILexicalBlockFile(scope: !678, file: !366, discriminator: 3)
!1244 = !DILocation(line: 989, column: 5, scope: !668)
!1245 = !DILocation(line: 990, column: 1, scope: !668)
!1246 = !DILocation(line: 41, column: 19, scope: !435)
!1247 = !DILocation(line: 41, column: 32, scope: !435)
!1248 = !DILocation(line: 43, column: 5, scope: !435)
!1249 = !DILocation(line: 43, column: 11, scope: !435)
!1250 = !DILocation(line: 44, column: 5, scope: !435)
!1251 = !DILocation(line: 44, column: 17, scope: !435)
!1252 = !DILocation(line: 45, column: 5, scope: !435)
!1253 = !DILocation(line: 45, column: 16, scope: !435)
!1254 = !DILocation(line: 50, column: 15, scope: !435)
!1255 = !DILocation(line: 50, column: 21, scope: !435)
!1256 = !DILocation(line: 50, column: 27, scope: !435)
!1257 = !DILocation(line: 50, column: 33, scope: !435)
!1258 = !DILocation(line: 50, column: 25, scope: !435)
!1259 = !DILocation(line: 50, column: 13, scope: !435)
!1260 = !DILocation(line: 51, column: 14, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !435, file: !366, line: 51, column: 5)
!1262 = !DILocation(line: 51, column: 20, scope: !1261)
!1263 = !DILocation(line: 51, column: 26, scope: !1261)
!1264 = !DILocation(line: 51, column: 32, scope: !1261)
!1265 = !DILocation(line: 51, column: 24, scope: !1261)
!1266 = !DILocation(line: 51, column: 12, scope: !1261)
!1267 = !DILocation(line: 51, column: 10, scope: !1261)
!1268 = !DILocation(line: 52, column: 10, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !366, line: 51, column: 5)
!1270 = !DILocation(line: 52, column: 14, scope: !1269)
!1271 = !DILocation(line: 52, column: 12, scope: !1269)
!1272 = !DILocation(line: 52, column: 22, scope: !1269)
!1273 = !DILocation(line: 52, column: 26, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1269, file: !366, discriminator: 1)
!1275 = !DILocation(line: 52, column: 25, scope: !1269)
!1276 = !{!771, !771, i64 0}
!1277 = !DILocation(line: 52, column: 28, scope: !1269)
!1278 = !DILocation(line: 51, column: 5, scope: !1261)
!1279 = !DILocation(line: 51, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1261, file: !366, discriminator: 1)
!1281 = !DILocation(line: 53, column: 11, scope: !1269)
!1282 = !DILocation(line: 51, column: 5, scope: !1269)
!1283 = !DILocation(line: 56, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !435, file: !366, line: 56, column: 9)
!1285 = !DILocation(line: 56, column: 13, scope: !1284)
!1286 = !DILocation(line: 56, column: 11, scope: !1284)
!1287 = !DILocation(line: 56, column: 9, scope: !435)
!1288 = !DILocation(line: 57, column: 10, scope: !1284)
!1289 = !DILocation(line: 57, column: 9, scope: !1284)
!1290 = !DILocation(line: 60, column: 11, scope: !435)
!1291 = !DILocation(line: 60, column: 16, scope: !435)
!1292 = !DILocation(line: 60, column: 22, scope: !435)
!1293 = !DILocation(line: 60, column: 28, scope: !435)
!1294 = !DILocation(line: 60, column: 34, scope: !435)
!1295 = !DILocation(line: 60, column: 26, scope: !435)
!1296 = !DILocation(line: 60, column: 13, scope: !435)
!1297 = !DILocation(line: 60, column: 9, scope: !435)
!1298 = !DILocation(line: 61, column: 15, scope: !435)
!1299 = !DILocation(line: 61, column: 21, scope: !435)
!1300 = !DILocation(line: 61, column: 27, scope: !435)
!1301 = !DILocation(line: 61, column: 33, scope: !435)
!1302 = !DILocation(line: 61, column: 25, scope: !435)
!1303 = !DILocation(line: 61, column: 6, scope: !435)
!1304 = !DILocation(line: 61, column: 13, scope: !435)
!1305 = !DILocation(line: 65, column: 18, scope: !435)
!1306 = !DILocation(line: 65, column: 5, scope: !435)
!1307 = !DILocation(line: 65, column: 11, scope: !435)
!1308 = !DILocation(line: 65, column: 15, scope: !435)
!1309 = !DILocation(line: 67, column: 12, scope: !435)
!1310 = !DILocation(line: 68, column: 1, scope: !435)
!1311 = !DILocation(line: 67, column: 5, scope: !435)
!1312 = !DILocation(line: 185, column: 28, scope: !445)
!1313 = !DILocation(line: 187, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !445, file: !366, line: 187, column: 9)
!1315 = !DILocation(line: 187, column: 17, scope: !1314)
!1316 = !DILocation(line: 187, column: 21, scope: !1314)
!1317 = !DILocation(line: 187, column: 9, scope: !445)
!1318 = !DILocation(line: 187, column: 54, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !366, discriminator: 1)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !366, line: 187, column: 36)
!1321 = !DILocation(line: 187, column: 38, scope: !1320)
!1322 = !DILocation(line: 187, column: 106, scope: !1320)
!1323 = !DILocation(line: 188, column: 71, scope: !445)
!1324 = !DILocation(line: 188, column: 5, scope: !445)
!1325 = !DILocation(line: 189, column: 1, scope: !445)
!1326 = !DILocation(line: 656, column: 24, scope: !448)
!1327 = !DILocation(line: 658, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !448, file: !366, line: 658, column: 9)
!1329 = !DILocation(line: 658, column: 15, scope: !1328)
!1330 = !DILocation(line: 658, column: 19, scope: !1328)
!1331 = !DILocation(line: 658, column: 9, scope: !448)
!1332 = !DILocation(line: 659, column: 20, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !366, line: 658, column: 34)
!1334 = !DILocation(line: 659, column: 26, scope: !1333)
!1335 = !DILocation(line: 659, column: 9, scope: !1333)
!1336 = !DILocation(line: 660, column: 9, scope: !1333)
!1337 = !DILocation(line: 660, column: 15, scope: !1333)
!1338 = !DILocation(line: 660, column: 19, scope: !1333)
!1339 = !DILocation(line: 661, column: 5, scope: !1333)
!1340 = !DILocation(line: 662, column: 58, scope: !448)
!1341 = !DILocation(line: 662, column: 5, scope: !448)
!1342 = !DILocation(line: 195, column: 24, scope: !451)
!1343 = !DILocation(line: 197, column: 10, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !451, file: !366, line: 197, column: 9)
!1345 = !DILocation(line: 197, column: 17, scope: !1344)
!1346 = !DILocation(line: 197, column: 21, scope: !1344)
!1347 = !DILocation(line: 197, column: 9, scope: !451)
!1348 = !DILocation(line: 197, column: 54, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !366, discriminator: 1)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !366, line: 197, column: 36)
!1351 = !DILocation(line: 197, column: 38, scope: !1350)
!1352 = !DILocation(line: 197, column: 106, scope: !1350)
!1353 = !DILocation(line: 198, column: 58, scope: !451)
!1354 = !DILocation(line: 198, column: 5, scope: !451)
!1355 = !DILocation(line: 199, column: 1, scope: !451)
!1356 = !DILocation(line: 244, column: 25, scope: !454)
!1357 = !DILocation(line: 246, column: 10, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !454, file: !366, line: 246, column: 9)
!1359 = !DILocation(line: 246, column: 17, scope: !1358)
!1360 = !DILocation(line: 246, column: 21, scope: !1358)
!1361 = !DILocation(line: 246, column: 9, scope: !454)
!1362 = !DILocation(line: 246, column: 54, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1364, file: !366, discriminator: 1)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !366, line: 246, column: 36)
!1365 = !DILocation(line: 246, column: 38, scope: !1364)
!1366 = !DILocation(line: 246, column: 106, scope: !1364)
!1367 = !DILocation(line: 247, column: 72, scope: !454)
!1368 = !DILocation(line: 247, column: 5, scope: !454)
!1369 = !DILocation(line: 248, column: 1, scope: !454)
!1370 = !DILocation(line: 254, column: 23, scope: !457)
!1371 = !DILocation(line: 256, column: 10, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !457, file: !366, line: 256, column: 9)
!1373 = !DILocation(line: 256, column: 17, scope: !1372)
!1374 = !DILocation(line: 256, column: 21, scope: !1372)
!1375 = !DILocation(line: 256, column: 9, scope: !457)
!1376 = !DILocation(line: 256, column: 54, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !366, discriminator: 1)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !366, line: 256, column: 36)
!1379 = !DILocation(line: 256, column: 38, scope: !1378)
!1380 = !DILocation(line: 256, column: 106, scope: !1378)
!1381 = !DILocation(line: 257, column: 31, scope: !457)
!1382 = !DILocation(line: 257, column: 37, scope: !457)
!1383 = !DILocation(line: 257, column: 12, scope: !457)
!1384 = !DILocation(line: 257, column: 5, scope: !457)
!1385 = !DILocation(line: 258, column: 1, scope: !457)
!1386 = !DILocation(line: 594, column: 24, scope: !460)
!1387 = !DILocation(line: 594, column: 40, scope: !460)
!1388 = !DILocation(line: 596, column: 5, scope: !460)
!1389 = !DILocation(line: 596, column: 16, scope: !460)
!1390 = !DILocation(line: 597, column: 5, scope: !460)
!1391 = !DILocation(line: 597, column: 15, scope: !460)
!1392 = !DILocation(line: 598, column: 5, scope: !460)
!1393 = !DILocation(line: 598, column: 15, scope: !460)
!1394 = !DILocation(line: 600, column: 10, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !460, file: !366, line: 600, column: 9)
!1396 = !DILocation(line: 600, column: 17, scope: !1395)
!1397 = !DILocation(line: 600, column: 21, scope: !1395)
!1398 = !DILocation(line: 600, column: 9, scope: !460)
!1399 = !DILocation(line: 600, column: 54, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !366, discriminator: 1)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !366, line: 600, column: 36)
!1402 = !DILocation(line: 600, column: 38, scope: !1401)
!1403 = !DILocation(line: 600, column: 106, scope: !1401)
!1404 = !DILocation(line: 601, column: 10, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !460, file: !366, line: 601, column: 9)
!1406 = !DILocation(line: 601, column: 17, scope: !1405)
!1407 = !DILocation(line: 601, column: 25, scope: !1405)
!1408 = !DILocation(line: 601, column: 9, scope: !460)
!1409 = !DILocation(line: 601, column: 48, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !366, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !366, line: 601, column: 30)
!1412 = !DILocation(line: 601, column: 32, scope: !1411)
!1413 = !DILocation(line: 601, column: 123, scope: !1411)
!1414 = !DILocation(line: 603, column: 28, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !460, file: !366, line: 603, column: 9)
!1416 = !DILocation(line: 603, column: 9, scope: !1415)
!1417 = !DILocation(line: 603, column: 49, scope: !1415)
!1418 = !DILocation(line: 603, column: 9, scope: !460)
!1419 = !DILocation(line: 604, column: 9, scope: !1415)
!1420 = !DILocation(line: 606, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !460, file: !366, line: 606, column: 9)
!1422 = !{!1423, !790, i64 16}
!1423 = !{!"bufferinfo", !770, i64 0, !770, i64 8, !790, i64 16, !790, i64 24, !890, i64 32, !890, i64 36, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72}
!1424 = !DILocation(line: 606, column: 17, scope: !1421)
!1425 = !DILocation(line: 606, column: 9, scope: !460)
!1426 = !DILocation(line: 607, column: 25, scope: !1421)
!1427 = !DILocation(line: 607, column: 35, scope: !1421)
!1428 = !{!1423, !770, i64 0}
!1429 = !DILocation(line: 607, column: 44, scope: !1421)
!1430 = !DILocation(line: 607, column: 13, scope: !1421)
!1431 = !DILocation(line: 607, column: 11, scope: !1421)
!1432 = !DILocation(line: 607, column: 9, scope: !1421)
!1433 = !DILocation(line: 608, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !460, file: !366, line: 608, column: 9)
!1435 = !DILocation(line: 608, column: 11, scope: !1434)
!1436 = !DILocation(line: 608, column: 9, scope: !460)
!1437 = !DILocation(line: 609, column: 37, scope: !1434)
!1438 = !DILocation(line: 609, column: 18, scope: !1434)
!1439 = !DILocation(line: 609, column: 16, scope: !1434)
!1440 = !DILocation(line: 609, column: 9, scope: !1434)
!1441 = !DILocation(line: 611, column: 5, scope: !460)
!1442 = !DILocation(line: 612, column: 12, scope: !460)
!1443 = !DILocation(line: 612, column: 5, scope: !460)
!1444 = !DILocation(line: 613, column: 1, scope: !460)
!1445 = !DILocation(line: 623, column: 29, scope: !484)
!1446 = !DILocation(line: 623, column: 45, scope: !484)
!1447 = !DILocation(line: 625, column: 5, scope: !484)
!1448 = !DILocation(line: 625, column: 15, scope: !484)
!1449 = !DILocation(line: 625, column: 20, scope: !484)
!1450 = !DILocation(line: 626, column: 5, scope: !484)
!1451 = !DILocation(line: 626, column: 15, scope: !484)
!1452 = !DILocation(line: 628, column: 10, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !484, file: !366, line: 628, column: 9)
!1454 = !DILocation(line: 628, column: 17, scope: !1453)
!1455 = !DILocation(line: 628, column: 21, scope: !1453)
!1456 = !DILocation(line: 628, column: 9, scope: !484)
!1457 = !DILocation(line: 628, column: 54, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !366, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !366, line: 628, column: 36)
!1460 = !DILocation(line: 628, column: 38, scope: !1459)
!1461 = !DILocation(line: 628, column: 106, scope: !1459)
!1462 = !DILocation(line: 630, column: 27, scope: !484)
!1463 = !DILocation(line: 630, column: 10, scope: !484)
!1464 = !DILocation(line: 630, column: 8, scope: !484)
!1465 = !DILocation(line: 631, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !484, file: !366, line: 631, column: 9)
!1467 = !DILocation(line: 631, column: 12, scope: !1466)
!1468 = !DILocation(line: 631, column: 9, scope: !484)
!1469 = !DILocation(line: 632, column: 9, scope: !1466)
!1470 = !DILocation(line: 634, column: 5, scope: !484)
!1471 = !DILocation(line: 634, column: 32, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !366, discriminator: 2)
!1473 = !DILexicalBlockFile(scope: !484, file: !366, discriminator: 1)
!1474 = !DILocation(line: 634, column: 20, scope: !484)
!1475 = !DILocation(line: 634, column: 18, scope: !484)
!1476 = !DILocation(line: 634, column: 37, scope: !484)
!1477 = !DILocation(line: 635, column: 29, scope: !493)
!1478 = !DILocation(line: 635, column: 35, scope: !493)
!1479 = !DILocation(line: 635, column: 15, scope: !493)
!1480 = !DILocation(line: 635, column: 13, scope: !493)
!1481 = !DILocation(line: 636, column: 9, scope: !493)
!1482 = !DILocation(line: 636, column: 14, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !492, file: !366, discriminator: 1)
!1484 = !DILocation(line: 636, column: 24, scope: !492)
!1485 = !DILocation(line: 636, column: 54, scope: !492)
!1486 = !DILocation(line: 636, column: 69, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !492, file: !366, line: 636, column: 66)
!1488 = !DILocation(line: 636, column: 86, scope: !1487)
!1489 = !DILocation(line: 636, column: 66, scope: !1487)
!1490 = !DILocation(line: 636, column: 96, scope: !1487)
!1491 = !DILocation(line: 636, column: 66, scope: !492)
!1492 = !DILocation(line: 636, column: 66, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !492, file: !366, discriminator: 2)
!1494 = !DILocation(line: 636, column: 127, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1487, file: !366, discriminator: 3)
!1496 = !DILocation(line: 636, column: 145, scope: !1487)
!1497 = !DILocation(line: 636, column: 155, scope: !1487)
!1498 = !DILocation(line: 636, column: 180, scope: !1487)
!1499 = !DILocation(line: 636, column: 111, scope: !1487)
!1500 = !DILocation(line: 636, column: 199, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !493, file: !366, discriminator: 4)
!1502 = !DILocation(line: 636, column: 199, scope: !492)
!1503 = !DILocation(line: 636, column: 199, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !492, file: !366, discriminator: 5)
!1505 = !DILocation(line: 637, column: 13, scope: !497)
!1506 = !DILocation(line: 637, column: 17, scope: !497)
!1507 = !DILocation(line: 637, column: 13, scope: !493)
!1508 = !DILocation(line: 638, column: 13, scope: !496)
!1509 = !DILocation(line: 638, column: 18, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !495, file: !366, discriminator: 1)
!1511 = !DILocation(line: 638, column: 28, scope: !495)
!1512 = !DILocation(line: 638, column: 58, scope: !495)
!1513 = !DILocation(line: 638, column: 71, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !495, file: !366, line: 638, column: 68)
!1515 = !DILocation(line: 638, column: 88, scope: !1514)
!1516 = !DILocation(line: 638, column: 68, scope: !1514)
!1517 = !DILocation(line: 638, column: 98, scope: !1514)
!1518 = !DILocation(line: 638, column: 68, scope: !495)
!1519 = !DILocation(line: 638, column: 68, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !495, file: !366, discriminator: 2)
!1521 = !DILocation(line: 638, column: 129, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1514, file: !366, discriminator: 3)
!1523 = !DILocation(line: 638, column: 147, scope: !1514)
!1524 = !DILocation(line: 638, column: 157, scope: !1514)
!1525 = !DILocation(line: 638, column: 182, scope: !1514)
!1526 = !DILocation(line: 638, column: 113, scope: !1514)
!1527 = !DILocation(line: 638, column: 201, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !496, file: !366, discriminator: 4)
!1529 = !DILocation(line: 638, column: 201, scope: !495)
!1530 = !DILocation(line: 638, column: 201, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !495, file: !366, discriminator: 5)
!1532 = !DILocation(line: 639, column: 13, scope: !496)
!1533 = !DILocation(line: 641, column: 9, scope: !493)
!1534 = !DILocation(line: 641, column: 14, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !499, file: !366, discriminator: 1)
!1536 = !DILocation(line: 641, column: 24, scope: !499)
!1537 = !DILocation(line: 641, column: 54, scope: !499)
!1538 = !DILocation(line: 641, column: 68, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !499, file: !366, line: 641, column: 65)
!1540 = !DILocation(line: 641, column: 85, scope: !1539)
!1541 = !DILocation(line: 641, column: 65, scope: !1539)
!1542 = !DILocation(line: 641, column: 95, scope: !1539)
!1543 = !DILocation(line: 641, column: 65, scope: !499)
!1544 = !DILocation(line: 641, column: 65, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !499, file: !366, discriminator: 2)
!1546 = !DILocation(line: 641, column: 126, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1539, file: !366, discriminator: 3)
!1548 = !DILocation(line: 641, column: 144, scope: !1539)
!1549 = !DILocation(line: 641, column: 154, scope: !1539)
!1550 = !DILocation(line: 641, column: 179, scope: !1539)
!1551 = !DILocation(line: 641, column: 110, scope: !1539)
!1552 = !DILocation(line: 641, column: 198, scope: !1501)
!1553 = !DILocation(line: 641, column: 198, scope: !499)
!1554 = !DILocation(line: 641, column: 198, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !499, file: !366, discriminator: 5)
!1556 = !DILocation(line: 643, column: 5, scope: !484)
!1557 = !DILocation(line: 643, column: 10, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 1)
!1559 = !DILocation(line: 643, column: 20, scope: !501)
!1560 = !DILocation(line: 643, column: 50, scope: !501)
!1561 = !DILocation(line: 643, column: 63, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !501, file: !366, line: 643, column: 60)
!1563 = !DILocation(line: 643, column: 80, scope: !1562)
!1564 = !DILocation(line: 643, column: 60, scope: !1562)
!1565 = !DILocation(line: 643, column: 90, scope: !1562)
!1566 = !DILocation(line: 643, column: 60, scope: !501)
!1567 = !DILocation(line: 643, column: 60, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 2)
!1569 = !DILocation(line: 643, column: 121, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1562, file: !366, discriminator: 3)
!1571 = !DILocation(line: 643, column: 139, scope: !1562)
!1572 = !DILocation(line: 643, column: 149, scope: !1562)
!1573 = !DILocation(line: 643, column: 174, scope: !1562)
!1574 = !DILocation(line: 643, column: 105, scope: !1562)
!1575 = !DILocation(line: 643, column: 193, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !484, file: !366, discriminator: 4)
!1577 = !DILocation(line: 643, column: 193, scope: !501)
!1578 = !DILocation(line: 643, column: 193, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 5)
!1580 = !DILocation(line: 646, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !484, file: !366, line: 646, column: 9)
!1582 = !DILocation(line: 646, column: 9, scope: !484)
!1583 = !DILocation(line: 647, column: 9, scope: !1581)
!1584 = !DILocation(line: 649, column: 58, scope: !484)
!1585 = !DILocation(line: 649, column: 5, scope: !484)
!1586 = !DILocation(line: 650, column: 1, scope: !484)
!1587 = !DILocation(line: 316, column: 24, scope: !502)
!1588 = !DILocation(line: 316, column: 40, scope: !502)
!1589 = !DILocation(line: 318, column: 5, scope: !502)
!1590 = !DILocation(line: 318, column: 15, scope: !502)
!1591 = !DILocation(line: 318, column: 21, scope: !502)
!1592 = !DILocation(line: 320, column: 27, scope: !502)
!1593 = !DILocation(line: 320, column: 11, scope: !502)
!1594 = !DILocation(line: 320, column: 9, scope: !502)
!1595 = !DILocation(line: 321, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !502, file: !366, line: 321, column: 9)
!1597 = !DILocation(line: 321, column: 13, scope: !1596)
!1598 = !DILocation(line: 321, column: 9, scope: !502)
!1599 = !DILocation(line: 322, column: 9, scope: !1596)
!1600 = !DILocation(line: 323, column: 24, scope: !502)
!1601 = !DILocation(line: 323, column: 30, scope: !502)
!1602 = !DILocation(line: 323, column: 11, scope: !502)
!1603 = !DILocation(line: 323, column: 9, scope: !502)
!1604 = !DILocation(line: 324, column: 5, scope: !502)
!1605 = !DILocation(line: 324, column: 10, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !509, file: !366, discriminator: 1)
!1607 = !DILocation(line: 324, column: 20, scope: !509)
!1608 = !DILocation(line: 324, column: 50, scope: !509)
!1609 = !DILocation(line: 324, column: 64, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !509, file: !366, line: 324, column: 61)
!1611 = !DILocation(line: 324, column: 81, scope: !1610)
!1612 = !DILocation(line: 324, column: 61, scope: !1610)
!1613 = !DILocation(line: 324, column: 91, scope: !1610)
!1614 = !DILocation(line: 324, column: 61, scope: !509)
!1615 = !DILocation(line: 324, column: 61, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !509, file: !366, discriminator: 2)
!1617 = !DILocation(line: 324, column: 122, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1610, file: !366, discriminator: 3)
!1619 = !DILocation(line: 324, column: 140, scope: !1610)
!1620 = !DILocation(line: 324, column: 150, scope: !1610)
!1621 = !DILocation(line: 324, column: 175, scope: !1610)
!1622 = !DILocation(line: 324, column: 106, scope: !1610)
!1623 = !DILocation(line: 324, column: 194, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !502, file: !366, discriminator: 4)
!1625 = !DILocation(line: 324, column: 194, scope: !509)
!1626 = !DILocation(line: 324, column: 194, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !509, file: !366, discriminator: 5)
!1628 = !DILocation(line: 325, column: 12, scope: !502)
!1629 = !DILocation(line: 325, column: 5, scope: !502)
!1630 = !DILocation(line: 326, column: 1, scope: !502)
!1631 = !DILocation(line: 440, column: 27, scope: !510)
!1632 = !DILocation(line: 440, column: 43, scope: !510)
!1633 = !DILocation(line: 442, column: 5, scope: !510)
!1634 = !DILocation(line: 442, column: 11, scope: !510)
!1635 = !DILocation(line: 443, column: 5, scope: !510)
!1636 = !DILocation(line: 443, column: 16, scope: !510)
!1637 = !DILocation(line: 443, column: 21, scope: !510)
!1638 = !DILocation(line: 445, column: 10, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !510, file: !366, line: 445, column: 9)
!1640 = !DILocation(line: 445, column: 17, scope: !1639)
!1641 = !DILocation(line: 445, column: 21, scope: !1639)
!1642 = !DILocation(line: 445, column: 9, scope: !510)
!1643 = !DILocation(line: 445, column: 54, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !366, discriminator: 1)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !366, line: 445, column: 36)
!1646 = !DILocation(line: 445, column: 38, scope: !1645)
!1647 = !DILocation(line: 445, column: 106, scope: !1645)
!1648 = !DILocation(line: 447, column: 32, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !510, file: !366, line: 447, column: 9)
!1650 = !DILocation(line: 447, column: 9, scope: !1649)
!1651 = !DILocation(line: 447, column: 59, scope: !1649)
!1652 = !DILocation(line: 447, column: 9, scope: !510)
!1653 = !DILocation(line: 448, column: 9, scope: !1649)
!1654 = !DILocation(line: 451, column: 9, scope: !510)
!1655 = !DILocation(line: 451, column: 15, scope: !510)
!1656 = !DILocation(line: 451, column: 29, scope: !510)
!1657 = !DILocation(line: 451, column: 35, scope: !510)
!1658 = !DILocation(line: 451, column: 27, scope: !510)
!1659 = !DILocation(line: 451, column: 7, scope: !510)
!1660 = !DILocation(line: 452, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !510, file: !366, line: 452, column: 9)
!1662 = !DILocation(line: 452, column: 15, scope: !1661)
!1663 = !DILocation(line: 452, column: 13, scope: !1661)
!1664 = !DILocation(line: 452, column: 9, scope: !510)
!1665 = !DILocation(line: 453, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !366, line: 452, column: 18)
!1667 = !DILocation(line: 453, column: 13, scope: !1666)
!1668 = !DILocation(line: 454, column: 13, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !366, line: 454, column: 13)
!1670 = !DILocation(line: 454, column: 17, scope: !1669)
!1671 = !DILocation(line: 454, column: 13, scope: !1666)
!1672 = !DILocation(line: 455, column: 17, scope: !1669)
!1673 = !DILocation(line: 455, column: 13, scope: !1669)
!1674 = !DILocation(line: 456, column: 5, scope: !1666)
!1675 = !DILocation(line: 458, column: 12, scope: !510)
!1676 = !DILocation(line: 458, column: 24, scope: !510)
!1677 = !DILocation(line: 458, column: 30, scope: !510)
!1678 = !DILocation(line: 458, column: 36, scope: !510)
!1679 = !DILocation(line: 458, column: 42, scope: !510)
!1680 = !DILocation(line: 458, column: 34, scope: !510)
!1681 = !DILocation(line: 458, column: 47, scope: !510)
!1682 = !DILocation(line: 458, column: 5, scope: !510)
!1683 = !DILocation(line: 461, column: 18, scope: !510)
!1684 = !DILocation(line: 461, column: 5, scope: !510)
!1685 = !DILocation(line: 461, column: 11, scope: !510)
!1686 = !DILocation(line: 461, column: 15, scope: !510)
!1687 = !DILocation(line: 463, column: 31, scope: !510)
!1688 = !DILocation(line: 463, column: 12, scope: !510)
!1689 = !DILocation(line: 463, column: 5, scope: !510)
!1690 = !DILocation(line: 464, column: 1, scope: !510)
!1691 = !DILocation(line: 336, column: 27, scope: !517)
!1692 = !DILocation(line: 336, column: 43, scope: !517)
!1693 = !DILocation(line: 338, column: 5, scope: !517)
!1694 = !DILocation(line: 338, column: 16, scope: !517)
!1695 = !DILocation(line: 338, column: 22, scope: !517)
!1696 = !DILocation(line: 339, column: 5, scope: !517)
!1697 = !DILocation(line: 339, column: 11, scope: !517)
!1698 = !DILocation(line: 340, column: 5, scope: !517)
!1699 = !DILocation(line: 340, column: 15, scope: !517)
!1700 = !DILocation(line: 342, column: 10, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !517, file: !366, line: 342, column: 9)
!1702 = !DILocation(line: 342, column: 17, scope: !1701)
!1703 = !DILocation(line: 342, column: 21, scope: !1701)
!1704 = !DILocation(line: 342, column: 9, scope: !517)
!1705 = !DILocation(line: 342, column: 54, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1707, file: !366, discriminator: 1)
!1707 = distinct !DILexicalBlock(scope: !1701, file: !366, line: 342, column: 36)
!1708 = !DILocation(line: 342, column: 38, scope: !1707)
!1709 = !DILocation(line: 342, column: 106, scope: !1707)
!1710 = !DILocation(line: 344, column: 27, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !517, file: !366, line: 344, column: 9)
!1712 = !DILocation(line: 344, column: 10, scope: !1711)
!1713 = !DILocation(line: 344, column: 9, scope: !517)
!1714 = !DILocation(line: 345, column: 9, scope: !1711)
!1715 = !DILocation(line: 347, column: 26, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !517, file: !366, line: 347, column: 9)
!1717 = !DILocation(line: 347, column: 33, scope: !1716)
!1718 = !DILocation(line: 347, column: 44, scope: !1716)
!1719 = !{!888, !790, i64 168}
!1720 = !DILocation(line: 347, column: 53, scope: !1716)
!1721 = !DILocation(line: 347, column: 70, scope: !1716)
!1722 = !DILocation(line: 347, column: 9, scope: !517)
!1723 = !DILocation(line: 348, column: 33, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1716, file: !366, line: 347, column: 77)
!1725 = !DILocation(line: 348, column: 16, scope: !1724)
!1726 = !DILocation(line: 348, column: 14, scope: !1724)
!1727 = !DILocation(line: 349, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !366, line: 349, column: 13)
!1729 = !DILocation(line: 349, column: 18, scope: !1728)
!1730 = !DILocation(line: 349, column: 24, scope: !1728)
!1731 = !DILocation(line: 349, column: 27, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1728, file: !366, discriminator: 1)
!1733 = !DILocation(line: 349, column: 13, scope: !1724)
!1734 = !DILocation(line: 350, column: 13, scope: !1728)
!1735 = !DILocation(line: 351, column: 5, scope: !1724)
!1736 = !DILocation(line: 352, column: 14, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1716, file: !366, line: 352, column: 14)
!1738 = !DILocation(line: 352, column: 18, scope: !1737)
!1739 = !DILocation(line: 352, column: 14, scope: !1716)
!1740 = !DILocation(line: 354, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !366, line: 352, column: 40)
!1742 = !DILocation(line: 355, column: 5, scope: !1741)
!1743 = !DILocation(line: 357, column: 22, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !366, line: 356, column: 10)
!1745 = !DILocation(line: 358, column: 36, scope: !1744)
!1746 = !DILocation(line: 358, column: 43, scope: !1744)
!1747 = !DILocation(line: 358, column: 53, scope: !1744)
!1748 = !{!888, !770, i64 24}
!1749 = !DILocation(line: 357, column: 9, scope: !1744)
!1750 = !DILocation(line: 359, column: 9, scope: !1744)
!1751 = !DILocation(line: 362, column: 18, scope: !517)
!1752 = !DILocation(line: 362, column: 9, scope: !517)
!1753 = !DILocation(line: 362, column: 7, scope: !517)
!1754 = !DILocation(line: 364, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !517, file: !366, line: 364, column: 9)
!1756 = !DILocation(line: 364, column: 14, scope: !1755)
!1757 = !DILocation(line: 364, column: 19, scope: !1755)
!1758 = !DILocation(line: 364, column: 22, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1755, file: !366, discriminator: 1)
!1760 = !DILocation(line: 364, column: 29, scope: !1755)
!1761 = !DILocation(line: 364, column: 27, scope: !1755)
!1762 = !DILocation(line: 364, column: 9, scope: !517)
!1763 = !DILocation(line: 365, column: 16, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1755, file: !366, line: 364, column: 32)
!1765 = !DILocation(line: 365, column: 20, scope: !1764)
!1766 = !DILocation(line: 365, column: 18, scope: !1764)
!1767 = !DILocation(line: 365, column: 14, scope: !1764)
!1768 = !DILocation(line: 366, column: 14, scope: !1764)
!1769 = !DILocation(line: 366, column: 11, scope: !1764)
!1770 = !DILocation(line: 367, column: 22, scope: !1764)
!1771 = !DILocation(line: 367, column: 9, scope: !1764)
!1772 = !DILocation(line: 367, column: 15, scope: !1764)
!1773 = !DILocation(line: 367, column: 19, scope: !1764)
!1774 = !DILocation(line: 368, column: 5, scope: !1764)
!1775 = !DILocation(line: 370, column: 38, scope: !517)
!1776 = !DILocation(line: 370, column: 46, scope: !517)
!1777 = !DILocation(line: 370, column: 12, scope: !517)
!1778 = !DILocation(line: 370, column: 5, scope: !517)
!1779 = !DILocation(line: 371, column: 1, scope: !517)
!1780 = !DILocation(line: 381, column: 28, scope: !525)
!1781 = !DILocation(line: 381, column: 44, scope: !525)
!1782 = !DILocation(line: 383, column: 5, scope: !525)
!1783 = !DILocation(line: 383, column: 16, scope: !525)
!1784 = !DILocation(line: 383, column: 25, scope: !525)
!1785 = !DILocation(line: 383, column: 31, scope: !525)
!1786 = !DILocation(line: 384, column: 5, scope: !525)
!1787 = !DILocation(line: 384, column: 15, scope: !525)
!1788 = !DILocation(line: 384, column: 24, scope: !525)
!1789 = !DILocation(line: 385, column: 5, scope: !525)
!1790 = !DILocation(line: 385, column: 11, scope: !525)
!1791 = !DILocation(line: 386, column: 5, scope: !525)
!1792 = !DILocation(line: 386, column: 15, scope: !525)
!1793 = !DILocation(line: 388, column: 10, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !525, file: !366, line: 388, column: 9)
!1795 = !DILocation(line: 388, column: 17, scope: !1794)
!1796 = !DILocation(line: 388, column: 21, scope: !1794)
!1797 = !DILocation(line: 388, column: 9, scope: !525)
!1798 = !DILocation(line: 388, column: 54, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !366, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !366, line: 388, column: 36)
!1801 = !DILocation(line: 388, column: 38, scope: !1800)
!1802 = !DILocation(line: 388, column: 106, scope: !1800)
!1803 = !DILocation(line: 390, column: 27, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !525, file: !366, line: 390, column: 9)
!1805 = !DILocation(line: 390, column: 10, scope: !1804)
!1806 = !DILocation(line: 390, column: 9, scope: !525)
!1807 = !DILocation(line: 391, column: 9, scope: !1804)
!1808 = !DILocation(line: 393, column: 26, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !525, file: !366, line: 393, column: 9)
!1810 = !DILocation(line: 393, column: 33, scope: !1809)
!1811 = !DILocation(line: 393, column: 44, scope: !1809)
!1812 = !DILocation(line: 393, column: 53, scope: !1809)
!1813 = !DILocation(line: 393, column: 70, scope: !1809)
!1814 = !DILocation(line: 393, column: 9, scope: !525)
!1815 = !DILocation(line: 394, column: 36, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1809, file: !366, line: 393, column: 77)
!1817 = !DILocation(line: 394, column: 19, scope: !1816)
!1818 = !DILocation(line: 394, column: 17, scope: !1816)
!1819 = !DILocation(line: 395, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !366, line: 395, column: 13)
!1821 = !DILocation(line: 395, column: 21, scope: !1820)
!1822 = !DILocation(line: 395, column: 27, scope: !1820)
!1823 = !DILocation(line: 395, column: 30, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1820, file: !366, discriminator: 1)
!1825 = !DILocation(line: 395, column: 13, scope: !1816)
!1826 = !DILocation(line: 396, column: 13, scope: !1820)
!1827 = !DILocation(line: 397, column: 5, scope: !1816)
!1828 = !DILocation(line: 398, column: 14, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1809, file: !366, line: 398, column: 14)
!1830 = !DILocation(line: 398, column: 18, scope: !1829)
!1831 = !DILocation(line: 398, column: 14, scope: !1809)
!1832 = !DILocation(line: 400, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !366, line: 398, column: 40)
!1834 = !DILocation(line: 401, column: 5, scope: !1833)
!1835 = !DILocation(line: 403, column: 22, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !366, line: 402, column: 10)
!1837 = !DILocation(line: 404, column: 36, scope: !1836)
!1838 = !DILocation(line: 404, column: 43, scope: !1836)
!1839 = !DILocation(line: 404, column: 53, scope: !1836)
!1840 = !DILocation(line: 403, column: 9, scope: !1836)
!1841 = !DILocation(line: 405, column: 9, scope: !1836)
!1842 = !DILocation(line: 408, column: 10, scope: !525)
!1843 = !DILocation(line: 409, column: 14, scope: !525)
!1844 = !DILocation(line: 409, column: 12, scope: !525)
!1845 = !DILocation(line: 410, column: 10, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !525, file: !366, line: 410, column: 9)
!1847 = !DILocation(line: 410, column: 9, scope: !525)
!1848 = !DILocation(line: 411, column: 9, scope: !1846)
!1849 = !DILocation(line: 413, column: 5, scope: !525)
!1850 = !DILocation(line: 413, column: 26, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !366, discriminator: 2)
!1852 = !DILexicalBlockFile(scope: !525, file: !366, discriminator: 1)
!1853 = !DILocation(line: 413, column: 17, scope: !525)
!1854 = !DILocation(line: 413, column: 15, scope: !525)
!1855 = !DILocation(line: 413, column: 42, scope: !525)
!1856 = !DILocation(line: 414, column: 42, scope: !540)
!1857 = !DILocation(line: 414, column: 50, scope: !540)
!1858 = !DILocation(line: 414, column: 16, scope: !540)
!1859 = !DILocation(line: 414, column: 14, scope: !540)
!1860 = !DILocation(line: 415, column: 14, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !540, file: !366, line: 415, column: 13)
!1862 = !DILocation(line: 415, column: 13, scope: !540)
!1863 = !DILocation(line: 416, column: 13, scope: !1861)
!1864 = !DILocation(line: 417, column: 27, scope: !539)
!1865 = !DILocation(line: 417, column: 35, scope: !539)
!1866 = !DILocation(line: 417, column: 13, scope: !539)
!1867 = !DILocation(line: 417, column: 41, scope: !539)
!1868 = !DILocation(line: 417, column: 13, scope: !540)
!1869 = !DILocation(line: 418, column: 13, scope: !538)
!1870 = !DILocation(line: 418, column: 18, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 1)
!1872 = !DILocation(line: 418, column: 28, scope: !537)
!1873 = !DILocation(line: 418, column: 58, scope: !537)
!1874 = !DILocation(line: 418, column: 73, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !537, file: !366, line: 418, column: 70)
!1876 = !DILocation(line: 418, column: 90, scope: !1875)
!1877 = !DILocation(line: 418, column: 70, scope: !1875)
!1878 = !DILocation(line: 418, column: 100, scope: !1875)
!1879 = !DILocation(line: 418, column: 70, scope: !537)
!1880 = !DILocation(line: 418, column: 70, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 2)
!1882 = !DILocation(line: 418, column: 131, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1875, file: !366, discriminator: 3)
!1884 = !DILocation(line: 418, column: 149, scope: !1875)
!1885 = !DILocation(line: 418, column: 159, scope: !1875)
!1886 = !DILocation(line: 418, column: 184, scope: !1875)
!1887 = !DILocation(line: 418, column: 115, scope: !1875)
!1888 = !DILocation(line: 418, column: 203, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !538, file: !366, discriminator: 4)
!1890 = !DILocation(line: 418, column: 203, scope: !537)
!1891 = !DILocation(line: 418, column: 203, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 5)
!1893 = !DILocation(line: 419, column: 13, scope: !538)
!1894 = !DILocation(line: 421, column: 9, scope: !540)
!1895 = !DILocation(line: 421, column: 14, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !542, file: !366, discriminator: 1)
!1897 = !DILocation(line: 421, column: 24, scope: !542)
!1898 = !DILocation(line: 421, column: 54, scope: !542)
!1899 = !DILocation(line: 421, column: 69, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !542, file: !366, line: 421, column: 66)
!1901 = !DILocation(line: 421, column: 86, scope: !1900)
!1902 = !DILocation(line: 421, column: 66, scope: !1900)
!1903 = !DILocation(line: 421, column: 96, scope: !1900)
!1904 = !DILocation(line: 421, column: 66, scope: !542)
!1905 = !DILocation(line: 421, column: 66, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !542, file: !366, discriminator: 2)
!1907 = !DILocation(line: 421, column: 127, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1900, file: !366, discriminator: 3)
!1909 = !DILocation(line: 421, column: 145, scope: !1900)
!1910 = !DILocation(line: 421, column: 155, scope: !1900)
!1911 = !DILocation(line: 421, column: 180, scope: !1900)
!1912 = !DILocation(line: 421, column: 111, scope: !1900)
!1913 = !DILocation(line: 421, column: 199, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !540, file: !366, discriminator: 4)
!1915 = !DILocation(line: 421, column: 199, scope: !542)
!1916 = !DILocation(line: 421, column: 199, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !542, file: !366, discriminator: 5)
!1918 = !DILocation(line: 422, column: 17, scope: !540)
!1919 = !DILocation(line: 422, column: 14, scope: !540)
!1920 = !DILocation(line: 423, column: 13, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !540, file: !366, line: 423, column: 13)
!1922 = !DILocation(line: 423, column: 21, scope: !1921)
!1923 = !DILocation(line: 423, column: 25, scope: !1921)
!1924 = !DILocation(line: 423, column: 28, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1921, file: !366, discriminator: 1)
!1926 = !DILocation(line: 423, column: 36, scope: !1921)
!1927 = !DILocation(line: 423, column: 33, scope: !1921)
!1928 = !DILocation(line: 423, column: 13, scope: !540)
!1929 = !DILocation(line: 424, column: 13, scope: !1921)
!1930 = !DILocation(line: 426, column: 12, scope: !525)
!1931 = !DILocation(line: 426, column: 5, scope: !525)
!1932 = !DILocation(line: 429, column: 5, scope: !525)
!1933 = !DILocation(line: 429, column: 10, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !544, file: !366, discriminator: 1)
!1935 = !DILocation(line: 429, column: 20, scope: !544)
!1936 = !DILocation(line: 429, column: 50, scope: !544)
!1937 = !DILocation(line: 429, column: 67, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !544, file: !366, line: 429, column: 64)
!1939 = !DILocation(line: 429, column: 84, scope: !1938)
!1940 = !DILocation(line: 429, column: 64, scope: !1938)
!1941 = !DILocation(line: 429, column: 94, scope: !1938)
!1942 = !DILocation(line: 429, column: 64, scope: !544)
!1943 = !DILocation(line: 429, column: 64, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !544, file: !366, discriminator: 2)
!1945 = !DILocation(line: 429, column: 125, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1938, file: !366, discriminator: 3)
!1947 = !DILocation(line: 429, column: 143, scope: !1938)
!1948 = !DILocation(line: 429, column: 153, scope: !1938)
!1949 = !DILocation(line: 429, column: 178, scope: !1938)
!1950 = !DILocation(line: 429, column: 109, scope: !1938)
!1951 = !DILocation(line: 429, column: 197, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !525, file: !366, discriminator: 4)
!1953 = !DILocation(line: 429, column: 197, scope: !544)
!1954 = !DILocation(line: 429, column: 197, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !544, file: !366, discriminator: 5)
!1956 = !DILocation(line: 430, column: 5, scope: !525)
!1957 = !DILocation(line: 431, column: 1, scope: !525)
!1958 = !DILocation(line: 267, column: 23, scope: !545)
!1959 = !DILocation(line: 267, column: 39, scope: !545)
!1960 = !DILocation(line: 269, column: 5, scope: !545)
!1961 = !DILocation(line: 269, column: 16, scope: !545)
!1962 = !DILocation(line: 269, column: 22, scope: !545)
!1963 = !DILocation(line: 270, column: 5, scope: !545)
!1964 = !DILocation(line: 270, column: 11, scope: !545)
!1965 = !DILocation(line: 271, column: 5, scope: !545)
!1966 = !DILocation(line: 271, column: 15, scope: !545)
!1967 = !DILocation(line: 273, column: 10, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !545, file: !366, line: 273, column: 9)
!1969 = !DILocation(line: 273, column: 17, scope: !1968)
!1970 = !DILocation(line: 273, column: 21, scope: !1968)
!1971 = !DILocation(line: 273, column: 9, scope: !545)
!1972 = !DILocation(line: 273, column: 54, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1974, file: !366, discriminator: 1)
!1974 = distinct !DILexicalBlock(scope: !1968, file: !366, line: 273, column: 36)
!1975 = !DILocation(line: 273, column: 38, scope: !1974)
!1976 = !DILocation(line: 273, column: 106, scope: !1974)
!1977 = !DILocation(line: 275, column: 27, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !545, file: !366, line: 275, column: 9)
!1979 = !DILocation(line: 275, column: 10, scope: !1978)
!1980 = !DILocation(line: 275, column: 9, scope: !545)
!1981 = !DILocation(line: 276, column: 9, scope: !1978)
!1982 = !DILocation(line: 278, column: 26, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !545, file: !366, line: 278, column: 9)
!1984 = !DILocation(line: 278, column: 33, scope: !1983)
!1985 = !DILocation(line: 278, column: 44, scope: !1983)
!1986 = !DILocation(line: 278, column: 53, scope: !1983)
!1987 = !DILocation(line: 278, column: 70, scope: !1983)
!1988 = !DILocation(line: 278, column: 9, scope: !545)
!1989 = !DILocation(line: 279, column: 33, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1983, file: !366, line: 278, column: 77)
!1991 = !DILocation(line: 279, column: 16, scope: !1990)
!1992 = !DILocation(line: 279, column: 14, scope: !1990)
!1993 = !DILocation(line: 280, column: 13, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !366, line: 280, column: 13)
!1995 = !DILocation(line: 280, column: 18, scope: !1994)
!1996 = !DILocation(line: 280, column: 24, scope: !1994)
!1997 = !DILocation(line: 280, column: 27, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1994, file: !366, discriminator: 1)
!1999 = !DILocation(line: 280, column: 13, scope: !1990)
!2000 = !DILocation(line: 281, column: 13, scope: !1994)
!2001 = !DILocation(line: 282, column: 5, scope: !1990)
!2002 = !DILocation(line: 283, column: 14, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1983, file: !366, line: 283, column: 14)
!2004 = !DILocation(line: 283, column: 18, scope: !2003)
!2005 = !DILocation(line: 283, column: 14, scope: !1983)
!2006 = !DILocation(line: 285, column: 14, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !366, line: 283, column: 40)
!2008 = !DILocation(line: 286, column: 5, scope: !2007)
!2009 = !DILocation(line: 288, column: 22, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2003, file: !366, line: 287, column: 10)
!2011 = !DILocation(line: 289, column: 36, scope: !2010)
!2012 = !DILocation(line: 289, column: 43, scope: !2010)
!2013 = !DILocation(line: 289, column: 53, scope: !2010)
!2014 = !DILocation(line: 288, column: 9, scope: !2010)
!2015 = !DILocation(line: 290, column: 9, scope: !2010)
!2016 = !DILocation(line: 294, column: 9, scope: !545)
!2017 = !DILocation(line: 294, column: 15, scope: !545)
!2018 = !DILocation(line: 294, column: 29, scope: !545)
!2019 = !DILocation(line: 294, column: 35, scope: !545)
!2020 = !DILocation(line: 294, column: 27, scope: !545)
!2021 = !DILocation(line: 294, column: 7, scope: !545)
!2022 = !DILocation(line: 295, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !545, file: !366, line: 295, column: 9)
!2024 = !DILocation(line: 295, column: 14, scope: !2023)
!2025 = !DILocation(line: 295, column: 18, scope: !2023)
!2026 = !DILocation(line: 295, column: 21, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2023, file: !366, discriminator: 1)
!2028 = !DILocation(line: 295, column: 28, scope: !2023)
!2029 = !DILocation(line: 295, column: 26, scope: !2023)
!2030 = !DILocation(line: 295, column: 9, scope: !545)
!2031 = !DILocation(line: 296, column: 16, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2023, file: !366, line: 295, column: 31)
!2033 = !DILocation(line: 296, column: 14, scope: !2032)
!2034 = !DILocation(line: 297, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !366, line: 297, column: 13)
!2036 = !DILocation(line: 297, column: 18, scope: !2035)
!2037 = !DILocation(line: 297, column: 13, scope: !2032)
!2038 = !DILocation(line: 298, column: 18, scope: !2035)
!2039 = !DILocation(line: 298, column: 13, scope: !2035)
!2040 = !DILocation(line: 299, column: 5, scope: !2032)
!2041 = !DILocation(line: 302, column: 14, scope: !545)
!2042 = !DILocation(line: 302, column: 20, scope: !545)
!2043 = !DILocation(line: 302, column: 26, scope: !545)
!2044 = !DILocation(line: 302, column: 32, scope: !545)
!2045 = !DILocation(line: 302, column: 24, scope: !545)
!2046 = !DILocation(line: 302, column: 12, scope: !545)
!2047 = !DILocation(line: 303, column: 18, scope: !545)
!2048 = !DILocation(line: 303, column: 5, scope: !545)
!2049 = !DILocation(line: 303, column: 11, scope: !545)
!2050 = !DILocation(line: 303, column: 15, scope: !545)
!2051 = !DILocation(line: 305, column: 38, scope: !545)
!2052 = !DILocation(line: 305, column: 46, scope: !545)
!2053 = !DILocation(line: 305, column: 12, scope: !545)
!2054 = !DILocation(line: 305, column: 5, scope: !545)
!2055 = !DILocation(line: 306, column: 1, scope: !545)
!2056 = !DILocation(line: 207, column: 28, scope: !553)
!2057 = !DILocation(line: 209, column: 5, scope: !553)
!2058 = !DILocation(line: 209, column: 19, scope: !553)
!2059 = !DILocation(line: 210, column: 5, scope: !553)
!2060 = !DILocation(line: 210, column: 17, scope: !553)
!2061 = !DILocation(line: 211, column: 5, scope: !553)
!2062 = !DILocation(line: 211, column: 15, scope: !553)
!2063 = !DILocation(line: 213, column: 10, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !553, file: !366, line: 213, column: 9)
!2065 = !DILocation(line: 213, column: 17, scope: !2064)
!2066 = !DILocation(line: 213, column: 21, scope: !2064)
!2067 = !DILocation(line: 213, column: 9, scope: !553)
!2068 = !DILocation(line: 213, column: 54, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !366, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !366, line: 213, column: 36)
!2071 = !DILocation(line: 213, column: 38, scope: !2070)
!2072 = !DILocation(line: 213, column: 106, scope: !2070)
!2073 = !DILocation(line: 215, column: 26, scope: !553)
!2074 = !DILocation(line: 215, column: 32, scope: !553)
!2075 = !DILocation(line: 215, column: 41, scope: !553)
!2076 = !DILocation(line: 215, column: 11, scope: !553)
!2077 = !DILocation(line: 215, column: 9, scope: !553)
!2078 = !DILocation(line: 216, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !553, file: !366, line: 216, column: 9)
!2080 = !DILocation(line: 216, column: 13, scope: !2079)
!2081 = !DILocation(line: 216, column: 9, scope: !553)
!2082 = !DILocation(line: 217, column: 9, scope: !2079)
!2083 = !DILocation(line: 218, column: 21, scope: !553)
!2084 = !DILocation(line: 218, column: 8, scope: !553)
!2085 = !DILocation(line: 218, column: 29, scope: !553)
!2086 = !DILocation(line: 218, column: 38, scope: !553)
!2087 = !DILocation(line: 219, column: 19, scope: !553)
!2088 = !DILocation(line: 219, column: 5, scope: !553)
!2089 = !DILocation(line: 219, column: 10, scope: !553)
!2090 = !DILocation(line: 219, column: 17, scope: !553)
!2091 = !DILocation(line: 220, column: 49, scope: !553)
!2092 = !DILocation(line: 220, column: 36, scope: !553)
!2093 = !DILocation(line: 220, column: 12, scope: !553)
!2094 = !DILocation(line: 220, column: 10, scope: !553)
!2095 = !DILocation(line: 221, column: 5, scope: !553)
!2096 = !DILocation(line: 221, column: 10, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !562, file: !366, discriminator: 1)
!2098 = !DILocation(line: 221, column: 20, scope: !562)
!2099 = !DILocation(line: 221, column: 50, scope: !562)
!2100 = !DILocation(line: 221, column: 37, scope: !562)
!2101 = !DILocation(line: 221, column: 64, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !562, file: !366, line: 221, column: 61)
!2103 = !DILocation(line: 221, column: 81, scope: !2102)
!2104 = !DILocation(line: 221, column: 61, scope: !2102)
!2105 = !DILocation(line: 221, column: 91, scope: !2102)
!2106 = !DILocation(line: 221, column: 61, scope: !562)
!2107 = !DILocation(line: 221, column: 61, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !562, file: !366, discriminator: 2)
!2109 = !DILocation(line: 221, column: 122, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2102, file: !366, discriminator: 3)
!2111 = !DILocation(line: 221, column: 140, scope: !2102)
!2112 = !DILocation(line: 221, column: 150, scope: !2102)
!2113 = !DILocation(line: 221, column: 175, scope: !2102)
!2114 = !DILocation(line: 221, column: 106, scope: !2102)
!2115 = !DILocation(line: 221, column: 194, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !553, file: !366, discriminator: 4)
!2117 = !DILocation(line: 221, column: 194, scope: !562)
!2118 = !DILocation(line: 221, column: 194, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !562, file: !366, discriminator: 5)
!2120 = !DILocation(line: 222, column: 12, scope: !553)
!2121 = !DILocation(line: 222, column: 5, scope: !553)
!2122 = !DILocation(line: 223, column: 1, scope: !553)
!2123 = !DILocation(line: 231, column: 27, scope: !563)
!2124 = !DILocation(line: 233, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !563, file: !366, line: 233, column: 9)
!2126 = !DILocation(line: 233, column: 17, scope: !2125)
!2127 = !DILocation(line: 233, column: 21, scope: !2125)
!2128 = !DILocation(line: 233, column: 9, scope: !563)
!2129 = !DILocation(line: 233, column: 54, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !366, discriminator: 1)
!2131 = distinct !DILexicalBlock(scope: !2125, file: !366, line: 233, column: 36)
!2132 = !DILocation(line: 233, column: 38, scope: !2131)
!2133 = !DILocation(line: 233, column: 106, scope: !2131)
!2134 = !DILocation(line: 234, column: 38, scope: !563)
!2135 = !DILocation(line: 234, column: 44, scope: !563)
!2136 = !DILocation(line: 234, column: 49, scope: !563)
!2137 = !DILocation(line: 234, column: 55, scope: !563)
!2138 = !DILocation(line: 234, column: 12, scope: !563)
!2139 = !DILocation(line: 234, column: 5, scope: !563)
!2140 = !DILocation(line: 235, column: 1, scope: !563)
!2141 = !DILocation(line: 540, column: 23, scope: !566)
!2142 = !DILocation(line: 540, column: 39, scope: !566)
!2143 = !DILocation(line: 542, column: 5, scope: !566)
!2144 = !DILocation(line: 542, column: 16, scope: !566)
!2145 = !DILocation(line: 543, column: 5, scope: !566)
!2146 = !DILocation(line: 543, column: 9, scope: !566)
!2147 = !DILocation(line: 545, column: 10, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !566, file: !366, line: 545, column: 9)
!2149 = !DILocation(line: 545, column: 17, scope: !2148)
!2150 = !DILocation(line: 545, column: 21, scope: !2148)
!2151 = !DILocation(line: 545, column: 9, scope: !566)
!2152 = !DILocation(line: 545, column: 54, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !366, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !366, line: 545, column: 36)
!2155 = !DILocation(line: 545, column: 38, scope: !2154)
!2156 = !DILocation(line: 545, column: 106, scope: !2154)
!2157 = !DILocation(line: 547, column: 27, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !566, file: !366, line: 547, column: 9)
!2159 = !DILocation(line: 547, column: 10, scope: !2158)
!2160 = !DILocation(line: 547, column: 9, scope: !566)
!2161 = !DILocation(line: 548, column: 9, scope: !2158)
!2162 = !DILocation(line: 550, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !566, file: !366, line: 550, column: 9)
!2164 = !DILocation(line: 550, column: 13, scope: !2163)
!2165 = !DILocation(line: 550, column: 17, scope: !2163)
!2166 = !DILocation(line: 550, column: 20, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2163, file: !366, discriminator: 1)
!2168 = !DILocation(line: 550, column: 25, scope: !2163)
!2169 = !DILocation(line: 550, column: 9, scope: !566)
!2170 = !DILocation(line: 551, column: 22, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2163, file: !366, line: 550, column: 31)
!2172 = !DILocation(line: 552, column: 49, scope: !2171)
!2173 = !DILocation(line: 551, column: 9, scope: !2171)
!2174 = !DILocation(line: 553, column: 9, scope: !2171)
!2175 = !DILocation(line: 559, column: 9, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !566, file: !366, line: 559, column: 9)
!2177 = !DILocation(line: 559, column: 14, scope: !2176)
!2178 = !DILocation(line: 559, column: 9, scope: !566)
!2179 = !DILocation(line: 560, column: 13, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !366, line: 560, column: 13)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !366, line: 559, column: 20)
!2182 = !DILocation(line: 560, column: 53, scope: !2180)
!2183 = !DILocation(line: 560, column: 59, scope: !2180)
!2184 = !DILocation(line: 560, column: 51, scope: !2180)
!2185 = !DILocation(line: 560, column: 17, scope: !2180)
!2186 = !DILocation(line: 560, column: 13, scope: !2181)
!2187 = !DILocation(line: 561, column: 29, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !366, line: 560, column: 64)
!2189 = !DILocation(line: 561, column: 13, scope: !2188)
!2190 = !DILocation(line: 563, column: 13, scope: !2188)
!2191 = !DILocation(line: 565, column: 16, scope: !2181)
!2192 = !DILocation(line: 565, column: 22, scope: !2181)
!2193 = !DILocation(line: 565, column: 13, scope: !2181)
!2194 = !DILocation(line: 566, column: 5, scope: !2181)
!2195 = !DILocation(line: 567, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2176, file: !366, line: 567, column: 14)
!2197 = !DILocation(line: 567, column: 19, scope: !2196)
!2198 = !DILocation(line: 567, column: 14, scope: !2176)
!2199 = !DILocation(line: 568, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !366, line: 568, column: 13)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !366, line: 567, column: 25)
!2202 = !DILocation(line: 568, column: 53, scope: !2200)
!2203 = !DILocation(line: 568, column: 59, scope: !2200)
!2204 = !DILocation(line: 568, column: 51, scope: !2200)
!2205 = !DILocation(line: 568, column: 17, scope: !2200)
!2206 = !DILocation(line: 568, column: 13, scope: !2201)
!2207 = !DILocation(line: 569, column: 29, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !366, line: 568, column: 72)
!2209 = !DILocation(line: 569, column: 13, scope: !2208)
!2210 = !DILocation(line: 571, column: 13, scope: !2208)
!2211 = !DILocation(line: 573, column: 16, scope: !2201)
!2212 = !DILocation(line: 573, column: 22, scope: !2201)
!2213 = !DILocation(line: 573, column: 13, scope: !2201)
!2214 = !DILocation(line: 574, column: 5, scope: !2201)
!2215 = !DILocation(line: 575, column: 14, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2196, file: !366, line: 575, column: 14)
!2217 = !DILocation(line: 575, column: 19, scope: !2216)
!2218 = !DILocation(line: 575, column: 14, scope: !2196)
!2219 = !DILocation(line: 576, column: 22, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !366, line: 575, column: 25)
!2221 = !DILocation(line: 577, column: 66, scope: !2220)
!2222 = !DILocation(line: 576, column: 9, scope: !2220)
!2223 = !DILocation(line: 578, column: 9, scope: !2220)
!2224 = !DILocation(line: 581, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !566, file: !366, line: 581, column: 9)
!2226 = !DILocation(line: 581, column: 13, scope: !2225)
!2227 = !DILocation(line: 581, column: 9, scope: !566)
!2228 = !DILocation(line: 582, column: 13, scope: !2225)
!2229 = !DILocation(line: 582, column: 9, scope: !2225)
!2230 = !DILocation(line: 583, column: 17, scope: !566)
!2231 = !DILocation(line: 583, column: 5, scope: !566)
!2232 = !DILocation(line: 583, column: 11, scope: !566)
!2233 = !DILocation(line: 583, column: 15, scope: !566)
!2234 = !DILocation(line: 585, column: 31, scope: !566)
!2235 = !DILocation(line: 585, column: 37, scope: !566)
!2236 = !DILocation(line: 585, column: 12, scope: !566)
!2237 = !DILocation(line: 585, column: 5, scope: !566)
!2238 = !DILocation(line: 586, column: 1, scope: !566)
!2239 = !DILocation(line: 473, column: 27, scope: !572)
!2240 = !DILocation(line: 473, column: 43, scope: !572)
!2241 = !DILocation(line: 475, column: 5, scope: !572)
!2242 = !DILocation(line: 475, column: 16, scope: !572)
!2243 = !DILocation(line: 476, column: 5, scope: !572)
!2244 = !DILocation(line: 476, column: 15, scope: !572)
!2245 = !DILocation(line: 478, column: 10, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !572, file: !366, line: 478, column: 9)
!2247 = !DILocation(line: 478, column: 17, scope: !2246)
!2248 = !DILocation(line: 478, column: 21, scope: !2246)
!2249 = !DILocation(line: 478, column: 9, scope: !572)
!2250 = !DILocation(line: 478, column: 54, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2252, file: !366, discriminator: 1)
!2252 = distinct !DILexicalBlock(scope: !2246, file: !366, line: 478, column: 36)
!2253 = !DILocation(line: 478, column: 38, scope: !2252)
!2254 = !DILocation(line: 478, column: 106, scope: !2252)
!2255 = !DILocation(line: 479, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !572, file: !366, line: 479, column: 9)
!2257 = !DILocation(line: 479, column: 17, scope: !2256)
!2258 = !DILocation(line: 479, column: 25, scope: !2256)
!2259 = !DILocation(line: 479, column: 9, scope: !572)
!2260 = !DILocation(line: 479, column: 48, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2262, file: !366, discriminator: 1)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !366, line: 479, column: 30)
!2263 = !DILocation(line: 479, column: 32, scope: !2262)
!2264 = !DILocation(line: 479, column: 123, scope: !2262)
!2265 = !DILocation(line: 481, column: 27, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !572, file: !366, line: 481, column: 9)
!2267 = !DILocation(line: 481, column: 10, scope: !2266)
!2268 = !DILocation(line: 481, column: 9, scope: !572)
!2269 = !DILocation(line: 482, column: 9, scope: !2266)
!2270 = !DILocation(line: 484, column: 26, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !572, file: !366, line: 484, column: 9)
!2272 = !DILocation(line: 484, column: 33, scope: !2271)
!2273 = !DILocation(line: 484, column: 44, scope: !2271)
!2274 = !DILocation(line: 484, column: 53, scope: !2271)
!2275 = !DILocation(line: 484, column: 70, scope: !2271)
!2276 = !DILocation(line: 484, column: 9, scope: !572)
!2277 = !DILocation(line: 485, column: 33, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2271, file: !366, line: 484, column: 77)
!2279 = !DILocation(line: 485, column: 16, scope: !2278)
!2280 = !DILocation(line: 485, column: 14, scope: !2278)
!2281 = !DILocation(line: 486, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !366, line: 486, column: 13)
!2283 = !DILocation(line: 486, column: 18, scope: !2282)
!2284 = !DILocation(line: 486, column: 24, scope: !2282)
!2285 = !DILocation(line: 486, column: 27, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2282, file: !366, discriminator: 1)
!2287 = !DILocation(line: 486, column: 13, scope: !2278)
!2288 = !DILocation(line: 487, column: 13, scope: !2282)
!2289 = !DILocation(line: 488, column: 5, scope: !2278)
!2290 = !DILocation(line: 489, column: 14, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2271, file: !366, line: 489, column: 14)
!2292 = !DILocation(line: 489, column: 18, scope: !2291)
!2293 = !DILocation(line: 489, column: 14, scope: !2271)
!2294 = !DILocation(line: 491, column: 16, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !366, line: 489, column: 40)
!2296 = !DILocation(line: 491, column: 22, scope: !2295)
!2297 = !DILocation(line: 491, column: 14, scope: !2295)
!2298 = !DILocation(line: 492, column: 5, scope: !2295)
!2299 = !DILocation(line: 494, column: 22, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2291, file: !366, line: 493, column: 10)
!2301 = !DILocation(line: 495, column: 36, scope: !2300)
!2302 = !DILocation(line: 495, column: 43, scope: !2300)
!2303 = !DILocation(line: 495, column: 53, scope: !2300)
!2304 = !DILocation(line: 494, column: 9, scope: !2300)
!2305 = !DILocation(line: 496, column: 9, scope: !2300)
!2306 = !DILocation(line: 499, column: 9, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !572, file: !366, line: 499, column: 9)
!2308 = !DILocation(line: 499, column: 14, scope: !2307)
!2309 = !DILocation(line: 499, column: 9, scope: !572)
!2310 = !DILocation(line: 500, column: 22, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !366, line: 499, column: 19)
!2312 = !DILocation(line: 501, column: 49, scope: !2311)
!2313 = !DILocation(line: 500, column: 9, scope: !2311)
!2314 = !DILocation(line: 502, column: 9, scope: !2311)
!2315 = !DILocation(line: 505, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !572, file: !366, line: 505, column: 9)
!2317 = !DILocation(line: 505, column: 16, scope: !2316)
!2318 = !DILocation(line: 505, column: 22, scope: !2316)
!2319 = !DILocation(line: 505, column: 14, scope: !2316)
!2320 = !DILocation(line: 505, column: 9, scope: !572)
!2321 = !DILocation(line: 506, column: 29, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2316, file: !366, line: 505, column: 35)
!2323 = !DILocation(line: 506, column: 9, scope: !2322)
!2324 = !DILocation(line: 506, column: 15, scope: !2322)
!2325 = !DILocation(line: 506, column: 27, scope: !2322)
!2326 = !DILocation(line: 507, column: 27, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !366, line: 507, column: 13)
!2328 = !DILocation(line: 507, column: 33, scope: !2327)
!2329 = !DILocation(line: 507, column: 13, scope: !2327)
!2330 = !DILocation(line: 507, column: 39, scope: !2327)
!2331 = !DILocation(line: 507, column: 13, scope: !2322)
!2332 = !DILocation(line: 508, column: 13, scope: !2327)
!2333 = !DILocation(line: 509, column: 5, scope: !2322)
!2334 = !DILocation(line: 511, column: 31, scope: !572)
!2335 = !DILocation(line: 511, column: 12, scope: !572)
!2336 = !DILocation(line: 511, column: 5, scope: !572)
!2337 = !DILocation(line: 512, column: 1, scope: !572)
!2338 = !DILocation(line: 681, column: 27, scope: !578)
!2339 = !DILocation(line: 683, column: 5, scope: !578)
!2340 = !DILocation(line: 683, column: 15, scope: !578)
!2341 = !DILocation(line: 683, column: 44, scope: !578)
!2342 = !DILocation(line: 683, column: 27, scope: !578)
!2343 = !DILocation(line: 684, column: 5, scope: !578)
!2344 = !DILocation(line: 684, column: 15, scope: !578)
!2345 = !DILocation(line: 685, column: 5, scope: !578)
!2346 = !DILocation(line: 685, column: 15, scope: !578)
!2347 = !DILocation(line: 687, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !578, file: !366, line: 687, column: 9)
!2349 = !DILocation(line: 687, column: 19, scope: !2348)
!2350 = !DILocation(line: 687, column: 9, scope: !578)
!2351 = !DILocation(line: 688, column: 9, scope: !2348)
!2352 = !DILocation(line: 689, column: 9, scope: !589)
!2353 = !DILocation(line: 689, column: 15, scope: !589)
!2354 = !DILocation(line: 689, column: 20, scope: !589)
!2355 = !DILocation(line: 689, column: 9, scope: !578)
!2356 = !DILocation(line: 690, column: 55, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !589, file: !366, line: 689, column: 35)
!2358 = !DILocation(line: 691, column: 14, scope: !2357)
!2359 = !DILocation(line: 692, column: 5, scope: !2357)
!2360 = !DILocation(line: 694, column: 28, scope: !588)
!2361 = !DILocation(line: 694, column: 34, scope: !588)
!2362 = !DILocation(line: 694, column: 16, scope: !588)
!2363 = !DILocation(line: 694, column: 14, scope: !588)
!2364 = !DILocation(line: 695, column: 13, scope: !587)
!2365 = !DILocation(line: 695, column: 18, scope: !587)
!2366 = !DILocation(line: 695, column: 13, scope: !588)
!2367 = !DILocation(line: 696, column: 13, scope: !586)
!2368 = !DILocation(line: 696, column: 18, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !585, file: !366, discriminator: 1)
!2370 = !DILocation(line: 696, column: 28, scope: !585)
!2371 = !DILocation(line: 696, column: 58, scope: !585)
!2372 = !DILocation(line: 696, column: 78, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !585, file: !366, line: 696, column: 75)
!2374 = !DILocation(line: 696, column: 95, scope: !2373)
!2375 = !DILocation(line: 696, column: 75, scope: !2373)
!2376 = !DILocation(line: 696, column: 105, scope: !2373)
!2377 = !DILocation(line: 696, column: 75, scope: !585)
!2378 = !DILocation(line: 696, column: 75, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !585, file: !366, discriminator: 2)
!2380 = !DILocation(line: 696, column: 136, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2373, file: !366, discriminator: 3)
!2382 = !DILocation(line: 696, column: 154, scope: !2373)
!2383 = !DILocation(line: 696, column: 164, scope: !2373)
!2384 = !DILocation(line: 696, column: 189, scope: !2373)
!2385 = !DILocation(line: 696, column: 120, scope: !2373)
!2386 = !DILocation(line: 696, column: 208, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !586, file: !366, discriminator: 4)
!2388 = !DILocation(line: 696, column: 208, scope: !585)
!2389 = !DILocation(line: 696, column: 208, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !585, file: !366, discriminator: 5)
!2391 = !DILocation(line: 697, column: 13, scope: !586)
!2392 = !DILocation(line: 701, column: 36, scope: !578)
!2393 = !DILocation(line: 701, column: 47, scope: !578)
!2394 = !DILocation(line: 701, column: 53, scope: !578)
!2395 = !DILocation(line: 701, column: 58, scope: !578)
!2396 = !DILocation(line: 701, column: 13, scope: !578)
!2397 = !DILocation(line: 701, column: 11, scope: !578)
!2398 = !DILocation(line: 702, column: 5, scope: !578)
!2399 = !DILocation(line: 702, column: 10, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !591, file: !366, discriminator: 1)
!2401 = !DILocation(line: 702, column: 20, scope: !591)
!2402 = !DILocation(line: 702, column: 50, scope: !591)
!2403 = !DILocation(line: 702, column: 70, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !591, file: !366, line: 702, column: 67)
!2405 = !DILocation(line: 702, column: 87, scope: !2404)
!2406 = !DILocation(line: 702, column: 67, scope: !2404)
!2407 = !DILocation(line: 702, column: 97, scope: !2404)
!2408 = !DILocation(line: 702, column: 67, scope: !591)
!2409 = !DILocation(line: 702, column: 67, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !591, file: !366, discriminator: 2)
!2411 = !DILocation(line: 702, column: 128, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2404, file: !366, discriminator: 3)
!2413 = !DILocation(line: 702, column: 146, scope: !2404)
!2414 = !DILocation(line: 702, column: 156, scope: !2404)
!2415 = !DILocation(line: 702, column: 181, scope: !2404)
!2416 = !DILocation(line: 702, column: 112, scope: !2404)
!2417 = !DILocation(line: 702, column: 200, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !578, file: !366, discriminator: 4)
!2419 = !DILocation(line: 702, column: 200, scope: !591)
!2420 = !DILocation(line: 702, column: 200, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !591, file: !366, discriminator: 5)
!2422 = !DILocation(line: 703, column: 12, scope: !578)
!2423 = !DILocation(line: 703, column: 5, scope: !578)
!2424 = !DILocation(line: 704, column: 1, scope: !578)
!2425 = !DILocation(line: 707, column: 27, scope: !592)
!2426 = !DILocation(line: 707, column: 43, scope: !592)
!2427 = !DILocation(line: 709, column: 5, scope: !592)
!2428 = !DILocation(line: 709, column: 15, scope: !592)
!2429 = !DILocation(line: 710, column: 5, scope: !592)
!2430 = !DILocation(line: 710, column: 15, scope: !592)
!2431 = !DILocation(line: 711, column: 5, scope: !592)
!2432 = !DILocation(line: 711, column: 15, scope: !592)
!2433 = !DILocation(line: 712, column: 5, scope: !592)
!2434 = !DILocation(line: 712, column: 16, scope: !592)
!2435 = !DILocation(line: 719, column: 27, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !592, file: !366, line: 719, column: 9)
!2437 = !DILocation(line: 719, column: 36, scope: !2436)
!2438 = !DILocation(line: 719, column: 47, scope: !2436)
!2439 = !DILocation(line: 719, column: 56, scope: !2436)
!2440 = !DILocation(line: 719, column: 73, scope: !2436)
!2441 = !DILocation(line: 719, column: 79, scope: !2436)
!2442 = !DILocation(line: 719, column: 99, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2436, file: !366, discriminator: 1)
!2444 = !DILocation(line: 719, column: 84, scope: !2436)
!2445 = !DILocation(line: 719, column: 108, scope: !2436)
!2446 = !{!889, !790, i64 16}
!2447 = !DILocation(line: 719, column: 117, scope: !2436)
!2448 = !DILocation(line: 719, column: 9, scope: !592)
!2449 = !DILocation(line: 720, column: 22, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2436, file: !366, line: 719, column: 122)
!2451 = !DILocation(line: 722, column: 36, scope: !2450)
!2452 = !DILocation(line: 722, column: 24, scope: !2450)
!2453 = !DILocation(line: 722, column: 44, scope: !2450)
!2454 = !DILocation(line: 722, column: 54, scope: !2450)
!2455 = !DILocation(line: 722, column: 77, scope: !2450)
!2456 = !DILocation(line: 722, column: 86, scope: !2450)
!2457 = !DILocation(line: 722, column: 96, scope: !2450)
!2458 = !DILocation(line: 720, column: 9, scope: !2450)
!2459 = !DILocation(line: 723, column: 9, scope: !2450)
!2460 = !DILocation(line: 725, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !592, file: !366, line: 725, column: 9)
!2462 = !DILocation(line: 725, column: 17, scope: !2461)
!2463 = !DILocation(line: 725, column: 25, scope: !2461)
!2464 = !DILocation(line: 725, column: 9, scope: !592)
!2465 = !DILocation(line: 725, column: 48, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2467, file: !366, discriminator: 1)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !366, line: 725, column: 30)
!2468 = !DILocation(line: 725, column: 32, scope: !2467)
!2469 = !DILocation(line: 725, column: 123, scope: !2467)
!2470 = !DILocation(line: 728, column: 5, scope: !592)
!2471 = !DILocation(line: 728, column: 11, scope: !592)
!2472 = !DILocation(line: 728, column: 23, scope: !592)
!2473 = !DILocation(line: 729, column: 5, scope: !592)
!2474 = !DILocation(line: 729, column: 11, scope: !592)
!2475 = !DILocation(line: 729, column: 15, scope: !592)
!2476 = !DILocation(line: 733, column: 28, scope: !592)
!2477 = !DILocation(line: 733, column: 54, scope: !592)
!2478 = !DILocation(line: 733, column: 36, scope: !592)
!2479 = !DILocation(line: 733, column: 63, scope: !592)
!2480 = !DILocation(line: 733, column: 35, scope: !592)
!2481 = !DILocation(line: 733, column: 14, scope: !592)
!2482 = !DILocation(line: 733, column: 12, scope: !592)
!2483 = !DILocation(line: 734, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !592, file: !366, line: 734, column: 9)
!2485 = !DILocation(line: 734, column: 16, scope: !2484)
!2486 = !DILocation(line: 734, column: 9, scope: !592)
!2487 = !DILocation(line: 735, column: 9, scope: !2484)
!2488 = !DILocation(line: 736, column: 5, scope: !592)
!2489 = !DILocation(line: 736, column: 10, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 1)
!2491 = !DILocation(line: 736, column: 20, scope: !601)
!2492 = !DILocation(line: 736, column: 50, scope: !601)
!2493 = !DILocation(line: 736, column: 67, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !601, file: !366, line: 736, column: 64)
!2495 = !DILocation(line: 736, column: 84, scope: !2494)
!2496 = !DILocation(line: 736, column: 64, scope: !2494)
!2497 = !DILocation(line: 736, column: 94, scope: !2494)
!2498 = !DILocation(line: 736, column: 64, scope: !601)
!2499 = !DILocation(line: 736, column: 64, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 2)
!2501 = !DILocation(line: 736, column: 125, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2494, file: !366, discriminator: 3)
!2503 = !DILocation(line: 736, column: 143, scope: !2494)
!2504 = !DILocation(line: 736, column: 153, scope: !2494)
!2505 = !DILocation(line: 736, column: 178, scope: !2494)
!2506 = !DILocation(line: 736, column: 109, scope: !2494)
!2507 = !DILocation(line: 736, column: 197, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !592, file: !366, discriminator: 4)
!2509 = !DILocation(line: 736, column: 197, scope: !601)
!2510 = !DILocation(line: 736, column: 197, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 5)
!2512 = !DILocation(line: 741, column: 40, scope: !592)
!2513 = !DILocation(line: 741, column: 22, scope: !592)
!2514 = !DILocation(line: 741, column: 49, scope: !592)
!2515 = !DILocation(line: 741, column: 21, scope: !592)
!2516 = !DILocation(line: 741, column: 18, scope: !592)
!2517 = !DILocation(line: 742, column: 27, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !592, file: !366, line: 742, column: 9)
!2519 = !DILocation(line: 742, column: 43, scope: !2518)
!2520 = !DILocation(line: 742, column: 54, scope: !2518)
!2521 = !DILocation(line: 742, column: 63, scope: !2518)
!2522 = !DILocation(line: 742, column: 80, scope: !2518)
!2523 = !DILocation(line: 742, column: 9, scope: !592)
!2524 = !DILocation(line: 743, column: 22, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2518, file: !366, line: 742, column: 87)
!2526 = !DILocation(line: 745, column: 36, scope: !2525)
!2527 = !DILocation(line: 745, column: 52, scope: !2525)
!2528 = !DILocation(line: 745, column: 62, scope: !2525)
!2529 = !DILocation(line: 743, column: 9, scope: !2525)
!2530 = !DILocation(line: 746, column: 9, scope: !2525)
!2531 = !DILocation(line: 748, column: 28, scope: !592)
!2532 = !DILocation(line: 748, column: 11, scope: !592)
!2533 = !DILocation(line: 748, column: 9, scope: !592)
!2534 = !DILocation(line: 749, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !592, file: !366, line: 749, column: 9)
!2536 = !DILocation(line: 749, column: 13, scope: !2535)
!2537 = !DILocation(line: 749, column: 19, scope: !2535)
!2538 = !DILocation(line: 749, column: 22, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2535, file: !366, discriminator: 1)
!2540 = !DILocation(line: 749, column: 9, scope: !592)
!2541 = !DILocation(line: 750, column: 9, scope: !2535)
!2542 = !DILocation(line: 751, column: 9, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !592, file: !366, line: 751, column: 9)
!2544 = !DILocation(line: 751, column: 13, scope: !2543)
!2545 = !DILocation(line: 751, column: 9, scope: !592)
!2546 = !DILocation(line: 752, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !366, line: 751, column: 18)
!2548 = !DILocation(line: 752, column: 9, scope: !2547)
!2549 = !DILocation(line: 754, column: 9, scope: !2547)
!2550 = !DILocation(line: 756, column: 17, scope: !592)
!2551 = !DILocation(line: 756, column: 5, scope: !592)
!2552 = !DILocation(line: 756, column: 11, scope: !592)
!2553 = !DILocation(line: 756, column: 15, scope: !592)
!2554 = !DILocation(line: 759, column: 32, scope: !592)
!2555 = !DILocation(line: 759, column: 14, scope: !592)
!2556 = !DILocation(line: 759, column: 41, scope: !592)
!2557 = !DILocation(line: 759, column: 13, scope: !592)
!2558 = !DILocation(line: 759, column: 10, scope: !592)
!2559 = !DILocation(line: 760, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !592, file: !366, line: 760, column: 9)
!2561 = !DILocation(line: 760, column: 14, scope: !2560)
!2562 = !DILocation(line: 760, column: 9, scope: !592)
!2563 = !DILocation(line: 761, column: 31, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !366, line: 761, column: 13)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !366, line: 760, column: 36)
!2566 = !DILocation(line: 761, column: 39, scope: !2564)
!2567 = !DILocation(line: 761, column: 50, scope: !2564)
!2568 = !DILocation(line: 761, column: 59, scope: !2564)
!2569 = !DILocation(line: 761, column: 76, scope: !2564)
!2570 = !DILocation(line: 761, column: 13, scope: !2565)
!2571 = !DILocation(line: 762, column: 26, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2564, file: !366, line: 761, column: 83)
!2573 = !DILocation(line: 764, column: 40, scope: !2572)
!2574 = !DILocation(line: 764, column: 48, scope: !2572)
!2575 = !DILocation(line: 764, column: 58, scope: !2572)
!2576 = !DILocation(line: 762, column: 13, scope: !2572)
!2577 = !DILocation(line: 765, column: 13, scope: !2572)
!2578 = !DILocation(line: 767, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2565, file: !366, line: 767, column: 13)
!2580 = !DILocation(line: 767, column: 19, scope: !2579)
!2581 = !DILocation(line: 767, column: 13, scope: !2565)
!2582 = !DILocation(line: 770, column: 31, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !366, line: 770, column: 17)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !366, line: 767, column: 25)
!2585 = !DILocation(line: 770, column: 37, scope: !2583)
!2586 = !DILocation(line: 770, column: 43, scope: !2583)
!2587 = !DILocation(line: 770, column: 17, scope: !2583)
!2588 = !DILocation(line: 770, column: 49, scope: !2583)
!2589 = !DILocation(line: 770, column: 17, scope: !2584)
!2590 = !DILocation(line: 771, column: 17, scope: !2583)
!2591 = !DILocation(line: 772, column: 9, scope: !2584)
!2592 = !DILocation(line: 774, column: 29, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2579, file: !366, line: 773, column: 14)
!2594 = !DILocation(line: 774, column: 37, scope: !2593)
!2595 = !DILocation(line: 774, column: 46, scope: !2593)
!2596 = !DILocation(line: 775, column: 26, scope: !2593)
!2597 = !DILocation(line: 775, column: 13, scope: !2593)
!2598 = !DILocation(line: 775, column: 19, scope: !2593)
!2599 = !DILocation(line: 775, column: 24, scope: !2593)
!2600 = !DILocation(line: 777, column: 5, scope: !2565)
!2601 = !DILocation(line: 779, column: 58, scope: !592)
!2602 = !DILocation(line: 779, column: 5, scope: !592)
!2603 = !DILocation(line: 780, column: 1, scope: !592)
!2604 = !DILocation(line: 850, column: 25, scope: !602)
!2605 = !DILocation(line: 850, column: 37, scope: !602)
!2606 = !DILocation(line: 852, column: 5, scope: !602)
!2607 = !DILocation(line: 852, column: 16, scope: !602)
!2608 = !DILocation(line: 854, column: 9, scope: !602)
!2609 = !DILocation(line: 855, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !602, file: !366, line: 855, column: 9)
!2611 = !DILocation(line: 855, column: 15, scope: !2610)
!2612 = !DILocation(line: 855, column: 9, scope: !602)
!2613 = !DILocation(line: 856, column: 16, scope: !2610)
!2614 = !DILocation(line: 856, column: 22, scope: !2610)
!2615 = !{!831, !790, i64 40}
!2616 = !DILocation(line: 856, column: 13, scope: !2610)
!2617 = !DILocation(line: 856, column: 9, scope: !2610)
!2618 = !DILocation(line: 857, column: 31, scope: !602)
!2619 = !DILocation(line: 857, column: 12, scope: !602)
!2620 = !DILocation(line: 858, column: 1, scope: !602)
!2621 = !DILocation(line: 857, column: 5, scope: !602)
!2622 = !DILocation(line: 126, column: 22, scope: !469)
!2623 = !DILocation(line: 126, column: 40, scope: !469)
!2624 = !DILocation(line: 126, column: 58, scope: !469)
!2625 = !DILocation(line: 132, column: 17, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !469, file: !366, line: 132, column: 9)
!2627 = !DILocation(line: 132, column: 23, scope: !2626)
!2628 = !DILocation(line: 132, column: 29, scope: !2626)
!2629 = !DILocation(line: 132, column: 27, scope: !2626)
!2630 = !DILocation(line: 132, column: 35, scope: !2626)
!2631 = !DILocation(line: 132, column: 41, scope: !2626)
!2632 = !DILocation(line: 132, column: 33, scope: !2626)
!2633 = !DILocation(line: 132, column: 9, scope: !469)
!2634 = !DILocation(line: 133, column: 27, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !366, line: 133, column: 13)
!2636 = distinct !DILexicalBlock(scope: !2626, file: !366, line: 132, column: 51)
!2637 = !DILocation(line: 133, column: 41, scope: !2635)
!2638 = !DILocation(line: 133, column: 47, scope: !2635)
!2639 = !DILocation(line: 133, column: 53, scope: !2635)
!2640 = !DILocation(line: 133, column: 51, scope: !2635)
!2641 = !DILocation(line: 133, column: 13, scope: !2635)
!2642 = !DILocation(line: 133, column: 58, scope: !2635)
!2643 = !DILocation(line: 133, column: 13, scope: !2636)
!2644 = !DILocation(line: 134, column: 13, scope: !2635)
!2645 = !DILocation(line: 135, column: 5, scope: !2636)
!2646 = !DILocation(line: 137, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !469, file: !366, line: 137, column: 9)
!2648 = !DILocation(line: 137, column: 15, scope: !2647)
!2649 = !DILocation(line: 137, column: 21, scope: !2647)
!2650 = !DILocation(line: 137, column: 27, scope: !2647)
!2651 = !DILocation(line: 137, column: 19, scope: !2647)
!2652 = !DILocation(line: 137, column: 9, scope: !469)
!2653 = !DILocation(line: 146, column: 16, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !366, line: 137, column: 40)
!2655 = !DILocation(line: 146, column: 22, scope: !2654)
!2656 = !DILocation(line: 146, column: 28, scope: !2654)
!2657 = !DILocation(line: 146, column: 34, scope: !2654)
!2658 = !DILocation(line: 146, column: 26, scope: !2654)
!2659 = !DILocation(line: 147, column: 17, scope: !2654)
!2660 = !DILocation(line: 147, column: 23, scope: !2654)
!2661 = !DILocation(line: 147, column: 29, scope: !2654)
!2662 = !DILocation(line: 147, column: 35, scope: !2654)
!2663 = !DILocation(line: 147, column: 27, scope: !2654)
!2664 = !DILocation(line: 147, column: 48, scope: !2654)
!2665 = !DILocation(line: 146, column: 9, scope: !2654)
!2666 = !DILocation(line: 148, column: 5, scope: !2654)
!2667 = !DILocation(line: 152, column: 12, scope: !469)
!2668 = !DILocation(line: 152, column: 18, scope: !469)
!2669 = !DILocation(line: 152, column: 24, scope: !469)
!2670 = !DILocation(line: 152, column: 30, scope: !469)
!2671 = !DILocation(line: 152, column: 22, scope: !469)
!2672 = !DILocation(line: 152, column: 35, scope: !469)
!2673 = !DILocation(line: 152, column: 42, scope: !469)
!2674 = !DILocation(line: 152, column: 5, scope: !469)
!2675 = !DILocation(line: 153, column: 18, scope: !469)
!2676 = !DILocation(line: 153, column: 5, scope: !469)
!2677 = !DILocation(line: 153, column: 11, scope: !469)
!2678 = !DILocation(line: 153, column: 15, scope: !469)
!2679 = !DILocation(line: 156, column: 9, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !469, file: !366, line: 156, column: 9)
!2681 = !DILocation(line: 156, column: 15, scope: !2680)
!2682 = !DILocation(line: 156, column: 29, scope: !2680)
!2683 = !DILocation(line: 156, column: 35, scope: !2680)
!2684 = !DILocation(line: 156, column: 27, scope: !2680)
!2685 = !DILocation(line: 156, column: 9, scope: !469)
!2686 = !DILocation(line: 157, column: 29, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2680, file: !366, line: 156, column: 40)
!2688 = !DILocation(line: 157, column: 35, scope: !2687)
!2689 = !DILocation(line: 157, column: 9, scope: !2687)
!2690 = !DILocation(line: 157, column: 15, scope: !2687)
!2691 = !DILocation(line: 157, column: 27, scope: !2687)
!2692 = !DILocation(line: 158, column: 5, scope: !2687)
!2693 = !DILocation(line: 160, column: 12, scope: !469)
!2694 = !DILocation(line: 160, column: 5, scope: !469)
!2695 = !DILocation(line: 161, column: 1, scope: !469)
!2696 = !DILocation(line: 74, column: 24, scope: !476)
!2697 = !DILocation(line: 74, column: 37, scope: !476)
!2698 = !DILocation(line: 78, column: 5, scope: !476)
!2699 = !DILocation(line: 78, column: 12, scope: !476)
!2700 = !DILocation(line: 78, column: 20, scope: !476)
!2701 = !DILocation(line: 78, column: 26, scope: !476)
!2702 = !DILocation(line: 79, column: 5, scope: !476)
!2703 = !DILocation(line: 79, column: 11, scope: !476)
!2704 = !DILocation(line: 85, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !476, file: !366, line: 85, column: 9)
!2706 = !DILocation(line: 85, column: 14, scope: !2705)
!2707 = !DILocation(line: 85, column: 9, scope: !476)
!2708 = !DILocation(line: 86, column: 9, scope: !2705)
!2709 = !DILocation(line: 88, column: 9, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !476, file: !366, line: 88, column: 9)
!2711 = !DILocation(line: 88, column: 16, scope: !2710)
!2712 = !DILocation(line: 88, column: 22, scope: !2710)
!2713 = !DILocation(line: 88, column: 14, scope: !2710)
!2714 = !DILocation(line: 88, column: 9, scope: !476)
!2715 = !DILocation(line: 90, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !366, line: 88, column: 27)
!2717 = !DILocation(line: 90, column: 22, scope: !2716)
!2718 = !DILocation(line: 90, column: 15, scope: !2716)
!2719 = !DILocation(line: 91, column: 5, scope: !2716)
!2720 = !DILocation(line: 92, column: 14, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2710, file: !366, line: 92, column: 14)
!2722 = !DILocation(line: 92, column: 21, scope: !2721)
!2723 = !DILocation(line: 92, column: 19, scope: !2721)
!2724 = !DILocation(line: 92, column: 14, scope: !2710)
!2725 = !DILocation(line: 94, column: 9, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2721, file: !366, line: 92, column: 28)
!2727 = !DILocation(line: 96, column: 14, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2721, file: !366, line: 96, column: 14)
!2729 = !DILocation(line: 96, column: 22, scope: !2728)
!2730 = !DILocation(line: 96, column: 28, scope: !2728)
!2731 = !DILocation(line: 96, column: 19, scope: !2728)
!2732 = !DILocation(line: 96, column: 14, scope: !2721)
!2733 = !DILocation(line: 98, column: 17, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2728, file: !366, line: 96, column: 37)
!2735 = !DILocation(line: 98, column: 25, scope: !2734)
!2736 = !DILocation(line: 98, column: 30, scope: !2734)
!2737 = !DILocation(line: 98, column: 22, scope: !2734)
!2738 = !DILocation(line: 98, column: 39, scope: !2734)
!2739 = !DILocation(line: 98, column: 44, scope: !2734)
!2740 = !DILocation(line: 98, column: 38, scope: !2734)
!2741 = !DILocation(line: 98, column: 36, scope: !2734)
!2742 = !DILocation(line: 98, column: 15, scope: !2734)
!2743 = !DILocation(line: 99, column: 5, scope: !2734)
!2744 = !DILocation(line: 102, column: 17, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2728, file: !366, line: 100, column: 10)
!2746 = !DILocation(line: 102, column: 22, scope: !2745)
!2747 = !DILocation(line: 102, column: 15, scope: !2745)
!2748 = !DILocation(line: 105, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !476, file: !366, line: 105, column: 9)
!2750 = !DILocation(line: 105, column: 15, scope: !2749)
!2751 = !DILocation(line: 105, column: 9, scope: !476)
!2752 = !DILocation(line: 106, column: 9, scope: !2749)
!2753 = !DILocation(line: 107, column: 37, scope: !476)
!2754 = !DILocation(line: 107, column: 43, scope: !476)
!2755 = !DILocation(line: 107, column: 48, scope: !476)
!2756 = !DILocation(line: 107, column: 54, scope: !476)
!2757 = !DILocation(line: 107, column: 23, scope: !476)
!2758 = !DILocation(line: 107, column: 13, scope: !476)
!2759 = !DILocation(line: 108, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !476, file: !366, line: 108, column: 9)
!2761 = !DILocation(line: 108, column: 17, scope: !2760)
!2762 = !DILocation(line: 108, column: 9, scope: !476)
!2763 = !DILocation(line: 109, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !366, line: 108, column: 32)
!2765 = !DILocation(line: 110, column: 9, scope: !2764)
!2766 = !DILocation(line: 112, column: 22, scope: !476)
!2767 = !DILocation(line: 112, column: 5, scope: !476)
!2768 = !DILocation(line: 112, column: 11, scope: !476)
!2769 = !DILocation(line: 112, column: 20, scope: !476)
!2770 = !DILocation(line: 113, column: 17, scope: !476)
!2771 = !DILocation(line: 113, column: 5, scope: !476)
!2772 = !DILocation(line: 113, column: 11, scope: !476)
!2773 = !DILocation(line: 113, column: 15, scope: !476)
!2774 = !DILocation(line: 115, column: 5, scope: !476)
!2775 = !DILocation(line: 118, column: 21, scope: !476)
!2776 = !DILocation(line: 118, column: 5, scope: !476)
!2777 = !DILocation(line: 120, column: 5, scope: !476)
!2778 = !DILocation(line: 121, column: 1, scope: !476)
!2779 = !DILocation(line: 164, column: 29, scope: !609)
!2780 = !DILocation(line: 166, column: 9, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !609, file: !366, line: 166, column: 9)
!2782 = !DILocation(line: 166, column: 15, scope: !2781)
!2783 = !DILocation(line: 166, column: 19, scope: !2781)
!2784 = !DILocation(line: 166, column: 9, scope: !609)
!2785 = !DILocation(line: 167, column: 75, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !366, line: 166, column: 34)
!2787 = !DILocation(line: 167, column: 9, scope: !2786)
!2788 = !DILocation(line: 170, column: 76, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2781, file: !366, line: 169, column: 10)
!2790 = !DILocation(line: 170, column: 9, scope: !2789)
!2791 = !DILocation(line: 172, column: 1, scope: !609)
!2792 = !DILocation(line: 962, column: 34, scope: !652)
!2793 = !DILocation(line: 962, column: 50, scope: !652)
!2794 = !DILocation(line: 962, column: 60, scope: !652)
!2795 = !DILocation(line: 964, column: 5, scope: !652)
!2796 = !DILocation(line: 964, column: 9, scope: !652)
!2797 = !DILocation(line: 965, column: 5, scope: !652)
!2798 = !DILocation(line: 965, column: 14, scope: !652)
!2799 = !DILocation(line: 965, column: 30, scope: !652)
!2800 = !DILocation(line: 965, column: 35, scope: !652)
!2801 = !DILocation(line: 966, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !652, file: !366, line: 966, column: 9)
!2803 = !DILocation(line: 966, column: 14, scope: !2802)
!2804 = !DILocation(line: 966, column: 9, scope: !652)
!2805 = !DILocation(line: 967, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !366, line: 966, column: 29)
!2807 = !DILocation(line: 967, column: 12, scope: !2806)
!2808 = !DILocation(line: 967, column: 19, scope: !2806)
!2809 = !DILocation(line: 968, column: 9, scope: !2806)
!2810 = !DILocation(line: 970, column: 29, scope: !652)
!2811 = !DILocation(line: 970, column: 46, scope: !652)
!2812 = !DILocation(line: 970, column: 35, scope: !652)
!2813 = !DILocation(line: 970, column: 51, scope: !652)
!2814 = !DILocation(line: 970, column: 54, scope: !652)
!2815 = !DILocation(line: 970, column: 59, scope: !652)
!2816 = !DILocation(line: 970, column: 62, scope: !652)
!2817 = !DILocation(line: 971, column: 32, scope: !652)
!2818 = !DILocation(line: 970, column: 11, scope: !652)
!2819 = !DILocation(line: 970, column: 9, scope: !652)
!2820 = !DILocation(line: 972, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !652, file: !366, line: 972, column: 9)
!2822 = !DILocation(line: 972, column: 13, scope: !2821)
!2823 = !DILocation(line: 972, column: 9, scope: !652)
!2824 = !DILocation(line: 973, column: 9, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !366, line: 972, column: 19)
!2826 = !DILocation(line: 973, column: 12, scope: !2825)
!2827 = !DILocation(line: 973, column: 19, scope: !2825)
!2828 = !DILocation(line: 974, column: 5, scope: !2825)
!2829 = !DILocation(line: 975, column: 12, scope: !652)
!2830 = !DILocation(line: 975, column: 5, scope: !652)
!2831 = !DILocation(line: 976, column: 1, scope: !652)
!2832 = !DILocation(line: 979, column: 38, scope: !661)
!2833 = !DILocation(line: 979, column: 54, scope: !661)
!2834 = !DILocation(line: 981, column: 5, scope: !661)
!2835 = !DILocation(line: 981, column: 14, scope: !661)
!2836 = !DILocation(line: 981, column: 30, scope: !661)
!2837 = !DILocation(line: 981, column: 35, scope: !661)
!2838 = !DILocation(line: 982, column: 5, scope: !661)
!2839 = !DILocation(line: 982, column: 8, scope: !661)
!2840 = !DILocation(line: 982, column: 15, scope: !661)
!2841 = !DILocation(line: 983, column: 1, scope: !661)
