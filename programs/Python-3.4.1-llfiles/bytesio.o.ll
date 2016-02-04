; ModuleID = 'bytesio.o.bc'
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
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !396, metadata !768), !dbg !769
  %add.ptr = getelementptr %struct.bytesio, %struct.bytesio* %self, i64 -1, i32 5, !dbg !770
  %gc_refs = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 2, !dbg !772
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !772
  %1 = load i64, i64* %0, align 8, !dbg !772, !tbaa !775
  %and = and i64 %1, 1, !dbg !772
  %or = or i64 %and, -4, !dbg !772
  store i64 %or, i64* %0, align 8, !dbg !772, !tbaa !775
  %gc_next = bitcast %struct._object** %add.ptr to %union._gc_head**, !dbg !781
  %2 = bitcast %struct._object** %add.ptr to i64*, !dbg !781
  %3 = load i64, i64* %2, align 8, !dbg !781, !tbaa !783
  %gc_prev = getelementptr inbounds %struct._object*, %struct._object** %add.ptr, i64 1, !dbg !781
  %4 = bitcast %struct._object** %gc_prev to i64**, !dbg !781
  %5 = load i64*, i64** %4, align 8, !dbg !781, !tbaa !784
  store i64 %3, i64* %5, align 8, !dbg !781, !tbaa !783
  %6 = ptrtoint i64* %5 to i64, !dbg !781
  %7 = bitcast %struct._object** %add.ptr to %struct.anon**, !dbg !781
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !781, !tbaa !783
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !781
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !781
  store i64 %6, i64* %9, align 8, !dbg !781, !tbaa !784
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !781, !tbaa !783
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 7, !dbg !785
  %10 = load i64, i64* %exports, align 8, !dbg !785, !tbaa !787
  %cmp = icmp sgt i64 %10, 0, !dbg !790
  br i1 %cmp, label %if.then, label %if.end, !dbg !791

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !792, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !795
  tail call void @PyErr_Print() #3, !dbg !796
  br label %if.end, !dbg !797

if.end:                                           ; preds = %if.then, %entry
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !798
  %12 = load i8*, i8** %buf, align 8, !dbg !798, !tbaa !800
  %cmp18 = icmp eq i8* %12, null, !dbg !801
  br i1 %cmp18, label %do.body.23, label %if.then.19, !dbg !802

if.then.19:                                       ; preds = %if.end
  tail call void @PyMem_Free(i8* %12) #3, !dbg !803
  store i8* null, i8** %buf, align 8, !dbg !805, !tbaa !800
  br label %do.body.23, !dbg !806

do.body.23:                                       ; preds = %if.end, %if.then.19
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 5, !dbg !807
  %13 = load %struct._object*, %struct._object** %dict, align 8, !dbg !807, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !399, metadata !768), !dbg !807
  %cmp24 = icmp eq %struct._object* %13, null, !dbg !810
  br i1 %cmp24, label %if.end.33, label %if.then.25, !dbg !811

if.then.25:                                       ; preds = %do.body.23
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !812, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !401, metadata !768), !dbg !814
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !816
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !816, !tbaa !818
  %dec = add i64 %14, -1, !dbg !816
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !816, !tbaa !818
  %cmp28 = icmp eq i64 %dec, 0, !dbg !816
  br i1 %cmp28, label %if.else, label %if.end.33, !dbg !819

if.else:                                          ; preds = %if.then.25
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !820
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !820, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !820
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !820, !tbaa !823
  tail call void %16(%struct._object* %13) #3, !dbg !820
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.25, %do.body.23
  %weakreflist = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 6, !dbg !827
  %17 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !827, !tbaa !829
  %cmp36 = icmp eq %struct._object* %17, null, !dbg !830
  br i1 %cmp36, label %if.end.38, label %if.then.37, !dbg !831

if.then.37:                                       ; preds = %if.end.33
  %18 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 0, !dbg !832
  tail call void @PyObject_ClearWeakRefs(%struct._object* %18) #3, !dbg !833
  br label %if.end.38, !dbg !833

if.end.38:                                        ; preds = %if.end.33, %if.then.37
  %ob_type39 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 0, i32 1, !dbg !834
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !834, !tbaa !822
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 38, !dbg !835
  %20 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !835, !tbaa !836
  %21 = bitcast %struct.bytesio* %self to i8*, !dbg !837
  tail call void %20(i8* %21) #3, !dbg !834
  ret void, !dbg !838
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_traverse(%struct.bytesio* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !409, metadata !768), !dbg !839
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !410, metadata !768), !dbg !840
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !411, metadata !768), !dbg !841
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 5, !dbg !842
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !842, !tbaa !809
  %tobool = icmp eq %struct._object* %0, null, !dbg !842
  br i1 %tobool, label %do.end, label %if.then, !dbg !844

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #3, !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !412, metadata !768), !dbg !845
  %tobool2 = icmp eq i32 %call, 0, !dbg !847
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !849

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_clear(%struct.bytesio* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !420, metadata !768), !dbg !851
  %dict = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 5, !dbg !852
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !852, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !421, metadata !768), !dbg !852
  %cmp = icmp eq %struct._object* %0, null, !dbg !854
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !855

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !856, !tbaa !809
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !423, metadata !768), !dbg !858
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !860
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !860, !tbaa !818
  %dec = add i64 %1, -1, !dbg !860
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !860, !tbaa !818
  %cmp3 = icmp eq i64 %dec, 0, !dbg !860
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !862

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !863
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !863, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !863
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !863, !tbaa !823
  tail call void %3(%struct._object* %0) #3, !dbg !863
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !865
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_iternext(%struct.bytesio* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !431, metadata !768), !dbg !866
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !867
  %0 = load i8*, i8** %buf, align 8, !dbg !867, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !867
  br i1 %cmp, label %if.then, label %if.end, !dbg !869

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !870, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !870
  br label %cleanup, !dbg !873

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !439, metadata !768), !dbg !874
  %string_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !876
  %2 = load i64, i64* %string_size.i, align 8, !dbg !876, !tbaa !877
  %add.ptr.i = getelementptr i8, i8* %0, i64 %2, !dbg !878
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !442, metadata !768), !dbg !879
  %pos.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !880
  %3 = load i64, i64* %pos.i, align 8, !dbg !882, !tbaa !883
  %add.ptr2.i = getelementptr i8, i8* %0, i64 %3, !dbg !884
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !441, metadata !768), !dbg !885
  %cmp.33.i = icmp ult i8* %add.ptr2.i, %add.ptr.i, !dbg !886
  br i1 %cmp.33.i, label %land.rhs.i.preheader, label %get_line.exit, !dbg !888

land.rhs.i.preheader:                             ; preds = %if.end
  br label %land.rhs.i, !dbg !889

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %for.inc.i
  %n.034.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %add.ptr2.i, %land.rhs.i.preheader ], !dbg !890
  %4 = load i8, i8* %n.034.i, align 1, !dbg !889, !tbaa !891
  %cmp3.i = icmp eq i8 %4, 10, !dbg !892
  br i1 %cmp3.i, label %get_line.exit.loopexit, label %for.inc.i, !dbg !893

for.inc.i:                                        ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, i8* %n.034.i, i64 1, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !441, metadata !768), !dbg !885
  %cmp.i = icmp ult i8* %incdec.ptr.i, %add.ptr.i, !dbg !886
  br i1 %cmp.i, label %land.rhs.i, label %get_line.exit.loopexit, !dbg !888

get_line.exit.loopexit:                           ; preds = %for.inc.i, %land.rhs.i
  %cmp.lcssa.i.ph = phi i1 [ false, %for.inc.i ], [ true, %land.rhs.i ]
  %n.0.lcssa.i.ph = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %n.034.i, %land.rhs.i ]
  br label %get_line.exit, !dbg !895

get_line.exit:                                    ; preds = %get_line.exit.loopexit, %if.end
  %cmp.lcssa.i = phi i1 [ false, %if.end ], [ %cmp.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !890
  %n.0.lcssa.i = phi i8* [ %add.ptr2.i, %if.end ], [ %n.0.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !890
  %incdec.ptr7.i = getelementptr i8, i8* %n.0.lcssa.i, i64 1, !dbg !895
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr7.i, i64 0, metadata !441, metadata !768), !dbg !885
  %incdec.ptr7.n.0.i = select i1 %cmp.lcssa.i, i8* %incdec.ptr7.i, i8* %n.0.lcssa.i, !dbg !897
  %sub.ptr.lhs.cast.i = ptrtoint i8* %incdec.ptr7.n.0.i to i64, !dbg !898
  %sub.ptr.rhs.cast.i = ptrtoint i8* %add.ptr2.i to i64, !dbg !898
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !443, metadata !768), !dbg !899
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !440, metadata !768), !dbg !900
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !432, metadata !768), !dbg !901
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !432, metadata !768), !dbg !901
  %add.i = add i64 %sub.ptr.sub.i, %3, !dbg !882
  store i64 %add.i, i64* %pos.i, align 8, !dbg !882, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !433, metadata !768), !dbg !902
  %tobool = icmp eq i8* %add.ptr2.i, null, !dbg !903
  %cmp1 = icmp eq i8* %incdec.ptr7.n.0.i, %add.ptr2.i, !dbg !905
  %or.cond = or i1 %tobool, %cmp1, !dbg !906
  br i1 %or.cond, label %cleanup, label %if.end.3, !dbg !906

if.end.3:                                         ; preds = %get_line.exit
  %call4 = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr2.i, i64 %sub.ptr.sub.i) #3, !dbg !907
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %get_line.exit, %if.end.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call4, %if.end.3 ], [ null, %get_line.exit ]
  ret %struct._object* %retval.0, !dbg !909
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesio_init(%struct.bytesio* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %kwlist = alloca [2 x i8*], align 16
  %initvalue = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !615, metadata !768), !dbg !910
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !616, metadata !768), !dbg !911
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !617, metadata !768), !dbg !912
  %0 = bitcast [2 x i8*]* %kwlist to i8*, !dbg !913
  call void @llvm.lifetime.start(i64 16, i8* %0) #3, !dbg !913
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %kwlist, metadata !618, metadata !768), !dbg !914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i8*]* @bytesio_init.kwlist to i8*), i64 16, i32 16, i1 false), !dbg !914
  %1 = bitcast %struct._object** %initvalue to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !915
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !622, metadata !768), !dbg !916
  store %struct._object* null, %struct._object** %initvalue, align 8, !dbg !916, !tbaa !794
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %kwlist, i64 0, i64 0, !dbg !917
  tail call void @llvm.dbg.value(metadata %struct._object** %initvalue, i64 0, metadata !622, metadata !768), !dbg !916
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8** %arraydecay, %struct._object** nonnull %initvalue) #3, !dbg !919
  %tobool = icmp eq i32 %call, 0, !dbg !919
  br i1 %tobool, label %cleanup.12, label %if.end, !dbg !920

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !921
  call void @llvm.dbg.value(metadata %struct._object** %initvalue, i64 0, metadata !622, metadata !768), !dbg !916
  %2 = bitcast i64* %pos to i8*, !dbg !922
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false), !dbg !923
  %3 = load %struct._object*, %struct._object** %initvalue, align 8, !dbg !922, !tbaa !794
  %tobool1 = icmp ne %struct._object* %3, null, !dbg !922
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct, !dbg !924
  %or.cond = and i1 %tobool1, %cmp, !dbg !925
  br i1 %or.cond, label %if.then.2, label %cleanup.12, !dbg !925

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @bytesio_write(%struct.bytesio* %self, %struct._object* %3), !dbg !926
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !623, metadata !768), !dbg !927
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !928
  br i1 %cmp4, label %cleanup.12, label %do.body, !dbg !930

do.body:                                          ; preds = %if.then.2
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !626, metadata !768), !dbg !931
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !933
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !933, !tbaa !818
  %dec = add i64 %4, -1, !dbg !933
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !933, !tbaa !818
  %cmp7 = icmp eq i64 %dec, 0, !dbg !933
  br i1 %cmp7, label %if.else, label %if.end.9, !dbg !935

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !936
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !936, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !936
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !936, !tbaa !823
  call void %6(%struct._object* %call3) #3, !dbg !936
  br label %if.end.9

if.end.9:                                         ; preds = %do.body, %if.else
  store i64 0, i64* %pos, align 8, !dbg !938, !tbaa !883
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end, %if.end.9, %if.then.2, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ -1, %if.then.2 ], [ 0, %if.end.9 ], [ 0, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !939
  call void @llvm.lifetime.end(i64 16, i8* %0) #3, !dbg !939
  ret i32 %retval.1, !dbg !939
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !632, metadata !768), !dbg !940
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !633, metadata !768), !dbg !941
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !634, metadata !768), !dbg !942
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !943
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !943, !tbaa !944
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #3, !dbg !945
  %cmp = icmp eq %struct._object* %call, null, !dbg !946
  br i1 %cmp, label %cleanup, label %if.end, !dbg !948

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @PyMem_Malloc(i64 0) #3, !dbg !949
  %buf = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !950
  %1 = bitcast %struct._object* %buf to i8**, !dbg !950
  store i8* %call1, i8** %1, align 8, !dbg !951, !tbaa !800
  %cmp3 = icmp eq i8* %call1, null, !dbg !952
  br i1 %cmp3, label %do.body, label %cleanup, !dbg !953

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !636, metadata !768), !dbg !954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !956
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !956, !tbaa !818
  %dec = add i64 %2, -1, !dbg !956
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !956, !tbaa !818
  %cmp5 = icmp eq i64 %dec, 0, !dbg !956
  br i1 %cmp5, label %if.else, label %if.end.7, !dbg !958

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !959
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !959, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !959
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !959, !tbaa !823
  tail call void %4(%struct._object* %call) #3, !dbg !959
  br label %if.end.7

if.end.7:                                         ; preds = %do.body, %if.else
  %call8 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !961
  br label %cleanup, !dbg !962

cleanup:                                          ; preds = %if.end, %entry, %if.end.7
  %retval.0 = phi %struct._object* [ %call8, %if.end.7 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !963
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_dealloc(%struct.bytesiobuf* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesiobuf* %self, i64 0, metadata !644, metadata !768), !dbg !964
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %self, i64 0, i32 1, !dbg !965
  %0 = bitcast %struct.bytesio** %source to %struct._object**, !dbg !965
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !965, !tbaa !967
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !645, metadata !768), !dbg !965
  %cmp = icmp eq %struct._object* %1, null, !dbg !969
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !970

if.then:                                          ; preds = %entry
  store %struct.bytesio* null, %struct.bytesio** %source, align 8, !dbg !971, !tbaa !967
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !647, metadata !768), !dbg !973
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !975
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !975, !tbaa !818
  %dec = add i64 %2, -1, !dbg !975
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !975, !tbaa !818
  %cmp3 = icmp eq i64 %dec, 0, !dbg !975
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !977

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !978
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !978, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !978
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !978, !tbaa !823
  tail call void %4(%struct._object* %1) #3, !dbg !978
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %ob_type8 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %self, i64 0, i32 0, i32 1, !dbg !980
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !980, !tbaa !822
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 38, !dbg !981
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !981, !tbaa !836
  %7 = bitcast %struct.bytesiobuf* %self to i8*, !dbg !982
  tail call void %6(i8* %7) #3, !dbg !980
  ret void, !dbg !983
}

; Function Attrs: nounwind uwtable
define internal i32 @bytesiobuf_traverse(%struct.bytesiobuf* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesiobuf* %self, i64 0, metadata !671, metadata !768), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !672, metadata !768), !dbg !985
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !673, metadata !768), !dbg !986
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %self, i64 0, i32 1, !dbg !987
  %0 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !987, !tbaa !967
  %tobool = icmp eq %struct.bytesio* %0, null, !dbg !987
  br i1 %tobool, label %do.end, label %if.then, !dbg !989

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 0, !dbg !990
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #3, !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !674, metadata !768), !dbg !990
  %tobool2 = icmp eq i32 %call, 0, !dbg !992
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !994

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !995
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

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @return_not_closed(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !446, metadata !768), !dbg !996
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !997
  %0 = load i8*, i8** %buf, align 8, !dbg !997, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !997
  br i1 %cmp, label %if.then, label %if.end, !dbg !999

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1000, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1000
  br label %return, !dbg !1000

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1003, !tbaa !818
  %inc = add i64 %2, 1, !dbg !1003
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1003, !tbaa !818
  br label %return, !dbg !1003

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end ]
  ret %struct._object* %retval.0, !dbg !1004
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_close(%struct.bytesio* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !449, metadata !768), !dbg !1005
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1006
  %0 = load i8*, i8** %buf, align 8, !dbg !1006, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1008
  br i1 %cmp, label %if.end, label %if.then, !dbg !1009

if.then:                                          ; preds = %entry
  tail call void @PyMem_Free(i8* %0) #3, !dbg !1010
  store i8* null, i8** %buf, align 8, !dbg !1012, !tbaa !800
  br label %if.end, !dbg !1013

if.end:                                           ; preds = %entry, %if.then
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1014, !tbaa !818
  %inc = add i64 %1, 1, !dbg !1014
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1014, !tbaa !818
  ret %struct._object* @_Py_NoneStruct, !dbg !1014
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_flush(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !452, metadata !768), !dbg !1015
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1016
  %0 = load i8*, i8** %buf, align 8, !dbg !1016, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1016
  br i1 %cmp, label %if.then, label %if.end, !dbg !1018

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1019, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1019
  br label %return, !dbg !1019

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1022, !tbaa !818
  %inc = add i64 %2, 1, !dbg !1022
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1022, !tbaa !818
  br label %return, !dbg !1022

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.end ]
  ret %struct._object* %retval.0, !dbg !1023
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_isatty(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !455, metadata !768), !dbg !1024
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1025
  %0 = load i8*, i8** %buf, align 8, !dbg !1025, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1025
  br i1 %cmp, label %if.then, label %if.end, !dbg !1027

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1028, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1028
  br label %return, !dbg !1028

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1031, !tbaa !818
  %inc = add i64 %2, 1, !dbg !1031
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1031, !tbaa !818
  br label %return, !dbg !1031

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end ]
  ret %struct._object* %retval.0, !dbg !1032
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_tell(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !458, metadata !768), !dbg !1033
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1034
  %0 = load i8*, i8** %buf, align 8, !dbg !1034, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1034
  br i1 %cmp, label %if.then, label %if.end, !dbg !1036

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1037, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1037
  br label %return, !dbg !1037

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1040
  %2 = load i64, i64* %pos, align 8, !dbg !1040, !tbaa !883
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %2) #3, !dbg !1041
  br label %return, !dbg !1042

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1043
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_write(%struct.bytesio* nocapture %self, %struct._object* %obj) #0 {
entry:
  %buf = alloca %struct.bufferinfo, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !463, metadata !768), !dbg !1044
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !464, metadata !768), !dbg !1045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !465, metadata !768), !dbg !1046
  %0 = bitcast %struct.bufferinfo* %buf to i8*, !dbg !1047
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1047
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !467, metadata !768), !dbg !1048
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1049
  %1 = load i8*, i8** %buf1, align 8, !dbg !1049, !tbaa !800
  %cmp = icmp eq i8* %1, null, !dbg !1049
  br i1 %cmp, label %if.then, label %if.end, !dbg !1051

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1052, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1052
  br label %cleanup, !dbg !1055

if.end:                                           ; preds = %entry
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 7, !dbg !1056
  %3 = load i64, i64* %exports, align 8, !dbg !1056, !tbaa !787
  %cmp2 = icmp sgt i64 %3, 0, !dbg !1056
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1058

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1059, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0)) #3, !dbg !1059
  br label %cleanup, !dbg !1062

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %buf, i64 0, metadata !466, metadata !768), !dbg !1063
  %call = call i32 @PyObject_GetBuffer(%struct._object* %obj, %struct.bufferinfo* nonnull %buf, i32 8) #3, !dbg !1064
  %cmp5 = icmp slt i32 %call, 0, !dbg !1066
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !1067

if.end.7:                                         ; preds = %if.end.4
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i64 0, i32 2, !dbg !1068
  %5 = load i64, i64* %len, align 8, !dbg !1068, !tbaa !1070
  %cmp8 = icmp eq i64 %5, 0, !dbg !1072
  br i1 %cmp8, label %if.then.15, label %if.then.9, !dbg !1073

if.then.9:                                        ; preds = %if.end.7
  %buf10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i64 0, i32 0, !dbg !1074
  %6 = load i8*, i8** %buf10, align 8, !dbg !1074, !tbaa !1075
  call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !472, metadata !768) #3, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !473, metadata !768) #3, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !474, metadata !768) #3, !dbg !1079
  %pos.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1080
  %7 = load i64, i64* %pos.i, align 8, !dbg !1080, !tbaa !883
  %add.i = add i64 %7, %5, !dbg !1082
  %buf_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 4, !dbg !1083
  %8 = load i64, i64* %buf_size.i, align 8, !dbg !1083, !tbaa !1084
  %cmp.i = icmp ugt i64 %add.i, %8, !dbg !1085
  br i1 %cmp.i, label %if.then.i, label %if.end.5.i, !dbg !1086

if.then.i:                                        ; preds = %if.then.9
  call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !479, metadata !768) #3, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !480, metadata !768) #3, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !481, metadata !768) #3, !dbg !1092
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !482, metadata !768) #3, !dbg !1093
  %cmp.i.i = icmp slt i64 %add.i, 0, !dbg !1094
  br i1 %cmp.i.i, label %overflow.i.i, label %if.end.i.i, !dbg !1096

if.end.i.i:                                       ; preds = %if.then.i
  %div.i.i = lshr i64 %8, 1, !dbg !1097
  %cmp1.i.i = icmp ugt i64 %div.i.i, %add.i, !dbg !1099
  br i1 %cmp1.i.i, label %if.then.2.i.i, label %if.else.i.i, !dbg !1100

if.then.2.i.i:                                    ; preds = %if.end.i.i
  %add.i.i = add i64 %add.i, 1, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %add.i.i, i64 0, metadata !481, metadata !768) #3, !dbg !1092
  br label %if.end.23.i.i, !dbg !1103

if.else.i.i:                                      ; preds = %if.end.i.i
  %cmp3.i.i = icmp ugt i64 %8, %add.i, !dbg !1104
  br i1 %cmp3.i.i, label %if.end.5.i, label %if.else.5.i.i, !dbg !1106

if.else.5.i.i:                                    ; preds = %if.else.i.i
  %conv.i.i = uitofp i64 %add.i to double, !dbg !1107
  %conv6.i.i = uitofp i64 %8 to double, !dbg !1109
  %mul.i.i = fmul double %conv6.i.i, 1.125000e+00, !dbg !1110
  %cmp7.i.i = fcmp ugt double %conv.i.i, %mul.i.i, !dbg !1111
  br i1 %cmp7.i.i, label %if.else.15.i.i, label %if.then.9.i.i, !dbg !1112

if.then.9.i.i:                                    ; preds = %if.else.5.i.i
  %shr.i.i = lshr i64 %add.i, 3, !dbg !1113
  %add10.i.i = add i64 %shr.i.i, %add.i, !dbg !1115
  %cmp11.i.i = icmp ult i64 %add.i, 9, !dbg !1116
  %conv13.i.i = select i1 %cmp11.i.i, i64 3, i64 6, !dbg !1117
  %add14.i.i = add i64 %add10.i.i, %conv13.i.i, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %add14.i.i, i64 0, metadata !481, metadata !768) #3, !dbg !1092
  br label %if.end.23.i.i, !dbg !1119

if.else.15.i.i:                                   ; preds = %if.else.5.i.i
  %add16.i.i = add i64 %add.i, 1, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %add16.i.i, i64 0, metadata !481, metadata !768) #3, !dbg !1092
  br label %if.end.23.i.i, !dbg !1122

if.end.23.i.i:                                    ; preds = %if.else.15.i.i, %if.then.9.i.i, %if.then.2.i.i
  %alloc.0.i.i = phi i64 [ %add.i.i, %if.then.2.i.i ], [ %add14.i.i, %if.then.9.i.i ], [ %add16.i.i, %if.else.15.i.i ], !dbg !1122
  %9 = load i8*, i8** %buf1, align 8, !dbg !1123, !tbaa !800
  %call.i.i = call i8* @PyMem_Realloc(i8* %9, i64 %alloc.0.i.i) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !482, metadata !768) #3, !dbg !1093
  %cmp25.i.i = icmp eq i8* %call.i.i, null, !dbg !1125
  br i1 %cmp25.i.i, label %if.then.27.i.i, label %if.end.29.i.i, !dbg !1127

