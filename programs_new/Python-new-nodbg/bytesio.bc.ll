; ModuleID = './bytesio.bc'
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %1 = bitcast %struct.bytesio* %0 to %union._gc_head*
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
  %14 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %14, i32 0, i32 7
  %15 = load i64, i64* %exports, align 8
  %cmp = icmp sgt i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.16
  %16 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  call void @PyErr_Print()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.16
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 1
  %18 = load i8*, i8** %buf, align 8
  %cmp17 = icmp ne i8* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf19 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %19, i32 0, i32 1
  %20 = load i8*, i8** %buf19, align 8
  call void @PyMem_Free(i8* %20)
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf20 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 1
  store i8* null, i8** %buf20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 5
  %23 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp23 = icmp ne %struct._object* %24, null
  br i1 %cmp23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %do.body.22
  %25 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict25 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %25, i32 0, i32 5
  store %struct._object* null, %struct._object** %dict25, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.24
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.29

if.else:                                          ; preds = %do.body.26
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.22
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %33 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.bytesio, %struct.bytesio* %33, i32 0, i32 6
  %34 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp33 = icmp ne %struct._object* %34, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.end.32
  %35 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %36 = bitcast %struct.bytesio* %35 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %36)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %do.end.32
  %37 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %38 = bitcast %struct.bytesio* %37 to %struct._object*
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 38
  %40 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %41 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %42 = bitcast %struct.bytesio* %41 to i8*
  call void %40(i8* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_traverse(%struct.bytesio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 5
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
define internal i32 @bytesio_clear(%struct.bytesio* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 5
  store %struct._object* null, %struct._object** %dict1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret i32 0
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_iternext(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %next = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %call = call i64 @get_line(%struct.bytesio* %3, i8** %next)
  store i64 %call, i64* %n, align 8
  %4 = load i8*, i8** %next, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %n, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %6 = load i8*, i8** %next, align 8
  %7 = load i64, i64* %n, align 8
  %call4 = call %struct._object* @PyBytes_FromStringAndSize(i8* %6, i64 %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
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
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [2 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i8*]* @bytesio_init.kwlist to i8*), i64 16, i32 16, i1 false)
  store %struct._object* null, %struct._object** %initvalue, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8** %arraydecay, %struct._object** %initvalue)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 3
  store i64 0, i64* %string_size, align 8
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  %5 = load %struct._object*, %struct._object** %initvalue, align 8
  %tobool1 = icmp ne %struct._object* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %initvalue, align 8
  %cmp = icmp ne %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %8 = load %struct._object*, %struct._object** %initvalue, align 8
  %call3 = call %struct._object* @bytesio_write(%struct.bytesio* %7, %struct._object* %8)
  store %struct._object* %call3, %struct._object** %res, align 8
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp4 = icmp eq %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 2
  store i64 0, i64* %pos10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.bytesio*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.bytesio*
  store %struct.bytesio* %3, %struct.bytesio** %self, align 8
  %4 = load %struct.bytesio*, %struct.bytesio** %self, align 8
  %cmp = icmp eq %struct.bytesio* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 0)
  %5 = load %struct.bytesio*, %struct.bytesio** %self, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 1
  store i8* %call1, i8** %buf, align 8
  %6 = load %struct.bytesio*, %struct.bytesio** %self, align 8
  %buf2 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 1
  %7 = load i8*, i8** %buf2, align 8
  %cmp3 = icmp eq i8* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %8 = load %struct.bytesio*, %struct.bytesio** %self, align 8
  %9 = bitcast %struct.bytesio* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %16 = load %struct.bytesio*, %struct.bytesio** %self, align 8
  %17 = bitcast %struct.bytesio* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %do.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_dealloc(%struct.bytesiobuf* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesiobuf*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesiobuf* %self, %struct.bytesiobuf** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %0, i32 0, i32 1
  %1 = load %struct.bytesio*, %struct.bytesio** %source, align 8
  %2 = bitcast %struct.bytesio* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %source1 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %4, i32 0, i32 1
  store %struct.bytesio* null, %struct.bytesio** %source1, align 8
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
  %12 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %13 = bitcast %struct.bytesiobuf* %12 to %struct._object*
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %17 = bitcast %struct.bytesiobuf* %16 to i8*
  call void %15(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesiobuf_traverse(%struct.bytesiobuf* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.bytesiobuf*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.bytesiobuf* %self, %struct.bytesiobuf** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %0, i32 0, i32 1
  %1 = load %struct.bytesio*, %struct.bytesio** %source, align 8
  %tobool = icmp ne %struct.bytesio* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.bytesiobuf*, %struct.bytesiobuf** %self.addr, align 8
  %source1 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %3, i32 0, i32 1
  %4 = load %struct.bytesio*, %struct.bytesio** %source1, align 8
  %5 = bitcast %struct.bytesio* %4 to %struct._object*
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store i8** %output, i8*** %output.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 3
  %3 = load i64, i64* %string_size, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %str_end, align 8
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 1
  %5 = load i8*, i8** %buf1, align 8
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr i8, i8* %5, i64 %7
  store i8* %add.ptr2, i8** %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8*, i8** %n, align 8
  %9 = load i8*, i8** %str_end, align 8
  %cmp = icmp ult i8* %8, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i8*, i8** %n, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp3 = icmp ne i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i8*, i8** %n, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %n, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %n, align 8
  %15 = load i8*, i8** %str_end, align 8
  %cmp5 = icmp ult i8* %14, %15
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load i8*, i8** %n, align 8
  %incdec.ptr7 = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load i8*, i8** %n, align 8
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf8 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 1
  %19 = load i8*, i8** %buf8, align 8
  %20 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos9 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %20, i32 0, i32 2
  %21 = load i64, i64* %pos9, align 8
  %add.ptr10 = getelementptr i8, i8* %19, i64 %21
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 1
  %23 = load i8*, i8** %buf11, align 8
  %24 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos12 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %24, i32 0, i32 2
  %25 = load i64, i64* %pos12, align 8
  %add.ptr13 = getelementptr i8, i8* %23, i64 %25
  %26 = load i8**, i8*** %output.addr, align 8
  store i8* %add.ptr13, i8** %26, align 8
  %27 = load i64, i64* %len, align 8
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 2
  %29 = load i64, i64* %pos14, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %pos14, align 8
  %30 = load i64, i64* %len, align 8
  ret i64 %30
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @return_not_closed(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_close(%struct.bytesio* %self) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 1
  %3 = load i8*, i8** %buf1, align 8
  call void @PyMem_Free(i8* %3)
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf2 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 1
  store i8* null, i8** %buf2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_flush(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_isatty(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_tell(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 2
  %4 = load i64, i64* %pos, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64 0, i64* %n, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf1, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 7
  %4 = load i64, i64* %exports, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %6, %struct.bufferinfo* %buf, i32 8)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %7 = load i64, i64* %len, align 8
  %cmp8 = icmp ne i64 %7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.7
  %8 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %9 = load i8*, i8** %buf10, align 8
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %10 = load i64, i64* %len11, align 8
  %call12 = call i64 @write_bytes(%struct.bytesio* %8, i8* %9, i64 %10)
  store i64 %call12, i64* %n, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.7
  %11 = load i64, i64* %n, align 8
  %cmp14 = icmp sge i64 %11, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %12 = load i64, i64* %n, align 8
  %call16 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call16, %struct._object** %result, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.6, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end.34, %if.end.3
  %5 = load %struct._object*, %struct._object** %it, align 8
  %call4 = call %struct._object* @PyIter_Next(%struct._object* %5)
  store %struct._object* %call4, %struct._object** %item, align 8
  %cmp5 = icmp ne %struct._object* %call4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call %struct._object* @bytesio_write(%struct.bytesio* %6, %struct._object* %7)
  store %struct._object* %call6, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %8 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %15 = load %struct._object*, %struct._object** %ret, align 8
  %cmp10 = icmp eq %struct._object* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %do.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %it, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %do.end
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %23 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp25, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %25, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %28(%struct._object* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.35

do.body.35:                                       ; preds = %while.end
  %30 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp36, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %32, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %35(%struct._object* %36)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %call46 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call46, null
  br i1 %tobool, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end.45
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %do.end.45
  %37 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %do.end.22, %if.then.2, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_read1(%struct.bytesio* %self, %struct._object* %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %n.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %n, %struct._object** %n.addr, align 8
  %0 = load %struct._object*, %struct._object** %n.addr, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %0)
  store %struct._object* %call, %struct._object** %arg, align 8
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** %arg, align 8
  %call1 = call %struct._object* @bytesio_read(%struct.bytesio* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %buffer, %struct._object** %buffer.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %buffer.addr, align 8
  %call = call i32 @PyObject_AsWriteBuffer(%struct._object* %3, i8** %raw_buffer, i64* %len)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %4, i32 0, i32 3
  %5 = load i64, i64* %string_size, align 8
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %n, align 8
  %8 = load i64, i64* %len, align 8
  %9 = load i64, i64* %n, align 8
  %cmp4 = icmp sgt i64 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %10 = load i64, i64* %n, align 8
  store i64 %10, i64* %len, align 8
  %11 = load i64, i64* %len, align 8
  %cmp6 = icmp slt i64 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i64 0, i64* %len, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end.3
  %12 = load i8*, i8** %raw_buffer, align 8
  %13 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %13, i32 0, i32 1
  %14 = load i8*, i8** %buf10, align 8
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 2
  %16 = load i64, i64* %pos11, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 %16
  %17 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %add.ptr, i64 %17, i32 1, i1 false)
  %18 = load i64, i64* %len, align 8
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos12 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %19, i32 0, i32 2
  %20 = load i64, i64* %pos12, align 8
  %add = add i64 %20, %18
  store i64 %add, i64* %pos12, align 8
  %21 = load i64, i64* %len, align 8
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %21)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %7)
  store i64 %call5, i64* %size, align 8
  %8 = load i64, i64* %size, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17

if.else:                                          ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %arg, align 8
  %cmp11 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %14 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %call18 = call i64 @get_line(%struct.bytesio* %14, i8** %output)
  store i64 %call18, i64* %n, align 8
  %15 = load i64, i64* %size, align 8
  %cmp19 = icmp sge i64 %15, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.25

land.lhs.true.20:                                 ; preds = %if.end.17
  %16 = load i64, i64* %size, align 8
  %17 = load i64, i64* %n, align 8
  %cmp21 = icmp slt i64 %16, %17
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true.20
  %18 = load i64, i64* %n, align 8
  %19 = load i64, i64* %size, align 8
  %sub = sub i64 %18, %19
  store i64 %sub, i64* %size, align 8
  %20 = load i64, i64* %size, align 8
  %21 = load i64, i64* %n, align 8
  %sub23 = sub i64 %21, %20
  store i64 %sub23, i64* %n, align 8
  %22 = load i64, i64* %size, align 8
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 2
  %24 = load i64, i64* %pos, align 8
  %sub24 = sub i64 %24, %22
  store i64 %sub24, i64* %pos, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.end.17
  %25 = load i8*, i8** %output, align 8
  %26 = load i64, i64* %n, align 8
  %call26 = call %struct._object* @PyBytes_FromStringAndSize(i8* %25, i64 %26)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.13, %if.then.9, %if.then.1, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %7)
  store i64 %call5, i64* %maxsize, align 8
  %8 = load i64, i64* %maxsize, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17

if.else:                                          ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %arg, align 8
  %cmp11 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %maxsize, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  store i64 0, i64* %size, align 8
  %call18 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call18, %struct._object** %result, align 8
  %14 = load %struct._object*, %struct._object** %result, align 8
  %tobool19 = icmp ne %struct._object* %14, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %if.end.21
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %call22 = call i64 @get_line(%struct.bytesio* %15, i8** %output)
  store i64 %call22, i64* %n, align 8
  %cmp23 = icmp ne i64 %call22, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %output, align 8
  %17 = load i64, i64* %n, align 8
  %call24 = call %struct._object* @PyBytes_FromStringAndSize(i8* %16, i64 %17)
  store %struct._object* %call24, %struct._object** %line, align 8
  %18 = load %struct._object*, %struct._object** %line, align 8
  %tobool25 = icmp ne %struct._object* %18, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %while.body
  br label %on_error

if.end.27:                                        ; preds = %while.body
  %19 = load %struct._object*, %struct._object** %result, align 8
  %20 = load %struct._object*, %struct._object** %line, align 8
  %call28 = call i32 @PyList_Append(%struct._object* %19, %struct._object* %20)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.27
  br label %do.body

do.body:                                          ; preds = %if.then.30
  %21 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body
  br label %if.end.35

if.else.33:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %on_error

if.end.36:                                        ; preds = %if.end.27
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.36
  %28 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp38, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %30, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %33(%struct._object* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %35 = load i64, i64* %n, align 8
  %36 = load i64, i64* %size, align 8
  %add = add i64 %36, %35
  store i64 %add, i64* %size, align 8
  %37 = load i64, i64* %maxsize, align 8
  %cmp48 = icmp sgt i64 %37, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %do.end.47
  %38 = load i64, i64* %size, align 8
  %39 = load i64, i64* %maxsize, align 8
  %cmp50 = icmp sge i64 %38, %39
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.49
  br label %while.end

if.end.52:                                        ; preds = %land.lhs.true.49, %do.end.47
  br label %while.cond

while.end:                                        ; preds = %if.then.51, %while.cond
  %40 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

on_error:                                         ; preds = %do.end, %if.then.26
  br label %do.body.53

do.body.53:                                       ; preds = %on_error
  %41 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp54, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %43, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %46(%struct._object* %47)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.63, %while.end, %if.then.20, %if.else.13, %if.then.9, %if.then.1, %if.then
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %7)
  store i64 %call5, i64* %size, align 8
  %8 = load i64, i64* %size, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.then.4
  br label %if.end.17

if.else:                                          ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %arg, align 8
  %cmp11 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %size, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %14 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %14, i32 0, i32 3
  %15 = load i64, i64* %string_size, align 8
  %16 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %16, i32 0, i32 2
  %17 = load i64, i64* %pos, align 8
  %sub = sub i64 %15, %17
  store i64 %sub, i64* %n, align 8
  %18 = load i64, i64* %size, align 8
  %cmp18 = icmp slt i64 %18, 0
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %19 = load i64, i64* %size, align 8
  %20 = load i64, i64* %n, align 8
  %cmp19 = icmp sgt i64 %19, %20
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.17
  %21 = load i64, i64* %n, align 8
  store i64 %21, i64* %size, align 8
  %22 = load i64, i64* %size, align 8
  %cmp21 = icmp slt i64 %22, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  store i64 0, i64* %size, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %lor.lhs.false
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf25 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 1
  %24 = load i8*, i8** %buf25, align 8
  %25 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos26 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %25, i32 0, i32 2
  %26 = load i64, i64* %pos26, align 8
  %add.ptr = getelementptr i8, i8* %24, i64 %26
  store i8* %add.ptr, i8** %output, align 8
  %27 = load i64, i64* %size, align 8
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos27 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 2
  %29 = load i64, i64* %pos27, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %pos27, align 8
  %30 = load i8*, i8** %output, align 8
  %31 = load i64, i64* %size, align 8
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* %30, i64 %31)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.13, %if.then.9, %if.then.1, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getbuffer(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %type = alloca %struct._typeobject*, align 8
  %buf = alloca %struct.bytesiobuf*, align 8
  %view = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._typeobject* @_PyBytesIOBuffer_Type, %struct._typeobject** %type, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf1, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 36
  %4 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %call = call %struct._object* %4(%struct._typeobject* %5, i64 0)
  %6 = bitcast %struct._object* %call to %struct.bytesiobuf*
  store %struct.bytesiobuf* %6, %struct.bytesiobuf** %buf, align 8
  %7 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8
  %cmp2 = icmp eq %struct.bytesiobuf* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %9 = bitcast %struct.bytesio* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %12 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %12, i32 0, i32 1
  store %struct.bytesio* %11, %struct.bytesio** %source, align 8
  %13 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8
  %14 = bitcast %struct.bytesiobuf* %13 to %struct._object*
  %call5 = call %struct._object* @PyMemoryView_FromObject(%struct._object* %14)
  store %struct._object* %call5, %struct._object** %view, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %15 = load %struct.bytesiobuf*, %struct.bytesiobuf** %buf, align 8
  %16 = bitcast %struct.bytesiobuf* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %23 = load %struct._object*, %struct._object** %view, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getvalue(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf1, align 8
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 3
  %6 = load i64, i64* %string_size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %4, i64 %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_seek(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %mode, align 4
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64* %pos, i32* %mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load i64, i64* %pos, align 8
  %cmp3 = icmp slt i64 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.2
  %5 = load i32, i32* %mode, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %7 = load i64, i64* %pos, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i64 %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end.2
  %8 = load i32, i32* %mode, align 4
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %9 = load i64, i64* %pos, align 8
  %10 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %10, i32 0, i32 2
  %11 = load i64, i64* %pos10, align 8
  %sub = sub i64 9223372036854775807, %11
  %cmp11 = icmp sgt i64 %9, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %13 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %13, i32 0, i32 2
  %14 = load i64, i64* %pos14, align 8
  %15 = load i64, i64* %pos, align 8
  %add = add i64 %15, %14
  store i64 %add, i64* %pos, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.7
  %16 = load i32, i32* %mode, align 4
  %cmp15 = icmp eq i32 %16, 2
  br i1 %cmp15, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.else
  %17 = load i64, i64* %pos, align 8
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 3
  %19 = load i64, i64* %string_size, align 8
  %sub17 = sub i64 9223372036854775807, %19
  %cmp18 = icmp sgt i64 %17, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.then.16
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size21 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 3
  %22 = load i64, i64* %string_size21, align 8
  %23 = load i64, i64* %pos, align 8
  %add22 = add i64 %23, %22
  store i64 %add22, i64* %pos, align 8
  br label %if.end.28

if.else.23:                                       ; preds = %if.else
  %24 = load i32, i32* %mode, align 4
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else.23
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %26 = load i32, i32* %mode, align 4
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.else.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.13
  %27 = load i64, i64* %pos, align 8
  %cmp30 = icmp slt i64 %27, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i64 0, i64* %pos, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %28 = load i64, i64* %pos, align 8
  %29 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos33 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %29, i32 0, i32 2
  store i64 %28, i64* %pos33, align 8
  %30 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos34 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %30, i32 0, i32 2
  %31 = load i64, i64* %pos34, align 8
  %call35 = call %struct._object* @PyLong_FromSsize_t(i64 %31)
  store %struct._object* %call35, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.25, %if.then.19, %if.then.12, %if.then.5, %if.then.1, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_truncate(%struct.bytesio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %arg = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 7
  %4 = load i64, i64* %exports, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 16777216
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %arg, align 8
  %call8 = call i64 @PyLong_AsSsize_t(%struct._object* %10)
  store i64 %call8, i64* %size, align 8
  %11 = load i64, i64* %size, align 8
  %cmp9 = icmp eq i64 %11, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.then.7
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.then.7
  br label %if.end.20

if.else:                                          ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %arg, align 8
  %cmp14 = icmp eq %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %13 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %13, i32 0, i32 2
  %14 = load i64, i64* %pos, align 8
  store i64 %14, i64* %size, align 8
  br label %if.end.19

if.else.16:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1
  %18 = load i8*, i8** %tp_name, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i8* %18)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.13
  %19 = load i64, i64* %size, align 8
  %cmp21 = icmp slt i64 %19, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %21 = load i64, i64* %size, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i64 %21)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %22 = load i64, i64* %size, align 8
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 3
  %24 = load i64, i64* %string_size, align 8
  %cmp25 = icmp slt i64 %22, %24
  br i1 %cmp25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.end.24
  %25 = load i64, i64* %size, align 8
  %26 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size27 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %26, i32 0, i32 3
  store i64 %25, i64* %string_size27, align 8
  %27 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %28 = load i64, i64* %size, align 8
  %call28 = call i32 @resize_buffer(%struct.bytesio* %27, i64 %28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.24
  %29 = load i64, i64* %size, align 8
  %call33 = call %struct._object* @PyLong_FromSsize_t(i64 %29)
  store %struct._object* %call33, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.30, %if.then.22, %if.else.16, %if.then.12, %if.then.4, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getstate(%struct.bytesio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.bytesio*, align 8
  %initvalue = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %state = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %call = call %struct._object* @bytesio_getvalue(%struct.bytesio* %0)
  store %struct._object* %call, %struct._object** %initvalue, align 8
  %1 = load %struct._object*, %struct._object** %initvalue, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 5
  %3 = load %struct._object*, %struct._object** %dict1, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict4 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %5, i32 0, i32 5
  %6 = load %struct._object*, %struct._object** %dict4, align 8
  %call5 = call %struct._object* @PyDict_Copy(%struct._object* %6)
  store %struct._object* %call5, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %8 = load %struct._object*, %struct._object** %initvalue, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.3
  %15 = load %struct._object*, %struct._object** %initvalue, align 8
  %16 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %16, i32 0, i32 2
  %17 = load i64, i64* %pos, align 8
  %18 = load %struct._object*, %struct._object** %dict, align 8
  %call14 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %struct._object* %15, i64 %17, %struct._object* %18)
  store %struct._object* %call14, %struct._object** %state, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.13
  %19 = load %struct._object*, %struct._object** %initvalue, align 8
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
  %26 = load %struct._object*, %struct._object** %state, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.25, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %state.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %5, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %8 = bitcast %struct.bytesio* %7 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %11 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name4, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i32 0, i32 0), i8* %10, i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %14, i32 0, i32 7
  %15 = load i64, i64* %exports, align 8
  %cmp5 = icmp sgt i64 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %16 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 3
  store i64 0, i64* %string_size, align 8
  %18 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos8 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %18, i32 0, i32 2
  store i64 0, i64* %pos8, align 8
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %20 = load %struct._object*, %struct._object** %state.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call9 = call %struct._object* @bytesio_write(%struct.bytesio* %19, %struct._object* %22)
  store %struct._object* %call9, %struct._object** %result, align 8
  %23 = load %struct._object*, %struct._object** %result, align 8
  %cmp10 = icmp eq %struct._object* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %31 = load %struct._object*, %struct._object** %state.addr, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 1
  %33 = load %struct._object*, %struct._object** %arrayidx18, align 8
  store %struct._object* %33, %struct._object** %position_obj, align 8
  %34 = load %struct._object*, %struct._object** %position_obj, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 19
  %36 = load i64, i64* %tp_flags20, align 8
  %and21 = and i64 %36, 16777216
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %do.end
  %37 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %38 = load %struct._object*, %struct._object** %position_obj, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_name25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 1
  %40 = load i8*, i8** %tp_name25, align 8
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8* %40)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end
  %41 = load %struct._object*, %struct._object** %position_obj, align 8
  %call28 = call i64 @PyLong_AsSsize_t(%struct._object* %41)
  store i64 %call28, i64* %pos, align 8
  %42 = load i64, i64* %pos, align 8
  %cmp29 = icmp eq i64 %42, -1
  br i1 %cmp29, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.27
  %call30 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call30, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true, %if.end.27
  %43 = load i64, i64* %pos, align 8
  %cmp33 = icmp slt i64 %43, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %44 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.32
  %45 = load i64, i64* %pos, align 8
  %46 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos36 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %46, i32 0, i32 2
  store i64 %45, i64* %pos36, align 8
  %47 = load %struct._object*, %struct._object** %state.addr, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item37 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx38 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item37, i32 0, i64 2
  %49 = load %struct._object*, %struct._object** %arrayidx38, align 8
  store %struct._object* %49, %struct._object** %dict, align 8
  %50 = load %struct._object*, %struct._object** %dict, align 8
  %cmp39 = icmp ne %struct._object* %50, @_Py_NoneStruct
  br i1 %cmp39, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %if.end.35
  %51 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 19
  %53 = load i64, i64* %tp_flags42, align 8
  %and43 = and i64 %53, 536870912
  %cmp44 = icmp ne i64 %and43, 0
  br i1 %cmp44, label %if.end.49, label %if.then.45

if.then.45:                                       ; preds = %if.then.40
  %54 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %55 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 1
  %57 = load i8*, i8** %tp_name47, align 8
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0), i8* %57)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.40
  %58 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict50 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %58, i32 0, i32 5
  %59 = load %struct._object*, %struct._object** %dict50, align 8
  %tobool51 = icmp ne %struct._object* %59, null
  br i1 %tobool51, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %if.end.49
  %60 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict53 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %60, i32 0, i32 5
  %61 = load %struct._object*, %struct._object** %dict53, align 8
  %62 = load %struct._object*, %struct._object** %dict, align 8
  %call54 = call i32 @PyDict_Update(%struct._object* %61, %struct._object* %62)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.52
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %if.then.52
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.49
  %63 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt59, align 8
  %inc = add i64 %64, 1
  store i64 %inc, i64* %ob_refcnt59, align 8
  %65 = load %struct._object*, %struct._object** %dict, align 8
  %66 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %dict60 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %66, i32 0, i32 5
  store %struct._object* %65, %struct._object** %dict60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.end.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.35
  %67 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc63 = add i64 %67, 1
  store i64 %inc63, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.56, %if.then.45, %if.then.34, %if.then.31, %if.then.23, %if.then.11, %if.then.6, %if.then
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_sizeof(%struct.bytesio* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.bytesio*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 72, i64* %res, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 4
  %3 = load i64, i64* %buf_size, align 8
  %4 = load i64, i64* %res, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  ret %struct._object* %call
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 2
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add = add i64 %1, %2
  %3 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 4
  %4 = load i64, i64* %buf_size, align 8
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %5 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %6 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %6, i32 0, i32 2
  %7 = load i64, i64* %pos1, align 8
  %8 = load i64, i64* %len.addr, align 8
  %add2 = add i64 %7, %8
  %call = call i32 @resize_buffer(%struct.bytesio* %5, i64 %add2)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos6 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %9, i32 0, i32 2
  %10 = load i64, i64* %pos6, align 8
  %11 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %11, i32 0, i32 3
  %12 = load i64, i64* %string_size, align 8
  %cmp7 = icmp sgt i64 %10, %12
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %13, i32 0, i32 1
  %14 = load i8*, i8** %buf, align 8
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size9 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 3
  %16 = load i64, i64* %string_size9, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 %16
  %17 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %17, i32 0, i32 2
  %18 = load i64, i64* %pos10, align 8
  %19 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size11 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %19, i32 0, i32 3
  %20 = load i64, i64* %string_size11, align 8
  %sub = sub i64 %18, %20
  %mul = mul i64 %sub, 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %mul, i32 1, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.5
  %21 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf13 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %21, i32 0, i32 1
  %22 = load i8*, i8** %buf13, align 8
  %23 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos14 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %23, i32 0, i32 2
  %24 = load i64, i64* %pos14, align 8
  %add.ptr15 = getelementptr i8, i8* %22, i64 %24
  %25 = load i8*, i8** %bytes.addr, align 8
  %26 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr15, i8* %25, i64 %26, i32 1, i1 false)
  %27 = load i64, i64* %len.addr, align 8
  %28 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos16 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %28, i32 0, i32 2
  %29 = load i64, i64* %pos16, align 8
  %add17 = add i64 %29, %27
  store i64 %add17, i64* %pos16, align 8
  %30 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size18 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %30, i32 0, i32 3
  %31 = load i64, i64* %string_size18, align 8
  %32 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos19 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %32, i32 0, i32 2
  %33 = load i64, i64* %pos19, align 8
  %cmp20 = icmp slt i64 %31, %33
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.12
  %34 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %pos22 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %34, i32 0, i32 2
  %35 = load i64, i64* %pos22, align 8
  %36 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %string_size23 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %36, i32 0, i32 3
  store i64 %35, i64* %string_size23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.12
  %37 = load i64, i64* %len.addr, align 8
  store i64 %37, i64* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.4
  %38 = load i64, i64* %retval
  ret i64 %38
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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 4
  %1 = load i64, i64* %buf_size, align 8
  store i64 %1, i64* %alloc, align 8
  store i8* null, i8** %new_buf, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %2, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %overflow

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i64, i64* %alloc, align 8
  %div = udiv i64 %4, 2
  %cmp1 = icmp ult i64 %3, %div
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load i64, i64* %size.addr, align 8
  %add = add i64 %5, 1
  store i64 %add, i64* %alloc, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* %size.addr, align 8
  %7 = load i64, i64* %alloc, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %8 = load i64, i64* %size.addr, align 8
  %conv = uitofp i64 %8 to double
  %9 = load i64, i64* %alloc, align 8
  %conv6 = uitofp i64 %9 to double
  %mul = fmul double %conv6, 1.125000e+00
  %cmp7 = fcmp ole double %conv, %mul
  br i1 %cmp7, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.else.5
  %10 = load i64, i64* %size.addr, align 8
  %11 = load i64, i64* %size.addr, align 8
  %shr = lshr i64 %11, 3
  %add10 = add i64 %10, %shr
  %12 = load i64, i64* %size.addr, align 8
  %cmp11 = icmp ult i64 %12, 9
  %cond = select i1 %cmp11, i32 3, i32 6
  %conv13 = sext i32 %cond to i64
  %add14 = add i64 %add10, %conv13
  store i64 %add14, i64* %alloc, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %if.else.5
  %13 = load i64, i64* %size.addr, align 8
  %add16 = add i64 %13, 1
  store i64 %add16, i64* %alloc, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.2
  %14 = load i64, i64* %alloc, align 8
  %cmp20 = icmp ugt i64 %14, -1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  br label %overflow

if.end.23:                                        ; preds = %if.end.19
  %15 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %15, i32 0, i32 1
  %16 = load i8*, i8** %buf, align 8
  %17 = load i64, i64* %alloc, align 8
  %mul24 = mul i64 %17, 1
  %call = call i8* @PyMem_Realloc(i8* %16, i64 %mul24)
  store i8* %call, i8** %new_buf, align 8
  %18 = load i8*, i8** %new_buf, align 8
  %cmp25 = icmp eq i8* %18, null
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %call28 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  %19 = load i64, i64* %alloc, align 8
  %20 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf_size30 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %20, i32 0, i32 4
  store i64 %19, i64* %buf_size30, align 8
  %21 = load i8*, i8** %new_buf, align 8
  %22 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf31 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %22, i32 0, i32 1
  store i8* %21, i8** %buf31, align 8
  store i32 0, i32* %retval
  br label %return

overflow:                                         ; preds = %if.then.22, %if.then
  %23 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %overflow, %if.end.29, %if.then.27, %if.then.4
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

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
  store %struct.bytesio* %self, %struct.bytesio** %self.addr, align 8
  %0 = load %struct.bytesio*, %struct.bytesio** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc1 = add i64 %3, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
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
  store %struct.bytesiobuf* %obj, %struct.bytesiobuf** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %0, i32 0, i32 1
  %1 = load %struct.bytesio*, %struct.bytesio** %source, align 8
  store %struct.bytesio* %1, %struct.bytesio** %b, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.bytesio*, %struct.bytesio** %b, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %3, i32 0, i32 7
  %4 = load i64, i64* %exports, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %exports, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %6 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8
  %7 = bitcast %struct.bytesiobuf* %6 to %struct._object*
  %8 = load %struct.bytesio*, %struct.bytesio** %b, align 8
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %8, i32 0, i32 1
  %9 = load i8*, i8** %buf, align 8
  %10 = load %struct.bytesio*, %struct.bytesio** %b, align 8
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %10, i32 0, i32 3
  %11 = load i64, i64* %string_size, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %5, %struct._object* %7, i8* %9, i64 %11, i32 0, i32 %12)
  store i32 %call, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp1 = icmp sge i32 %13, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %14 = load %struct.bytesio*, %struct.bytesio** %b, align 8
  %exports3 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %14, i32 0, i32 7
  %15 = load i64, i64* %exports3, align 8
  %inc4 = add i64 %15, 1
  store i64 %inc4, i64* %exports3, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_releasebuffer(%struct.bytesiobuf* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %obj.addr = alloca %struct.bytesiobuf*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %b = alloca %struct.bytesio*, align 8
  store %struct.bytesiobuf* %obj, %struct.bytesiobuf** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bytesiobuf*, %struct.bytesiobuf** %obj.addr, align 8
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %0, i32 0, i32 1
  %1 = load %struct.bytesio*, %struct.bytesio** %source, align 8
  store %struct.bytesio* %1, %struct.bytesio** %b, align 8
  %2 = load %struct.bytesio*, %struct.bytesio** %b, align 8
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %2, i32 0, i32 7
  %3 = load i64, i64* %exports, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %exports, align 8
  ret void
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