if.then.27.i.i:                                   ; preds = %if.end.23.i.i
  %call28.i.i = call %struct._object* @PyErr_NoMemory() #3, !dbg !1128
  br label %if.end.17, !dbg !1130

if.end.29.i.i:                                    ; preds = %if.end.23.i.i
  store i64 %alloc.0.i.i, i64* %buf_size.i, align 8, !dbg !1131, !tbaa !1084
  store i8* %call.i.i, i8** %buf1, align 8, !dbg !1132, !tbaa !800
  %.pre.i = load i64, i64* %pos.i, align 8, !dbg !1133, !tbaa !883
  br label %if.end.5.i, !dbg !1135

overflow.i.i:                                     ; preds = %if.then.i
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1136, !tbaa !794
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0)) #3, !dbg !1137
  br label %if.end.17, !dbg !1138

if.end.5.i:                                       ; preds = %if.end.29.i.i, %if.else.i.i, %if.then.9
  %11 = phi i64 [ %7, %if.else.i.i ], [ %.pre.i, %if.end.29.i.i ], [ %7, %if.then.9 ], !dbg !1133
  %string_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1139
  %12 = load i64, i64* %string_size.i, align 8, !dbg !1139, !tbaa !877
  %cmp7.i = icmp sgt i64 %11, %12, !dbg !1140
  br i1 %cmp7.i, label %if.then.8.i, label %if.end.12.i, !dbg !1141

if.then.8.i:                                      ; preds = %if.end.5.i
  %13 = load i8*, i8** %buf1, align 8, !dbg !1142, !tbaa !800
  %add.ptr.i = getelementptr i8, i8* %13, i64 %12, !dbg !1144
  %sub.i = sub i64 %11, %12, !dbg !1145
  call void @llvm.memset.p0i8.i64(i8* %add.ptr.i, i8 0, i64 %sub.i, i32 1, i1 false) #3, !dbg !1146
  %.pre49.i = load i64, i64* %pos.i, align 8, !dbg !1147, !tbaa !883
  br label %if.end.12.i, !dbg !1148

if.end.12.i:                                      ; preds = %if.then.8.i, %if.end.5.i
  %14 = phi i64 [ %.pre49.i, %if.then.8.i ], [ %11, %if.end.5.i ], !dbg !1147
  %15 = load i8*, i8** %buf1, align 8, !dbg !1149, !tbaa !800
  %add.ptr15.i = getelementptr i8, i8* %15, i64 %14, !dbg !1150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr15.i, i8* %6, i64 %5, i32 1, i1 false) #3, !dbg !1151
  %16 = load i64, i64* %pos.i, align 8, !dbg !1152, !tbaa !883
  %add17.i = add i64 %16, %5, !dbg !1152
  store i64 %add17.i, i64* %pos.i, align 8, !dbg !1152, !tbaa !883
  %17 = load i64, i64* %string_size.i, align 8, !dbg !1153, !tbaa !877
  %cmp20.i = icmp slt i64 %17, %add17.i, !dbg !1155
  br i1 %cmp20.i, label %if.then.21.i, label %if.end.13, !dbg !1156

if.then.21.i:                                     ; preds = %if.end.12.i
  store i64 %add17.i, i64* %string_size.i, align 8, !dbg !1157, !tbaa !877
  br label %if.end.13, !dbg !1159

if.end.13:                                        ; preds = %if.then.21.i, %if.end.12.i
  %cmp14 = icmp sgt i64 %5, -1, !dbg !1160
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !1162

if.then.15:                                       ; preds = %if.end.7, %if.end.13
  %n.028 = phi i64 [ %5, %if.end.13 ], [ 0, %if.end.7 ]
  %call16 = call %struct._object* @PyLong_FromSsize_t(i64 %n.028) #3, !dbg !1163
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !467, metadata !768), !dbg !1048
  br label %if.end.17, !dbg !1164

if.end.17:                                        ; preds = %if.then.27.i.i, %overflow.i.i, %if.then.15, %if.end.13
  %result.0 = phi %struct._object* [ %call16, %if.then.15 ], [ null, %if.end.13 ], [ null, %overflow.i.i ], [ null, %if.then.27.i.i ]
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %buf, i64 0, metadata !466, metadata !768), !dbg !1063
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %buf) #3, !dbg !1165
  br label %cleanup, !dbg !1166

cleanup:                                          ; preds = %if.end.4, %if.end.17, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.3 ], [ %result.0, %if.end.17 ], [ null, %if.end.4 ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3, !dbg !1167
  ret %struct._object* %retval.0, !dbg !1167
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_writelines(%struct.bytesio* nocapture %self, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !485, metadata !768), !dbg !1168
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !486, metadata !768), !dbg !1169
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1170
  %0 = load i8*, i8** %buf, align 8, !dbg !1170, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1170
  br i1 %cmp, label %if.then, label %if.end, !dbg !1172

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1173, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1173
  br label %cleanup, !dbg !1176

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @PyObject_GetIter(%struct._object* %v) #3, !dbg !1177
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !487, metadata !768), !dbg !1178
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1179
  br i1 %cmp1, label %cleanup, label %while.cond.preheader, !dbg !1181

while.cond.preheader:                             ; preds = %if.end
  %call4.75 = tail call %struct._object* @PyIter_Next(%struct._object* %call) #3, !dbg !1182
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.75, i64 0, metadata !488, metadata !768), !dbg !1183
  %cmp5.76 = icmp eq %struct._object* %call4.75, null, !dbg !1184
  br i1 %cmp5.76, label %do.body.37, label %while.body.preheader, !dbg !1185

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body, !dbg !1186

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %call477 = phi %struct._object* [ %call4, %while.cond.backedge ], [ %call4.75, %while.body.preheader ]
  %call6 = tail call %struct._object* @bytesio_write(%struct.bytesio* %self, %struct._object* %call477), !dbg !1186
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !489, metadata !768), !dbg !1187
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !490, metadata !768), !dbg !1188
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call477, i64 0, i32 0, !dbg !1190
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1190, !tbaa !818
  %dec = add i64 %2, -1, !dbg !1190
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1190, !tbaa !818
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1190
  br i1 %cmp7, label %if.else, label %if.end.9, !dbg !1192

if.else:                                          ; preds = %while.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call477, i64 0, i32 1, !dbg !1193
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1193, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1193
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1193, !tbaa !823
  tail call void %4(%struct._object* %call477) #3, !dbg !1193
  br label %if.end.9

if.end.9:                                         ; preds = %while.body, %if.else
  %cmp10 = icmp eq %struct._object* %call6, null, !dbg !1195
  br i1 %cmp10, label %do.body.12, label %do.body.25, !dbg !1196

do.body.12:                                       ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !493, metadata !768), !dbg !1197
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1199
  %5 = load i64, i64* %ob_refcnt14, align 8, !dbg !1199, !tbaa !818
  %dec15 = add i64 %5, -1, !dbg !1199
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1199, !tbaa !818
  %cmp16 = icmp eq i64 %dec15, 0, !dbg !1199
  br i1 %cmp16, label %if.else.18, label %cleanup, !dbg !1201

if.else.18:                                       ; preds = %do.body.12
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1202
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1202, !tbaa !822
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1202
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1202, !tbaa !823
  tail call void %7(%struct._object* %call) #3, !dbg !1202
  br label %cleanup

do.body.25:                                       ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !497, metadata !768), !dbg !1204
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1206
  %8 = load i64, i64* %ob_refcnt27, align 8, !dbg !1206, !tbaa !818
  %dec28 = add i64 %8, -1, !dbg !1206
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1206, !tbaa !818
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !1206
  br i1 %cmp29, label %if.else.31, label %while.cond.backedge, !dbg !1208

while.cond.backedge:                              ; preds = %do.body.25, %if.else.31
  %call4 = tail call %struct._object* @PyIter_Next(%struct._object* %call) #3, !dbg !1182
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !488, metadata !768), !dbg !1183
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1184
  br i1 %cmp5, label %do.body.37.loopexit, label %while.body, !dbg !1185

if.else.31:                                       ; preds = %do.body.25
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !1209
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1209, !tbaa !822
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1209
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1209, !tbaa !823
  tail call void %10(%struct._object* %call6) #3, !dbg !1209
  br label %while.cond.backedge

do.body.37.loopexit:                              ; preds = %while.cond.backedge
  br label %do.body.37, !dbg !1211

do.body.37:                                       ; preds = %do.body.37.loopexit, %while.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !499, metadata !768), !dbg !1211
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1213
  %11 = load i64, i64* %ob_refcnt39, align 8, !dbg !1213, !tbaa !818
  %dec40 = add i64 %11, -1, !dbg !1213
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !1213, !tbaa !818
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !1213
  br i1 %cmp41, label %if.else.43, label %if.end.46, !dbg !1215

if.else.43:                                       ; preds = %do.body.37
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1216
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1216, !tbaa !822
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1216
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1216, !tbaa !823
  tail call void %13(%struct._object* %call) #3, !dbg !1216
  br label %if.end.46

if.end.46:                                        ; preds = %do.body.37, %if.else.43
  %call49 = tail call %struct._object* @PyErr_Occurred() #3, !dbg !1218
  %tobool = icmp eq %struct._object* %call49, null, !dbg !1218
  br i1 %tobool, label %if.end.51, label %cleanup, !dbg !1220

if.end.51:                                        ; preds = %if.end.46
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1221, !tbaa !818
  %inc = add i64 %14, 1, !dbg !1221
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1221, !tbaa !818
  br label %cleanup, !dbg !1221

cleanup:                                          ; preds = %if.end.46, %if.else.18, %do.body.12, %if.end, %if.end.51, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.end.51 ], [ null, %if.end ], [ null, %do.body.12 ], [ null, %if.else.18 ], [ null, %if.end.46 ]
  ret %struct._object* %retval.0, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_read1(%struct.bytesio* nocapture %self, %struct._object* %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !503, metadata !768), !dbg !1223
  tail call void @llvm.dbg.value(metadata %struct._object* %n, i64 0, metadata !504, metadata !768), !dbg !1224
  %call = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %n) #3, !dbg !1225
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !505, metadata !768), !dbg !1226
  %cmp = icmp eq %struct._object* %call, null, !dbg !1227
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1229

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @bytesio_read(%struct.bytesio* %self, %struct._object* %call), !dbg !1230
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !506, metadata !768), !dbg !1231
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !507, metadata !768), !dbg !1232
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1234
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1234, !tbaa !818
  %dec = add i64 %0, -1, !dbg !1234
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1234, !tbaa !818
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1234
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1236

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1237
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1237, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1237
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1237, !tbaa !823
  tail call void %2(%struct._object* %call) #3, !dbg !1237
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !1239
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readinto(%struct.bytesio* nocapture %self, %struct._object* %buffer) #0 {
entry:
  %raw_buffer = alloca i8*, align 8
  %len = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !511, metadata !768), !dbg !1240
  tail call void @llvm.dbg.value(metadata %struct._object* %buffer, i64 0, metadata !512, metadata !768), !dbg !1241
  %0 = bitcast i8** %raw_buffer to i8*, !dbg !1242
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1242
  %1 = bitcast i64* %len to i8*, !dbg !1243
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1243
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1244
  %2 = load i8*, i8** %buf, align 8, !dbg !1244, !tbaa !800
  %cmp = icmp eq i8* %2, null, !dbg !1244
  br i1 %cmp, label %if.then, label %if.end, !dbg !1246

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1247, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1247
  br label %cleanup, !dbg !1250

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8** %raw_buffer, i64 0, metadata !513, metadata !768), !dbg !1251
  tail call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !514, metadata !768), !dbg !1252
  %call = call i32 @PyObject_AsWriteBuffer(%struct._object* %buffer, i8** nonnull %raw_buffer, i64* nonnull %len) #3, !dbg !1253
  %cmp1 = icmp eq i32 %call, -1, !dbg !1255
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !1256

if.end.3:                                         ; preds = %if.end
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1257
  %4 = load i64, i64* %string_size, align 8, !dbg !1257, !tbaa !877
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1258
  %5 = load i64, i64* %pos, align 8, !dbg !1259, !tbaa !883
  %sub = sub i64 %4, %5, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !515, metadata !768), !dbg !1261
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !514, metadata !768), !dbg !1252
  %6 = load i64, i64* %len, align 8, !dbg !1262, !tbaa !1264
  %cmp4 = icmp sgt i64 %6, %sub, !dbg !1265
  br i1 %cmp4, label %if.then.5, label %if.end.9, !dbg !1266

if.then.5:                                        ; preds = %if.end.3
  %cmp6 = icmp slt i64 %sub, 0, !dbg !1267
  %. = select i1 %cmp6, i64 0, i64 %sub, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %., i64 0, metadata !514, metadata !768), !dbg !1252
  store i64 %., i64* %len, align 8, !dbg !1271, !tbaa !1264
  br label %if.end.9, !dbg !1272

if.end.9:                                         ; preds = %if.then.5, %if.end.3
  %7 = phi i64 [ %., %if.then.5 ], [ %6, %if.end.3 ], !dbg !1273
  call void @llvm.dbg.value(metadata i8** %raw_buffer, i64 0, metadata !513, metadata !768), !dbg !1251
  %8 = load i8*, i8** %raw_buffer, align 8, !dbg !1274, !tbaa !794
  %9 = load i8*, i8** %buf, align 8, !dbg !1275, !tbaa !800
  %add.ptr = getelementptr i8, i8* %9, i64 %5, !dbg !1276
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !514, metadata !768), !dbg !1252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr, i64 %7, i32 1, i1 false), !dbg !1277
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !514, metadata !768), !dbg !1252
  %10 = load i64, i64* %len, align 8, !dbg !1278, !tbaa !1264
  %11 = load i64, i64* %pos, align 8, !dbg !1279, !tbaa !883
  %add = add i64 %11, %10, !dbg !1279
  store i64 %add, i64* %pos, align 8, !dbg !1279, !tbaa !883
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !514, metadata !768), !dbg !1252
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %10) #3, !dbg !1280
  br label %cleanup, !dbg !1281

cleanup:                                          ; preds = %if.end, %if.end.9, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call13, %if.end.9 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1282
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1282
  ret %struct._object* %retval.0, !dbg !1282
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readline(%struct.bytesio* nocapture %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !518, metadata !768), !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !519, metadata !768), !dbg !1284
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1285
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1285
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !523, metadata !768), !dbg !1286
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1286, !tbaa !794
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1287
  %1 = load i8*, i8** %buf, align 8, !dbg !1287, !tbaa !800
  %cmp = icmp eq i8* %1, null, !dbg !1287
  br i1 %cmp, label %if.then, label %if.end, !dbg !1289

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1290, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1290
  br label %cleanup, !dbg !1293

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !523, metadata !768), !dbg !1286
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), %struct._object** nonnull %arg) #3, !dbg !1294
  %tobool = icmp eq i32 %call, 0, !dbg !1294
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1296

if.end.2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !523, metadata !768), !dbg !1286
  %3 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1297, !tbaa !794
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1297
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1297, !tbaa !822
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1297
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1297, !tbaa !1299
  %and = and i64 %5, 16777216, !dbg !1297
  %cmp3 = icmp eq i64 %and, 0, !dbg !1297
  br i1 %cmp3, label %if.else, label %if.then.4, !dbg !1300

if.then.4:                                        ; preds = %if.end.2
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %3) #3, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !520, metadata !768), !dbg !1303
  %cmp6 = icmp eq i64 %call5, -1, !dbg !1304
  br i1 %cmp6, label %land.lhs.true, label %if.end.17, !dbg !1306

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred() #3, !dbg !1307
  %tobool8 = icmp eq %struct._object* %call7, null, !dbg !1307
  br i1 %tobool8, label %if.end.17, label %cleanup, !dbg !1309

if.else:                                          ; preds = %if.end.2
  %cmp11 = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1310
  br i1 %cmp11, label %if.end.17, label %if.else.13, !dbg !1312

if.else.13:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1313, !tbaa !794
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 1, !dbg !1315
  %7 = load i8*, i8** %tp_name, align 8, !dbg !1315, !tbaa !1316
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %7) #3, !dbg !1317
  br label %cleanup, !dbg !1318

if.end.17:                                        ; preds = %if.else, %land.lhs.true, %if.then.4
  %size.0 = phi i64 [ -1, %land.lhs.true ], [ %call5, %if.then.4 ], [ -1, %if.else ]
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !439, metadata !768), !dbg !1319
  %8 = load i8*, i8** %buf, align 8, !dbg !1321, !tbaa !800
  %string_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1322
  %9 = load i64, i64* %string_size.i, align 8, !dbg !1322, !tbaa !877
  %add.ptr.i = getelementptr i8, i8* %8, i64 %9, !dbg !1323
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !442, metadata !768), !dbg !1324
  %pos.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1325
  %10 = load i64, i64* %pos.i, align 8, !dbg !1326, !tbaa !883
  %add.ptr2.i = getelementptr i8, i8* %8, i64 %10, !dbg !1327
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !441, metadata !768), !dbg !1328
  %cmp.33.i = icmp ult i8* %add.ptr2.i, %add.ptr.i, !dbg !1329
  br i1 %cmp.33.i, label %land.rhs.i.preheader, label %get_line.exit, !dbg !1330

land.rhs.i.preheader:                             ; preds = %if.end.17
  br label %land.rhs.i, !dbg !1331

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %for.inc.i
  %n.034.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %add.ptr2.i, %land.rhs.i.preheader ], !dbg !1332
  %11 = load i8, i8* %n.034.i, align 1, !dbg !1331, !tbaa !891
  %cmp3.i = icmp eq i8 %11, 10, !dbg !1333
  br i1 %cmp3.i, label %get_line.exit.loopexit, label %for.inc.i, !dbg !1334

for.inc.i:                                        ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, i8* %n.034.i, i64 1, !dbg !1335
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !441, metadata !768), !dbg !1328
  %cmp.i = icmp ult i8* %incdec.ptr.i, %add.ptr.i, !dbg !1329
  br i1 %cmp.i, label %land.rhs.i, label %get_line.exit.loopexit, !dbg !1330

get_line.exit.loopexit:                           ; preds = %for.inc.i, %land.rhs.i
  %cmp.lcssa.i.ph = phi i1 [ false, %for.inc.i ], [ true, %land.rhs.i ]
  %n.0.lcssa.i.ph = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %n.034.i, %land.rhs.i ]
  br label %get_line.exit, !dbg !1336

get_line.exit:                                    ; preds = %get_line.exit.loopexit, %if.end.17
  %cmp.lcssa.i = phi i1 [ false, %if.end.17 ], [ %cmp.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !1332
  %n.0.lcssa.i = phi i8* [ %add.ptr2.i, %if.end.17 ], [ %n.0.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !1332
  %incdec.ptr7.i = getelementptr i8, i8* %n.0.lcssa.i, i64 1, !dbg !1336
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr7.i, i64 0, metadata !441, metadata !768), !dbg !1328
  %incdec.ptr7.n.0.i = select i1 %cmp.lcssa.i, i8* %incdec.ptr7.i, i8* %n.0.lcssa.i, !dbg !1337
  %sub.ptr.lhs.cast.i = ptrtoint i8* %incdec.ptr7.n.0.i to i64, !dbg !1338
  %sub.ptr.rhs.cast.i = ptrtoint i8* %add.ptr2.i to i64, !dbg !1338
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1338
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !443, metadata !768), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !440, metadata !768), !dbg !1340
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !522, metadata !768), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !522, metadata !768), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !521, metadata !768), !dbg !1342
  %cmp19 = icmp sgt i64 %size.0, -1, !dbg !1343
  %cmp21 = icmp slt i64 %size.0, %sub.ptr.sub.i, !dbg !1345
  %or.cond = and i1 %cmp19, %cmp21, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %size.0, i64 0, metadata !521, metadata !768), !dbg !1342
  %size.0.sub.ptr.sub.i = select i1 %or.cond, i64 %size.0, i64 %sub.ptr.sub.i, !dbg !1346
  %storemerge = add i64 %size.0.sub.ptr.sub.i, %10, !dbg !1347
  store i64 %storemerge, i64* %pos.i, align 8, !dbg !1326, !tbaa !883
  %call26 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr2.i, i64 %size.0.sub.ptr.sub.i) #3, !dbg !1349
  br label %cleanup, !dbg !1350

cleanup:                                          ; preds = %land.lhs.true, %if.end, %get_line.exit, %if.else.13, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call26, %get_line.exit ], [ null, %if.else.13 ], [ null, %if.end ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1351
  ret %struct._object* %retval.0, !dbg !1351
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_readlines(%struct.bytesio* nocapture %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !526, metadata !768), !dbg !1352
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !527, metadata !768), !dbg !1353
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1354
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !534, metadata !768), !dbg !1355
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1355, !tbaa !794
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1356
  %1 = load i8*, i8** %buf, align 8, !dbg !1356, !tbaa !800
  %cmp = icmp eq i8* %1, null, !dbg !1356
  br i1 %cmp, label %if.then, label %if.end, !dbg !1358

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1359, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1359
  br label %cleanup, !dbg !1362

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !534, metadata !768), !dbg !1355
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), %struct._object** nonnull %arg) #3, !dbg !1363
  %tobool = icmp eq i32 %call, 0, !dbg !1363
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1365

if.end.2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !534, metadata !768), !dbg !1355
  %3 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1366, !tbaa !794
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1366
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1366, !tbaa !822
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1366
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1366, !tbaa !1299
  %and = and i64 %5, 16777216, !dbg !1366
  %cmp3 = icmp eq i64 %and, 0, !dbg !1366
  br i1 %cmp3, label %if.else, label %if.then.4, !dbg !1368

if.then.4:                                        ; preds = %if.end.2
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %3) #3, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !528, metadata !768), !dbg !1371
  %cmp6 = icmp eq i64 %call5, -1, !dbg !1372
  br i1 %cmp6, label %land.lhs.true, label %if.end.17, !dbg !1374

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred() #3, !dbg !1375
  %tobool8 = icmp eq %struct._object* %call7, null, !dbg !1375
  br i1 %tobool8, label %if.end.17, label %cleanup, !dbg !1377

if.else:                                          ; preds = %if.end.2
  %cmp11 = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1378
  br i1 %cmp11, label %if.end.17, label %if.else.13, !dbg !1380

if.else.13:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1381, !tbaa !794
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 1, !dbg !1383
  %7 = load i8*, i8** %tp_name, align 8, !dbg !1383, !tbaa !1316
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %7) #3, !dbg !1384
  br label %cleanup, !dbg !1385

if.end.17:                                        ; preds = %if.else, %land.lhs.true, %if.then.4
  %maxsize.0 = phi i64 [ -1, %land.lhs.true ], [ %call5, %if.then.4 ], [ -1, %if.else ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !529, metadata !768), !dbg !1386
  %call18 = call %struct._object* @PyList_New(i64 0) #3, !dbg !1387
  call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !531, metadata !768), !dbg !1388
  %tobool19 = icmp eq %struct._object* %call18, null, !dbg !1389
  br i1 %tobool19, label %cleanup, label %while.cond.preheader, !dbg !1391

while.cond.preheader:                             ; preds = %if.end.17
  %string_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1392
  %pos.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1394
  %cmp49 = icmp slt i64 %maxsize.0, 1, !dbg !1395
  br i1 %cmp49, label %while.cond.us.preheader, label %while.cond.preheader116, !dbg !1397

while.cond.preheader116:                          ; preds = %while.cond.preheader
  br label %while.cond, !dbg !1398

while.cond.us.preheader:                          ; preds = %while.cond.preheader
  br label %while.cond.us, !dbg !1398

while.cond.us:                                    ; preds = %while.cond.us.backedge, %while.cond.us.preheader
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !439, metadata !768), !dbg !1398
  %8 = load i8*, i8** %buf, align 8, !dbg !1399, !tbaa !800
  %9 = load i64, i64* %string_size.i, align 8, !dbg !1392, !tbaa !877
  %add.ptr.i.us = getelementptr i8, i8* %8, i64 %9, !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i.us, i64 0, metadata !442, metadata !768), !dbg !1401
  %10 = load i64, i64* %pos.i, align 8, !dbg !1402, !tbaa !883
  %add.ptr2.i.us = getelementptr i8, i8* %8, i64 %10, !dbg !1403
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i.us, i64 0, metadata !441, metadata !768), !dbg !1404
  %cmp.33.i.us = icmp ult i8* %add.ptr2.i.us, %add.ptr.i.us, !dbg !1405
  br i1 %cmp.33.i.us, label %land.rhs.i.us.preheader, label %get_line.exit.us, !dbg !1406

land.rhs.i.us.preheader:                          ; preds = %while.cond.us
  br label %land.rhs.i.us, !dbg !1407

land.rhs.i.us:                                    ; preds = %land.rhs.i.us.preheader, %for.inc.i.us
  %n.034.i.us = phi i8* [ %incdec.ptr.i.us, %for.inc.i.us ], [ %add.ptr2.i.us, %land.rhs.i.us.preheader ], !dbg !1408
  %11 = load i8, i8* %n.034.i.us, align 1, !dbg !1407, !tbaa !891
  %cmp3.i.us = icmp eq i8 %11, 10, !dbg !1409
  br i1 %cmp3.i.us, label %get_line.exit.us.loopexit, label %for.inc.i.us, !dbg !1410

for.inc.i.us:                                     ; preds = %land.rhs.i.us
  %incdec.ptr.i.us = getelementptr i8, i8* %n.034.i.us, i64 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.us, i64 0, metadata !441, metadata !768), !dbg !1404
  %cmp.i.us = icmp ult i8* %incdec.ptr.i.us, %add.ptr.i.us, !dbg !1405
  br i1 %cmp.i.us, label %land.rhs.i.us, label %get_line.exit.us.loopexit, !dbg !1406

get_line.exit.us.loopexit:                        ; preds = %for.inc.i.us, %land.rhs.i.us
  %cmp.lcssa.i.us.ph = phi i1 [ false, %for.inc.i.us ], [ true, %land.rhs.i.us ]
  %n.0.lcssa.i.us.ph = phi i8* [ %incdec.ptr.i.us, %for.inc.i.us ], [ %n.034.i.us, %land.rhs.i.us ]
  br label %get_line.exit.us, !dbg !1412

get_line.exit.us:                                 ; preds = %get_line.exit.us.loopexit, %while.cond.us
  %cmp.lcssa.i.us = phi i1 [ false, %while.cond.us ], [ %cmp.lcssa.i.us.ph, %get_line.exit.us.loopexit ], !dbg !1408
  %n.0.lcssa.i.us = phi i8* [ %add.ptr2.i.us, %while.cond.us ], [ %n.0.lcssa.i.us.ph, %get_line.exit.us.loopexit ], !dbg !1408
  %incdec.ptr7.i.us = getelementptr i8, i8* %n.0.lcssa.i.us, i64 1, !dbg !1412
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr7.i.us, i64 0, metadata !441, metadata !768), !dbg !1404
  %incdec.ptr7.n.0.i.us = select i1 %cmp.lcssa.i.us, i8* %incdec.ptr7.i.us, i8* %n.0.lcssa.i.us, !dbg !1413
  %sub.ptr.lhs.cast.i.us = ptrtoint i8* %incdec.ptr7.n.0.i.us to i64, !dbg !1414
  %sub.ptr.rhs.cast.i.us = ptrtoint i8* %add.ptr2.i.us to i64, !dbg !1414
  %sub.ptr.sub.i.us = sub i64 %sub.ptr.lhs.cast.i.us, %sub.ptr.rhs.cast.i.us, !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i.us, i64 0, metadata !443, metadata !768), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i.us, i64 0, metadata !440, metadata !768), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i.us, i64 0, metadata !533, metadata !768), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i.us, i64 0, metadata !533, metadata !768), !dbg !1417
  %add.i.us = add i64 %sub.ptr.sub.i.us, %10, !dbg !1402
  store i64 %add.i.us, i64* %pos.i, align 8, !dbg !1402, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i.us, i64 0, metadata !530, metadata !768), !dbg !1418
  %cmp23.us = icmp eq i8* %incdec.ptr7.n.0.i.us, %add.ptr2.i.us, !dbg !1419
  br i1 %cmp23.us, label %cleanup.loopexit, label %while.body.us, !dbg !1420

while.body.us:                                    ; preds = %get_line.exit.us
  %call24.us = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr2.i.us, i64 %sub.ptr.sub.i.us) #3, !dbg !1421
  call void @llvm.dbg.value(metadata %struct._object* %call24.us, i64 0, metadata !532, metadata !768), !dbg !1422
  %tobool25.us = icmp eq %struct._object* %call24.us, null, !dbg !1423
  br i1 %tobool25.us, label %do.body.54.loopexit, label %if.end.27.us, !dbg !1425

if.end.27.us:                                     ; preds = %while.body.us
  %call28.us = call i32 @PyList_Append(%struct._object* %call18, %struct._object* %call24.us) #3, !dbg !1426
  %cmp29.us = icmp eq i32 %call28.us, -1, !dbg !1427
  %ob_refcnt.us = getelementptr inbounds %struct._object, %struct._object* %call24.us, i64 0, i32 0, !dbg !1428
  %12 = load i64, i64* %ob_refcnt.us, align 8, !dbg !1428, !tbaa !818
  %dec.us = add i64 %12, -1, !dbg !1428
  store i64 %dec.us, i64* %ob_refcnt.us, align 8, !dbg !1428, !tbaa !818
  %cmp31.us = icmp eq i64 %dec.us, 0, !dbg !1428
  br i1 %cmp29.us, label %do.body.loopexit, label %do.body.37.us, !dbg !1430

do.body.37.us:                                    ; preds = %if.end.27.us
  call void @llvm.dbg.value(metadata %struct._object* %call24.us, i64 0, metadata !540, metadata !768), !dbg !1431
  br i1 %cmp31.us, label %if.else.43.us, label %while.cond.us.backedge, !dbg !1433

if.else.43.us:                                    ; preds = %do.body.37.us
  %ob_type44.us = getelementptr inbounds %struct._object, %struct._object* %call24.us, i64 0, i32 1, !dbg !1434
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type44.us, align 8, !dbg !1434, !tbaa !822
  %tp_dealloc45.us = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1434
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45.us, align 8, !dbg !1434, !tbaa !823
  call void %14(%struct._object* %call24.us) #3, !dbg !1434
  br label %while.cond.us.backedge

while.cond.us.backedge:                           ; preds = %if.else.43.us, %do.body.37.us
  br label %while.cond.us, !dbg !1398

while.cond:                                       ; preds = %while.cond.preheader116, %if.end.46
  %size.0 = phi i64 [ %add, %if.end.46 ], [ 0, %while.cond.preheader116 ]
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !439, metadata !768), !dbg !1398
  %15 = load i8*, i8** %buf, align 8, !dbg !1399, !tbaa !800
  %16 = load i64, i64* %string_size.i, align 8, !dbg !1392, !tbaa !877
  %add.ptr.i = getelementptr i8, i8* %15, i64 %16, !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !442, metadata !768), !dbg !1401
  %17 = load i64, i64* %pos.i, align 8, !dbg !1402, !tbaa !883
  %add.ptr2.i = getelementptr i8, i8* %15, i64 %17, !dbg !1403
  tail call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !441, metadata !768), !dbg !1404
  %cmp.33.i = icmp ult i8* %add.ptr2.i, %add.ptr.i, !dbg !1405
  br i1 %cmp.33.i, label %land.rhs.i.preheader, label %get_line.exit, !dbg !1406

land.rhs.i.preheader:                             ; preds = %while.cond
  br label %land.rhs.i, !dbg !1407

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %for.inc.i
  %n.034.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %add.ptr2.i, %land.rhs.i.preheader ], !dbg !1408
  %18 = load i8, i8* %n.034.i, align 1, !dbg !1407, !tbaa !891
  %cmp3.i = icmp eq i8 %18, 10, !dbg !1409
  br i1 %cmp3.i, label %get_line.exit.loopexit, label %for.inc.i, !dbg !1410

for.inc.i:                                        ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, i8* %n.034.i, i64 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !441, metadata !768), !dbg !1404
  %cmp.i = icmp ult i8* %incdec.ptr.i, %add.ptr.i, !dbg !1405
  br i1 %cmp.i, label %land.rhs.i, label %get_line.exit.loopexit, !dbg !1406

get_line.exit.loopexit:                           ; preds = %for.inc.i, %land.rhs.i
  %cmp.lcssa.i.ph = phi i1 [ false, %for.inc.i ], [ true, %land.rhs.i ]
  %n.0.lcssa.i.ph = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %n.034.i, %land.rhs.i ]
  br label %get_line.exit, !dbg !1412

get_line.exit:                                    ; preds = %get_line.exit.loopexit, %while.cond
  %cmp.lcssa.i = phi i1 [ false, %while.cond ], [ %cmp.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !1408
  %n.0.lcssa.i = phi i8* [ %add.ptr2.i, %while.cond ], [ %n.0.lcssa.i.ph, %get_line.exit.loopexit ], !dbg !1408
  %incdec.ptr7.i = getelementptr i8, i8* %n.0.lcssa.i, i64 1, !dbg !1412
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr7.i, i64 0, metadata !441, metadata !768), !dbg !1404
  %incdec.ptr7.n.0.i = select i1 %cmp.lcssa.i, i8* %incdec.ptr7.i, i8* %n.0.lcssa.i, !dbg !1413
  %sub.ptr.lhs.cast.i = ptrtoint i8* %incdec.ptr7.n.0.i to i64, !dbg !1414
  %sub.ptr.rhs.cast.i = ptrtoint i8* %add.ptr2.i to i64, !dbg !1414
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !443, metadata !768), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !440, metadata !768), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !533, metadata !768), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %add.ptr2.i, i64 0, metadata !533, metadata !768), !dbg !1417
  %add.i = add i64 %sub.ptr.sub.i, %17, !dbg !1402
  store i64 %add.i, i64* %pos.i, align 8, !dbg !1402, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !530, metadata !768), !dbg !1418
  %cmp23 = icmp eq i8* %incdec.ptr7.n.0.i, %add.ptr2.i, !dbg !1419
  br i1 %cmp23, label %cleanup.loopexit117, label %while.body, !dbg !1420

while.body:                                       ; preds = %get_line.exit
  %call24 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr2.i, i64 %sub.ptr.sub.i) #3, !dbg !1421
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !532, metadata !768), !dbg !1422
  %tobool25 = icmp eq %struct._object* %call24, null, !dbg !1423
  br i1 %tobool25, label %do.body.54.loopexit118, label %if.end.27, !dbg !1425

if.end.27:                                        ; preds = %while.body
  %call28 = call i32 @PyList_Append(%struct._object* %call18, %struct._object* %call24) #3, !dbg !1426
  %cmp29 = icmp eq i32 %call28, -1, !dbg !1427
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 0, !dbg !1428
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1428, !tbaa !818
  %dec = add i64 %19, -1, !dbg !1428
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1428, !tbaa !818
  %cmp31 = icmp eq i64 %dec, 0, !dbg !1428
  br i1 %cmp29, label %do.body.loopexit119, label %do.body.37, !dbg !1430

do.body.loopexit:                                 ; preds = %if.end.27.us
  %cmp31.us.lcssa = phi i1 [ %cmp31.us, %if.end.27.us ]
  %call24.us.lcssa123 = phi %struct._object* [ %call24.us, %if.end.27.us ]
  br label %do.body, !dbg !1437

do.body.loopexit119:                              ; preds = %if.end.27
  %cmp31.lcssa125 = phi i1 [ %cmp31, %if.end.27 ]
  %call24.lcssa124 = phi %struct._object* [ %call24, %if.end.27 ]
  br label %do.body, !dbg !1437

do.body:                                          ; preds = %do.body.loopexit119, %do.body.loopexit
  %cmp31.lcssa = phi i1 [ %cmp31.us.lcssa, %do.body.loopexit ], [ %cmp31.lcssa125, %do.body.loopexit119 ]
  %call24.lcssa98 = phi %struct._object* [ %call24.us.lcssa123, %do.body.loopexit ], [ %call24.lcssa124, %do.body.loopexit119 ]
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !535, metadata !768), !dbg !1437
  br i1 %cmp31.lcssa, label %if.else.33, label %do.body.54, !dbg !1439

if.else.33:                                       ; preds = %do.body
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %call24.lcssa98, i64 0, i32 1, !dbg !1440
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1440, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1440
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1440, !tbaa !823
  call void %21(%struct._object* %call24.lcssa98) #3, !dbg !1440
  br label %do.body.54

do.body.37:                                       ; preds = %if.end.27
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !540, metadata !768), !dbg !1431
  br i1 %cmp31, label %if.else.43, label %if.end.46, !dbg !1433

if.else.43:                                       ; preds = %do.body.37
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call24, i64 0, i32 1, !dbg !1434
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1434, !tbaa !822
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1434
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !1434, !tbaa !823
  call void %23(%struct._object* %call24) #3, !dbg !1434
  br label %if.end.46

if.end.46:                                        ; preds = %do.body.37, %if.else.43
  %add = add i64 %sub.ptr.sub.i, %size.0, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !529, metadata !768), !dbg !1386
  %cmp51 = icmp slt i64 %add, %maxsize.0, !dbg !1443
  br i1 %cmp51, label %while.cond, label %cleanup.loopexit117, !dbg !1397

do.body.54.loopexit:                              ; preds = %while.body.us
  br label %do.body.54, !dbg !1444

do.body.54.loopexit118:                           ; preds = %while.body
  br label %do.body.54, !dbg !1444

do.body.54:                                       ; preds = %do.body.54.loopexit118, %do.body.54.loopexit, %if.else.33, %do.body
  call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !542, metadata !768), !dbg !1444
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %call18, i64 0, i32 0, !dbg !1446
  %24 = load i64, i64* %ob_refcnt56, align 8, !dbg !1446, !tbaa !818
  %dec57 = add i64 %24, -1, !dbg !1446
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1446, !tbaa !818
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !1446
  br i1 %cmp58, label %if.else.60, label %cleanup, !dbg !1448

if.else.60:                                       ; preds = %do.body.54
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %call18, i64 0, i32 1, !dbg !1449
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1449, !tbaa !822
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1449
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1449, !tbaa !823
  call void %26(%struct._object* %call18) #3, !dbg !1449
  br label %cleanup

cleanup.loopexit:                                 ; preds = %get_line.exit.us
  br label %cleanup, !dbg !1451

cleanup.loopexit117:                              ; preds = %if.end.46, %get_line.exit
  br label %cleanup, !dbg !1451

cleanup:                                          ; preds = %cleanup.loopexit117, %cleanup.loopexit, %if.else.60, %do.body.54, %if.end.17, %land.lhs.true, %if.end, %if.else.13, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.else.13 ], [ null, %if.end ], [ null, %land.lhs.true ], [ null, %if.end.17 ], [ null, %do.body.54 ], [ null, %if.else.60 ], [ %call18, %cleanup.loopexit ], [ %call18, %cleanup.loopexit117 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1451
  ret %struct._object* %retval.0, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_read(%struct.bytesio* nocapture %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !546, metadata !768), !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !547, metadata !768), !dbg !1453
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1454
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1454
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !551, metadata !768), !dbg !1455
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1455, !tbaa !794
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1456
  %1 = load i8*, i8** %buf, align 8, !dbg !1456, !tbaa !800
  %cmp = icmp eq i8* %1, null, !dbg !1456
  br i1 %cmp, label %if.then, label %if.end, !dbg !1458

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1459, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1459
  br label %cleanup, !dbg !1462

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !551, metadata !768), !dbg !1455
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), %struct._object** nonnull %arg) #3, !dbg !1463
  %tobool = icmp eq i32 %call, 0, !dbg !1463
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1465

if.end.2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !551, metadata !768), !dbg !1455
  %3 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1466, !tbaa !794
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1466
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1466, !tbaa !822
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !1466
  %5 = load i64, i64* %tp_flags, align 8, !dbg !1466, !tbaa !1299
  %and = and i64 %5, 16777216, !dbg !1466
  %cmp3 = icmp eq i64 %and, 0, !dbg !1466
  br i1 %cmp3, label %if.else, label %if.then.4, !dbg !1468

if.then.4:                                        ; preds = %if.end.2
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %3) #3, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !548, metadata !768), !dbg !1471
  %cmp6 = icmp eq i64 %call5, -1, !dbg !1472
  br i1 %cmp6, label %land.lhs.true, label %if.end.17, !dbg !1474

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred() #3, !dbg !1475
  %tobool8 = icmp eq %struct._object* %call7, null, !dbg !1475
  br i1 %tobool8, label %if.end.17, label %cleanup, !dbg !1477

if.else:                                          ; preds = %if.end.2
  %cmp11 = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !1478
  br i1 %cmp11, label %if.end.17, label %if.else.13, !dbg !1480

if.else.13:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1481, !tbaa !794
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 1, !dbg !1483
  %7 = load i8*, i8** %tp_name, align 8, !dbg !1483, !tbaa !1316
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %7) #3, !dbg !1484
  br label %cleanup, !dbg !1485

if.end.17:                                        ; preds = %if.else, %land.lhs.true, %if.then.4
  %size.0 = phi i64 [ -1, %land.lhs.true ], [ %call5, %if.then.4 ], [ -1, %if.else ]
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1486
  %8 = load i64, i64* %string_size, align 8, !dbg !1486, !tbaa !877
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1487
  %9 = load i64, i64* %pos, align 8, !dbg !1487, !tbaa !883
  %sub = sub i64 %8, %9, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !549, metadata !768), !dbg !1489
  %cmp18 = icmp slt i64 %size.0, 0, !dbg !1490
  %cmp19 = icmp sgt i64 %size.0, %sub, !dbg !1492
  %or.cond = or i1 %cmp18, %cmp19, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !548, metadata !768), !dbg !1471
  %cmp21 = icmp slt i64 %sub, 0, !dbg !1494
  %. = select i1 %cmp21, i64 0, i64 %sub, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %., i64 0, metadata !548, metadata !768), !dbg !1471
  %size.1 = select i1 %or.cond, i64 %., i64 %size.0, !dbg !1493
  %10 = load i8*, i8** %buf, align 8, !dbg !1498, !tbaa !800
  %add.ptr = getelementptr i8, i8* %10, i64 %9, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !550, metadata !768), !dbg !1500
  %add = add i64 %size.1, %9, !dbg !1501
  store i64 %add, i64* %pos, align 8, !dbg !1501, !tbaa !883
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %size.1) #3, !dbg !1502
  br label %cleanup, !dbg !1503

cleanup:                                          ; preds = %land.lhs.true, %if.end, %if.end.17, %if.else.13, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call28, %if.end.17 ], [ null, %if.else.13 ], [ null, %if.end ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1504
  ret %struct._object* %retval.0, !dbg !1504
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getbuffer(%struct.bytesio* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !554, metadata !768), !dbg !1505
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @_PyBytesIOBuffer_Type, i64 0, metadata !555, metadata !768), !dbg !1506
  %buf1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1507
  %0 = load i8*, i8** %buf1, align 8, !dbg !1507, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1507
  br i1 %cmp, label %if.then, label %if.end, !dbg !1509

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1510, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1510
  br label %cleanup, !dbg !1513

if.end:                                           ; preds = %entry
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyBytesIOBuffer_Type, i64 0, i32 36), align 8, !dbg !1514, !tbaa !944
  %call = tail call %struct._object* %2(%struct._typeobject* nonnull @_PyBytesIOBuffer_Type, i64 0) #3, !dbg !1515
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !1516
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1518

if.end.4:                                         ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 0, i32 0, !dbg !1519
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1519, !tbaa !818
  %inc = add i64 %3, 1, !dbg !1519
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1519, !tbaa !818
  %source = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1520
  %4 = bitcast %struct._object* %source to %struct.bytesio**, !dbg !1520
  store %struct.bytesio* %self, %struct.bytesio** %4, align 8, !dbg !1521, !tbaa !967
  %call5 = tail call %struct._object* @PyMemoryView_FromObject(%struct._object* %call) #3, !dbg !1522
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !559, metadata !768), !dbg !1523
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !560, metadata !768), !dbg !1524
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1526
  %5 = load i64, i64* %ob_refcnt6, align 8, !dbg !1526, !tbaa !818
  %dec = add i64 %5, -1, !dbg !1526
  store i64 %dec, i64* %ob_refcnt6, align 8, !dbg !1526, !tbaa !818
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1526
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !1528

if.else:                                          ; preds = %if.end.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1529
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1529, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1529
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1529, !tbaa !823
  tail call void %7(%struct._object* %call) #3, !dbg !1529
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.4, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end ], [ %call5, %if.end.4 ], [ %call5, %if.else ]
  ret %struct._object* %retval.0, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getvalue(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !564, metadata !768), !dbg !1532
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1533
  %0 = load i8*, i8** %buf, align 8, !dbg !1533, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1533
  br i1 %cmp, label %if.then, label %if.end, !dbg !1535

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1536, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1536
  br label %return, !dbg !1536

if.end:                                           ; preds = %entry
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1539
  %2 = load i64, i64* %string_size, align 8, !dbg !1539, !tbaa !877
  %call = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 %2) #3, !dbg !1540
  br label %return, !dbg !1541

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1542
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_seek(%struct.bytesio* nocapture %self, %struct._object* %args) #0 {
entry:
  %pos = alloca i64, align 8
  %mode = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !567, metadata !768), !dbg !1543
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !568, metadata !768), !dbg !1544
  %0 = bitcast i64* %pos to i8*, !dbg !1545
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1545
  %1 = bitcast i32* %mode to i8*, !dbg !1546
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !570, metadata !768), !dbg !1547
  store i32 0, i32* %mode, align 4, !dbg !1547, !tbaa !1548
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1549
  %2 = load i8*, i8** %buf, align 8, !dbg !1549, !tbaa !800
  %cmp = icmp eq i8* %2, null, !dbg !1549
  br i1 %cmp, label %if.then, label %if.end, !dbg !1551

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1552, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1552
  br label %cleanup, !dbg !1555

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !569, metadata !768), !dbg !1556
  tail call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !570, metadata !768), !dbg !1547
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i64* nonnull %pos, i32* nonnull %mode) #3, !dbg !1557
  %tobool = icmp eq i32 %call, 0, !dbg !1557
  br i1 %tobool, label %cleanup, label %if.end.2, !dbg !1559

if.end.2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !569, metadata !768), !dbg !1556
  %4 = load i64, i64* %pos, align 8, !dbg !1560, !tbaa !1264
  %cmp3 = icmp slt i64 %4, 0, !dbg !1562
  call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !570, metadata !768), !dbg !1547
  %5 = load i32, i32* %mode, align 4
  %cmp4 = icmp eq i32 %5, 0, !dbg !1564
  %or.cond = and i1 %cmp3, %cmp4, !dbg !1565
  br i1 %or.cond, label %if.then.5, label %if.end.7, !dbg !1565

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1566, !tbaa !794
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i64 %4) #3, !dbg !1568
  br label %cleanup, !dbg !1569

if.end.7:                                         ; preds = %if.end.2
  switch i32 %5, label %if.then.25 [
    i32 1, label %if.then.9
    i32 2, label %if.then.16
    i32 0, label %if.end.29
  ], !dbg !1570

if.then.9:                                        ; preds = %if.end.7
  %pos10 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1571
  %7 = load i64, i64* %pos10, align 8, !dbg !1571, !tbaa !883
  %sub = sub i64 9223372036854775807, %7, !dbg !1575
  %cmp11 = icmp sgt i64 %4, %sub, !dbg !1576
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1577

if.then.12:                                       ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1578, !tbaa !794
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0)) #3, !dbg !1580
  br label %cleanup, !dbg !1581

if.end.13:                                        ; preds = %if.then.9
  %add = add i64 %7, %4, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !569, metadata !768), !dbg !1556
  store i64 %add, i64* %pos, align 8, !dbg !1582, !tbaa !1264
  br label %if.end.29, !dbg !1583

if.then.16:                                       ; preds = %if.end.7
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1584
  %9 = load i64, i64* %string_size, align 8, !dbg !1584, !tbaa !877
  %sub17 = sub i64 9223372036854775807, %9, !dbg !1588
  %cmp18 = icmp sgt i64 %4, %sub17, !dbg !1589
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !1590

if.then.19:                                       ; preds = %if.then.16
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1591, !tbaa !794
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0)) #3, !dbg !1593
  br label %cleanup, !dbg !1594

if.end.20:                                        ; preds = %if.then.16
  %add22 = add i64 %9, %4, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %add22, i64 0, metadata !569, metadata !768), !dbg !1556
  store i64 %add22, i64* %pos, align 8, !dbg !1595, !tbaa !1264
  br label %if.end.29, !dbg !1596

if.then.25:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1597, !tbaa !794
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i32 %5) #3, !dbg !1600
  br label %cleanup, !dbg !1601

if.end.29:                                        ; preds = %if.end.7, %if.end.20, %if.end.13
  %12 = phi i64 [ %add22, %if.end.20 ], [ %add, %if.end.13 ], [ %4, %if.end.7 ], !dbg !1560
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !569, metadata !768), !dbg !1556
  %cmp30 = icmp slt i64 %12, 0, !dbg !1602
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !1603

if.then.31:                                       ; preds = %if.end.29
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !569, metadata !768), !dbg !1556
  store i64 0, i64* %pos, align 8, !dbg !1604, !tbaa !1264
  br label %if.end.32, !dbg !1605

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %13 = phi i64 [ 0, %if.then.31 ], [ %12, %if.end.29 ], !dbg !1606
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !569, metadata !768), !dbg !1556
  %pos33 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1607
  store i64 %13, i64* %pos33, align 8, !dbg !1608, !tbaa !883
  %call35 = call %struct._object* @PyLong_FromSsize_t(i64 %13) #3, !dbg !1609
  br label %cleanup, !dbg !1610

cleanup:                                          ; preds = %if.end, %if.end.32, %if.then.25, %if.then.19, %if.then.12, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.5 ], [ null, %if.then.12 ], [ %call35, %if.end.32 ], [ null, %if.then.19 ], [ null, %if.then.25 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #3, !dbg !1611
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1611
  ret %struct._object* %retval.0, !dbg !1611
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_truncate(%struct.bytesio* nocapture %self, %struct._object* %args) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !573, metadata !768), !dbg !1612
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !574, metadata !768), !dbg !1613
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1614
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1614
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !576, metadata !768), !dbg !1615
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8, !dbg !1615, !tbaa !794
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1616
  %1 = load i8*, i8** %buf, align 8, !dbg !1616, !tbaa !800
  %cmp = icmp eq i8* %1, null, !dbg !1616
  br i1 %cmp, label %if.then, label %if.end, !dbg !1618

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1619, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1619
  br label %cleanup, !dbg !1622

if.end:                                           ; preds = %entry
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 7, !dbg !1623
  %3 = load i64, i64* %exports, align 8, !dbg !1623, !tbaa !787
  %cmp1 = icmp sgt i64 %3, 0, !dbg !1623
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1625

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1626, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0)) #3, !dbg !1626
  br label %cleanup, !dbg !1629

if.end.3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !576, metadata !768), !dbg !1615
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), %struct._object** nonnull %arg) #3, !dbg !1630
  %tobool = icmp eq i32 %call, 0, !dbg !1630
  br i1 %tobool, label %cleanup, label %if.end.5, !dbg !1632

if.end.5:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !576, metadata !768), !dbg !1615
  %5 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1633, !tbaa !794
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1633
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1633, !tbaa !822
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1633
  %7 = load i64, i64* %tp_flags, align 8, !dbg !1633, !tbaa !1299
  %and = and i64 %7, 16777216, !dbg !1633
  %cmp6 = icmp eq i64 %and, 0, !dbg !1633
  br i1 %cmp6, label %if.else, label %if.then.7, !dbg !1635

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i64 @PyLong_AsSsize_t(%struct._object* %5) #3, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %call8, i64 0, metadata !575, metadata !768), !dbg !1638
  %cmp9 = icmp eq i64 %call8, -1, !dbg !1639
  br i1 %cmp9, label %land.lhs.true, label %if.end.20, !dbg !1641

land.lhs.true:                                    ; preds = %if.then.7
  %call10 = call %struct._object* @PyErr_Occurred() #3, !dbg !1642
  %tobool11 = icmp eq %struct._object* %call10, null, !dbg !1642
  br i1 %tobool11, label %if.then.22, label %cleanup, !dbg !1644

if.else:                                          ; preds = %if.end.5
  %cmp14 = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !1645
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !1647

if.then.15:                                       ; preds = %if.else
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1648
  %8 = load i64, i64* %pos, align 8, !dbg !1648, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !575, metadata !768), !dbg !1638
  br label %if.end.20

if.else.16:                                       ; preds = %if.else
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1650, !tbaa !794
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 1, !dbg !1652
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1652, !tbaa !1316
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %10) #3, !dbg !1653
  br label %cleanup, !dbg !1654

if.end.20:                                        ; preds = %if.then.7, %if.then.15
  %size.0 = phi i64 [ %call8, %if.then.7 ], [ %8, %if.then.15 ]
  %cmp21 = icmp slt i64 %size.0, 0, !dbg !1655
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !1657

if.then.22:                                       ; preds = %land.lhs.true, %if.end.20
  %size.048 = phi i64 [ %size.0, %if.end.20 ], [ -1, %land.lhs.true ]
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1658, !tbaa !794
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i64 %size.048) #3, !dbg !1660
  br label %cleanup, !dbg !1661

if.end.24:                                        ; preds = %if.end.20
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1662
  %12 = load i64, i64* %string_size, align 8, !dbg !1662, !tbaa !877
  %cmp25 = icmp slt i64 %size.0, %12, !dbg !1664
  br i1 %cmp25, label %if.end.i, label %if.end.32, !dbg !1665

if.end.i:                                         ; preds = %if.end.24
  store i64 %size.0, i64* %string_size, align 8, !dbg !1666, !tbaa !877
  call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !479, metadata !768) #3, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %size.0, i64 0, metadata !480, metadata !768) #3, !dbg !1671
  %buf_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 4, !dbg !1672
  %13 = load i64, i64* %buf_size.i, align 8, !dbg !1672, !tbaa !1084
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !481, metadata !768) #3, !dbg !1673
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !482, metadata !768) #3, !dbg !1674
  %div.i = lshr i64 %13, 1, !dbg !1675
  %cmp1.i = icmp ugt i64 %div.i, %size.0, !dbg !1676
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.i, !dbg !1677

if.then.2.i:                                      ; preds = %if.end.i
  %add.i = add i64 %size.0, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !481, metadata !768) #3, !dbg !1673
  br label %if.end.23.i, !dbg !1679

if.else.i:                                        ; preds = %if.end.i
  %cmp3.i = icmp ugt i64 %13, %size.0, !dbg !1680
  br i1 %cmp3.i, label %if.end.32, label %if.else.5.i, !dbg !1681

if.else.5.i:                                      ; preds = %if.else.i
  %conv.i = uitofp i64 %size.0 to double, !dbg !1682
  %conv6.i = uitofp i64 %13 to double, !dbg !1683
  %mul.i = fmul double %conv6.i, 1.125000e+00, !dbg !1684
  %cmp7.i = fcmp ugt double %conv.i, %mul.i, !dbg !1685
  br i1 %cmp7.i, label %if.else.15.i, label %if.then.9.i, !dbg !1686

if.then.9.i:                                      ; preds = %if.else.5.i
  %shr.i = lshr i64 %size.0, 3, !dbg !1687
  %add10.i = add i64 %shr.i, %size.0, !dbg !1688
  %cmp11.i = icmp ult i64 %size.0, 9, !dbg !1689
  %conv13.i = select i1 %cmp11.i, i64 3, i64 6, !dbg !1690
  %add14.i = add i64 %add10.i, %conv13.i, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %add14.i, i64 0, metadata !481, metadata !768) #3, !dbg !1673
  br label %if.end.23.i, !dbg !1692

if.else.15.i:                                     ; preds = %if.else.5.i
  %add16.i = add i64 %size.0, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %add16.i, i64 0, metadata !481, metadata !768) #3, !dbg !1673
  br label %if.end.23.i, !dbg !1694

if.end.23.i:                                      ; preds = %if.else.15.i, %if.then.9.i, %if.then.2.i
  %alloc.0.i = phi i64 [ %add.i, %if.then.2.i ], [ %add14.i, %if.then.9.i ], [ %add16.i, %if.else.15.i ], !dbg !1694
  %14 = load i8*, i8** %buf, align 8, !dbg !1695, !tbaa !800
  %call.i = call i8* @PyMem_Realloc(i8* %14, i64 %alloc.0.i) #3, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !482, metadata !768) #3, !dbg !1674
  %cmp25.i = icmp eq i8* %call.i, null, !dbg !1697
  br i1 %cmp25.i, label %resize_buffer.exit, label %if.end.29.i, !dbg !1698

if.end.29.i:                                      ; preds = %if.end.23.i
  store i64 %alloc.0.i, i64* %buf_size.i, align 8, !dbg !1699, !tbaa !1084
  store i8* %call.i, i8** %buf, align 8, !dbg !1700, !tbaa !800
  br label %if.end.32, !dbg !1701

resize_buffer.exit:                               ; preds = %if.end.23.i
  %call28.i = call %struct._object* @PyErr_NoMemory() #3, !dbg !1702
  br label %cleanup, !dbg !1703

if.end.32:                                        ; preds = %if.else.i, %if.end.29.i, %if.end.24
  %call33 = call %struct._object* @PyLong_FromSsize_t(i64 %size.0) #3, !dbg !1704
  br label %cleanup, !dbg !1705

cleanup:                                          ; preds = %resize_buffer.exit, %land.lhs.true, %if.end.3, %if.end.32, %if.then.22, %if.else.16, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.2 ], [ null, %if.then.22 ], [ %call33, %if.end.32 ], [ null, %if.else.16 ], [ null, %if.end.3 ], [ null, %land.lhs.true ], [ null, %resize_buffer.exit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1706
  ret %struct._object* %retval.0, !dbg !1706
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_getstate(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !579, metadata !768), !dbg !1707
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !564, metadata !768) #3, !dbg !1708
  %buf.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1710
  %0 = load i8*, i8** %buf.i, align 8, !dbg !1710, !tbaa !800
  %cmp.i = icmp eq i8* %0, null, !dbg !1710
  br i1 %cmp.i, label %bytesio_getvalue.exit.thread, label %bytesio_getvalue.exit, !dbg !1711

bytesio_getvalue.exit.thread:                     ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1712, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !1712
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !580, metadata !768), !dbg !1713
  br label %cleanup, !dbg !1714

bytesio_getvalue.exit:                            ; preds = %entry
  %string_size.i = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 3, !dbg !1715
  %2 = load i64, i64* %string_size.i, align 8, !dbg !1715, !tbaa !877
  %call.i = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 %2) #3, !dbg !1716
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !580, metadata !768), !dbg !1713
  %cmp = icmp eq %struct._object* %call.i, null, !dbg !1717
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1714

if.end:                                           ; preds = %bytesio_getvalue.exit
  %dict1 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 5, !dbg !1719
  %3 = load %struct._object*, %struct._object** %dict1, align 8, !dbg !1719, !tbaa !809
  %cmp2 = icmp eq %struct._object* %3, null, !dbg !1720
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1721

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1722, !tbaa !818
  %inc = add i64 %4, 1, !dbg !1722
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1722, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !581, metadata !768), !dbg !1724
  br label %if.end.13, !dbg !1725

if.else:                                          ; preds = %if.end
  %call5 = tail call %struct._object* @PyDict_Copy(%struct._object* %3) #3, !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !581, metadata !768), !dbg !1724
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1727
  br i1 %cmp6, label %do.body, label %if.end.13, !dbg !1728

do.body:                                          ; preds = %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !583, metadata !768), !dbg !1729
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1731
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1731, !tbaa !818
  %dec = add i64 %5, -1, !dbg !1731
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1731, !tbaa !818
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1731
  br i1 %cmp8, label %if.else.10, label %cleanup, !dbg !1733

if.else.10:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1734
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1734, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1734
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1734, !tbaa !823
  tail call void %7(%struct._object* %call.i) #3, !dbg !1734
  br label %cleanup

if.end.13:                                        ; preds = %if.else, %if.then.3
  %dict.0 = phi %struct._object* [ @_Py_NoneStruct, %if.then.3 ], [ %call5, %if.else ]
  %pos = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1736
  %8 = load i64, i64* %pos, align 8, !dbg !1736, !tbaa !883
  %call14 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %struct._object* %call.i, i64 %8, %struct._object* %dict.0) #3, !dbg !1737
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !582, metadata !768), !dbg !1738
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !589, metadata !768), !dbg !1739
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1741
  %9 = load i64, i64* %ob_refcnt17, align 8, !dbg !1741, !tbaa !818
  %dec18 = add i64 %9, -1, !dbg !1741
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !1741, !tbaa !818
  %cmp19 = icmp eq i64 %dec18, 0, !dbg !1741
  br i1 %cmp19, label %if.else.21, label %cleanup, !dbg !1743

if.else.21:                                       ; preds = %if.end.13
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1744
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1744, !tbaa !822
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1744
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !1744, !tbaa !823
  tail call void %11(%struct._object* %call.i) #3, !dbg !1744
  br label %cleanup

cleanup:                                          ; preds = %bytesio_getvalue.exit.thread, %if.else.21, %if.end.13, %if.else.10, %do.body, %bytesio_getvalue.exit
  %retval.0 = phi %struct._object* [ null, %bytesio_getvalue.exit ], [ null, %do.body ], [ null, %if.else.10 ], [ %call14, %if.end.13 ], [ %call14, %if.else.21 ], [ null, %bytesio_getvalue.exit.thread ]
  ret %struct._object* %retval.0, !dbg !1746
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_setstate(%struct.bytesio* nocapture %self, %struct._object* nocapture readonly %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !593, metadata !768), !dbg !1747
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !594, metadata !768), !dbg !1748
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %state, i64 0, i32 1, !dbg !1749
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1751, !tbaa !822
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1749
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1749, !tbaa !1299
  %and = and i64 %1, 67108864, !dbg !1749
  %cmp = icmp eq i64 %and, 0, !dbg !1749
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1753

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct._object, %struct._object* %state, i64 1, i32 0, !dbg !1754
  %3 = load i64, i64* %2, align 8, !dbg !1754, !tbaa !1756
  %cmp1 = icmp slt i64 %3, 3, !dbg !1757
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1758

if.then:                                          ; preds = %entry, %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1759, !tbaa !794
  %ob_type2 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 0, i32 1, !dbg !1760
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1760, !tbaa !822
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !1761
  %6 = load i8*, i8** %tp_name, align 8, !dbg !1761, !tbaa !1316
  %tp_name4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !1762
  %7 = load i8*, i8** %tp_name4, align 8, !dbg !1762, !tbaa !1316
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i64 0, i64 0), i8* %6, i8* %7) #3, !dbg !1763
  br label %cleanup, !dbg !1764

if.end:                                           ; preds = %lor.lhs.false
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 7, !dbg !1765
  %8 = load i64, i64* %exports, align 8, !dbg !1765, !tbaa !787
  %cmp5 = icmp sgt i64 %8, 0, !dbg !1765
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1767

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1768, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0)) #3, !dbg !1768
  br label %cleanup, !dbg !1771

if.end.7:                                         ; preds = %if.end
  %pos8 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 2, !dbg !1772
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %state, i64 1, i32 1, !dbg !1773
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1773
  %10 = bitcast i64* %pos8 to i8*, !dbg !1773
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1774
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1773, !tbaa !794
  %call9 = tail call %struct._object* @bytesio_write(%struct.bytesio* %self, %struct._object* %11), !dbg !1775
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !595, metadata !768), !dbg !1776
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !1777
  br i1 %cmp10, label %cleanup, label %do.body, !dbg !1779

do.body:                                          ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !599, metadata !768), !dbg !1780
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !1782
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1782, !tbaa !818
  %dec = add i64 %12, -1, !dbg !1782
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1782, !tbaa !818
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1782
  br i1 %cmp13, label %if.else, label %if.end.16, !dbg !1784

if.else:                                          ; preds = %do.body
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !1785
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1785, !tbaa !822
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1785
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1785, !tbaa !823
  tail call void %14(%struct._object* %call9) #3, !dbg !1785
  br label %if.end.16

if.end.16:                                        ; preds = %do.body, %if.else
  %arrayidx18 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1787
  %15 = bitcast %struct._typeobject** %arrayidx18 to %struct._object**, !dbg !1787
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !1787, !tbaa !794
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !596, metadata !768), !dbg !1788
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1789
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1789, !tbaa !822
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 19, !dbg !1789
  %18 = load i64, i64* %tp_flags20, align 8, !dbg !1789, !tbaa !1299
  %and21 = and i64 %18, 16777216, !dbg !1789
  %cmp22 = icmp eq i64 %and21, 0, !dbg !1789
  br i1 %cmp22, label %if.then.23, label %if.end.27, !dbg !1791

if.then.23:                                       ; preds = %if.end.16
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1792, !tbaa !794
  %tp_name25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 1, !dbg !1794
  %20 = load i8*, i8** %tp_name25, align 8, !dbg !1794, !tbaa !1316
  %call26 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i64 0, i64 0), i8* %20) #3, !dbg !1795
  br label %cleanup, !dbg !1796

if.end.27:                                        ; preds = %if.end.16
  %call28 = tail call i64 @PyLong_AsSsize_t(%struct._object* %16) #3, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %call28, i64 0, metadata !598, metadata !768), !dbg !1798
  %cmp29 = icmp eq i64 %call28, -1, !dbg !1799
  br i1 %cmp29, label %land.lhs.true, label %if.end.32, !dbg !1801

land.lhs.true:                                    ; preds = %if.end.27
  %call30 = tail call %struct._object* @PyErr_Occurred() #3, !dbg !1802
  %tobool = icmp eq %struct._object* %call30, null, !dbg !1802
  br i1 %tobool, label %if.then.34, label %cleanup, !dbg !1804

if.end.32:                                        ; preds = %if.end.27
  %cmp33 = icmp slt i64 %call28, 0, !dbg !1805
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !1807

if.then.34:                                       ; preds = %land.lhs.true, %if.end.32
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1808, !tbaa !794
  tail call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0)) #3, !dbg !1810
  br label %cleanup, !dbg !1811

if.end.35:                                        ; preds = %if.end.32
  store i64 %call28, i64* %pos8, align 8, !dbg !1812, !tbaa !883
  %arrayidx38 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !1813
  %22 = bitcast %struct._typeobject** %arrayidx38 to %struct._object**, !dbg !1813
  %23 = load %struct._object*, %struct._object** %22, align 8, !dbg !1813, !tbaa !794
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !597, metadata !768), !dbg !1814
  %cmp39 = icmp eq %struct._object* %23, @_Py_NoneStruct, !dbg !1815
  br i1 %cmp39, label %if.end.62, label %if.then.40, !dbg !1817

if.then.40:                                       ; preds = %if.end.35
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1818
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1818, !tbaa !822
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 19, !dbg !1818
  %25 = load i64, i64* %tp_flags42, align 8, !dbg !1818, !tbaa !1299
  %and43 = and i64 %25, 536870912, !dbg !1818
  %cmp44 = icmp eq i64 %and43, 0, !dbg !1818
  br i1 %cmp44, label %if.then.45, label %if.end.49, !dbg !1821

if.then.45:                                       ; preds = %if.then.40
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1822, !tbaa !794
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 1, !dbg !1824
  %27 = load i8*, i8** %tp_name47, align 8, !dbg !1824, !tbaa !1316
  %call48 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i8* %27) #3, !dbg !1825
  br label %cleanup, !dbg !1826

if.end.49:                                        ; preds = %if.then.40
  %dict50 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 5, !dbg !1827
  %28 = load %struct._object*, %struct._object** %dict50, align 8, !dbg !1827, !tbaa !809
  %tobool51 = icmp eq %struct._object* %28, null, !dbg !1829
  br i1 %tobool51, label %if.else.58, label %if.then.52, !dbg !1830

if.then.52:                                       ; preds = %if.end.49
  %call54 = tail call i32 @PyDict_Update(%struct._object* %28, %struct._object* %23) #3, !dbg !1831
  %cmp55 = icmp slt i32 %call54, 0, !dbg !1834
  br i1 %cmp55, label %cleanup, label %if.end.62, !dbg !1835

if.else.58:                                       ; preds = %if.end.49
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1836
  %29 = load i64, i64* %ob_refcnt59, align 8, !dbg !1836, !tbaa !818
  %inc = add i64 %29, 1, !dbg !1836
  store i64 %inc, i64* %ob_refcnt59, align 8, !dbg !1836, !tbaa !818
  store %struct._object* %23, %struct._object** %dict50, align 8, !dbg !1838, !tbaa !809
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.35, %if.else.58, %if.then.52
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1839, !tbaa !818
  %inc63 = add i64 %30, 1, !dbg !1839
  store i64 %inc63, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1839, !tbaa !818
  br label %cleanup, !dbg !1839

cleanup:                                          ; preds = %if.then.52, %land.lhs.true, %if.end.7, %if.end.62, %if.then.45, %if.then.34, %if.then.23, %if.then.6, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.6 ], [ null, %if.then.34 ], [ @_Py_NoneStruct, %if.end.62 ], [ null, %if.then.45 ], [ null, %if.then.23 ], [ null, %if.end.7 ], [ null, %land.lhs.true ], [ null, %if.then.52 ]
  ret %struct._object* %retval.0, !dbg !1840
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytesio_sizeof(%struct.bytesio* nocapture readonly %self, i8* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !605, metadata !768), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8* %unused, i64 0, metadata !606, metadata !768), !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 72, i64 0, metadata !607, metadata !768), !dbg !1843
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1844
  %0 = load i8*, i8** %buf, align 8, !dbg !1844, !tbaa !800
  %tobool = icmp eq i8* %0, null, !dbg !1846
  br i1 %tobool, label %if.end, label %if.then, !dbg !1847

if.then:                                          ; preds = %entry
  %buf_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 4, !dbg !1848
  %1 = load i64, i64* %buf_size, align 8, !dbg !1848, !tbaa !1084
  %add = add i64 %1, 72, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !607, metadata !768), !dbg !1843
  br label %if.end, !dbg !1850

if.end:                                           ; preds = %entry, %if.then
  %res.0 = phi i64 [ %add, %if.then ], [ 72, %entry ]
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %res.0) #3, !dbg !1851
  ret %struct._object* %call, !dbg !1852
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

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
define internal %struct._object* @bytesio_get_closed(%struct.bytesio* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %self, i64 0, metadata !610, metadata !768), !dbg !1853
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %self, i64 0, i32 1, !dbg !1854
  %0 = load i8*, i8** %buf, align 8, !dbg !1854, !tbaa !800
  %cmp = icmp eq i8* %0, null, !dbg !1856
  br i1 %cmp, label %if.then, label %if.else, !dbg !1857

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1858, !tbaa !818
  %inc = add i64 %1, 1, !dbg !1858
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1858, !tbaa !818
  br label %return, !dbg !1858

if.else:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1860, !tbaa !818
  %inc1 = add i64 %2, 1, !dbg !1860
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1860, !tbaa !818
  br label %return, !dbg !1860

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.else ]
  ret %struct._object* %retval.0, !dbg !1862
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @bytesiobuf_getbuffer(%struct.bytesiobuf* %obj, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesiobuf* %obj, i64 0, metadata !655, metadata !768), !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view, i64 0, metadata !656, metadata !768), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !657, metadata !768), !dbg !1865
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %obj, i64 0, i32 1, !dbg !1866
  %0 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !1866, !tbaa !967
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %0, i64 0, metadata !659, metadata !768), !dbg !1867
  %cmp = icmp eq %struct.bufferinfo* %view, null, !dbg !1868
  br i1 %cmp, label %if.then, label %if.end, !dbg !1870

if.then:                                          ; preds = %entry
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 7, !dbg !1871
  %1 = load i64, i64* %exports, align 8, !dbg !1873, !tbaa !787
  %inc = add i64 %1, 1, !dbg !1873
  store i64 %inc, i64* %exports, align 8, !dbg !1873, !tbaa !787
  br label %cleanup, !dbg !1874

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %obj, i64 0, i32 0, !dbg !1875
  %buf = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 1, !dbg !1876
  %3 = load i8*, i8** %buf, align 8, !dbg !1876, !tbaa !800
  %string_size = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 3, !dbg !1877
  %4 = load i64, i64* %string_size, align 8, !dbg !1877, !tbaa !877
  %call = tail call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %view, %struct._object* %2, i8* %3, i64 %4, i32 0, i32 %flags) #3, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !658, metadata !768), !dbg !1879
  %cmp1 = icmp sgt i32 %call, -1, !dbg !1880
  br i1 %cmp1, label %if.then.2, label %cleanup, !dbg !1882

if.then.2:                                        ; preds = %if.end
  %exports3 = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 7, !dbg !1883
  %5 = load i64, i64* %exports3, align 8, !dbg !1885, !tbaa !787
  %inc4 = add i64 %5, 1, !dbg !1885
  store i64 %inc4, i64* %exports3, align 8, !dbg !1885, !tbaa !787
  br label %cleanup, !dbg !1886

cleanup:                                          ; preds = %if.end, %if.then.2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then.2 ], [ %call, %if.end ]
  ret i32 %retval.0, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal void @bytesiobuf_releasebuffer(%struct.bytesiobuf* nocapture readonly %obj, %struct.bufferinfo* nocapture readnone %view) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.bytesiobuf* %obj, i64 0, metadata !664, metadata !768), !dbg !1888
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %view, i64 0, metadata !665, metadata !768), !dbg !1889
  %source = getelementptr inbounds %struct.bytesiobuf, %struct.bytesiobuf* %obj, i64 0, i32 1, !dbg !1890
  %0 = load %struct.bytesio*, %struct.bytesio** %source, align 8, !dbg !1890, !tbaa !967
  tail call void @llvm.dbg.value(metadata %struct.bytesio* %0, i64 0, metadata !666, metadata !768), !dbg !1891
  %exports = getelementptr inbounds %struct.bytesio, %struct.bytesio* %0, i64 0, i32 7, !dbg !1892
  %1 = load i64, i64* %exports, align 8, !dbg !1893, !tbaa !787
  %dec = add i64 %1, -1, !dbg !1893
  store i64 %dec, i64* %exports, align 8, !dbg !1893, !tbaa !787
  ret void, !dbg !1894
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!765, !766}
!llvm.ident = !{!767}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !391, globals: !678)
!1 = !DIFile(filename: "./Modules/_io/bytesio.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !25, !28, !29, !16, !69, !364, !382, !383, !370}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !6, line: 253, baseType: !7)
!6 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!17 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 102, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 181, baseType: !22)
!21 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !7, file: !6, line: 252, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 62, baseType: !27)
!26 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !31, line: 109, baseType: !32)
!31 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !46, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !46, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !37, file: !31, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !69, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !61, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !61, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !69, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !37, file: !31, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytesiobuf", file: !1, line: 19, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 16, size: 192, align: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !1, line: 17, baseType: !30, size: 128, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !366, file: !1, line: 18, baseType: !370, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytesio", file: !1, line: 14, baseType: !372)
!372 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 5, size: 576, align: 64, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !372, file: !1, line: 6, baseType: !30, size: 128, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !372, file: !1, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !372, file: !1, line: 8, baseType: !16, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "string_size", scope: !372, file: !1, line: 9, baseType: !16, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !372, file: !1, line: 10, baseType: !25, size: 64, align: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !372, file: !1, line: 11, baseType: !29, size: 64, align: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !372, file: !1, line: 12, baseType: !29, size: 64, align: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "exports", scope: !372, file: !1, line: 13, baseType: !16, size: 64, align: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !385, line: 33, baseType: !386)
!385 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!386 = !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 25, size: 256, align: 64, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !386, file: !385, line: 26, baseType: !40, size: 192, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !386, file: !385, line: 27, baseType: !390, size: 64, align: 64, offset: 192)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 64, elements: !99)
!391 = !{!392, !405, !416, !427, !434, !444, !447, !450, !453, !456, !459, !468, !475, !483, !501, !509, !516, !524, !544, !552, !562, !565, !571, !577, !591, !601, !608, !611, !628, !640, !651, !660, !667}
!392 = !DISubprogram(name: "bytesio_dealloc", scope: !1, file: !1, line: 783, type: !393, isLocal: true, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesio*)* @bytesio_dealloc, variables: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !370}
!395 = !{!396, !397, !399, !401}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !392, file: !1, line: 783, type: !370)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !398, file: !1, line: 785, type: !4)
!398 = distinct !DILexicalBlock(scope: !392, file: !1, line: 785, column: 5)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !400, file: !1, line: 795, type: !29)
!400 = distinct !DILexicalBlock(scope: !392, file: !1, line: 795, column: 5)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !402, file: !1, line: 795, type: !29)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 795, column: 5)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 795, column: 5)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 795, column: 5)
!405 = !DISubprogram(name: "bytesio_traverse", scope: !1, file: !1, line: 861, type: !406, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*, i32 (%struct._object*, i8*)*, i8*)* @bytesio_traverse, variables: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!61, !370, !277, !28}
!408 = !{!409, !410, !411, !412}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !405, file: !1, line: 861, type: !370)
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !405, file: !1, line: 861, type: !277)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !405, file: !1, line: 861, type: !28)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !413, file: !1, line: 863, type: !61)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 863, column: 5)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 863, column: 5)
!415 = distinct !DILexicalBlock(scope: !405, file: !1, line: 863, column: 5)
!416 = !DISubprogram(name: "bytesio_clear", scope: !1, file: !1, line: 868, type: !417, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*)* @bytesio_clear, variables: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!61, !370}
!419 = !{!420, !421, !423}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !416, file: !1, line: 868, type: !370)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !422, file: !1, line: 870, type: !29)
!422 = distinct !DILexicalBlock(scope: !416, file: !1, line: 870, column: 5)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !424, file: !1, line: 870, type: !29)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 870, column: 5)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 870, column: 5)
!426 = distinct !DILexicalBlock(scope: !422, file: !1, line: 870, column: 5)
!427 = !DISubprogram(name: "bytesio_iternext", scope: !1, file: !1, line: 515, type: !428, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_iternext, variables: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!29, !370}
!430 = !{!431, !432, !433}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !427, file: !1, line: 515, type: !370)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !427, file: !1, line: 517, type: !69)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !427, file: !1, line: 518, type: !16)
!434 = !DISubprogram(name: "get_line", scope: !1, file: !1, line: 41, type: !435, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, variables: !438)
!435 = !DISubroutineType(types: !436)
!436 = !{!16, !370, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!438 = !{!439, !440, !441, !442, !443}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !434, file: !1, line: 41, type: !370)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "output", arg: 2, scope: !434, file: !1, line: 41, type: !437)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !434, file: !1, line: 43, type: !69)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str_end", scope: !434, file: !1, line: 44, type: !46)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !434, file: !1, line: 45, type: !16)
!444 = !DISubprogram(name: "return_not_closed", scope: !1, file: !1, line: 185, type: !428, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @return_not_closed, variables: !445)
!445 = !{!446}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !444, file: !1, line: 185, type: !370)
!447 = !DISubprogram(name: "bytesio_close", scope: !1, file: !1, line: 656, type: !428, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_close, variables: !448)
!448 = !{!449}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !447, file: !1, line: 656, type: !370)
!450 = !DISubprogram(name: "bytesio_flush", scope: !1, file: !1, line: 195, type: !428, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_flush, variables: !451)
!451 = !{!452}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !450, file: !1, line: 195, type: !370)
!453 = !DISubprogram(name: "bytesio_isatty", scope: !1, file: !1, line: 244, type: !428, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_isatty, variables: !454)
!454 = !{!455}
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !453, file: !1, line: 244, type: !370)
!456 = !DISubprogram(name: "bytesio_tell", scope: !1, file: !1, line: 254, type: !428, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_tell, variables: !457)
!457 = !{!458}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !456, file: !1, line: 254, type: !370)
!459 = !DISubprogram(name: "bytesio_write", scope: !1, file: !1, line: 594, type: !460, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_write, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!29, !370, !29}
!462 = !{!463, !464, !465, !466, !467}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !459, file: !1, line: 594, type: !370)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !459, file: !1, line: 594, type: !29)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !459, file: !1, line: 596, type: !16)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !459, file: !1, line: 597, type: !250)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !459, file: !1, line: 598, type: !29)
!468 = !DISubprogram(name: "write_bytes", scope: !1, file: !1, line: 126, type: !469, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, variables: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!16, !370, !46, !16}
!471 = !{!472, !473, !474}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !468, file: !1, line: 126, type: !370)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytes", arg: 2, scope: !468, file: !1, line: 126, type: !46)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !468, file: !1, line: 126, type: !16)
!475 = !DISubprogram(name: "resize_buffer", scope: !1, file: !1, line: 74, type: !476, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, variables: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!61, !370, !25}
!478 = !{!479, !480, !481, !482}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !475, file: !1, line: 74, type: !370)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !475, file: !1, line: 74, type: !25)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alloc", scope: !475, file: !1, line: 78, type: !25)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_buf", scope: !475, file: !1, line: 79, type: !69)
!483 = !DISubprogram(name: "bytesio_writelines", scope: !1, file: !1, line: 623, type: !460, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_writelines, variables: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !493, !497, !499}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !483, file: !1, line: 623, type: !370)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !483, file: !1, line: 623, type: !29)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !483, file: !1, line: 625, type: !29)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !483, file: !1, line: 625, type: !29)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !483, file: !1, line: 626, type: !29)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !491, file: !1, line: 636, type: !29)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 636, column: 9)
!492 = distinct !DILexicalBlock(scope: !483, file: !1, line: 634, column: 46)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !1, line: 638, type: !29)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 638, column: 13)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 637, column: 26)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 637, column: 13)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !498, file: !1, line: 641, type: !29)
!498 = distinct !DILexicalBlock(scope: !492, file: !1, line: 641, column: 9)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !1, line: 643, type: !29)
!500 = distinct !DILexicalBlock(scope: !483, file: !1, line: 643, column: 5)
!501 = !DISubprogram(name: "bytesio_read1", scope: !1, file: !1, line: 316, type: !460, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read1, variables: !502)
!502 = !{!503, !504, !505, !506, !507}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !501, file: !1, line: 316, type: !370)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !501, file: !1, line: 316, type: !29)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !501, file: !1, line: 318, type: !29)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !501, file: !1, line: 318, type: !29)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !1, line: 324, type: !29)
!508 = distinct !DILexicalBlock(scope: !501, file: !1, line: 324, column: 5)
!509 = !DISubprogram(name: "bytesio_readinto", scope: !1, file: !1, line: 440, type: !460, isLocal: true, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readinto, variables: !510)
!510 = !{!511, !512, !513, !514, !515}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !1, line: 440, type: !370)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 2, scope: !509, file: !1, line: 440, type: !29)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw_buffer", scope: !509, file: !1, line: 442, type: !28)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !509, file: !1, line: 443, type: !16)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !509, file: !1, line: 443, type: !16)
!516 = !DISubprogram(name: "bytesio_readline", scope: !1, file: !1, line: 336, type: !460, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readline, variables: !517)
!517 = !{!518, !519, !520, !521, !522, !523}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !516, file: !1, line: 336, type: !370)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !516, file: !1, line: 336, type: !29)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !516, file: !1, line: 338, type: !16)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !516, file: !1, line: 338, type: !16)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !516, file: !1, line: 339, type: !69)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !516, file: !1, line: 340, type: !29)
!524 = !DISubprogram(name: "bytesio_readlines", scope: !1, file: !1, line: 381, type: !460, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_readlines, variables: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !540, !542}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !524, file: !1, line: 381, type: !370)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !524, file: !1, line: 381, type: !29)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxsize", scope: !524, file: !1, line: 383, type: !16)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !524, file: !1, line: 383, type: !16)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !524, file: !1, line: 383, type: !16)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !524, file: !1, line: 384, type: !29)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !524, file: !1, line: 384, type: !29)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !524, file: !1, line: 385, type: !69)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !524, file: !1, line: 386, type: !29)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !1, line: 418, type: !29)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 418, column: 13)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 417, column: 48)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 417, column: 13)
!539 = distinct !DILexicalBlock(scope: !524, file: !1, line: 413, column: 48)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !541, file: !1, line: 421, type: !29)
!541 = distinct !DILexicalBlock(scope: !539, file: !1, line: 421, column: 9)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !543, file: !1, line: 429, type: !29)
!543 = distinct !DILexicalBlock(scope: !524, file: !1, line: 429, column: 5)
!544 = !DISubprogram(name: "bytesio_read", scope: !1, file: !1, line: 267, type: !460, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_read, variables: !545)
!545 = !{!546, !547, !548, !549, !550, !551}
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !544, file: !1, line: 267, type: !370)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !544, file: !1, line: 267, type: !29)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !544, file: !1, line: 269, type: !16)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !544, file: !1, line: 269, type: !16)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !544, file: !1, line: 270, type: !69)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !544, file: !1, line: 271, type: !29)
!552 = !DISubprogram(name: "bytesio_getbuffer", scope: !1, file: !1, line: 207, type: !428, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getbuffer, variables: !553)
!553 = !{!554, !555, !558, !559, !560}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !1, line: 207, type: !370)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !552, file: !1, line: 209, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !31, line: 422, baseType: !37)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !552, file: !1, line: 210, type: !364)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view", scope: !552, file: !1, line: 211, type: !29)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !561, file: !1, line: 221, type: !29)
!561 = distinct !DILexicalBlock(scope: !552, file: !1, line: 221, column: 5)
!562 = !DISubprogram(name: "bytesio_getvalue", scope: !1, file: !1, line: 231, type: !428, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getvalue, variables: !563)
!563 = !{!564}
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !562, file: !1, line: 231, type: !370)
!565 = !DISubprogram(name: "bytesio_seek", scope: !1, file: !1, line: 540, type: !460, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_seek, variables: !566)
!566 = !{!567, !568, !569, !570}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !565, file: !1, line: 540, type: !370)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !565, file: !1, line: 540, type: !29)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !565, file: !1, line: 542, type: !16)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !565, file: !1, line: 543, type: !61)
!571 = !DISubprogram(name: "bytesio_truncate", scope: !1, file: !1, line: 473, type: !460, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_truncate, variables: !572)
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !571, file: !1, line: 473, type: !370)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !571, file: !1, line: 473, type: !29)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !571, file: !1, line: 475, type: !16)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !571, file: !1, line: 476, type: !29)
!577 = !DISubprogram(name: "bytesio_getstate", scope: !1, file: !1, line: 681, type: !428, isLocal: true, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_getstate, variables: !578)
!578 = !{!579, !580, !581, !582, !583, !589}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !577, file: !1, line: 681, type: !370)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !577, file: !1, line: 683, type: !29)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !577, file: !1, line: 684, type: !29)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !577, file: !1, line: 685, type: !29)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 696, type: !29)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 696, column: 13)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 695, column: 27)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 695, column: 13)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 693, column: 10)
!588 = distinct !DILexicalBlock(scope: !577, file: !1, line: 689, column: 9)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !1, line: 702, type: !29)
!590 = distinct !DILexicalBlock(scope: !577, file: !1, line: 702, column: 5)
!591 = !DISubprogram(name: "bytesio_setstate", scope: !1, file: !1, line: 707, type: !460, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, %struct._object*)* @bytesio_setstate, variables: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !591, file: !1, line: 707, type: !370)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !591, file: !1, line: 707, type: !29)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !591, file: !1, line: 709, type: !29)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position_obj", scope: !591, file: !1, line: 710, type: !29)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !591, file: !1, line: 711, type: !29)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !591, file: !1, line: 712, type: !16)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !1, line: 736, type: !29)
!600 = distinct !DILexicalBlock(scope: !591, file: !1, line: 736, column: 5)
!601 = !DISubprogram(name: "bytesio_sizeof", scope: !1, file: !1, line: 850, type: !602, isLocal: true, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*, i8*)* @bytesio_sizeof, variables: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!29, !370, !28}
!604 = !{!605, !606, !607}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !601, file: !1, line: 850, type: !370)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !601, file: !1, line: 850, type: !28)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !601, file: !1, line: 852, type: !16)
!608 = !DISubprogram(name: "bytesio_get_closed", scope: !1, file: !1, line: 164, type: !428, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.bytesio*)* @bytesio_get_closed, variables: !609)
!609 = !{!610}
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !608, file: !1, line: 164, type: !370)
!611 = !DISubprogram(name: "bytesio_init", scope: !1, file: !1, line: 824, type: !612, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesio*, %struct._object*, %struct._object*)* @bytesio_init, variables: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!61, !370, !29, !29}
!614 = !{!615, !616, !617, !618, !622, !623, !626}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !611, file: !1, line: 824, type: !370)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !611, file: !1, line: 824, type: !29)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !611, file: !1, line: 824, type: !29)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !611, file: !1, line: 826, type: !619)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 2)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initvalue", scope: !611, file: !1, line: 827, type: !29)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !624, file: !1, line: 838, type: !29)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 837, column: 44)
!625 = distinct !DILexicalBlock(scope: !611, file: !1, line: 837, column: 9)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !627, file: !1, line: 842, type: !29)
!627 = distinct !DILexicalBlock(scope: !624, file: !1, line: 842, column: 9)
!628 = !DISubprogram(name: "bytesio_new", scope: !1, file: !1, line: 802, type: !629, isLocal: true, isDefinition: true, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bytesio_new, variables: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!29, !556, !29, !29}
!631 = !{!632, !633, !634, !635, !636}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !628, file: !1, line: 802, type: !556)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !628, file: !1, line: 802, type: !29)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !628, file: !1, line: 802, type: !29)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !628, file: !1, line: 804, type: !370)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !1, line: 816, type: !29)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 816, column: 9)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 815, column: 28)
!639 = distinct !DILexicalBlock(scope: !628, file: !1, line: 815, column: 9)
!640 = !DISubprogram(name: "bytesiobuf_dealloc", scope: !1, file: !1, line: 993, type: !641, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesiobuf*)* @bytesiobuf_dealloc, variables: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !364}
!643 = !{!644, !645, !647}
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !640, file: !1, line: 993, type: !364)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !646, file: !1, line: 995, type: !29)
!646 = distinct !DILexicalBlock(scope: !640, file: !1, line: 995, column: 5)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !648, file: !1, line: 995, type: !29)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 995, column: 5)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 995, column: 5)
!650 = distinct !DILexicalBlock(scope: !646, file: !1, line: 995, column: 5)
!651 = !DISubprogram(name: "bytesiobuf_getbuffer", scope: !1, file: !1, line: 962, type: !652, isLocal: true, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesiobuf*, %struct.bufferinfo*, i32)* @bytesiobuf_getbuffer, variables: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!61, !364, !249, !61}
!654 = !{!655, !656, !657, !658, !659}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !651, file: !1, line: 962, type: !364)
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !651, file: !1, line: 962, type: !249)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !651, file: !1, line: 962, type: !61)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !651, file: !1, line: 964, type: !61)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !651, file: !1, line: 965, type: !370)
!660 = !DISubprogram(name: "bytesiobuf_releasebuffer", scope: !1, file: !1, line: 979, type: !661, isLocal: true, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.bytesiobuf*, %struct.bufferinfo*)* @bytesiobuf_releasebuffer, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !364, !249}
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !660, file: !1, line: 979, type: !364)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !660, file: !1, line: 979, type: !249)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !660, file: !1, line: 981, type: !370)
!667 = !DISubprogram(name: "bytesiobuf_traverse", scope: !1, file: !1, line: 986, type: !668, isLocal: true, isDefinition: true, scopeLine: 987, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.bytesiobuf*, i32 (%struct._object*, i8*)*, i8*)* @bytesiobuf_traverse, variables: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!61, !364, !277, !28}
!670 = !{!671, !672, !673, !674}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !667, file: !1, line: 986, type: !364)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !667, file: !1, line: 986, type: !277)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !667, file: !1, line: 986, type: !28)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !675, file: !1, line: 988, type: !61)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 988, column: 5)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 988, column: 5)
!677 = distinct !DILexicalBlock(scope: !667, file: !1, line: 988, column: 5)
!678 = !{!679, !680, !681, !685, !689, !693, !697, !701, !705, !709, !713, !717, !721, !725, !729, !733, !737, !741, !745, !749, !753, !757, !761, !764}
!679 = !DIGlobalVariable(name: "PyBytesIO_Type", scope: !0, file: !1, line: 912, type: !557, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyBytesIO_Type)
!680 = !DIGlobalVariable(name: "_PyBytesIOBuffer_Type", scope: !0, file: !1, line: 1004, type: !557, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyBytesIOBuffer_Type)
!681 = !DIGlobalVariable(name: "bytesio_doc", scope: !0, file: !1, line: 906, type: !682, isLocal: true, isDefinition: true, variable: [130 x i8]* @bytesio_doc)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1040, align: 8, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 130)
!685 = !DIGlobalVariable(name: "bytesio_methods", scope: !0, file: !1, line: 881, type: !686, isLocal: true, isDefinition: true, variable: [22 x %struct.PyMethodDef]* @bytesio_methods)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 5632, align: 64, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 22)
!689 = !DIGlobalVariable(name: "readable_doc", scope: !0, file: !1, line: 174, type: !690, isLocal: true, isDefinition: true, variable: [63 x i8]* @readable_doc)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 504, align: 8, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 63)
!693 = !DIGlobalVariable(name: "seekable_doc", scope: !0, file: !1, line: 180, type: !694, isLocal: true, isDefinition: true, variable: [65 x i8]* @seekable_doc)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 520, align: 8, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 65)
!697 = !DIGlobalVariable(name: "writable_doc", scope: !0, file: !1, line: 177, type: !698, isLocal: true, isDefinition: true, variable: [66 x i8]* @writable_doc)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 528, align: 8, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 66)
!701 = !DIGlobalVariable(name: "close_doc", scope: !0, file: !1, line: 652, type: !702, isLocal: true, isDefinition: true, variable: [46 x i8]* @close_doc)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 368, align: 8, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 46)
!705 = !DIGlobalVariable(name: "flush_doc", scope: !0, file: !1, line: 191, type: !706, isLocal: true, isDefinition: true, variable: [32 x i8]* @flush_doc)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, align: 8, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 32)
!709 = !DIGlobalVariable(name: "isatty_doc", scope: !0, file: !1, line: 237, type: !710, isLocal: true, isDefinition: true, variable: [103 x i8]* @isatty_doc)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 824, align: 8, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 103)
!713 = !DIGlobalVariable(name: "tell_doc", scope: !0, file: !1, line: 250, type: !714, isLocal: true, isDefinition: true, variable: [45 x i8]* @tell_doc)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 360, align: 8, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 45)
!717 = !DIGlobalVariable(name: "write_doc", scope: !0, file: !1, line: 588, type: !718, isLocal: true, isDefinition: true, variable: [80 x i8]* @write_doc)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, align: 8, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 80)
!721 = !DIGlobalVariable(name: "writelines_doc", scope: !0, file: !1, line: 615, type: !722, isLocal: true, isDefinition: true, variable: [219 x i8]* @writelines_doc)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1752, align: 8, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 219)
!725 = !DIGlobalVariable(name: "read1_doc", scope: !0, file: !1, line: 309, type: !726, isLocal: true, isDefinition: true, variable: [166 x i8]* @read1_doc)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1328, align: 8, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 166)
!729 = !DIGlobalVariable(name: "readinto_doc", scope: !0, file: !1, line: 433, type: !730, isLocal: true, isDefinition: true, variable: [170 x i8]* @readinto_doc)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1360, align: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 170)
!733 = !DIGlobalVariable(name: "readline_doc", scope: !0, file: !1, line: 328, type: !734, isLocal: true, isDefinition: true, variable: [225 x i8]* @readline_doc)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1800, align: 8, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 225)
!737 = !DIGlobalVariable(name: "readlines_doc", scope: !0, file: !1, line: 373, type: !738, isLocal: true, isDefinition: true, variable: [248 x i8]* @readlines_doc)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1984, align: 8, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 248)
!741 = !DIGlobalVariable(name: "read_doc", scope: !0, file: !1, line: 260, type: !742, isLocal: true, isDefinition: true, variable: [156 x i8]* @read_doc)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1248, align: 8, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 156)
!745 = !DIGlobalVariable(name: "getbuffer_doc", scope: !0, file: !1, line: 201, type: !746, isLocal: true, isDefinition: true, variable: [86 x i8]* @getbuffer_doc)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 688, align: 8, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 86)
!749 = !DIGlobalVariable(name: "getval_doc", scope: !0, file: !1, line: 225, type: !750, isLocal: true, isDefinition: true, variable: [74 x i8]* @getval_doc)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 592, align: 8, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 74)
!753 = !DIGlobalVariable(name: "seek_doc", scope: !0, file: !1, line: 530, type: !754, isLocal: true, isDefinition: true, variable: [309 x i8]* @seek_doc)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2472, align: 8, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 309)
!757 = !DIGlobalVariable(name: "truncate_doc", scope: !0, file: !1, line: 466, type: !758, isLocal: true, isDefinition: true, variable: [199 x i8]* @truncate_doc)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1592, align: 8, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 199)
!761 = !DIGlobalVariable(name: "bytesio_getsetlist", scope: !0, file: !1, line: 875, type: !762, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @bytesio_getsetlist)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 640, align: 64, elements: !620)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !315, line: 17, baseType: !314)
!764 = !DIGlobalVariable(name: "bytesiobuf_as_buffer", scope: !0, file: !1, line: 999, type: !241, isLocal: true, isDefinition: true, variable: %struct.PyBufferProcs* @bytesiobuf_as_buffer)
!765 = !{i32 2, !"Dwarf Version", i32 4}
!766 = !{i32 2, !"Debug Info Version", i32 3}
!767 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!768 = !DIExpression()
!769 = !DILocation(line: 783, column: 26, scope: !392)
!770 = !DILocation(line: 785, column: 5, scope: !771)
!771 = !DILexicalBlockFile(scope: !398, file: !1, discriminator: 1)
!772 = !DILocation(line: 785, column: 5, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !1, discriminator: 2)
!774 = distinct !DILexicalBlock(scope: !398, file: !1, line: 785, column: 5)
!775 = !{!776, !780, i64 16}
!776 = !{!"", !777, i64 0, !777, i64 8, !780, i64 16}
!777 = !{!"any pointer", !778, i64 0}
!778 = !{!"omnipotent char", !779, i64 0}
!779 = !{!"Simple C/C++ TBAA"}
!780 = !{!"long", !778, i64 0}
!781 = !DILocation(line: 785, column: 5, scope: !782)
!782 = !DILexicalBlockFile(scope: !398, file: !1, discriminator: 4)
!783 = !{!776, !777, i64 0}
!784 = !{!776, !777, i64 8}
!785 = !DILocation(line: 786, column: 15, scope: !786)
!786 = distinct !DILexicalBlock(scope: !392, file: !1, line: 786, column: 9)
!787 = !{!788, !780, i64 64}
!788 = !{!"", !789, i64 0, !777, i64 16, !780, i64 24, !780, i64 32, !780, i64 40, !777, i64 48, !777, i64 56, !780, i64 64}
!789 = !{!"_object", !780, i64 0, !777, i64 8}
!790 = !DILocation(line: 786, column: 23, scope: !786)
!791 = !DILocation(line: 786, column: 9, scope: !392)
!792 = !DILocation(line: 787, column: 25, scope: !793)
!793 = distinct !DILexicalBlock(scope: !786, file: !1, line: 786, column: 28)
!794 = !{!777, !777, i64 0}
!795 = !DILocation(line: 787, column: 9, scope: !793)
!796 = !DILocation(line: 789, column: 9, scope: !793)
!797 = !DILocation(line: 790, column: 5, scope: !793)
!798 = !DILocation(line: 791, column: 15, scope: !799)
!799 = distinct !DILexicalBlock(scope: !392, file: !1, line: 791, column: 9)
!800 = !{!788, !777, i64 16}
!801 = !DILocation(line: 791, column: 19, scope: !799)
!802 = !DILocation(line: 791, column: 9, scope: !392)
!803 = !DILocation(line: 792, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !1, line: 791, column: 28)
!805 = !DILocation(line: 793, column: 19, scope: !804)
!806 = !DILocation(line: 794, column: 5, scope: !804)
!807 = !DILocation(line: 795, column: 5, scope: !808)
!808 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 1)
!809 = !{!788, !777, i64 48}
!810 = !DILocation(line: 795, column: 5, scope: !404)
!811 = !DILocation(line: 795, column: 5, scope: !400)
!812 = !DILocation(line: 795, column: 5, scope: !813)
!813 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 2)
!814 = !DILocation(line: 795, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 4)
!816 = !DILocation(line: 795, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !402, file: !1, line: 795, column: 5)
!818 = !{!789, !780, i64 0}
!819 = !DILocation(line: 795, column: 5, scope: !402)
!820 = !DILocation(line: 795, column: 5, scope: !821)
!821 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 6)
!822 = !{!789, !777, i64 8}
!823 = !{!824, !777, i64 48}
!824 = !{!"_typeobject", !825, i64 0, !777, i64 24, !780, i64 32, !780, i64 40, !777, i64 48, !777, i64 56, !777, i64 64, !777, i64 72, !777, i64 80, !777, i64 88, !777, i64 96, !777, i64 104, !777, i64 112, !777, i64 120, !777, i64 128, !777, i64 136, !777, i64 144, !777, i64 152, !777, i64 160, !780, i64 168, !777, i64 176, !777, i64 184, !777, i64 192, !777, i64 200, !780, i64 208, !777, i64 216, !777, i64 224, !777, i64 232, !777, i64 240, !777, i64 248, !777, i64 256, !777, i64 264, !777, i64 272, !777, i64 280, !780, i64 288, !777, i64 296, !777, i64 304, !777, i64 312, !777, i64 320, !777, i64 328, !777, i64 336, !777, i64 344, !777, i64 352, !777, i64 360, !777, i64 368, !777, i64 376, !826, i64 384, !777, i64 392}
!825 = !{!"", !789, i64 0, !780, i64 16}
!826 = !{!"int", !778, i64 0}
!827 = !DILocation(line: 796, column: 15, scope: !828)
!828 = distinct !DILexicalBlock(scope: !392, file: !1, line: 796, column: 9)
!829 = !{!788, !777, i64 56}
!830 = !DILocation(line: 796, column: 27, scope: !828)
!831 = !DILocation(line: 796, column: 9, scope: !392)
!832 = !DILocation(line: 797, column: 32, scope: !828)
!833 = !DILocation(line: 797, column: 9, scope: !828)
!834 = !DILocation(line: 798, column: 5, scope: !392)
!835 = !DILocation(line: 798, column: 20, scope: !392)
!836 = !{!824, !777, i64 320}
!837 = !DILocation(line: 798, column: 28, scope: !392)
!838 = !DILocation(line: 799, column: 1, scope: !392)
!839 = !DILocation(line: 861, column: 27, scope: !405)
!840 = !DILocation(line: 861, column: 43, scope: !405)
!841 = !DILocation(line: 861, column: 56, scope: !405)
!842 = !DILocation(line: 863, column: 5, scope: !843)
!843 = !DILexicalBlockFile(scope: !414, file: !1, discriminator: 1)
!844 = !DILocation(line: 863, column: 5, scope: !415)
!845 = !DILocation(line: 863, column: 5, scope: !846)
!846 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 2)
!847 = !DILocation(line: 863, column: 5, scope: !848)
!848 = distinct !DILexicalBlock(scope: !413, file: !1, line: 863, column: 5)
!849 = !DILocation(line: 864, column: 5, scope: !405)
!850 = !DILocation(line: 865, column: 1, scope: !405)
!851 = !DILocation(line: 868, column: 24, scope: !416)
!852 = !DILocation(line: 870, column: 5, scope: !853)
!853 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 1)
!854 = !DILocation(line: 870, column: 5, scope: !426)
!855 = !DILocation(line: 870, column: 5, scope: !422)
!856 = !DILocation(line: 870, column: 5, scope: !857)
!857 = !DILexicalBlockFile(scope: !425, file: !1, discriminator: 2)
!858 = !DILocation(line: 870, column: 5, scope: !859)
!859 = !DILexicalBlockFile(scope: !424, file: !1, discriminator: 4)
!860 = !DILocation(line: 870, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !424, file: !1, line: 870, column: 5)
!862 = !DILocation(line: 870, column: 5, scope: !424)
!863 = !DILocation(line: 870, column: 5, scope: !864)
!864 = !DILexicalBlockFile(scope: !861, file: !1, discriminator: 6)
!865 = !DILocation(line: 871, column: 5, scope: !416)
!866 = !DILocation(line: 515, column: 27, scope: !427)
!867 = !DILocation(line: 520, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !427, file: !1, line: 520, column: 5)
!869 = !DILocation(line: 520, column: 5, scope: !427)
!870 = !DILocation(line: 520, column: 5, scope: !871)
!871 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 1)
!872 = distinct !DILexicalBlock(scope: !868, file: !1, line: 520, column: 5)
!873 = !DILocation(line: 520, column: 5, scope: !872)
!874 = !DILocation(line: 41, column: 19, scope: !434, inlinedAt: !875)
!875 = distinct !DILocation(line: 522, column: 9, scope: !427)
!876 = !DILocation(line: 50, column: 33, scope: !434, inlinedAt: !875)
!877 = !{!788, !780, i64 32}
!878 = !DILocation(line: 50, column: 25, scope: !434, inlinedAt: !875)
!879 = !DILocation(line: 44, column: 17, scope: !434, inlinedAt: !875)
!880 = !DILocation(line: 51, column: 32, scope: !881, inlinedAt: !875)
!881 = distinct !DILexicalBlock(scope: !434, file: !1, line: 51, column: 5)
!882 = !DILocation(line: 65, column: 15, scope: !434, inlinedAt: !875)
!883 = !{!788, !780, i64 24}
!884 = !DILocation(line: 51, column: 24, scope: !881, inlinedAt: !875)
!885 = !DILocation(line: 43, column: 11, scope: !434, inlinedAt: !875)
!886 = !DILocation(line: 52, column: 12, scope: !887, inlinedAt: !875)
!887 = distinct !DILexicalBlock(scope: !881, file: !1, line: 51, column: 5)
!888 = !DILocation(line: 52, column: 22, scope: !887, inlinedAt: !875)
!889 = !DILocation(line: 52, column: 25, scope: !887, inlinedAt: !875)
!890 = !DILocation(line: 522, column: 9, scope: !427)
!891 = !{!778, !778, i64 0}
!892 = !DILocation(line: 52, column: 28, scope: !887, inlinedAt: !875)
!893 = !DILocation(line: 51, column: 5, scope: !881, inlinedAt: !875)
!894 = !DILocation(line: 53, column: 11, scope: !887, inlinedAt: !875)
!895 = !DILocation(line: 57, column: 10, scope: !896, inlinedAt: !875)
!896 = distinct !DILexicalBlock(scope: !434, file: !1, line: 56, column: 9)
!897 = !DILocation(line: 56, column: 9, scope: !434, inlinedAt: !875)
!898 = !DILocation(line: 60, column: 13, scope: !434, inlinedAt: !875)
!899 = !DILocation(line: 45, column: 16, scope: !434, inlinedAt: !875)
!900 = !DILocation(line: 41, column: 32, scope: !434, inlinedAt: !875)
!901 = !DILocation(line: 517, column: 11, scope: !427)
!902 = !DILocation(line: 518, column: 16, scope: !427)
!903 = !DILocation(line: 524, column: 10, scope: !904)
!904 = distinct !DILexicalBlock(scope: !427, file: !1, line: 524, column: 9)
!905 = !DILocation(line: 524, column: 20, scope: !904)
!906 = !DILocation(line: 524, column: 15, scope: !904)
!907 = !DILocation(line: 527, column: 12, scope: !427)
!908 = !DILocation(line: 527, column: 5, scope: !427)
!909 = !DILocation(line: 528, column: 1, scope: !427)
!910 = !DILocation(line: 824, column: 23, scope: !611)
!911 = !DILocation(line: 824, column: 39, scope: !611)
!912 = !DILocation(line: 824, column: 55, scope: !611)
!913 = !DILocation(line: 826, column: 5, scope: !611)
!914 = !DILocation(line: 826, column: 11, scope: !611)
!915 = !DILocation(line: 827, column: 5, scope: !611)
!916 = !DILocation(line: 827, column: 15, scope: !611)
!917 = !DILocation(line: 829, column: 64, scope: !918)
!918 = distinct !DILexicalBlock(scope: !611, file: !1, line: 829, column: 9)
!919 = !DILocation(line: 829, column: 10, scope: !918)
!920 = !DILocation(line: 829, column: 9, scope: !611)
!921 = !DILocation(line: 835, column: 11, scope: !611)
!922 = !DILocation(line: 837, column: 9, scope: !625)
!923 = !DILocation(line: 835, column: 15, scope: !611)
!924 = !DILocation(line: 837, column: 32, scope: !625)
!925 = !DILocation(line: 837, column: 19, scope: !625)
!926 = !DILocation(line: 839, column: 15, scope: !624)
!927 = !DILocation(line: 838, column: 19, scope: !624)
!928 = !DILocation(line: 840, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !624, file: !1, line: 840, column: 13)
!930 = !DILocation(line: 840, column: 13, scope: !624)
!931 = !DILocation(line: 842, column: 9, scope: !932)
!932 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 1)
!933 = !DILocation(line: 842, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !627, file: !1, line: 842, column: 9)
!935 = !DILocation(line: 842, column: 9, scope: !627)
!936 = !DILocation(line: 842, column: 9, scope: !937)
!937 = !DILexicalBlockFile(scope: !934, file: !1, discriminator: 3)
!938 = !DILocation(line: 843, column: 19, scope: !624)
!939 = !DILocation(line: 847, column: 1, scope: !611)
!940 = !DILocation(line: 802, column: 27, scope: !628)
!941 = !DILocation(line: 802, column: 43, scope: !628)
!942 = !DILocation(line: 802, column: 59, scope: !628)
!943 = !DILocation(line: 807, column: 29, scope: !628)
!944 = !{!824, !777, i64 304}
!945 = !DILocation(line: 807, column: 23, scope: !628)
!946 = !DILocation(line: 808, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !628, file: !1, line: 808, column: 9)
!948 = !DILocation(line: 808, column: 9, scope: !628)
!949 = !DILocation(line: 814, column: 25, scope: !628)
!950 = !DILocation(line: 814, column: 11, scope: !628)
!951 = !DILocation(line: 814, column: 15, scope: !628)
!952 = !DILocation(line: 815, column: 19, scope: !639)
!953 = !DILocation(line: 815, column: 9, scope: !628)
!954 = !DILocation(line: 816, column: 9, scope: !955)
!955 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 1)
!956 = !DILocation(line: 816, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !637, file: !1, line: 816, column: 9)
!958 = !DILocation(line: 816, column: 9, scope: !637)
!959 = !DILocation(line: 816, column: 9, scope: !960)
!960 = !DILexicalBlockFile(scope: !957, file: !1, discriminator: 3)
!961 = !DILocation(line: 817, column: 16, scope: !638)
!962 = !DILocation(line: 817, column: 9, scope: !638)
!963 = !DILocation(line: 821, column: 1, scope: !628)
!964 = !DILocation(line: 993, column: 32, scope: !640)
!965 = !DILocation(line: 995, column: 5, scope: !966)
!966 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 1)
!967 = !{!968, !777, i64 16}
!968 = !{!"", !789, i64 0, !777, i64 16}
!969 = !DILocation(line: 995, column: 5, scope: !650)
!970 = !DILocation(line: 995, column: 5, scope: !646)
!971 = !DILocation(line: 995, column: 5, scope: !972)
!972 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 2)
!973 = !DILocation(line: 995, column: 5, scope: !974)
!974 = !DILexicalBlockFile(scope: !648, file: !1, discriminator: 4)
!975 = !DILocation(line: 995, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !648, file: !1, line: 995, column: 5)
!977 = !DILocation(line: 995, column: 5, scope: !648)
!978 = !DILocation(line: 995, column: 5, scope: !979)
!979 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 6)
!980 = !DILocation(line: 996, column: 5, scope: !640)
!981 = !DILocation(line: 996, column: 20, scope: !640)
!982 = !DILocation(line: 996, column: 28, scope: !640)
!983 = !DILocation(line: 997, column: 1, scope: !640)
!984 = !DILocation(line: 986, column: 33, scope: !667)
!985 = !DILocation(line: 986, column: 49, scope: !667)
!986 = !DILocation(line: 986, column: 62, scope: !667)
!987 = !DILocation(line: 988, column: 5, scope: !988)
!988 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!989 = !DILocation(line: 988, column: 5, scope: !677)
!990 = !DILocation(line: 988, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 2)
!992 = !DILocation(line: 988, column: 5, scope: !993)
!993 = distinct !DILexicalBlock(scope: !675, file: !1, line: 988, column: 5)
!994 = !DILocation(line: 989, column: 5, scope: !667)
!995 = !DILocation(line: 990, column: 1, scope: !667)
!996 = !DILocation(line: 185, column: 28, scope: !444)
!997 = !DILocation(line: 187, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !444, file: !1, line: 187, column: 5)
!999 = !DILocation(line: 187, column: 5, scope: !444)
!1000 = !DILocation(line: 187, column: 5, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!1002 = distinct !DILexicalBlock(scope: !998, file: !1, line: 187, column: 5)
!1003 = !DILocation(line: 188, column: 5, scope: !444)
!1004 = !DILocation(line: 189, column: 1, scope: !444)
!1005 = !DILocation(line: 656, column: 24, scope: !447)
!1006 = !DILocation(line: 658, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !447, file: !1, line: 658, column: 9)
!1008 = !DILocation(line: 658, column: 19, scope: !1007)
!1009 = !DILocation(line: 658, column: 9, scope: !447)
!1010 = !DILocation(line: 659, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 658, column: 28)
!1012 = !DILocation(line: 660, column: 19, scope: !1011)
!1013 = !DILocation(line: 661, column: 5, scope: !1011)
!1014 = !DILocation(line: 662, column: 5, scope: !447)
!1015 = !DILocation(line: 195, column: 24, scope: !450)
!1016 = !DILocation(line: 197, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !450, file: !1, line: 197, column: 5)
!1018 = !DILocation(line: 197, column: 5, scope: !450)
!1019 = !DILocation(line: 197, column: 5, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !1, discriminator: 1)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 197, column: 5)
!1022 = !DILocation(line: 198, column: 5, scope: !450)
!1023 = !DILocation(line: 199, column: 1, scope: !450)
!1024 = !DILocation(line: 244, column: 25, scope: !453)
!1025 = !DILocation(line: 246, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !453, file: !1, line: 246, column: 5)
!1027 = !DILocation(line: 246, column: 5, scope: !453)
!1028 = !DILocation(line: 246, column: 5, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !1, discriminator: 1)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 246, column: 5)
!1031 = !DILocation(line: 247, column: 5, scope: !453)
!1032 = !DILocation(line: 248, column: 1, scope: !453)
!1033 = !DILocation(line: 254, column: 23, scope: !456)
!1034 = !DILocation(line: 256, column: 5, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !456, file: !1, line: 256, column: 5)
!1036 = !DILocation(line: 256, column: 5, scope: !456)
!1037 = !DILocation(line: 256, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 256, column: 5)
!1040 = !DILocation(line: 257, column: 37, scope: !456)
!1041 = !DILocation(line: 257, column: 12, scope: !456)
!1042 = !DILocation(line: 257, column: 5, scope: !456)
!1043 = !DILocation(line: 258, column: 1, scope: !456)
!1044 = !DILocation(line: 594, column: 24, scope: !459)
!1045 = !DILocation(line: 594, column: 40, scope: !459)
!1046 = !DILocation(line: 596, column: 16, scope: !459)
!1047 = !DILocation(line: 597, column: 5, scope: !459)
!1048 = !DILocation(line: 598, column: 15, scope: !459)
!1049 = !DILocation(line: 600, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !459, file: !1, line: 600, column: 5)
!1051 = !DILocation(line: 600, column: 5, scope: !459)
!1052 = !DILocation(line: 600, column: 5, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 1)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 600, column: 5)
!1055 = !DILocation(line: 600, column: 5, scope: !1054)
!1056 = !DILocation(line: 601, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !459, file: !1, line: 601, column: 5)
!1058 = !DILocation(line: 601, column: 5, scope: !459)
!1059 = !DILocation(line: 601, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !1, discriminator: 1)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 601, column: 5)
!1062 = !DILocation(line: 601, column: 5, scope: !1061)
!1063 = !DILocation(line: 597, column: 15, scope: !459)
!1064 = !DILocation(line: 603, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !459, file: !1, line: 603, column: 9)
!1066 = !DILocation(line: 603, column: 56, scope: !1065)
!1067 = !DILocation(line: 603, column: 9, scope: !459)
!1068 = !DILocation(line: 606, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !459, file: !1, line: 606, column: 9)
!1070 = !{!1071, !780, i64 16}
!1071 = !{!"bufferinfo", !777, i64 0, !777, i64 8, !780, i64 16, !780, i64 24, !826, i64 32, !826, i64 36, !777, i64 40, !777, i64 48, !777, i64 56, !777, i64 64, !777, i64 72}
!1072 = !DILocation(line: 606, column: 17, scope: !1069)
!1073 = !DILocation(line: 606, column: 9, scope: !459)
!1074 = !DILocation(line: 607, column: 35, scope: !1069)
!1075 = !{!1071, !777, i64 0}
!1076 = !DILocation(line: 126, column: 22, scope: !468, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 607, column: 13, scope: !1069)
!1078 = !DILocation(line: 126, column: 40, scope: !468, inlinedAt: !1077)
!1079 = !DILocation(line: 126, column: 58, scope: !468, inlinedAt: !1077)
!1080 = !DILocation(line: 132, column: 23, scope: !1081, inlinedAt: !1077)
!1081 = distinct !DILexicalBlock(scope: !468, file: !1, line: 132, column: 9)
!1082 = !DILocation(line: 132, column: 27, scope: !1081, inlinedAt: !1077)
!1083 = !DILocation(line: 132, column: 41, scope: !1081, inlinedAt: !1077)
!1084 = !{!788, !780, i64 40}
!1085 = !DILocation(line: 132, column: 33, scope: !1081, inlinedAt: !1077)
!1086 = !DILocation(line: 132, column: 9, scope: !468, inlinedAt: !1077)
!1087 = !DILocation(line: 74, column: 24, scope: !475, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 133, column: 13, scope: !1089, inlinedAt: !1077)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 133, column: 13)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 132, column: 51)
!1091 = !DILocation(line: 74, column: 37, scope: !475, inlinedAt: !1088)
!1092 = !DILocation(line: 78, column: 12, scope: !475, inlinedAt: !1088)
!1093 = !DILocation(line: 79, column: 11, scope: !475, inlinedAt: !1088)
!1094 = !DILocation(line: 85, column: 14, scope: !1095, inlinedAt: !1088)
!1095 = distinct !DILexicalBlock(scope: !475, file: !1, line: 85, column: 9)
!1096 = !DILocation(line: 85, column: 9, scope: !475, inlinedAt: !1088)
!1097 = !DILocation(line: 88, column: 22, scope: !1098, inlinedAt: !1088)
!1098 = distinct !DILexicalBlock(scope: !475, file: !1, line: 88, column: 9)
!1099 = !DILocation(line: 88, column: 14, scope: !1098, inlinedAt: !1088)
!1100 = !DILocation(line: 88, column: 9, scope: !475, inlinedAt: !1088)
!1101 = !DILocation(line: 90, column: 22, scope: !1102, inlinedAt: !1088)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 88, column: 27)
!1103 = !DILocation(line: 91, column: 5, scope: !1102, inlinedAt: !1088)
!1104 = !DILocation(line: 92, column: 19, scope: !1105, inlinedAt: !1088)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 92, column: 14)
!1106 = !DILocation(line: 92, column: 14, scope: !1098, inlinedAt: !1088)
!1107 = !DILocation(line: 96, column: 14, scope: !1108, inlinedAt: !1088)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 96, column: 14)
!1109 = !DILocation(line: 96, column: 22, scope: !1108, inlinedAt: !1088)
!1110 = !DILocation(line: 96, column: 28, scope: !1108, inlinedAt: !1088)
!1111 = !DILocation(line: 96, column: 19, scope: !1108, inlinedAt: !1088)
!1112 = !DILocation(line: 96, column: 14, scope: !1105, inlinedAt: !1088)
!1113 = !DILocation(line: 98, column: 30, scope: !1114, inlinedAt: !1088)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 96, column: 37)
!1115 = !DILocation(line: 98, column: 22, scope: !1114, inlinedAt: !1088)
!1116 = !DILocation(line: 98, column: 44, scope: !1114, inlinedAt: !1088)
!1117 = !DILocation(line: 98, column: 38, scope: !1114, inlinedAt: !1088)
!1118 = !DILocation(line: 98, column: 36, scope: !1114, inlinedAt: !1088)
!1119 = !DILocation(line: 99, column: 5, scope: !1114, inlinedAt: !1088)
!1120 = !DILocation(line: 102, column: 22, scope: !1121, inlinedAt: !1088)
!1121 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 100, column: 10)
!1122 = !DILocation(line: 133, column: 13, scope: !1089, inlinedAt: !1077)
!1123 = !DILocation(line: 107, column: 43, scope: !475, inlinedAt: !1088)
!1124 = !DILocation(line: 107, column: 23, scope: !475, inlinedAt: !1088)
!1125 = !DILocation(line: 108, column: 17, scope: !1126, inlinedAt: !1088)
!1126 = distinct !DILexicalBlock(scope: !475, file: !1, line: 108, column: 9)
!1127 = !DILocation(line: 108, column: 9, scope: !475, inlinedAt: !1088)
!1128 = !DILocation(line: 109, column: 9, scope: !1129, inlinedAt: !1088)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 108, column: 26)
!1130 = !DILocation(line: 110, column: 9, scope: !1129, inlinedAt: !1088)
!1131 = !DILocation(line: 112, column: 20, scope: !475, inlinedAt: !1088)
!1132 = !DILocation(line: 113, column: 15, scope: !475, inlinedAt: !1088)
!1133 = !DILocation(line: 137, column: 15, scope: !1134, inlinedAt: !1077)
!1134 = distinct !DILexicalBlock(scope: !468, file: !1, line: 137, column: 9)
!1135 = !DILocation(line: 115, column: 5, scope: !475, inlinedAt: !1088)
!1136 = !DILocation(line: 118, column: 21, scope: !475, inlinedAt: !1088)
!1137 = !DILocation(line: 118, column: 5, scope: !475, inlinedAt: !1088)
!1138 = !DILocation(line: 120, column: 5, scope: !475, inlinedAt: !1088)
!1139 = !DILocation(line: 137, column: 27, scope: !1134, inlinedAt: !1077)
!1140 = !DILocation(line: 137, column: 19, scope: !1134, inlinedAt: !1077)
!1141 = !DILocation(line: 137, column: 9, scope: !468, inlinedAt: !1077)
!1142 = !DILocation(line: 146, column: 22, scope: !1143, inlinedAt: !1077)
!1143 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 137, column: 40)
!1144 = !DILocation(line: 146, column: 26, scope: !1143, inlinedAt: !1077)
!1145 = !DILocation(line: 147, column: 27, scope: !1143, inlinedAt: !1077)
!1146 = !DILocation(line: 146, column: 9, scope: !1143, inlinedAt: !1077)
!1147 = !DILocation(line: 152, column: 30, scope: !468, inlinedAt: !1077)
!1148 = !DILocation(line: 148, column: 5, scope: !1143, inlinedAt: !1077)
!1149 = !DILocation(line: 152, column: 18, scope: !468, inlinedAt: !1077)
!1150 = !DILocation(line: 152, column: 22, scope: !468, inlinedAt: !1077)
!1151 = !DILocation(line: 152, column: 5, scope: !468, inlinedAt: !1077)
!1152 = !DILocation(line: 153, column: 15, scope: !468, inlinedAt: !1077)
!1153 = !DILocation(line: 156, column: 15, scope: !1154, inlinedAt: !1077)
!1154 = distinct !DILexicalBlock(scope: !468, file: !1, line: 156, column: 9)
!1155 = !DILocation(line: 156, column: 27, scope: !1154, inlinedAt: !1077)
!1156 = !DILocation(line: 156, column: 9, scope: !468, inlinedAt: !1077)
!1157 = !DILocation(line: 157, column: 27, scope: !1158, inlinedAt: !1077)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 156, column: 40)
!1159 = !DILocation(line: 158, column: 5, scope: !1158, inlinedAt: !1077)
!1160 = !DILocation(line: 608, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !459, file: !1, line: 608, column: 9)
!1162 = !DILocation(line: 608, column: 9, scope: !459)
!1163 = !DILocation(line: 609, column: 18, scope: !1161)
!1164 = !DILocation(line: 609, column: 9, scope: !1161)
!1165 = !DILocation(line: 611, column: 5, scope: !459)
!1166 = !DILocation(line: 612, column: 5, scope: !459)
!1167 = !DILocation(line: 613, column: 1, scope: !459)
!1168 = !DILocation(line: 623, column: 29, scope: !483)
!1169 = !DILocation(line: 623, column: 45, scope: !483)
!1170 = !DILocation(line: 628, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !483, file: !1, line: 628, column: 5)
!1172 = !DILocation(line: 628, column: 5, scope: !483)
!1173 = !DILocation(line: 628, column: 5, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1175, file: !1, discriminator: 1)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 628, column: 5)
!1176 = !DILocation(line: 628, column: 5, scope: !1175)
!1177 = !DILocation(line: 630, column: 10, scope: !483)
!1178 = !DILocation(line: 625, column: 15, scope: !483)
!1179 = !DILocation(line: 631, column: 12, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !483, file: !1, line: 631, column: 9)
!1181 = !DILocation(line: 631, column: 9, scope: !483)
!1182 = !DILocation(line: 634, column: 20, scope: !483)
!1183 = !DILocation(line: 625, column: 20, scope: !483)
!1184 = !DILocation(line: 634, column: 37, scope: !483)
!1185 = !DILocation(line: 634, column: 5, scope: !483)
!1186 = !DILocation(line: 635, column: 15, scope: !492)
!1187 = !DILocation(line: 626, column: 15, scope: !483)
!1188 = !DILocation(line: 636, column: 9, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 1)
!1190 = !DILocation(line: 636, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !491, file: !1, line: 636, column: 9)
!1192 = !DILocation(line: 636, column: 9, scope: !491)
!1193 = !DILocation(line: 636, column: 9, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1191, file: !1, discriminator: 3)
!1195 = !DILocation(line: 637, column: 17, scope: !496)
!1196 = !DILocation(line: 637, column: 13, scope: !492)
!1197 = !DILocation(line: 638, column: 13, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 1)
!1199 = !DILocation(line: 638, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !494, file: !1, line: 638, column: 13)
!1201 = !DILocation(line: 638, column: 13, scope: !494)
!1202 = !DILocation(line: 638, column: 13, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1200, file: !1, discriminator: 3)
!1204 = !DILocation(line: 641, column: 9, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !498, file: !1, discriminator: 1)
!1206 = !DILocation(line: 641, column: 9, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !498, file: !1, line: 641, column: 9)
!1208 = !DILocation(line: 641, column: 9, scope: !498)
!1209 = !DILocation(line: 641, column: 9, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1207, file: !1, discriminator: 3)
!1211 = !DILocation(line: 643, column: 5, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 1)
!1213 = !DILocation(line: 643, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !500, file: !1, line: 643, column: 5)
!1215 = !DILocation(line: 643, column: 5, scope: !500)
!1216 = !DILocation(line: 643, column: 5, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1214, file: !1, discriminator: 3)
!1218 = !DILocation(line: 646, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !483, file: !1, line: 646, column: 9)
!1220 = !DILocation(line: 646, column: 9, scope: !483)
!1221 = !DILocation(line: 649, column: 5, scope: !483)
!1222 = !DILocation(line: 650, column: 1, scope: !483)
!1223 = !DILocation(line: 316, column: 24, scope: !501)
!1224 = !DILocation(line: 316, column: 40, scope: !501)
!1225 = !DILocation(line: 320, column: 11, scope: !501)
!1226 = !DILocation(line: 318, column: 15, scope: !501)
!1227 = !DILocation(line: 321, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !501, file: !1, line: 321, column: 9)
!1229 = !DILocation(line: 321, column: 9, scope: !501)
!1230 = !DILocation(line: 323, column: 12, scope: !501)
!1231 = !DILocation(line: 318, column: 21, scope: !501)
!1232 = !DILocation(line: 324, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 1)
!1234 = !DILocation(line: 324, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !508, file: !1, line: 324, column: 5)
!1236 = !DILocation(line: 324, column: 5, scope: !508)
!1237 = !DILocation(line: 324, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 3)
!1239 = !DILocation(line: 326, column: 1, scope: !501)
!1240 = !DILocation(line: 440, column: 27, scope: !509)
!1241 = !DILocation(line: 440, column: 43, scope: !509)
!1242 = !DILocation(line: 442, column: 5, scope: !509)
!1243 = !DILocation(line: 443, column: 5, scope: !509)
!1244 = !DILocation(line: 445, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !509, file: !1, line: 445, column: 5)
!1246 = !DILocation(line: 445, column: 5, scope: !509)
!1247 = !DILocation(line: 445, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1249, file: !1, discriminator: 1)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 445, column: 5)
!1250 = !DILocation(line: 445, column: 5, scope: !1249)
!1251 = !DILocation(line: 442, column: 11, scope: !509)
!1252 = !DILocation(line: 443, column: 16, scope: !509)
!1253 = !DILocation(line: 447, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !509, file: !1, line: 447, column: 9)
!1255 = !DILocation(line: 447, column: 59, scope: !1254)
!1256 = !DILocation(line: 447, column: 9, scope: !509)
!1257 = !DILocation(line: 451, column: 15, scope: !509)
!1258 = !DILocation(line: 451, column: 35, scope: !509)
!1259 = !DILocation(line: 458, column: 42, scope: !509)
!1260 = !DILocation(line: 451, column: 27, scope: !509)
!1261 = !DILocation(line: 443, column: 21, scope: !509)
!1262 = !DILocation(line: 452, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !509, file: !1, line: 452, column: 9)
!1264 = !{!780, !780, i64 0}
!1265 = !DILocation(line: 452, column: 13, scope: !1263)
!1266 = !DILocation(line: 452, column: 9, scope: !509)
!1267 = !DILocation(line: 454, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 454, column: 13)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 452, column: 18)
!1270 = !DILocation(line: 454, column: 13, scope: !1269)
!1271 = !DILocation(line: 455, column: 17, scope: !1268)
!1272 = !DILocation(line: 456, column: 5, scope: !1269)
!1273 = !DILocation(line: 458, column: 47, scope: !509)
!1274 = !DILocation(line: 458, column: 12, scope: !509)
!1275 = !DILocation(line: 458, column: 30, scope: !509)
!1276 = !DILocation(line: 458, column: 34, scope: !509)
!1277 = !DILocation(line: 458, column: 5, scope: !509)
!1278 = !DILocation(line: 461, column: 18, scope: !509)
!1279 = !DILocation(line: 461, column: 15, scope: !509)
!1280 = !DILocation(line: 463, column: 12, scope: !509)
!1281 = !DILocation(line: 463, column: 5, scope: !509)
!1282 = !DILocation(line: 464, column: 1, scope: !509)
!1283 = !DILocation(line: 336, column: 27, scope: !516)
!1284 = !DILocation(line: 336, column: 43, scope: !516)
!1285 = !DILocation(line: 340, column: 5, scope: !516)
!1286 = !DILocation(line: 340, column: 15, scope: !516)
!1287 = !DILocation(line: 342, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !516, file: !1, line: 342, column: 5)
!1289 = !DILocation(line: 342, column: 5, scope: !516)
!1290 = !DILocation(line: 342, column: 5, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !1, discriminator: 1)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 342, column: 5)
!1293 = !DILocation(line: 342, column: 5, scope: !1292)
!1294 = !DILocation(line: 344, column: 10, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !516, file: !1, line: 344, column: 9)
!1296 = !DILocation(line: 344, column: 9, scope: !516)
!1297 = !DILocation(line: 347, column: 9, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !516, file: !1, line: 347, column: 9)
!1299 = !{!824, !780, i64 168}
!1300 = !DILocation(line: 347, column: 9, scope: !516)
!1301 = !DILocation(line: 348, column: 16, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 347, column: 28)
!1303 = !DILocation(line: 338, column: 16, scope: !516)
!1304 = !DILocation(line: 349, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 349, column: 13)
!1306 = !DILocation(line: 349, column: 24, scope: !1305)
!1307 = !DILocation(line: 349, column: 27, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1305, file: !1, discriminator: 1)
!1309 = !DILocation(line: 349, column: 13, scope: !1302)
!1310 = !DILocation(line: 352, column: 18, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 352, column: 14)
!1312 = !DILocation(line: 352, column: 14, scope: !1298)
!1313 = !DILocation(line: 357, column: 22, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 356, column: 10)
!1315 = !DILocation(line: 358, column: 36, scope: !1314)
!1316 = !{!824, !777, i64 24}
!1317 = !DILocation(line: 357, column: 9, scope: !1314)
!1318 = !DILocation(line: 359, column: 9, scope: !1314)
!1319 = !DILocation(line: 41, column: 19, scope: !434, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 362, column: 9, scope: !516)
!1321 = !DILocation(line: 60, column: 22, scope: !434, inlinedAt: !1320)
!1322 = !DILocation(line: 50, column: 33, scope: !434, inlinedAt: !1320)
!1323 = !DILocation(line: 50, column: 25, scope: !434, inlinedAt: !1320)
!1324 = !DILocation(line: 44, column: 17, scope: !434, inlinedAt: !1320)
!1325 = !DILocation(line: 51, column: 32, scope: !881, inlinedAt: !1320)
!1326 = !DILocation(line: 65, column: 15, scope: !434, inlinedAt: !1320)
!1327 = !DILocation(line: 51, column: 24, scope: !881, inlinedAt: !1320)
!1328 = !DILocation(line: 43, column: 11, scope: !434, inlinedAt: !1320)
!1329 = !DILocation(line: 52, column: 12, scope: !887, inlinedAt: !1320)
!1330 = !DILocation(line: 52, column: 22, scope: !887, inlinedAt: !1320)
!1331 = !DILocation(line: 52, column: 25, scope: !887, inlinedAt: !1320)
!1332 = !DILocation(line: 362, column: 9, scope: !516)
!1333 = !DILocation(line: 52, column: 28, scope: !887, inlinedAt: !1320)
!1334 = !DILocation(line: 51, column: 5, scope: !881, inlinedAt: !1320)
!1335 = !DILocation(line: 53, column: 11, scope: !887, inlinedAt: !1320)
!1336 = !DILocation(line: 57, column: 10, scope: !896, inlinedAt: !1320)
!1337 = !DILocation(line: 56, column: 9, scope: !434, inlinedAt: !1320)
!1338 = !DILocation(line: 60, column: 13, scope: !434, inlinedAt: !1320)
!1339 = !DILocation(line: 45, column: 16, scope: !434, inlinedAt: !1320)
!1340 = !DILocation(line: 41, column: 32, scope: !434, inlinedAt: !1320)
!1341 = !DILocation(line: 339, column: 11, scope: !516)
!1342 = !DILocation(line: 338, column: 22, scope: !516)
!1343 = !DILocation(line: 364, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !516, file: !1, line: 364, column: 9)
!1345 = !DILocation(line: 364, column: 27, scope: !1344)
!1346 = !DILocation(line: 364, column: 19, scope: !1344)
!1347 = !DILocation(line: 367, column: 19, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 364, column: 32)
!1349 = !DILocation(line: 370, column: 12, scope: !516)
!1350 = !DILocation(line: 370, column: 5, scope: !516)
!1351 = !DILocation(line: 371, column: 1, scope: !516)
!1352 = !DILocation(line: 381, column: 28, scope: !524)
!1353 = !DILocation(line: 381, column: 44, scope: !524)
!1354 = !DILocation(line: 386, column: 5, scope: !524)
!1355 = !DILocation(line: 386, column: 15, scope: !524)
!1356 = !DILocation(line: 388, column: 5, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !524, file: !1, line: 388, column: 5)
!1358 = !DILocation(line: 388, column: 5, scope: !524)
!1359 = !DILocation(line: 388, column: 5, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !1, discriminator: 1)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 388, column: 5)
!1362 = !DILocation(line: 388, column: 5, scope: !1361)
!1363 = !DILocation(line: 390, column: 10, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !524, file: !1, line: 390, column: 9)
!1365 = !DILocation(line: 390, column: 9, scope: !524)
!1366 = !DILocation(line: 393, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !524, file: !1, line: 393, column: 9)
!1368 = !DILocation(line: 393, column: 9, scope: !524)
!1369 = !DILocation(line: 394, column: 19, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 393, column: 28)
!1371 = !DILocation(line: 383, column: 16, scope: !524)
!1372 = !DILocation(line: 395, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 395, column: 13)
!1374 = !DILocation(line: 395, column: 27, scope: !1373)
!1375 = !DILocation(line: 395, column: 30, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 1)
!1377 = !DILocation(line: 395, column: 13, scope: !1370)
!1378 = !DILocation(line: 398, column: 18, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 398, column: 14)
!1380 = !DILocation(line: 398, column: 14, scope: !1367)
!1381 = !DILocation(line: 403, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 402, column: 10)
!1383 = !DILocation(line: 404, column: 36, scope: !1382)
!1384 = !DILocation(line: 403, column: 9, scope: !1382)
!1385 = !DILocation(line: 405, column: 9, scope: !1382)
!1386 = !DILocation(line: 383, column: 25, scope: !524)
!1387 = !DILocation(line: 409, column: 14, scope: !524)
!1388 = !DILocation(line: 384, column: 15, scope: !524)
!1389 = !DILocation(line: 410, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !524, file: !1, line: 410, column: 9)
!1391 = !DILocation(line: 410, column: 9, scope: !524)
!1392 = !DILocation(line: 50, column: 33, scope: !434, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 413, column: 17, scope: !524)
!1394 = !DILocation(line: 51, column: 32, scope: !881, inlinedAt: !1393)
!1395 = !DILocation(line: 423, column: 21, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !539, file: !1, line: 423, column: 13)
!1397 = !DILocation(line: 423, column: 25, scope: !1396)
!1398 = !DILocation(line: 41, column: 19, scope: !434, inlinedAt: !1393)
!1399 = !DILocation(line: 60, column: 22, scope: !434, inlinedAt: !1393)
!1400 = !DILocation(line: 50, column: 25, scope: !434, inlinedAt: !1393)
!1401 = !DILocation(line: 44, column: 17, scope: !434, inlinedAt: !1393)
!1402 = !DILocation(line: 65, column: 15, scope: !434, inlinedAt: !1393)
!1403 = !DILocation(line: 51, column: 24, scope: !881, inlinedAt: !1393)
!1404 = !DILocation(line: 43, column: 11, scope: !434, inlinedAt: !1393)
!1405 = !DILocation(line: 52, column: 12, scope: !887, inlinedAt: !1393)
!1406 = !DILocation(line: 52, column: 22, scope: !887, inlinedAt: !1393)
!1407 = !DILocation(line: 52, column: 25, scope: !887, inlinedAt: !1393)
!1408 = !DILocation(line: 413, column: 17, scope: !524)
!1409 = !DILocation(line: 52, column: 28, scope: !887, inlinedAt: !1393)
!1410 = !DILocation(line: 51, column: 5, scope: !881, inlinedAt: !1393)
!1411 = !DILocation(line: 53, column: 11, scope: !887, inlinedAt: !1393)
!1412 = !DILocation(line: 57, column: 10, scope: !896, inlinedAt: !1393)
!1413 = !DILocation(line: 56, column: 9, scope: !434, inlinedAt: !1393)
!1414 = !DILocation(line: 60, column: 13, scope: !434, inlinedAt: !1393)
!1415 = !DILocation(line: 45, column: 16, scope: !434, inlinedAt: !1393)
!1416 = !DILocation(line: 41, column: 32, scope: !434, inlinedAt: !1393)
!1417 = !DILocation(line: 385, column: 11, scope: !524)
!1418 = !DILocation(line: 383, column: 31, scope: !524)
!1419 = !DILocation(line: 413, column: 42, scope: !524)
!1420 = !DILocation(line: 413, column: 5, scope: !524)
!1421 = !DILocation(line: 414, column: 16, scope: !539)
!1422 = !DILocation(line: 384, column: 24, scope: !524)
!1423 = !DILocation(line: 415, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !539, file: !1, line: 415, column: 13)
!1425 = !DILocation(line: 415, column: 13, scope: !539)
!1426 = !DILocation(line: 417, column: 13, scope: !538)
!1427 = !DILocation(line: 417, column: 41, scope: !538)
!1428 = !DILocation(line: 418, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !536, file: !1, line: 418, column: 13)
!1430 = !DILocation(line: 417, column: 13, scope: !539)
!1431 = !DILocation(line: 421, column: 9, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 1)
!1433 = !DILocation(line: 421, column: 9, scope: !541)
!1434 = !DILocation(line: 421, column: 9, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !1, discriminator: 3)
!1436 = distinct !DILexicalBlock(scope: !541, file: !1, line: 421, column: 9)
!1437 = !DILocation(line: 418, column: 13, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 1)
!1439 = !DILocation(line: 418, column: 13, scope: !536)
!1440 = !DILocation(line: 418, column: 13, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1429, file: !1, discriminator: 3)
!1442 = !DILocation(line: 422, column: 14, scope: !539)
!1443 = !DILocation(line: 423, column: 33, scope: !1396)
!1444 = !DILocation(line: 429, column: 5, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 1)
!1446 = !DILocation(line: 429, column: 5, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !543, file: !1, line: 429, column: 5)
!1448 = !DILocation(line: 429, column: 5, scope: !543)
!1449 = !DILocation(line: 429, column: 5, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1447, file: !1, discriminator: 3)
!1451 = !DILocation(line: 431, column: 1, scope: !524)
!1452 = !DILocation(line: 267, column: 23, scope: !544)
!1453 = !DILocation(line: 267, column: 39, scope: !544)
!1454 = !DILocation(line: 271, column: 5, scope: !544)
!1455 = !DILocation(line: 271, column: 15, scope: !544)
!1456 = !DILocation(line: 273, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !544, file: !1, line: 273, column: 5)
!1458 = !DILocation(line: 273, column: 5, scope: !544)
!1459 = !DILocation(line: 273, column: 5, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1461, file: !1, discriminator: 1)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 273, column: 5)
!1462 = !DILocation(line: 273, column: 5, scope: !1461)
!1463 = !DILocation(line: 275, column: 10, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !544, file: !1, line: 275, column: 9)
!1465 = !DILocation(line: 275, column: 9, scope: !544)
!1466 = !DILocation(line: 278, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !544, file: !1, line: 278, column: 9)
!1468 = !DILocation(line: 278, column: 9, scope: !544)
!1469 = !DILocation(line: 279, column: 16, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 278, column: 28)
!1471 = !DILocation(line: 269, column: 16, scope: !544)
!1472 = !DILocation(line: 280, column: 18, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 280, column: 13)
!1474 = !DILocation(line: 280, column: 24, scope: !1473)
!1475 = !DILocation(line: 280, column: 27, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 1)
!1477 = !DILocation(line: 280, column: 13, scope: !1470)
!1478 = !DILocation(line: 283, column: 18, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 283, column: 14)
!1480 = !DILocation(line: 283, column: 14, scope: !1467)
!1481 = !DILocation(line: 288, column: 22, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 287, column: 10)
!1483 = !DILocation(line: 289, column: 36, scope: !1482)
!1484 = !DILocation(line: 288, column: 9, scope: !1482)
!1485 = !DILocation(line: 290, column: 9, scope: !1482)
!1486 = !DILocation(line: 294, column: 15, scope: !544)
!1487 = !DILocation(line: 294, column: 35, scope: !544)
!1488 = !DILocation(line: 294, column: 27, scope: !544)
!1489 = !DILocation(line: 269, column: 22, scope: !544)
!1490 = !DILocation(line: 295, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !544, file: !1, line: 295, column: 9)
!1492 = !DILocation(line: 295, column: 26, scope: !1491)
!1493 = !DILocation(line: 295, column: 18, scope: !1491)
!1494 = !DILocation(line: 297, column: 18, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 297, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 295, column: 31)
!1497 = !DILocation(line: 297, column: 13, scope: !1496)
!1498 = !DILocation(line: 302, column: 20, scope: !544)
!1499 = !DILocation(line: 302, column: 24, scope: !544)
!1500 = !DILocation(line: 270, column: 11, scope: !544)
!1501 = !DILocation(line: 303, column: 15, scope: !544)
!1502 = !DILocation(line: 305, column: 12, scope: !544)
!1503 = !DILocation(line: 305, column: 5, scope: !544)
!1504 = !DILocation(line: 306, column: 1, scope: !544)
!1505 = !DILocation(line: 207, column: 28, scope: !552)
!1506 = !DILocation(line: 209, column: 19, scope: !552)
!1507 = !DILocation(line: 213, column: 5, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !552, file: !1, line: 213, column: 5)
!1509 = !DILocation(line: 213, column: 5, scope: !552)
!1510 = !DILocation(line: 213, column: 5, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1512, file: !1, discriminator: 1)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 213, column: 5)
!1513 = !DILocation(line: 213, column: 5, scope: !1512)
!1514 = !DILocation(line: 215, column: 32, scope: !552)
!1515 = !DILocation(line: 215, column: 26, scope: !552)
!1516 = !DILocation(line: 216, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !552, file: !1, line: 216, column: 9)
!1518 = !DILocation(line: 216, column: 9, scope: !552)
!1519 = !DILocation(line: 218, column: 5, scope: !552)
!1520 = !DILocation(line: 219, column: 10, scope: !552)
!1521 = !DILocation(line: 219, column: 17, scope: !552)
!1522 = !DILocation(line: 220, column: 12, scope: !552)
!1523 = !DILocation(line: 211, column: 15, scope: !552)
!1524 = !DILocation(line: 221, column: 5, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1526 = !DILocation(line: 221, column: 5, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !561, file: !1, line: 221, column: 5)
!1528 = !DILocation(line: 221, column: 5, scope: !561)
!1529 = !DILocation(line: 221, column: 5, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1527, file: !1, discriminator: 3)
!1531 = !DILocation(line: 223, column: 1, scope: !552)
!1532 = !DILocation(line: 231, column: 27, scope: !562)
!1533 = !DILocation(line: 233, column: 5, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !562, file: !1, line: 233, column: 5)
!1535 = !DILocation(line: 233, column: 5, scope: !562)
!1536 = !DILocation(line: 233, column: 5, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !1, discriminator: 1)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 233, column: 5)
!1539 = !DILocation(line: 234, column: 55, scope: !562)
!1540 = !DILocation(line: 234, column: 12, scope: !562)
!1541 = !DILocation(line: 234, column: 5, scope: !562)
!1542 = !DILocation(line: 235, column: 1, scope: !562)
!1543 = !DILocation(line: 540, column: 23, scope: !565)
!1544 = !DILocation(line: 540, column: 39, scope: !565)
!1545 = !DILocation(line: 542, column: 5, scope: !565)
!1546 = !DILocation(line: 543, column: 5, scope: !565)
!1547 = !DILocation(line: 543, column: 9, scope: !565)
!1548 = !{!826, !826, i64 0}
!1549 = !DILocation(line: 545, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !565, file: !1, line: 545, column: 5)
!1551 = !DILocation(line: 545, column: 5, scope: !565)
!1552 = !DILocation(line: 545, column: 5, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1554, file: !1, discriminator: 1)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 545, column: 5)
!1555 = !DILocation(line: 545, column: 5, scope: !1554)
!1556 = !DILocation(line: 542, column: 16, scope: !565)
!1557 = !DILocation(line: 547, column: 10, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !565, file: !1, line: 547, column: 9)
!1559 = !DILocation(line: 547, column: 9, scope: !565)
!1560 = !DILocation(line: 581, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !565, file: !1, line: 581, column: 9)
!1562 = !DILocation(line: 550, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !565, file: !1, line: 550, column: 9)
!1564 = !DILocation(line: 550, column: 25, scope: !1563)
!1565 = !DILocation(line: 550, column: 17, scope: !1563)
!1566 = !DILocation(line: 551, column: 22, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 550, column: 31)
!1568 = !DILocation(line: 551, column: 9, scope: !1567)
!1569 = !DILocation(line: 553, column: 9, scope: !1567)
!1570 = !DILocation(line: 559, column: 9, scope: !565)
!1571 = !DILocation(line: 560, column: 42, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 560, column: 13)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 559, column: 20)
!1574 = distinct !DILexicalBlock(scope: !565, file: !1, line: 559, column: 9)
!1575 = !DILocation(line: 560, column: 34, scope: !1572)
!1576 = !DILocation(line: 560, column: 17, scope: !1572)
!1577 = !DILocation(line: 560, column: 13, scope: !1573)
!1578 = !DILocation(line: 561, column: 29, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 560, column: 47)
!1580 = !DILocation(line: 561, column: 13, scope: !1579)
!1581 = !DILocation(line: 563, column: 13, scope: !1579)
!1582 = !DILocation(line: 565, column: 13, scope: !1573)
!1583 = !DILocation(line: 566, column: 5, scope: !1573)
!1584 = !DILocation(line: 568, column: 42, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 568, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 567, column: 25)
!1587 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 567, column: 14)
!1588 = !DILocation(line: 568, column: 34, scope: !1585)
!1589 = !DILocation(line: 568, column: 17, scope: !1585)
!1590 = !DILocation(line: 568, column: 13, scope: !1586)
!1591 = !DILocation(line: 569, column: 29, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 568, column: 55)
!1593 = !DILocation(line: 569, column: 13, scope: !1592)
!1594 = !DILocation(line: 571, column: 13, scope: !1592)
!1595 = !DILocation(line: 573, column: 13, scope: !1586)
!1596 = !DILocation(line: 574, column: 5, scope: !1586)
!1597 = !DILocation(line: 576, column: 22, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 575, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 575, column: 14)
!1600 = !DILocation(line: 576, column: 9, scope: !1598)
!1601 = !DILocation(line: 578, column: 9, scope: !1598)
!1602 = !DILocation(line: 581, column: 13, scope: !1561)
!1603 = !DILocation(line: 581, column: 9, scope: !565)
!1604 = !DILocation(line: 582, column: 13, scope: !1561)
!1605 = !DILocation(line: 582, column: 9, scope: !1561)
!1606 = !DILocation(line: 583, column: 17, scope: !565)
!1607 = !DILocation(line: 583, column: 11, scope: !565)
!1608 = !DILocation(line: 583, column: 15, scope: !565)
!1609 = !DILocation(line: 585, column: 12, scope: !565)
!1610 = !DILocation(line: 585, column: 5, scope: !565)
!1611 = !DILocation(line: 586, column: 1, scope: !565)
!1612 = !DILocation(line: 473, column: 27, scope: !571)
!1613 = !DILocation(line: 473, column: 43, scope: !571)
!1614 = !DILocation(line: 476, column: 5, scope: !571)
!1615 = !DILocation(line: 476, column: 15, scope: !571)
!1616 = !DILocation(line: 478, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !571, file: !1, line: 478, column: 5)
!1618 = !DILocation(line: 478, column: 5, scope: !571)
!1619 = !DILocation(line: 478, column: 5, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !1, discriminator: 1)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 478, column: 5)
!1622 = !DILocation(line: 478, column: 5, scope: !1621)
!1623 = !DILocation(line: 479, column: 5, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !571, file: !1, line: 479, column: 5)
!1625 = !DILocation(line: 479, column: 5, scope: !571)
!1626 = !DILocation(line: 479, column: 5, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !1, discriminator: 1)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 479, column: 5)
!1629 = !DILocation(line: 479, column: 5, scope: !1628)
!1630 = !DILocation(line: 481, column: 10, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !571, file: !1, line: 481, column: 9)
!1632 = !DILocation(line: 481, column: 9, scope: !571)
!1633 = !DILocation(line: 484, column: 9, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !571, file: !1, line: 484, column: 9)
!1635 = !DILocation(line: 484, column: 9, scope: !571)
!1636 = !DILocation(line: 485, column: 16, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 484, column: 28)
!1638 = !DILocation(line: 475, column: 16, scope: !571)
!1639 = !DILocation(line: 486, column: 18, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 486, column: 13)
!1641 = !DILocation(line: 486, column: 24, scope: !1640)
!1642 = !DILocation(line: 486, column: 27, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1640, file: !1, discriminator: 1)
!1644 = !DILocation(line: 486, column: 13, scope: !1637)
!1645 = !DILocation(line: 489, column: 18, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 489, column: 14)
!1647 = !DILocation(line: 489, column: 14, scope: !1634)
!1648 = !DILocation(line: 491, column: 22, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 489, column: 30)
!1650 = !DILocation(line: 494, column: 22, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 493, column: 10)
!1652 = !DILocation(line: 495, column: 36, scope: !1651)
!1653 = !DILocation(line: 494, column: 9, scope: !1651)
!1654 = !DILocation(line: 496, column: 9, scope: !1651)
!1655 = !DILocation(line: 499, column: 14, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !571, file: !1, line: 499, column: 9)
!1657 = !DILocation(line: 499, column: 9, scope: !571)
!1658 = !DILocation(line: 500, column: 22, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 499, column: 19)
!1660 = !DILocation(line: 500, column: 9, scope: !1659)
!1661 = !DILocation(line: 502, column: 9, scope: !1659)
!1662 = !DILocation(line: 505, column: 22, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !571, file: !1, line: 505, column: 9)
!1664 = !DILocation(line: 505, column: 14, scope: !1663)
!1665 = !DILocation(line: 505, column: 9, scope: !571)
!1666 = !DILocation(line: 506, column: 27, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 505, column: 35)
!1668 = !DILocation(line: 74, column: 24, scope: !475, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 507, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 507, column: 13)
!1671 = !DILocation(line: 74, column: 37, scope: !475, inlinedAt: !1669)
!1672 = !DILocation(line: 78, column: 26, scope: !475, inlinedAt: !1669)
!1673 = !DILocation(line: 78, column: 12, scope: !475, inlinedAt: !1669)
!1674 = !DILocation(line: 79, column: 11, scope: !475, inlinedAt: !1669)
!1675 = !DILocation(line: 88, column: 22, scope: !1098, inlinedAt: !1669)
!1676 = !DILocation(line: 88, column: 14, scope: !1098, inlinedAt: !1669)
!1677 = !DILocation(line: 88, column: 9, scope: !475, inlinedAt: !1669)
!1678 = !DILocation(line: 90, column: 22, scope: !1102, inlinedAt: !1669)
!1679 = !DILocation(line: 91, column: 5, scope: !1102, inlinedAt: !1669)
!1680 = !DILocation(line: 92, column: 19, scope: !1105, inlinedAt: !1669)
!1681 = !DILocation(line: 92, column: 14, scope: !1098, inlinedAt: !1669)
!1682 = !DILocation(line: 96, column: 14, scope: !1108, inlinedAt: !1669)
!1683 = !DILocation(line: 96, column: 22, scope: !1108, inlinedAt: !1669)
!1684 = !DILocation(line: 96, column: 28, scope: !1108, inlinedAt: !1669)
!1685 = !DILocation(line: 96, column: 19, scope: !1108, inlinedAt: !1669)
!1686 = !DILocation(line: 96, column: 14, scope: !1105, inlinedAt: !1669)
!1687 = !DILocation(line: 98, column: 30, scope: !1114, inlinedAt: !1669)
!1688 = !DILocation(line: 98, column: 22, scope: !1114, inlinedAt: !1669)
!1689 = !DILocation(line: 98, column: 44, scope: !1114, inlinedAt: !1669)
!1690 = !DILocation(line: 98, column: 38, scope: !1114, inlinedAt: !1669)
!1691 = !DILocation(line: 98, column: 36, scope: !1114, inlinedAt: !1669)
!1692 = !DILocation(line: 99, column: 5, scope: !1114, inlinedAt: !1669)
!1693 = !DILocation(line: 102, column: 22, scope: !1121, inlinedAt: !1669)
!1694 = !DILocation(line: 507, column: 13, scope: !1670)
!1695 = !DILocation(line: 107, column: 43, scope: !475, inlinedAt: !1669)
!1696 = !DILocation(line: 107, column: 23, scope: !475, inlinedAt: !1669)
!1697 = !DILocation(line: 108, column: 17, scope: !1126, inlinedAt: !1669)
!1698 = !DILocation(line: 108, column: 9, scope: !475, inlinedAt: !1669)
!1699 = !DILocation(line: 112, column: 20, scope: !475, inlinedAt: !1669)
!1700 = !DILocation(line: 113, column: 15, scope: !475, inlinedAt: !1669)
!1701 = !DILocation(line: 115, column: 5, scope: !475, inlinedAt: !1669)
!1702 = !DILocation(line: 109, column: 9, scope: !1129, inlinedAt: !1669)
!1703 = !DILocation(line: 507, column: 13, scope: !1667)
!1704 = !DILocation(line: 511, column: 12, scope: !571)
!1705 = !DILocation(line: 511, column: 5, scope: !571)
!1706 = !DILocation(line: 512, column: 1, scope: !571)
!1707 = !DILocation(line: 681, column: 27, scope: !577)
!1708 = !DILocation(line: 231, column: 27, scope: !562, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 683, column: 27, scope: !577)
!1710 = !DILocation(line: 233, column: 5, scope: !1534, inlinedAt: !1709)
!1711 = !DILocation(line: 233, column: 5, scope: !562, inlinedAt: !1709)
!1712 = !DILocation(line: 233, column: 5, scope: !1537, inlinedAt: !1709)
!1713 = !DILocation(line: 683, column: 15, scope: !577)
!1714 = !DILocation(line: 687, column: 9, scope: !577)
!1715 = !DILocation(line: 234, column: 55, scope: !562, inlinedAt: !1709)
!1716 = !DILocation(line: 234, column: 12, scope: !562, inlinedAt: !1709)
!1717 = !DILocation(line: 687, column: 19, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !577, file: !1, line: 687, column: 9)
!1719 = !DILocation(line: 689, column: 15, scope: !588)
!1720 = !DILocation(line: 689, column: 20, scope: !588)
!1721 = !DILocation(line: 689, column: 9, scope: !577)
!1722 = !DILocation(line: 690, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !588, file: !1, line: 689, column: 29)
!1724 = !DILocation(line: 684, column: 15, scope: !577)
!1725 = !DILocation(line: 692, column: 5, scope: !1723)
!1726 = !DILocation(line: 694, column: 16, scope: !587)
!1727 = !DILocation(line: 695, column: 18, scope: !586)
!1728 = !DILocation(line: 695, column: 13, scope: !587)
!1729 = !DILocation(line: 696, column: 13, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!1731 = !DILocation(line: 696, column: 13, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !584, file: !1, line: 696, column: 13)
!1733 = !DILocation(line: 696, column: 13, scope: !584)
!1734 = !DILocation(line: 696, column: 13, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1732, file: !1, discriminator: 3)
!1736 = !DILocation(line: 701, column: 53, scope: !577)
!1737 = !DILocation(line: 701, column: 13, scope: !577)
!1738 = !DILocation(line: 685, column: 15, scope: !577)
!1739 = !DILocation(line: 702, column: 5, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 1)
!1741 = !DILocation(line: 702, column: 5, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !590, file: !1, line: 702, column: 5)
!1743 = !DILocation(line: 702, column: 5, scope: !590)
!1744 = !DILocation(line: 702, column: 5, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1742, file: !1, discriminator: 3)
!1746 = !DILocation(line: 704, column: 1, scope: !577)
!1747 = !DILocation(line: 707, column: 27, scope: !591)
!1748 = !DILocation(line: 707, column: 43, scope: !591)
!1749 = !DILocation(line: 719, column: 10, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !591, file: !1, line: 719, column: 9)
!1751 = !DILocation(line: 722, column: 46, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 719, column: 54)
!1753 = !DILocation(line: 719, column: 31, scope: !1750)
!1754 = !DILocation(line: 719, column: 34, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1750, file: !1, discriminator: 1)
!1756 = !{!825, !780, i64 16}
!1757 = !DILocation(line: 719, column: 49, scope: !1750)
!1758 = !DILocation(line: 719, column: 9, scope: !591)
!1759 = !DILocation(line: 720, column: 22, scope: !1752)
!1760 = !DILocation(line: 722, column: 22, scope: !1752)
!1761 = !DILocation(line: 722, column: 37, scope: !1752)
!1762 = !DILocation(line: 722, column: 62, scope: !1752)
!1763 = !DILocation(line: 720, column: 9, scope: !1752)
!1764 = !DILocation(line: 723, column: 9, scope: !1752)
!1765 = !DILocation(line: 725, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !591, file: !1, line: 725, column: 5)
!1767 = !DILocation(line: 725, column: 5, scope: !591)
!1768 = !DILocation(line: 725, column: 5, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 725, column: 5)
!1771 = !DILocation(line: 725, column: 5, scope: !1770)
!1772 = !DILocation(line: 729, column: 11, scope: !591)
!1773 = !DILocation(line: 733, column: 34, scope: !591)
!1774 = !DILocation(line: 729, column: 15, scope: !591)
!1775 = !DILocation(line: 733, column: 14, scope: !591)
!1776 = !DILocation(line: 709, column: 15, scope: !591)
!1777 = !DILocation(line: 734, column: 16, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !591, file: !1, line: 734, column: 9)
!1779 = !DILocation(line: 734, column: 9, scope: !591)
!1780 = !DILocation(line: 736, column: 5, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 1)
!1782 = !DILocation(line: 736, column: 5, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !600, file: !1, line: 736, column: 5)
!1784 = !DILocation(line: 736, column: 5, scope: !600)
!1785 = !DILocation(line: 736, column: 5, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1783, file: !1, discriminator: 3)
!1787 = !DILocation(line: 741, column: 20, scope: !591)
!1788 = !DILocation(line: 710, column: 15, scope: !591)
!1789 = !DILocation(line: 742, column: 10, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !591, file: !1, line: 742, column: 9)
!1791 = !DILocation(line: 742, column: 9, scope: !591)
!1792 = !DILocation(line: 743, column: 22, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !1, line: 742, column: 38)
!1794 = !DILocation(line: 745, column: 45, scope: !1793)
!1795 = !DILocation(line: 743, column: 9, scope: !1793)
!1796 = !DILocation(line: 746, column: 9, scope: !1793)
!1797 = !DILocation(line: 748, column: 11, scope: !591)
!1798 = !DILocation(line: 712, column: 16, scope: !591)
!1799 = !DILocation(line: 749, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !591, file: !1, line: 749, column: 9)
!1801 = !DILocation(line: 749, column: 19, scope: !1800)
!1802 = !DILocation(line: 749, column: 22, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1800, file: !1, discriminator: 1)
!1804 = !DILocation(line: 749, column: 9, scope: !591)
!1805 = !DILocation(line: 751, column: 13, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !591, file: !1, line: 751, column: 9)
!1807 = !DILocation(line: 751, column: 9, scope: !591)
!1808 = !DILocation(line: 752, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 751, column: 18)
!1810 = !DILocation(line: 752, column: 9, scope: !1809)
!1811 = !DILocation(line: 754, column: 9, scope: !1809)
!1812 = !DILocation(line: 756, column: 15, scope: !591)
!1813 = !DILocation(line: 759, column: 12, scope: !591)
!1814 = !DILocation(line: 711, column: 15, scope: !591)
!1815 = !DILocation(line: 760, column: 14, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !591, file: !1, line: 760, column: 9)
!1817 = !DILocation(line: 760, column: 9, scope: !591)
!1818 = !DILocation(line: 761, column: 14, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 761, column: 13)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 760, column: 26)
!1821 = !DILocation(line: 761, column: 13, scope: !1820)
!1822 = !DILocation(line: 762, column: 26, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 761, column: 34)
!1824 = !DILocation(line: 764, column: 41, scope: !1823)
!1825 = !DILocation(line: 762, column: 13, scope: !1823)
!1826 = !DILocation(line: 765, column: 13, scope: !1823)
!1827 = !DILocation(line: 767, column: 19, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 767, column: 13)
!1829 = !DILocation(line: 767, column: 13, scope: !1828)
!1830 = !DILocation(line: 767, column: 13, scope: !1820)
!1831 = !DILocation(line: 770, column: 17, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 770, column: 17)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !1, line: 767, column: 25)
!1834 = !DILocation(line: 770, column: 49, scope: !1832)
!1835 = !DILocation(line: 770, column: 17, scope: !1833)
!1836 = !DILocation(line: 774, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !1, line: 773, column: 14)
!1838 = !DILocation(line: 775, column: 24, scope: !1837)
!1839 = !DILocation(line: 779, column: 5, scope: !591)
!1840 = !DILocation(line: 780, column: 1, scope: !591)
!1841 = !DILocation(line: 850, column: 25, scope: !601)
!1842 = !DILocation(line: 850, column: 37, scope: !601)
!1843 = !DILocation(line: 852, column: 16, scope: !601)
!1844 = !DILocation(line: 855, column: 15, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !601, file: !1, line: 855, column: 9)
!1846 = !DILocation(line: 855, column: 9, scope: !1845)
!1847 = !DILocation(line: 855, column: 9, scope: !601)
!1848 = !DILocation(line: 856, column: 22, scope: !1845)
!1849 = !DILocation(line: 856, column: 13, scope: !1845)
!1850 = !DILocation(line: 856, column: 9, scope: !1845)
!1851 = !DILocation(line: 857, column: 12, scope: !601)
!1852 = !DILocation(line: 857, column: 5, scope: !601)
!1853 = !DILocation(line: 164, column: 29, scope: !608)
!1854 = !DILocation(line: 166, column: 15, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !608, file: !1, line: 166, column: 9)
!1856 = !DILocation(line: 166, column: 19, scope: !1855)
!1857 = !DILocation(line: 166, column: 9, scope: !608)
!1858 = !DILocation(line: 167, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 166, column: 28)
!1860 = !DILocation(line: 170, column: 9, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 169, column: 10)
!1862 = !DILocation(line: 172, column: 1, scope: !608)
!1863 = !DILocation(line: 962, column: 34, scope: !651)
!1864 = !DILocation(line: 962, column: 50, scope: !651)
!1865 = !DILocation(line: 962, column: 60, scope: !651)
!1866 = !DILocation(line: 965, column: 35, scope: !651)
!1867 = !DILocation(line: 965, column: 14, scope: !651)
!1868 = !DILocation(line: 966, column: 14, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !651, file: !1, line: 966, column: 9)
!1870 = !DILocation(line: 966, column: 9, scope: !651)
!1871 = !DILocation(line: 967, column: 12, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 966, column: 23)
!1873 = !DILocation(line: 967, column: 19, scope: !1872)
!1874 = !DILocation(line: 968, column: 9, scope: !1872)
!1875 = !DILocation(line: 970, column: 35, scope: !651)
!1876 = !DILocation(line: 970, column: 54, scope: !651)
!1877 = !DILocation(line: 970, column: 62, scope: !651)
!1878 = !DILocation(line: 970, column: 11, scope: !651)
!1879 = !DILocation(line: 964, column: 9, scope: !651)
!1880 = !DILocation(line: 972, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !651, file: !1, line: 972, column: 9)
!1882 = !DILocation(line: 972, column: 9, scope: !651)
!1883 = !DILocation(line: 973, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 972, column: 19)
!1885 = !DILocation(line: 973, column: 19, scope: !1884)
!1886 = !DILocation(line: 974, column: 5, scope: !1884)
!1887 = !DILocation(line: 976, column: 1, scope: !651)
!1888 = !DILocation(line: 979, column: 38, scope: !660)
!1889 = !DILocation(line: 979, column: 54, scope: !660)
!1890 = !DILocation(line: 981, column: 35, scope: !660)
!1891 = !DILocation(line: 981, column: 14, scope: !660)
!1892 = !DILocation(line: 982, column: 8, scope: !660)
!1893 = !DILocation(line: 982, column: 15, scope: !660)
!1894 = !DILocation(line: 983, column: 1, scope: !660)
