; ModuleID = 'fileio.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, {}*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, {}*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.fileio = type { %struct._object, i32, i8, i8, %struct._object*, %struct._object* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._PyIO_State = type { i32, %struct._object*, %struct._object* }

@.str = private unnamed_addr constant [11 x i8] c"_io.FileIO\00", align 1
@fileio_doc = internal global [845 x i8] c"file(name: str[, mode: str][, opener: None]) -> file IO object\0A\0AOpen a file.  The mode can be 'r', 'w', 'x' or 'a' for reading (default),\0Awriting, exclusive creation or appending.  The file will be created if it\0Adoesn't exist when opened for writing or appending; it will be truncated\0Awhen opened for writing.  A `FileExistsError` will be raised if it already\0Aexists when opened for creating. Opening a file for creating implies\0Awriting so this mode behaves in a similar way to 'w'.Add a '+' to the mode\0Ato allow simultaneous reading and writing. A custom opener can be used by\0Apassing a callable as *opener*. The underlying file descriptor for the file\0Aobject is then obtained by calling opener with (*name*, *flags*).\0A*opener* must return an open file descriptor (passing os.open as *opener*\0Aresults in functionality similar to passing None).\00", align 16
@fileio_methods = internal global [16 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @read_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_readall to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @readall_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_readinto to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @readinto_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @write_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_seek to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([439 x i8], [439 x i8]* @seek_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_tell to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @tell_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_truncate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @truncate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @close_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_seekable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @seekable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_readable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @readable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_writable to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @writable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @fileno_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_isatty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @isatty_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*, %struct._object*)* @fileio_dealloc_warn to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@fileio_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 14, i64 21, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@fileio_getsetlist = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.fileio*, i8*)* @get_closed to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.fileio*, i8*)* @get_closefd to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.fileio*, i8*)* @get_mode to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyFileIO_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.fileio*)* @fileio_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.fileio*)* @fileio_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279553, i8* getelementptr inbounds ([845 x i8], [845 x i8]* @fileio_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.fileio*, i32 (%struct._object*, i8*)*, i8*)* @fileio_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.fileio*)* @fileio_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([16 x %struct.PyMethodDef], [16 x %struct.PyMethodDef]* @fileio_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @fileio_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @fileio_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 32, i32 (%struct._object*, %struct._object*, %struct._object*)* @fileio_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @fileio_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"<_io.FileIO [closed]>\00", align 1
@PyId_name = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"<_io.FileIO fd=%d mode='%s'>\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"<_io.FileIO name=%R mode='%s'>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xb+\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"xb\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@read_doc = internal global [232 x i8] c"read(size: int) -> bytes.  read at most size bytes, returned as bytes.\0A\0AOnly makes one system call, so less data may be returned than requested\0AIn non-blocking mode, returns None if no data is available.\0AOn end-of-file, returns ''.\00", align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"readall\00", align 1
@readall_doc = internal global [199 x i8] c"readall() -> bytes.  read all data from the file, returned as bytes.\0A\0AIn non-blocking mode, returns as much as is immediately available,\0Aor None if no data is available.  On end-of-file, returns ''.\00", align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"readinto\00", align 1
@readinto_doc = internal global [44 x i8] c"readinto() -> Same as RawIOBase.readinto().\00", align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@write_doc = internal global [189 x i8] c"write(b: bytes) -> int.  Write bytes b to file, return number written.\0A\0AOnly makes one system call, so not all of the data may be written.\0AThe number of bytes actually written is returned.\00", align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@seek_doc = internal global [439 x i8] c"seek(offset: int[, whence: int]) -> None.  Move to new file position.\0A\0AArgument offset is a byte count.  Optional argument whence defaults to\0A0 (offset from start of file, offset should be >= 0); other values are 1\0A(move relative to current position, positive or negative), and 2 (move\0Arelative to end of file, usually negative, although many platforms allow\0Aseeking beyond the end of a file).\0ANote that not all file objects are seekable.\00", align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@tell_doc = internal global [38 x i8] c"tell() -> int.  Current file position\00", align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@truncate_doc = internal global [199 x i8] c"truncate([size: int]) -> None.  Truncate the file to at most size bytes.\0A\0ASize defaults to the current file position, as returned by tell().The current file position is changed to the value of size.\00", align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@close_doc = internal global [172 x i8] c"close() -> None.  Close the file.\0A\0AA closed file cannot be used for further I/O operations.  close() may be\0Acalled more than once without error.  Changes the fileno to -1.\00", align 16
@.str.20 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@seekable_doc = internal global [58 x i8] c"seekable() -> bool.  True if file supports random-access.\00", align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@readable_doc = internal global [61 x i8] c"readable() -> bool.  True if file was opened in a read mode.\00", align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@writable_doc = internal global [62 x i8] c"writable() -> bool.  True if file was opened in a write mode.\00", align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@fileno_doc = internal global [108 x i8] c"fileno() -> int. \22file descriptor\22.\0A\0AThis is needed for lower-level file interfaces, such the fcntl module.\00", align 16
@.str.24 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@isatty_doc = internal global [66 x i8] c"isatty() -> bool.  True if the file is connected to a tty device.\00", align 16
@.str.25 = private unnamed_addr constant [14 x i8] c"_dealloc_warn\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"|O&\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_IOError = external global %struct._object*, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [29 x i8] c"I/O operation on closed file\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"File not open for %s\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [65 x i8] c"unbounded read returned more bytes than a Python string can hold\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"y*\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"O|i\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.36 = private unnamed_addr constant [23 x i8] c"an integer is required\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"|O\00", align 1
@fileio_close.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._object* null }, align 8
@PyRawIOBase_Type = external global %struct._typeobject, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyExc_ResourceWarning = external global %struct._object*, align 8
@.str.39 = private unnamed_addr constant [17 x i8] c"unclosed file %R\00", align 1
@PyExc_Warning = external global %struct._object*, align 8
@.str.40 = private unnamed_addr constant [29 x i8] c"cannot serialize '%s' object\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"_finalizing\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"True if the file is closed\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"closefd\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"True if the file descriptor will be closed\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"String giving the file mode\00", align 1
@fileio_init.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* null], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"opener\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_Py_open_cloexec_works = external global i32, align 4
@.str.51 = private unnamed_addr constant [13 x i8] c"O|siO:fileio\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"integer argument expected, got float\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"Negative filedescriptor\00", align 1
@.str.54 = private unnamed_addr constant [76 x i8] c"Must have exactly one of create/read/write/append mode and at most one plus\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"invalid mode: %.200s\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"Cannot use closefd=False with file name\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"expected integer from opener\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.59 = private unnamed_addr constant [5 x i8] c"(is)\00", align 1

; Function Attrs: nounwind readonly uwtable
define i32 @_PyFileIO_closed(%struct._object* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !394, metadata !953), !dbg !954
  %fd = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !955
  %0 = bitcast %struct._object* %fd to i32*, !dbg !955
  %1 = load i32, i32* %0, align 4, !dbg !955, !tbaa !956
  %.lobit = lshr i32 %1, 31, !dbg !964
  ret i32 %.lobit, !dbg !965
}

; Function Attrs: nounwind uwtable
define internal void @fileio_dealloc(%struct.fileio* %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !399, metadata !953), !dbg !966
  %finalizing = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 3, !dbg !967
  store i8 1, i8* %finalizing, align 1, !dbg !968, !tbaa !969
  %0 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, !dbg !970
  %call = tail call i32 @_PyIOBase_finalize(%struct._object* %0) #3, !dbg !972
  %cmp = icmp slt i32 %call, 0, !dbg !973
  br i1 %cmp, label %return, label %do.body, !dbg !974

do.body:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.fileio, %struct.fileio* %self, i64 -1, i32 1, !dbg !975
  %gc_refs = getelementptr inbounds i32, i32* %add.ptr, i64 4, !dbg !977
  %1 = bitcast i32* %gc_refs to i64*, !dbg !977
  %2 = load i64, i64* %1, align 8, !dbg !977, !tbaa !980
  %and = and i64 %2, 1, !dbg !977
  %or = or i64 %and, -4, !dbg !977
  store i64 %or, i64* %1, align 8, !dbg !977, !tbaa !980
  %gc_next = bitcast i32* %add.ptr to %union._gc_head**, !dbg !982
  %3 = bitcast i32* %add.ptr to i64*, !dbg !982
  %4 = load i64, i64* %3, align 8, !dbg !982, !tbaa !984
  %gc_prev = getelementptr inbounds i32, i32* %add.ptr, i64 2, !dbg !982
  %5 = bitcast i32* %gc_prev to i64**, !dbg !982
  %6 = load i64*, i64** %5, align 8, !dbg !982, !tbaa !985
  store i64 %4, i64* %6, align 8, !dbg !982, !tbaa !984
  %7 = ptrtoint i64* %6 to i64, !dbg !982
  %8 = bitcast i32* %add.ptr to %struct.anon**, !dbg !982
  %9 = load %struct.anon*, %struct.anon** %8, align 8, !dbg !982, !tbaa !984
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %9, i64 0, i32 1, !dbg !982
  %10 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !982
  store i64 %7, i64* %10, align 8, !dbg !982, !tbaa !985
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !982, !tbaa !984
  %weakreflist = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 4, !dbg !986
  %11 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !986, !tbaa !988
  %cmp18 = icmp eq %struct._object* %11, null, !dbg !989
  br i1 %cmp18, label %do.body.21, label %if.then.19, !dbg !990

if.then.19:                                       ; preds = %do.body
  tail call void @PyObject_ClearWeakRefs(%struct._object* %0) #3, !dbg !991
  br label %do.body.21, !dbg !991

do.body.21:                                       ; preds = %do.body, %if.then.19
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 5, !dbg !992
  %12 = load %struct._object*, %struct._object** %dict, align 8, !dbg !992, !tbaa !994
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !402, metadata !953), !dbg !992
  %cmp22 = icmp eq %struct._object* %12, null, !dbg !995
  br i1 %cmp22, label %if.end.31, label %if.then.23, !dbg !996

if.then.23:                                       ; preds = %do.body.21
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !997, !tbaa !994
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !404, metadata !953), !dbg !999
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1001
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1001, !tbaa !1003
  %dec = add i64 %13, -1, !dbg !1001
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1001, !tbaa !1003
  %cmp26 = icmp eq i64 %dec, 0, !dbg !1001
  br i1 %cmp26, label %if.else, label %if.end.31, !dbg !1004

if.else:                                          ; preds = %if.then.23
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1005
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1005, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1005
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1005, !tbaa !1008
  tail call void %15(%struct._object* %12) #3, !dbg !1005
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.23, %do.body.21
  %ob_type34 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, i32 1, !dbg !1011
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1011, !tbaa !1007
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 38, !dbg !1012
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1012, !tbaa !1013
  %18 = bitcast %struct.fileio* %self to i8*, !dbg !1014
  tail call void %17(i8* %18) #3, !dbg !1011
  br label %return, !dbg !1015

return:                                           ; preds = %entry, %if.end.31
  ret void, !dbg !1016
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_repr(%struct.fileio* %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !412, metadata !953), !dbg !1018
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1019
  %0 = load i32, i32* %fd, align 4, !dbg !1019, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !1021
  br i1 %cmp, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !1023
  br label %cleanup, !dbg !1024

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, !dbg !1025
  %call1 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId_name) #3, !dbg !1026
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !413, metadata !953), !dbg !1027
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1028
  br i1 %cmp2, label %if.then.3, label %if.else.10, !dbg !1029

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1030, !tbaa !1033
  %call4 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %2) #3, !dbg !1034
  %tobool = icmp eq i32 %call4, 0, !dbg !1034
  br i1 %tobool, label %cleanup, label %if.then.5, !dbg !1035

if.then.5:                                        ; preds = %if.then.3
  tail call void @PyErr_Clear() #3, !dbg !1036
  %3 = load i32, i32* %fd, align 4, !dbg !1037, !tbaa !956
  %self.idx30 = getelementptr %struct.fileio, %struct.fileio* %self, i64 0, i32 2
  %self.idx30.val = load i8, i8* %self.idx30, align 4
  %bf.clear.i = and i8 %self.idx30.val, 1, !dbg !1038
  %tobool.i = icmp eq i8 %bf.clear.i, 0, !dbg !1041
  br i1 %tobool.i, label %if.end.i, label %if.then.i, !dbg !1042

if.then.i:                                        ; preds = %if.then.5
  %bf.clear2.i = and i8 %self.idx30.val, 2, !dbg !1043
  %tobool4.i = icmp eq i8 %bf.clear2.i, 0, !dbg !1046
  %..i = select i1 %tobool4.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !1047
  br label %mode_string.exit, !dbg !1047

if.end.i:                                         ; preds = %if.then.5
  %bf.clear8.i = and i8 %self.idx30.val, 8, !dbg !1048
  %tobool10.i = icmp eq i8 %bf.clear8.i, 0, !dbg !1050
  %bf.clear15.i = and i8 %self.idx30.val, 2, !dbg !1051
  %tobool17.i = icmp ne i8 %bf.clear15.i, 0, !dbg !1054
  br i1 %tobool10.i, label %if.else.20.i, label %if.then.11.i, !dbg !1055

if.then.11.i:                                     ; preds = %if.end.i
  %.39.i = select i1 %tobool17.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), !dbg !1056
  br label %mode_string.exit, !dbg !1056

if.else.20.i:                                     ; preds = %if.end.i
  br i1 %tobool17.i, label %if.then.27.i, label %mode_string.exit, !dbg !1057

if.then.27.i:                                     ; preds = %if.else.20.i
  %bf.clear30.i = and i8 %self.idx30.val, 4, !dbg !1058
  %tobool32.i = icmp eq i8 %bf.clear30.i, 0, !dbg !1062
  %.40.i = select i1 %tobool32.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), !dbg !1063
  br label %mode_string.exit, !dbg !1063

mode_string.exit:                                 ; preds = %if.then.i, %if.then.11.i, %if.else.20.i, %if.then.27.i
  %retval.0.i = phi i8* [ %..i, %if.then.i ], [ %.39.i, %if.then.11.i ], [ %.40.i, %if.then.27.i ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %if.else.20.i ], !dbg !1064
  %call9 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %3, i8* %retval.0.i) #3, !dbg !1065
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !414, metadata !953), !dbg !1066
  br label %cleanup, !dbg !1067

if.else.10:                                       ; preds = %if.end
  %self.idx = getelementptr %struct.fileio, %struct.fileio* %self, i64 0, i32 2
  %self.idx.val = load i8, i8* %self.idx, align 4
  %bf.clear.i.31 = and i8 %self.idx.val, 1, !dbg !1068
  %tobool.i.32 = icmp eq i8 %bf.clear.i.31, 0, !dbg !1070
  br i1 %tobool.i.32, label %if.end.i.41, label %if.then.i.36, !dbg !1071

if.then.i.36:                                     ; preds = %if.else.10
  %bf.clear2.i.33 = and i8 %self.idx.val, 2, !dbg !1072
  %tobool4.i.34 = icmp eq i8 %bf.clear2.i.33, 0, !dbg !1073
  %..i.35 = select i1 %tobool4.i.34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !1074
  br label %mode_string.exit50, !dbg !1074

if.end.i.41:                                      ; preds = %if.else.10
  %bf.clear8.i.37 = and i8 %self.idx.val, 8, !dbg !1075
  %tobool10.i.38 = icmp eq i8 %bf.clear8.i.37, 0, !dbg !1076
  %bf.clear15.i.39 = and i8 %self.idx.val, 2, !dbg !1077
  %tobool17.i.40 = icmp ne i8 %bf.clear15.i.39, 0, !dbg !1078
  br i1 %tobool10.i.38, label %if.else.20.i.44, label %if.then.11.i.43, !dbg !1079

if.then.11.i.43:                                  ; preds = %if.end.i.41
  %.39.i.42 = select i1 %tobool17.i.40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), !dbg !1080
  br label %mode_string.exit50, !dbg !1080

if.else.20.i.44:                                  ; preds = %if.end.i.41
  br i1 %tobool17.i.40, label %if.then.27.i.48, label %mode_string.exit50, !dbg !1081

if.then.27.i.48:                                  ; preds = %if.else.20.i.44
  %bf.clear30.i.45 = and i8 %self.idx.val, 4, !dbg !1082
  %tobool32.i.46 = icmp eq i8 %bf.clear30.i.45, 0, !dbg !1083
  %.40.i.47 = select i1 %tobool32.i.46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), !dbg !1084
  br label %mode_string.exit50, !dbg !1084

mode_string.exit50:                               ; preds = %if.then.i.36, %if.then.11.i.43, %if.else.20.i.44, %if.then.27.i.48
  %retval.0.i.49 = phi i8* [ %..i.35, %if.then.i.36 ], [ %.39.i.42, %if.then.11.i.43 ], [ %.40.i.47, %if.then.27.i.48 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %if.else.20.i.44 ], !dbg !1085
  %call12 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call1, i8* %retval.0.i.49) #3, !dbg !1086
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !414, metadata !953), !dbg !1066
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !415, metadata !953), !dbg !1087
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1089
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1089, !tbaa !1003
  %dec = add i64 %4, -1, !dbg !1089
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1089, !tbaa !1003
  %cmp13 = icmp eq i64 %dec, 0, !dbg !1089
  br i1 %cmp13, label %if.else.15, label %cleanup, !dbg !1091

if.else.15:                                       ; preds = %mode_string.exit50
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1092
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1092, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1092
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1092, !tbaa !1008
  tail call void %6(%struct._object* %call1) #3, !dbg !1092
  br label %cleanup

cleanup:                                          ; preds = %mode_string.exit, %mode_string.exit50, %if.else.15, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ null, %if.then.3 ], [ %call9, %mode_string.exit ], [ %call12, %mode_string.exit50 ], [ %call12, %if.else.15 ]
  ret %struct._object* %retval.0, !dbg !1094
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @fileio_traverse(%struct.fileio* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !428, metadata !953), !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !429, metadata !953), !dbg !1096
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !430, metadata !953), !dbg !1097
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 5, !dbg !1098
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1098, !tbaa !994
  %tobool = icmp eq %struct._object* %0, null, !dbg !1098
  br i1 %tobool, label %do.end, label %if.then, !dbg !1100

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #3, !dbg !1101
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !431, metadata !953), !dbg !1101
  %tobool2 = icmp eq i32 %call, 0, !dbg !1103
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1105

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1106
}

; Function Attrs: nounwind uwtable
define internal i32 @fileio_clear(%struct.fileio* nocapture %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !439, metadata !953), !dbg !1107
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 5, !dbg !1108
  %0 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1108, !tbaa !994
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !440, metadata !953), !dbg !1108
  %cmp = icmp eq %struct._object* %0, null, !dbg !1110
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1111

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !1112, !tbaa !994
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !442, metadata !953), !dbg !1114
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1116
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1116, !tbaa !1003
  %dec = add i64 %1, -1, !dbg !1116
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1116, !tbaa !1003
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1116
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1118

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1119
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1119, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1119
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1119, !tbaa !1008
  tail call void %3(%struct._object* %0) #3, !dbg !1119
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !1121
}

; Function Attrs: nounwind uwtable
define internal i32 @fileio_init(%struct._object* %oself, %struct._object* %args, %struct._object* %kwds) #1 {
entry:
  %buf.i.359 = alloca %struct.stat, align 8
  %buf.i = alloca %struct.stat, align 8
  %nameobj = alloca %struct._object*, align 8
  %stringobj = alloca %struct._object*, align 8
  %opener = alloca %struct._object*, align 8
  %mode = alloca i8*, align 8
  %closefd = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %oself, i64 0, metadata !791, metadata !953), !dbg !1122
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !792, metadata !953), !dbg !1123
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !793, metadata !953), !dbg !1124
  %0 = bitcast %struct._object* %oself to %struct.fileio*, !dbg !1125
  tail call void @llvm.dbg.value(metadata %struct.fileio* %0, i64 0, metadata !794, metadata !953), !dbg !1126
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !795, metadata !953), !dbg !1127
  %1 = bitcast %struct._object** %nameobj to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1128
  %2 = bitcast %struct._object** %stringobj to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1128
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !797, metadata !953), !dbg !1129
  store %struct._object* null, %struct._object** %stringobj, align 8, !dbg !1129, !tbaa !1033
  %3 = bitcast %struct._object** %opener to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1128
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !798, metadata !953), !dbg !1130
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8, !dbg !1130, !tbaa !1033
  %4 = bitcast i8** %mode to i8*, !dbg !1131
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1131
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !799, metadata !953), !dbg !1132
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i8** %mode, align 8, !dbg !1132, !tbaa !1033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !801, metadata !953), !dbg !1133
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !802, metadata !953), !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !803, metadata !953), !dbg !1135
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !804, metadata !953), !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !805, metadata !953), !dbg !1137
  %5 = bitcast i32* %closefd to i8*, !dbg !1138
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !1138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !806, metadata !953), !dbg !1139
  store i32 1, i32* %closefd, align 4, !dbg !1139, !tbaa !1140
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !807, metadata !953), !dbg !1141
  tail call void @llvm.dbg.value(metadata i32* @_Py_open_cloexec_works, i64 0, metadata !808, metadata !953), !dbg !1142
  %fd1 = getelementptr inbounds %struct._object, %struct._object* %oself, i64 1, !dbg !1143
  %6 = bitcast %struct._object* %fd1 to i32*, !dbg !1143
  %7 = load i32, i32* %6, align 4, !dbg !1145, !tbaa !956
  %cmp = icmp sgt i32 %7, -1, !dbg !1151
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !1152

if.then:                                          ; preds = %entry
  %closefd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i64 0, i32 2, !dbg !1153
  %bf.load = load i8, i8* %closefd2, align 4, !dbg !1153
  %bf.clear = and i8 %bf.load, 64, !dbg !1153
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1154
  store i32 -1, i32* %6, align 4, !dbg !1155, !tbaa !956
  br i1 %tobool, label %if.end.8, label %if.then.i, !dbg !1156

if.then.i:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct.fileio* %0, i64 0, metadata !728, metadata !953) #3, !dbg !1157
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !729, metadata !953) #3, !dbg !1158
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !730, metadata !953) #3, !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !731, metadata !953) #3, !dbg !1160
  %call.i = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !1161
  tail call void @llvm.dbg.value(metadata %struct._ts* %call.i, i64 0, metadata !734, metadata !953) #3, !dbg !1161
  %call4.i = tail call i32 @close(i32 %7) #3, !dbg !1162
  tail call void @llvm.dbg.value(metadata i32 %call4.i, i64 0, metadata !729, metadata !953) #3, !dbg !1158
  %cmp5.i = icmp slt i32 %call4.i, 0, !dbg !1163
  br i1 %cmp5.i, label %internal_close.exit, label %if.end.8.i, !dbg !1165

if.end.8.i:                                       ; preds = %if.then.i
  tail call void @PyEval_RestoreThread(%struct._ts* %call.i) #3, !dbg !1166
  br label %if.end.8, !dbg !1167

internal_close.exit:                              ; preds = %if.then.i
  %call7.i = tail call i32* @__errno_location() #6, !dbg !1168
  %8 = load i32, i32* %call7.i, align 4, !dbg !1168, !tbaa !1140
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !730, metadata !953) #3, !dbg !1159
  tail call void @PyEval_RestoreThread(%struct._ts* %call.i) #3, !dbg !1166
  store i32 %8, i32* %call7.i, align 4, !dbg !1169, !tbaa !1140
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1172, !tbaa !1033
  %call12.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %9) #3, !dbg !1173
  br label %cleanup.262, !dbg !1174

if.end.8:                                         ; preds = %if.then, %if.end.8.i, %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  tail call void @llvm.dbg.value(metadata %struct._object** %opener, i64 0, metadata !798, metadata !953), !dbg !1130
  tail call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !799, metadata !953), !dbg !1132
  tail call void @llvm.dbg.value(metadata i32* %closefd, i64 0, metadata !806, metadata !953), !dbg !1139
  %call9 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @fileio_init.kwlist, i64 0, i64 0), %struct._object** nonnull %nameobj, i8** nonnull %mode, i32* nonnull %closefd, %struct._object** nonnull %opener) #3, !dbg !1176
  %tobool10 = icmp eq i32 %call9, 0, !dbg !1176
  br i1 %tobool10, label %cleanup.262, label %if.end.12, !dbg !1178

if.end.12:                                        ; preds = %if.end.8
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %10 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1179, !tbaa !1033
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1179
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1179, !tbaa !1007
  %cmp13 = icmp eq %struct._typeobject* %11, @PyFloat_Type, !dbg !1179
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false, !dbg !1179

lor.lhs.false:                                    ; preds = %if.end.12
  %call15 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* nonnull @PyFloat_Type) #3, !dbg !1181
  %tobool16 = icmp eq i32 %call15, 0, !dbg !1181
  br i1 %tobool16, label %if.end.18, label %if.then.17, !dbg !1183

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1184, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0)) #3, !dbg !1186
  br label %cleanup.262, !dbg !1187

if.end.18:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %13 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1188, !tbaa !1033
  %call19 = call i32 @_PyLong_AsInt(%struct._object* %13) #3, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !805, metadata !953), !dbg !1137
  %cmp20 = icmp slt i32 %call19, 0, !dbg !1190
  br i1 %cmp20, label %if.then.21, label %if.end.33, !dbg !1192

if.then.21:                                       ; preds = %if.end.18
  %call22 = call %struct._object* @PyErr_Occurred() #3, !dbg !1193
  %tobool23 = icmp eq %struct._object* %call22, null, !dbg !1193
  br i1 %tobool23, label %if.then.24, label %if.then.28, !dbg !1196

if.then.24:                                       ; preds = %if.then.21
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1197, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0)) #3, !dbg !1199
  br label %cleanup.262, !dbg !1200

if.then.28:                                       ; preds = %if.then.21
  call void @PyErr_Clear() #3, !dbg !1201
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %15 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1202, !tbaa !1033
  %call29 = call i32 @PyUnicode_FSConverter(%struct._object* %15, i8* %2) #3, !dbg !1206
  %tobool30 = icmp eq i32 %call29, 0, !dbg !1206
  br i1 %tobool30, label %cleanup.262, label %if.end.32, !dbg !1207

if.end.32:                                        ; preds = %if.then.28
  call void @llvm.dbg.value(metadata %struct._object** %stringobj, i64 0, metadata !797, metadata !953), !dbg !1129
  %16 = bitcast %struct._object** %stringobj to %struct.PyBytesObject**, !dbg !1208
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %16, align 8, !dbg !1208, !tbaa !1033
  %arraydecay = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i64 0, i32 2, i64 0, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !795, metadata !953), !dbg !1127
  br label %if.end.33, !dbg !1209

if.end.33:                                        ; preds = %if.end.18, %if.end.32
  %name.0 = phi i8* [ %arraydecay, %if.end.32 ], [ null, %if.end.18 ]
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !799, metadata !953), !dbg !1132
  %18 = load i8*, i8** %mode, align 8, !dbg !1210, !tbaa !1033
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !800, metadata !953), !dbg !1213
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i64 0, i32 2, !dbg !1214
  br label %while.cond.outer, !dbg !1215

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end.33
  %flags.0.ph = phi i32 [ 0, %if.end.33 ], [ %flags.0.ph.be, %while.cond.outer.backedge ]
  %plus.0.ph = phi i32 [ 0, %if.end.33 ], [ %plus.0.ph391544, %while.cond.outer.backedge ]
  %rwa.0.ph = phi i32 [ 0, %if.end.33 ], [ 1, %while.cond.outer.backedge ]
  %s.0.ph = phi i8* [ %18, %if.end.33 ], [ %incdec.ptr531, %while.cond.outer.backedge ]
  br label %while.cond.outer390, !dbg !1216

while.cond.outer390:                              ; preds = %while.cond.outer, %if.end.74
  %plus.0.ph391 = phi i32 [ %plus.0.ph, %while.cond.outer ], [ 1, %if.end.74 ]
  %rwa.0.ph392 = phi i32 [ %rwa.0.ph, %while.cond.outer ], [ %rwa.0.ph395.lcssa536, %if.end.74 ]
  %s.0.ph393 = phi i8* [ %s.0.ph, %while.cond.outer ], [ %incdec.ptr.lcssa530, %if.end.74 ]
  br label %while.cond.outer394, !dbg !1216

while.cond.outer394:                              ; preds = %while.cond.outer390, %if.end.46
  %rwa.0.ph395 = phi i32 [ %rwa.0.ph392, %while.cond.outer390 ], [ 1, %if.end.46 ]
  %s.0.ph396 = phi i8* [ %s.0.ph393, %while.cond.outer390 ], [ %incdec.ptr.lcssa527, %if.end.46 ]
  br label %while.cond, !dbg !1216

while.cond:                                       ; preds = %while.cond.outer394, %while.body
  %s.0 = phi i8* [ %incdec.ptr, %while.body ], [ %s.0.ph396, %while.cond.outer394 ]
  %19 = load i8, i8* %s.0, align 1, !dbg !1216, !tbaa !1217
  %tobool34 = icmp eq i8 %19, 0, !dbg !1215
  br i1 %tobool34, label %while.end, label %while.body, !dbg !1215

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, i8* %s.0, i64 1, !dbg !1218
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !800, metadata !953), !dbg !1213
  %conv = sext i8 %19 to i32, !dbg !1219
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
    i32 114, label %sw.bb.43
    i32 119, label %sw.bb.50
    i32 97, label %sw.bb.59
    i32 98, label %while.cond
    i32 43, label %sw.bb.71
  ], !dbg !1220

sw.bb:                                            ; preds = %while.body
  %plus.0.ph391.lcssa539 = phi i32 [ %plus.0.ph391, %while.body ]
  %rwa.0.ph395.lcssa533 = phi i32 [ %rwa.0.ph395, %while.body ]
  %incdec.ptr.lcssa526 = phi i8* [ %incdec.ptr, %while.body ]
  %tobool35 = icmp eq i32 %rwa.0.ph395.lcssa533, 0, !dbg !1221
  br i1 %tobool35, label %if.end.37, label %bad_mode.loopexit502, !dbg !1223

bad_mode.loopexit:                                ; preds = %sw.bb.43
  br label %bad_mode, !dbg !1224

bad_mode.loopexit501:                             ; preds = %sw.bb.71
  br label %bad_mode, !dbg !1224

bad_mode.loopexit502:                             ; preds = %sw.bb.59, %sw.bb.50, %sw.bb
  br label %bad_mode, !dbg !1224

bad_mode:                                         ; preds = %bad_mode.loopexit502, %bad_mode.loopexit501, %bad_mode.loopexit, %while.end
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1224, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.54, i64 0, i64 0)) #3, !dbg !1226
  br label %if.end.235.thread, !dbg !1227

if.end.37:                                        ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !802, metadata !953), !dbg !1134
  %bf.load38 = load i8, i8* %readable, align 4, !dbg !1228
  %bf.set42 = or i8 %bf.load38, 5, !dbg !1229
  store i8 %bf.set42, i8* %readable, align 4, !dbg !1229
  %or = or i32 %flags.0.ph, 192, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %or, i64 0, metadata !804, metadata !953), !dbg !1136
  br label %while.cond.outer.backedge, !dbg !1231

sw.bb.43:                                         ; preds = %while.body
  %incdec.ptr.lcssa527 = phi i8* [ %incdec.ptr, %while.body ]
  %tobool44 = icmp eq i32 %rwa.0.ph395, 0, !dbg !1232
  br i1 %tobool44, label %if.end.46, label %bad_mode.loopexit, !dbg !1234

if.end.46:                                        ; preds = %sw.bb.43
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !802, metadata !953), !dbg !1134
  %bf.load47 = load i8, i8* %readable, align 4, !dbg !1235
  %bf.set49 = or i8 %bf.load47, 2, !dbg !1235
  store i8 %bf.set49, i8* %readable, align 4, !dbg !1235
  br label %while.cond.outer394, !dbg !1236

sw.bb.50:                                         ; preds = %while.body
  %plus.0.ph391.lcssa540 = phi i32 [ %plus.0.ph391, %while.body ]
  %rwa.0.ph395.lcssa534 = phi i32 [ %rwa.0.ph395, %while.body ]
  %incdec.ptr.lcssa528 = phi i8* [ %incdec.ptr, %while.body ]
  %tobool51 = icmp eq i32 %rwa.0.ph395.lcssa534, 0, !dbg !1237
  br i1 %tobool51, label %if.end.53, label %bad_mode.loopexit502, !dbg !1239

if.end.53:                                        ; preds = %sw.bb.50
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !802, metadata !953), !dbg !1134
  %bf.load55 = load i8, i8* %readable, align 4, !dbg !1240
  %bf.set57 = or i8 %bf.load55, 4, !dbg !1240
  store i8 %bf.set57, i8* %readable, align 4, !dbg !1240
  %or58 = or i32 %flags.0.ph, 576, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %or58, i64 0, metadata !804, metadata !953), !dbg !1136
  br label %while.cond.outer.backedge, !dbg !1242

sw.bb.59:                                         ; preds = %while.body
  %plus.0.ph391.lcssa541 = phi i32 [ %plus.0.ph391, %while.body ]
  %rwa.0.ph395.lcssa535 = phi i32 [ %rwa.0.ph395, %while.body ]
  %incdec.ptr.lcssa529 = phi i8* [ %incdec.ptr, %while.body ]
  %tobool60 = icmp eq i32 %rwa.0.ph395.lcssa535, 0, !dbg !1243
  br i1 %tobool60, label %if.end.62, label %bad_mode.loopexit502, !dbg !1245

if.end.62:                                        ; preds = %sw.bb.59
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !802, metadata !953), !dbg !1134
  %bf.load64 = load i8, i8* %readable, align 4, !dbg !1246
  %bf.set69 = or i8 %bf.load64, 12, !dbg !1247
  store i8 %bf.set69, i8* %readable, align 4, !dbg !1247
  %or70 = or i32 %flags.0.ph, 1088, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %or70, i64 0, metadata !804, metadata !953), !dbg !1136
  br label %while.cond.outer.backedge, !dbg !1249

while.cond.outer.backedge:                        ; preds = %if.end.62, %if.end.53, %if.end.37
  %plus.0.ph391544 = phi i32 [ %plus.0.ph391.lcssa539, %if.end.37 ], [ %plus.0.ph391.lcssa540, %if.end.53 ], [ %plus.0.ph391.lcssa541, %if.end.62 ]
  %incdec.ptr531 = phi i8* [ %incdec.ptr.lcssa526, %if.end.37 ], [ %incdec.ptr.lcssa528, %if.end.53 ], [ %incdec.ptr.lcssa529, %if.end.62 ]
  %flags.0.ph.be = phi i32 [ %or, %if.end.37 ], [ %or58, %if.end.53 ], [ %or70, %if.end.62 ]
  br label %while.cond.outer, !dbg !1216

sw.bb.71:                                         ; preds = %while.body
  %rwa.0.ph395.lcssa536 = phi i32 [ %rwa.0.ph395, %while.body ]
  %incdec.ptr.lcssa530 = phi i8* [ %incdec.ptr, %while.body ]
  %tobool72 = icmp eq i32 %plus.0.ph391, 0, !dbg !1250
  br i1 %tobool72, label %if.end.74, label %bad_mode.loopexit501, !dbg !1252

if.end.74:                                        ; preds = %sw.bb.71
  %bf.load76 = load i8, i8* %readable, align 4, !dbg !1253
  %bf.set82 = or i8 %bf.load76, 6, !dbg !1254
  store i8 %bf.set82, i8* %readable, align 4, !dbg !1254
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !803, metadata !953), !dbg !1135
  br label %while.cond.outer390, !dbg !1255

sw.default:                                       ; preds = %while.body
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1256, !tbaa !1033
  call void @llvm.dbg.value(metadata i8** %mode, i64 0, metadata !799, metadata !953), !dbg !1132
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i8* %18) #3, !dbg !1257
  br label %if.end.235.thread, !dbg !1258

while.end:                                        ; preds = %while.cond
  %flags.0.ph.lcssa = phi i32 [ %flags.0.ph, %while.cond ]
  %rwa.0.ph395.lcssa = phi i32 [ %rwa.0.ph395, %while.cond ]
  %tobool84 = icmp eq i32 %rwa.0.ph395.lcssa, 0, !dbg !1259
  br i1 %tobool84, label %bad_mode, label %if.end.86, !dbg !1261

if.end.86:                                        ; preds = %while.end
  %bf.load88 = load i8, i8* %readable, align 4, !dbg !1262
  %22 = and i8 %bf.load88, 6, !dbg !1263
  %23 = icmp ne i8 %22, 6, !dbg !1263
  %bf.clear90 = lshr i8 %bf.load88, 1, !dbg !1265
  %24 = and i8 %bf.clear90, 1, !dbg !1265
  %25 = zext i8 %24 to i32, !dbg !1265
  %26 = xor i32 %25, 1, !dbg !1265
  %flags.1.v = select i1 %23, i32 %26, i32 2, !dbg !1263
  %flags.1 = or i32 %flags.0.ph.lcssa, %flags.1.v, !dbg !1266
  %or113 = or i32 %flags.1, 524288, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %or113, i64 0, metadata !804, metadata !953), !dbg !1136
  %cmp114 = icmp sgt i32 %call19, -1, !dbg !1267
  br i1 %cmp114, label %if.then.116, label %if.else.126, !dbg !1268

if.then.116:                                      ; preds = %if.end.86
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !839, metadata !953) #3, !dbg !1269
  %27 = bitcast %struct.stat* %buf.i to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 144, i8* %27) #3, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.stat* %buf.i, i64 0, metadata !840, metadata !953) #3, !dbg !1274
  %28 = bitcast %struct.stat* %buf.i to %struct.stat64*, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !643, metadata !953) #3, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.stat64* %28, i64 0, metadata !644, metadata !953) #3, !dbg !1276
  %call.i.i = call i32 @__fxstat64(i32 1, i32 %call19, %struct.stat64* nonnull %28) #3, !dbg !1278
  %cmp.i.354 = icmp slt i32 %call.i.i, 0, !dbg !1279
  br i1 %cmp.i.354, label %land.lhs.true.i, label %if.end.191.thread, !dbg !1280

land.lhs.true.i:                                  ; preds = %if.then.116
  %call1.i = tail call i32* @__errno_location() #6, !dbg !1281
  %29 = load i32, i32* %call1.i, align 4, !dbg !1281, !tbaa !1140
  %cmp2.i = icmp eq i32 %29, 9, !dbg !1283
  br i1 %cmp2.i, label %if.then.i.357, label %if.end.191.thread, !dbg !1284

if.then.i.357:                                    ; preds = %land.lhs.true.i
  %call3.i = call i8* @strerror(i32 9) #3, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %call3.i, i64 0, metadata !844, metadata !953) #3, !dbg !1286
  %30 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1287, !tbaa !1033
  %call4.i.355 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 9, i8* %call3.i) #3, !dbg !1288
  call void @llvm.dbg.value(metadata %struct._object* %call4.i.355, i64 0, metadata !841, metadata !953) #3, !dbg !1289
  %31 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1290, !tbaa !1033
  call void @PyErr_SetObject(%struct._object* %31, %struct._object* %call4.i.355) #3, !dbg !1291
  call void @llvm.dbg.value(metadata %struct._object* %call4.i.355, i64 0, metadata !845, metadata !953) #3, !dbg !1292
  %cmp5.i.356 = icmp eq %struct._object* %call4.i.355, null, !dbg !1294
  br i1 %cmp5.i.356, label %check_fd.exit.thread, label %do.body.7.i, !dbg !1295

do.body.7.i:                                      ; preds = %if.then.i.357
  call void @llvm.dbg.value(metadata %struct._object* %call4.i.355, i64 0, metadata !847, metadata !953) #3, !dbg !1296
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call4.i.355, i64 0, i32 0, !dbg !1298
  %32 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1298, !tbaa !1003
  %dec.i = add i64 %32, -1, !dbg !1298
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1298, !tbaa !1003
  %cmp8.i = icmp eq i64 %dec.i, 0, !dbg !1298
  br i1 %cmp8.i, label %if.else.i, label %check_fd.exit.thread, !dbg !1300

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call4.i.355, i64 0, i32 1, !dbg !1301
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1301, !tbaa !1007
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1301
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1301, !tbaa !1008
  call void %34(%struct._object* %call4.i.355) #3, !dbg !1301
  br label %check_fd.exit.thread, !dbg !1303

check_fd.exit.thread:                             ; preds = %if.else.i, %do.body.7.i, %if.then.i.357
  call void @llvm.lifetime.end(i64 144, i8* %27) #3, !dbg !1304
  br label %if.end.235.thread, !dbg !1305

if.end.191.thread:                                ; preds = %if.then.116, %land.lhs.true.i
  call void @llvm.lifetime.end(i64 144, i8* %27) #3, !dbg !1304
  store i32 %call19, i32* %6, align 4, !dbg !1306, !tbaa !956
  call void @llvm.dbg.value(metadata i32* %closefd, i64 0, metadata !806, metadata !953), !dbg !1139
  %35 = load i32, i32* %closefd, align 4, !dbg !1307, !tbaa !1140
  %36 = trunc i32 %35 to i8, !dbg !1308
  %bf.load123 = load i8, i8* %readable, align 4, !dbg !1308
  %bf.value = shl i8 %36, 6, !dbg !1308
  %bf.shl = and i8 %bf.value, 64, !dbg !1308
  %bf.clear124 = and i8 %bf.load123, -65, !dbg !1308
  %bf.set125 = or i8 %bf.shl, %bf.clear124, !dbg !1308
  store i8 %bf.set125, i8* %readable, align 4, !dbg !1308
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %37 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1309, !tbaa !1033
  %38 = bitcast %struct.stat* %buf.i.359 to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 144, i8* %38) #3, !dbg !1311
  br label %if.end.i, !dbg !1313

if.else.126:                                      ; preds = %if.end.86
  %bf.set130 = or i8 %bf.load88, 64, !dbg !1262
  store i8 %bf.set130, i8* %readable, align 4, !dbg !1262
  call void @llvm.dbg.value(metadata i32* %closefd, i64 0, metadata !806, metadata !953), !dbg !1139
  %39 = load i32, i32* %closefd, align 4, !dbg !1314, !tbaa !1140
  %tobool131 = icmp eq i32 %39, 0, !dbg !1314
  br i1 %tobool131, label %if.then.132, label %if.end.133, !dbg !1316

if.then.132:                                      ; preds = %if.else.126
  %40 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1317, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0)) #3, !dbg !1319
  br label %if.end.235.thread, !dbg !1320

if.end.133:                                       ; preds = %if.else.126
  %call134 = tail call i32* @__errno_location() #6, !dbg !1321
  store i32 0, i32* %call134, align 4, !dbg !1322, !tbaa !1140
  call void @llvm.dbg.value(metadata %struct._object** %opener, i64 0, metadata !798, metadata !953), !dbg !1130
  %41 = load %struct._object*, %struct._object** %opener, align 8, !dbg !1323, !tbaa !1033
  %cmp135 = icmp eq %struct._object* %41, @_Py_NoneStruct, !dbg !1324
  br i1 %cmp135, label %if.then.137, label %if.else.141, !dbg !1325

if.then.137:                                      ; preds = %if.end.133
  %call138 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1326
  call void @llvm.dbg.value(metadata %struct._ts* %call138, i64 0, metadata !810, metadata !953), !dbg !1326
  %call139 = call i32 (i8*, i32, ...) @open64(i8* %name.0, i32 %or113, i32 438) #3, !dbg !1327
  store i32 %call139, i32* %6, align 4, !dbg !1328, !tbaa !956
  call void @PyEval_RestoreThread(%struct._ts* %call138) #3, !dbg !1329
  %.pr = load i32, i32* %6, align 4, !dbg !1330, !tbaa !956
  br label %if.end.178, !dbg !1332

if.else.141:                                      ; preds = %if.end.133
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !808, metadata !953), !dbg !1142
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %42 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1333, !tbaa !1033
  %call142 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %struct._object* %42, i32 %or113) #3, !dbg !1334
  call void @llvm.dbg.value(metadata %struct._object* %call142, i64 0, metadata !816, metadata !953), !dbg !1335
  %cmp143 = icmp eq %struct._object* %call142, null, !dbg !1336
  br i1 %cmp143, label %if.end.235.thread, label %if.end.146, !dbg !1338

if.end.146:                                       ; preds = %if.else.141
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %call142, i64 0, i32 1, !dbg !1339
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8, !dbg !1340, !tbaa !1007
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 19, !dbg !1339
  %44 = load i64, i64* %tp_flags, align 8, !dbg !1339, !tbaa !1343
  %and = and i64 %44, 16777216, !dbg !1339
  %cmp148 = icmp eq i64 %and, 0, !dbg !1339
  br i1 %cmp148, label %do.body, label %if.end.157, !dbg !1344

do.body:                                          ; preds = %if.end.146
  call void @llvm.dbg.value(metadata %struct._object* %call142, i64 0, metadata !818, metadata !953), !dbg !1345
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call142, i64 0, i32 0, !dbg !1347
  %45 = load i64, i64* %ob_refcnt, align 8, !dbg !1347, !tbaa !1003
  %dec = add i64 %45, -1, !dbg !1347
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1347, !tbaa !1003
  %cmp151 = icmp eq i64 %dec, 0, !dbg !1347
  br i1 %cmp151, label %if.else.154, label %if.end.156, !dbg !1348

if.else.154:                                      ; preds = %do.body
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !1340
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1340, !tbaa !1008
  call void %46(%struct._object* %call142) #3, !dbg !1340
  br label %if.end.156

if.end.156:                                       ; preds = %do.body, %if.else.154
  %47 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1349, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0)) #3, !dbg !1350
  br label %if.end.235.thread, !dbg !1351

if.end.157:                                       ; preds = %if.end.146
  %call158 = call i32 @_PyLong_AsInt(%struct._object* %call142) #3, !dbg !1352
  store i32 %call158, i32* %6, align 4, !dbg !1353, !tbaa !956
  call void @llvm.dbg.value(metadata %struct._object* %call142, i64 0, metadata !822, metadata !953), !dbg !1354
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %call142, i64 0, i32 0, !dbg !1356
  %48 = load i64, i64* %ob_refcnt162, align 8, !dbg !1356, !tbaa !1003
  %dec163 = add i64 %48, -1, !dbg !1356
  store i64 %dec163, i64* %ob_refcnt162, align 8, !dbg !1356, !tbaa !1003
  %cmp164 = icmp eq i64 %dec163, 0, !dbg !1356
  br i1 %cmp164, label %if.else.167, label %cleanup, !dbg !1358

if.else.167:                                      ; preds = %if.end.157
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8, !dbg !1359, !tbaa !1007
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !1359
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8, !dbg !1359, !tbaa !1008
  call void %50(%struct._object* %call142) #3, !dbg !1359
  %.pre = load i32, i32* %6, align 4, !dbg !1361, !tbaa !956
  br label %cleanup

cleanup:                                          ; preds = %if.else.167, %if.end.157
  %51 = phi i32 [ %.pre, %if.else.167 ], [ %call158, %if.end.157 ], !dbg !1361
  %cmp174 = icmp eq i32 %51, -1, !dbg !1363
  br i1 %cmp174, label %if.end.235.thread, label %if.end.178

if.end.178:                                       ; preds = %cleanup, %if.then.137
  %52 = phi i32 [ %51, %cleanup ], [ %.pr, %if.then.137 ], !dbg !1330
  %atomic_flag_works.0 = phi i32* [ null, %cleanup ], [ @_Py_open_cloexec_works, %if.then.137 ]
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !807, metadata !953), !dbg !1141
  %cmp180 = icmp slt i32 %52, 0, !dbg !1364
  br i1 %cmp180, label %if.then.182, label %if.end.184, !dbg !1365

if.then.182:                                      ; preds = %if.end.178
  %53 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1366, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %54 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1368, !tbaa !1033
  %call183 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %53, %struct._object* %54) #3, !dbg !1369
  br label %if.end.235, !dbg !1370

if.end.184:                                       ; preds = %if.end.178
  %call186 = call i32 @_Py_set_inheritable(i32 %52, i32 0, i32* %atomic_flag_works.0) #3, !dbg !1371
  %cmp187 = icmp slt i32 %call186, 0, !dbg !1373
  br i1 %cmp187, label %if.end.235, label %if.end.191, !dbg !1374

if.end.191:                                       ; preds = %if.end.184
  %.idx.val.pre = load i32, i32* %6, align 4, !tbaa !956
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %55 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1309, !tbaa !1033
  %56 = bitcast %struct.stat* %buf.i.359 to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 144, i8* %56) #3, !dbg !1311
  %cmp.i.360 = icmp slt i32 %.idx.val.pre, 0, !dbg !1375
  br i1 %cmp.i.360, label %if.end.196, label %if.end.i, !dbg !1313

if.end.i:                                         ; preds = %if.end.191.thread, %if.end.191
  %57 = phi i8* [ %38, %if.end.191.thread ], [ %56, %if.end.191 ]
  %58 = phi %struct._object* [ %37, %if.end.191.thread ], [ %55, %if.end.191 ]
  %fd_is_own.0449 = phi i32 [ 0, %if.end.191.thread ], [ 1, %if.end.191 ]
  %.idx.val447 = phi i32 [ %call19, %if.end.191.thread ], [ %.idx.val.pre, %if.end.191 ]
  call void @llvm.dbg.value(metadata %struct.stat* %buf.i.359, i64 0, metadata !856, metadata !953) #3, !dbg !1377
  %59 = bitcast %struct.stat* %buf.i.359 to %struct.stat64*, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %.idx.val.pre, i64 0, metadata !643, metadata !953) #3, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.stat64* %59, i64 0, metadata !644, metadata !953) #3, !dbg !1380
  %call.i.i.361 = call i32 @__fxstat64(i32 1, i32 %.idx.val447, %struct.stat64* nonnull %59) #3, !dbg !1382
  %cmp2.i.362 = icmp eq i32 %call.i.i.361, 0, !dbg !1383
  br i1 %cmp2.i.362, label %land.lhs.true.i.363, label %if.end.196, !dbg !1384

land.lhs.true.i.363:                              ; preds = %if.end.i
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %buf.i.359, i64 0, i32 3, !dbg !1385
  %60 = load i32, i32* %st_mode.i, align 8, !dbg !1385, !tbaa !1387
  %and.i = and i32 %60, 61440, !dbg !1385
  %cmp3.i = icmp eq i32 %and.i, 16384, !dbg !1385
  br i1 %cmp3.i, label %dircheck.exit, label %if.end.196, !dbg !1390

dircheck.exit:                                    ; preds = %land.lhs.true.i.363
  %call5.i = tail call i32* @__errno_location() #6, !dbg !1391
  store i32 21, i32* %call5.i, align 4, !dbg !1393, !tbaa !1140
  %61 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1394, !tbaa !1033
  %call6.i = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %61, %struct._object* %58) #3, !dbg !1395
  call void @llvm.lifetime.end(i64 144, i8* %57) #3, !dbg !1396
  br label %error, !dbg !1397

if.end.196:                                       ; preds = %if.end.191, %land.lhs.true.i.363, %if.end.i
  %62 = phi i8* [ %56, %if.end.191 ], [ %57, %land.lhs.true.i.363 ], [ %57, %if.end.i ]
  %fd_is_own.0450 = phi i32 [ 1, %if.end.191 ], [ %fd_is_own.0449, %land.lhs.true.i.363 ], [ %fd_is_own.0449, %if.end.i ]
  call void @llvm.lifetime.end(i64 144, i8* %62) #3, !dbg !1396
  call void @llvm.dbg.value(metadata %struct._object** %nameobj, i64 0, metadata !796, metadata !953), !dbg !1175
  %63 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !1398, !tbaa !1033
  %call197 = call i32 @_PyObject_SetAttrId(%struct._object* %oself, %struct._Py_Identifier* nonnull @PyId_name, %struct._object* %63) #3, !dbg !1400
  %cmp198 = icmp slt i32 %call197, 0, !dbg !1401
  br i1 %cmp198, label %error, label %if.end.201, !dbg !1402

if.end.201:                                       ; preds = %if.end.196
  %bf.load203 = load i8, i8* %readable, align 4, !dbg !1403
  %bf.clear205 = and i8 %bf.load203, 8, !dbg !1403
  %tobool207 = icmp eq i8 %bf.clear205, 0, !dbg !1404
  br i1 %tobool207, label %do.body.242, label %if.then.208, !dbg !1405

if.then.208:                                      ; preds = %if.end.201
  %64 = load i32, i32* %6, align 4, !dbg !1406, !tbaa !956
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !686, metadata !953) #3, !dbg !1407
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !687, metadata !953) #3, !dbg !1409
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !688, metadata !953) #3, !dbg !1410
  %call10.i = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1411
  call void @llvm.dbg.value(metadata %struct._ts* %call10.i, i64 0, metadata !691, metadata !953) #3, !dbg !1411
  %call11.i = call i64 @lseek64(i32 %64, i64 0, i32 2) #3, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %call11.i, i64 0, metadata !690, metadata !953) #3, !dbg !1413
  call void @PyEval_RestoreThread(%struct._ts* %call10.i) #3, !dbg !1414
  %cmp12.i = icmp slt i64 %call11.i, 0, !dbg !1415
  br i1 %cmp12.i, label %if.then.13.i, label %if.end.15.i, !dbg !1417

if.then.13.i:                                     ; preds = %if.then.208
  %65 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1418, !tbaa !1033
  %call14.i = call %struct._object* @PyErr_SetFromErrno(%struct._object* %65) #3, !dbg !1419
  br label %portable_lseek.exit, !dbg !1420

if.end.15.i:                                      ; preds = %if.then.208
  %call16.i = call %struct._object* @PyLong_FromLong(i64 %call11.i) #3, !dbg !1421
  br label %portable_lseek.exit, !dbg !1422

portable_lseek.exit:                              ; preds = %if.then.13.i, %if.end.15.i
  %retval.0.i.365 = phi %struct._object* [ %call14.i, %if.then.13.i ], [ %call16.i, %if.end.15.i ], !dbg !1423
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.365, i64 0, metadata !824, metadata !953), !dbg !1424
  %cmp211 = icmp eq %struct._object* %retval.0.i.365, null, !dbg !1425
  br i1 %cmp211, label %error, label %do.body.215, !dbg !1427

do.body.215:                                      ; preds = %portable_lseek.exit
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.365, i64 0, metadata !827, metadata !953), !dbg !1428
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.365, i64 0, i32 0, !dbg !1430
  %66 = load i64, i64* %ob_refcnt217, align 8, !dbg !1430, !tbaa !1003
  %dec218 = add i64 %66, -1, !dbg !1430
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !1430, !tbaa !1003
  %cmp219 = icmp eq i64 %dec218, 0, !dbg !1430
  br i1 %cmp219, label %if.else.222, label %do.body.242, !dbg !1432

if.else.222:                                      ; preds = %do.body.215
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.365, i64 0, i32 1, !dbg !1433
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !1433, !tbaa !1007
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !1433
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1433, !tbaa !1008
  call void %68(%struct._object* %retval.0.i.365) #3, !dbg !1433
  br label %do.body.242

error:                                            ; preds = %portable_lseek.exit, %dircheck.exit, %if.end.196
  %fd_is_own.0448 = phi i32 [ %fd_is_own.0450, %portable_lseek.exit ], [ %fd_is_own.0449, %dircheck.exit ], [ %fd_is_own.0450, %if.end.196 ]
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !801, metadata !953), !dbg !1133
  %tobool232 = icmp eq i32 %fd_is_own.0448, 0, !dbg !1435
  br i1 %tobool232, label %if.end.235.thread, label %if.end.235, !dbg !1437

if.end.235.thread:                                ; preds = %cleanup, %error, %sw.default, %bad_mode, %if.then.132, %check_fd.exit.thread, %if.end.156, %if.else.141
  store i32 -1, i32* %6, align 4, !dbg !1438, !tbaa !956
  br label %do.body.242, !dbg !1439

if.end.235:                                       ; preds = %if.end.184, %if.then.182, %error
  %.pr388 = load i32, i32* %6, align 4, !dbg !1440, !tbaa !956
  %cmp237 = icmp sgt i32 %.pr388, -1, !dbg !1443
  br i1 %cmp237, label %if.then.i.371, label %do.body.242, !dbg !1439

if.then.i.371:                                    ; preds = %if.end.235
  call void @llvm.dbg.value(metadata %struct.fileio* %0, i64 0, metadata !728, metadata !953) #3, !dbg !1444
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !729, metadata !953) #3, !dbg !1445
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !730, metadata !953) #3, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %.pr388, i64 0, metadata !731, metadata !953) #3, !dbg !1447
  store i32 -1, i32* %6, align 4, !dbg !1448, !tbaa !956
  %call.i.368 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1449
  call void @llvm.dbg.value(metadata %struct._ts* %call.i.368, i64 0, metadata !734, metadata !953) #3, !dbg !1449
  %call4.i.369 = call i32 @close(i32 %.pr388) #3, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %call4.i.369, i64 0, metadata !729, metadata !953) #3, !dbg !1445
  %cmp5.i.370 = icmp slt i32 %call4.i.369, 0, !dbg !1451
  br i1 %cmp5.i.370, label %if.then.10.i.375, label %if.end.8.i.372, !dbg !1452

if.end.8.i.372:                                   ; preds = %if.then.i.371
  call void @PyEval_RestoreThread(%struct._ts* %call.i.368) #3, !dbg !1453
  br label %do.body.242, !dbg !1454

if.then.10.i.375:                                 ; preds = %if.then.i.371
  %call7.i.373 = tail call i32* @__errno_location() #6, !dbg !1455
  %69 = load i32, i32* %call7.i.373, align 4, !dbg !1455, !tbaa !1140
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !730, metadata !953) #3, !dbg !1446
  call void @PyEval_RestoreThread(%struct._ts* %call.i.368) #3, !dbg !1453
  store i32 %69, i32* %call7.i.373, align 4, !dbg !1456, !tbaa !1140
  %70 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1457, !tbaa !1033
  %call12.i.374 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %70) #3, !dbg !1458
  br label %do.body.242, !dbg !1459

do.body.242:                                      ; preds = %if.else.222, %do.body.215, %if.then.10.i.375, %if.end.8.i.372, %if.end.235.thread, %if.end.201, %if.end.235
  %ret.0 = phi i32 [ -1, %if.end.235 ], [ 0, %if.end.201 ], [ -1, %if.end.235.thread ], [ -1, %if.end.8.i.372 ], [ -1, %if.then.10.i.375 ], [ 0, %do.body.215 ], [ 0, %if.else.222 ]
  call void @llvm.dbg.value(metadata %struct._object** %stringobj, i64 0, metadata !797, metadata !953), !dbg !1129
  %71 = load %struct._object*, %struct._object** %stringobj, align 8, !dbg !1460, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %71, i64 0, metadata !829, metadata !953), !dbg !1460
  %cmp243 = icmp eq %struct._object* %71, null, !dbg !1462
  br i1 %cmp243, label %cleanup.262, label %if.then.245, !dbg !1463

if.then.245:                                      ; preds = %do.body.242
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !797, metadata !953), !dbg !1129
  store %struct._object* null, %struct._object** %stringobj, align 8, !dbg !1464, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %71, i64 0, metadata !831, metadata !953), !dbg !1466
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %71, i64 0, i32 0, !dbg !1468
  %72 = load i64, i64* %ob_refcnt248, align 8, !dbg !1468, !tbaa !1003
  %dec249 = add i64 %72, -1, !dbg !1468
  store i64 %dec249, i64* %ob_refcnt248, align 8, !dbg !1468, !tbaa !1003
  %cmp250 = icmp eq i64 %dec249, 0, !dbg !1468
  br i1 %cmp250, label %if.else.253, label %cleanup.262, !dbg !1470

if.else.253:                                      ; preds = %if.then.245
  %ob_type254 = getelementptr inbounds %struct._object, %struct._object* %71, i64 0, i32 1, !dbg !1471
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type254, align 8, !dbg !1471, !tbaa !1007
  %tp_dealloc255 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i64 0, i32 4, !dbg !1471
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc255, align 8, !dbg !1471, !tbaa !1008
  call void %74(%struct._object* %71) #3, !dbg !1471
  br label %cleanup.262

cleanup.262:                                      ; preds = %internal_close.exit, %do.body.242, %if.then.245, %if.else.253, %if.then.28, %if.end.8, %if.then.24, %if.then.17
  %retval.0 = phi i32 [ -1, %if.then.17 ], [ -1, %if.then.24 ], [ -1, %internal_close.exit ], [ -1, %if.end.8 ], [ -1, %if.then.28 ], [ %ret.0, %if.else.253 ], [ %ret.0, %if.then.245 ], [ %ret.0, %do.body.242 ]
  call void @llvm.lifetime.end(i64 4, i8* %5) #3, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* %4) #3, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* %2) #3, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1473
  ret i32 %retval.0, !dbg !1473
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !863, metadata !953), !dbg !1474
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !864, metadata !953), !dbg !1475
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !865, metadata !953), !dbg !1476
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1477
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1477, !tbaa !1478
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #3, !dbg !1479
  tail call void @llvm.dbg.value(metadata %struct.fileio* %1, i64 0, metadata !866, metadata !953), !dbg !1480
  %cmp = icmp eq %struct._object* %call, null, !dbg !1481
  br i1 %cmp, label %if.end, label %if.then, !dbg !1483

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object* %call to %struct.fileio*, !dbg !1484
  %fd = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1485
  %2 = bitcast %struct._object* %fd to i32*, !dbg !1485
  store i32 -1, i32* %2, align 4, !dbg !1487, !tbaa !956
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i64 0, i32 2, !dbg !1488
  %bf.load = load i8, i8* %created, align 4, !dbg !1489
  %bf.clear8 = and i8 %bf.load, -128, !dbg !1490
  %bf.set11 = or i8 %bf.clear8, 112, !dbg !1491
  store i8 %bf.set11, i8* %created, align 4, !dbg !1491
  %weakreflist = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1492
  %3 = bitcast %struct._typeobject** %weakreflist to %struct._object**, !dbg !1492
  store %struct._object* null, %struct._object** %3, align 8, !dbg !1493, !tbaa !988
  br label %if.end, !dbg !1494

if.end:                                           ; preds = %entry, %if.then
  ret %struct._object* %call, !dbg !1495
}

declare void @PyObject_GC_Del(i8*) #2

declare i32 @_PyIOBase_finalize(%struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare void @PyErr_Clear() #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_read(%struct.fileio* nocapture readonly %self, %struct._object* %args) #1 {
entry:
  %size = alloca i64, align 8
  %bytes = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !450, metadata !953), !dbg !1496
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !451, metadata !953), !dbg !1497
  %0 = bitcast i64* %size to i8*, !dbg !1498
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !454, metadata !953), !dbg !1499
  store i64 -1, i64* %size, align 8, !dbg !1499, !tbaa !1500
  %1 = bitcast %struct._object** %bytes to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1501
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1502
  %2 = load i32, i32* %fd, align 4, !dbg !1502, !tbaa !956
  %cmp = icmp slt i32 %2, 0, !dbg !1504
  br i1 %cmp, label %if.then, label %if.end, !dbg !1505

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1506, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1508
  br label %cleanup.57, !dbg !1509

if.end:                                           ; preds = %entry
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !1510
  %bf.load = load i8, i8* %readable, align 4, !dbg !1510
  %bf.clear = and i8 %bf.load, 2, !dbg !1510
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1512
  br i1 %tobool, label %if.then.1, label %if.end.3, !dbg !1513

if.then.1:                                        ; preds = %if.end
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #3, !dbg !1514
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !541, metadata !953) #3, !dbg !1516
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1517
  br i1 %cmp.i, label %cleanup.57, label %if.then.i, !dbg !1519

if.then.i:                                        ; preds = %if.then.1
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1520
  %4 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1520, !tbaa !1521
  %call1.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #3, !dbg !1523
  br label %cleanup.57, !dbg !1523

if.end.3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !454, metadata !953), !dbg !1499
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 (%struct._object*, i8*)* nonnull @_PyIO_ConvertSsize_t, i64* nonnull %size) #3, !dbg !1524
  %tobool5 = icmp eq i32 %call4, 0, !dbg !1524
  br i1 %tobool5, label %cleanup.57, label %if.end.7, !dbg !1526

if.end.7:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !454, metadata !953), !dbg !1499
  %5 = load i64, i64* %size, align 8, !dbg !1527, !tbaa !1500
  %cmp8 = icmp slt i64 %5, 0, !dbg !1529
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1530

if.then.9:                                        ; preds = %if.end.7
  %call10 = call %struct._object* @fileio_readall(%struct.fileio* %self), !dbg !1531
  br label %cleanup.57, !dbg !1533

if.end.11:                                        ; preds = %if.end.7
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %5) #3, !dbg !1534
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !455, metadata !953), !dbg !1535
  store %struct._object* %call12, %struct._object** %bytes, align 8, !dbg !1536, !tbaa !1033
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !1537
  br i1 %cmp13, label %cleanup.57, label %if.end.15, !dbg !1539

if.end.15:                                        ; preds = %if.end.11
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call12, i64 2, !dbg !1540
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !452, metadata !953), !dbg !1541
  %call16 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1542
  call void @llvm.dbg.value(metadata %struct._ts* %call16, i64 0, metadata !456, metadata !953), !dbg !1542
  %call17 = tail call i32* @__errno_location() #6, !dbg !1543
  store i32 0, i32* %call17, align 4, !dbg !1544, !tbaa !1140
  %6 = load i32, i32* %fd, align 4, !dbg !1545, !tbaa !956
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !454, metadata !953), !dbg !1499
  %7 = load i64, i64* %size, align 8, !dbg !1546, !tbaa !1500
  %call19 = call i64 @read(i32 %6, i8* %arraydecay, i64 %7) #3, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %call19, i64 0, metadata !453, metadata !953), !dbg !1548
  call void @PyEval_RestoreThread(%struct._ts* %call16) #3, !dbg !1549
  %cmp20 = icmp slt i64 %call19, 0, !dbg !1550
  br i1 %cmp20, label %if.then.21, label %if.end.31, !dbg !1551

if.then.21:                                       ; preds = %if.end.15
  %8 = load i32, i32* %call17, align 4, !dbg !1552, !tbaa !1140
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !518, metadata !953), !dbg !1553
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !455, metadata !953), !dbg !1535
  %9 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1554, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !521, metadata !953), !dbg !1554
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1556
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1556, !tbaa !1003
  %dec = add i64 %10, -1, !dbg !1556
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1556, !tbaa !1003
  %cmp23 = icmp eq i64 %dec, 0, !dbg !1556
  br i1 %cmp23, label %if.else, label %if.end.25, !dbg !1558

if.else:                                          ; preds = %if.then.21
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1559
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1559, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1559
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1559, !tbaa !1008
  call void %12(%struct._object* %9) #3, !dbg !1559
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else
  %cmp26 = icmp eq i32 %8, 11, !dbg !1561
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !1563

if.then.27:                                       ; preds = %if.end.25
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1564, !tbaa !1003
  %inc = add i64 %13, 1, !dbg !1564
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1564, !tbaa !1003
  br label %cleanup.57, !dbg !1564

if.end.28:                                        ; preds = %if.end.25
  store i32 %8, i32* %call17, align 4, !dbg !1565, !tbaa !1140
  %14 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1566, !tbaa !1033
  %call30 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14) #3, !dbg !1567
  br label %cleanup.57, !dbg !1568

if.end.31:                                        ; preds = %if.end.15
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !454, metadata !953), !dbg !1499
  %15 = load i64, i64* %size, align 8, !dbg !1569, !tbaa !1500
  %cmp32 = icmp eq i64 %call19, %15, !dbg !1570
  br i1 %cmp32, label %if.end.56, label %if.then.33, !dbg !1571

if.then.33:                                       ; preds = %if.end.31
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !455, metadata !953), !dbg !1535
  %call34 = call i32 @_PyBytes_Resize(%struct._object** nonnull %bytes, i64 %call19) #3, !dbg !1572
  %cmp35 = icmp slt i32 %call34, 0, !dbg !1573
  br i1 %cmp35, label %do.body.37, label %if.end.56, !dbg !1574

do.body.37:                                       ; preds = %if.then.33
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !455, metadata !953), !dbg !1535
  %16 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1575, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !523, metadata !953), !dbg !1575
  %cmp38 = icmp eq %struct._object* %16, null, !dbg !1577
  br i1 %cmp38, label %cleanup.57, label %if.then.39, !dbg !1578

if.then.39:                                       ; preds = %do.body.37
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !455, metadata !953), !dbg !1535
  store %struct._object* null, %struct._object** %bytes, align 8, !dbg !1579, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !529, metadata !953), !dbg !1581
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1583
  %17 = load i64, i64* %ob_refcnt42, align 8, !dbg !1583, !tbaa !1003
  %dec43 = add i64 %17, -1, !dbg !1583
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !1583, !tbaa !1003
  %cmp44 = icmp eq i64 %dec43, 0, !dbg !1583
  br i1 %cmp44, label %if.else.46, label %cleanup.57, !dbg !1585

if.else.46:                                       ; preds = %if.then.39
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1586
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1586, !tbaa !1007
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1586
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !1586, !tbaa !1008
  call void %19(%struct._object* %16) #3, !dbg !1586
  br label %cleanup.57

if.end.56:                                        ; preds = %if.end.31, %if.then.33
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !455, metadata !953), !dbg !1535
  %20 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1588, !tbaa !1033
  br label %cleanup.57, !dbg !1589

cleanup.57:                                       ; preds = %if.then.i, %if.then.1, %do.body.37, %if.then.39, %if.else.46, %if.then.27, %if.end.28, %if.end.11, %if.end.3, %if.end.56, %if.then.9, %if.then
  %retval.1 = phi %struct._object* [ null, %if.then ], [ %call10, %if.then.9 ], [ %20, %if.end.56 ], [ null, %if.end.3 ], [ null, %if.end.11 ], [ @_Py_NoneStruct, %if.then.27 ], [ null, %if.end.28 ], [ null, %if.else.46 ], [ null, %if.then.39 ], [ null, %do.body.37 ], [ null, %if.then.1 ], [ null, %if.then.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1590
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1590
  ret %struct._object* %retval.1, !dbg !1590
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readall(%struct.fileio* nocapture readonly %self) #1 {
entry:
  %st = alloca %struct.stat, align 8
  %result = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !551, metadata !953), !dbg !1591
  %0 = bitcast %struct.stat* %st to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !1592
  %1 = bitcast %struct._object** %result to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1593
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !592, metadata !953), !dbg !1594
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1595
  %2 = load i32, i32* %fd, align 4, !dbg !1595, !tbaa !956
  %cmp = icmp slt i32 %2, 0, !dbg !1597
  br i1 %cmp, label %if.then, label %if.end, !dbg !1598

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1599, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1601
  br label %cleanup, !dbg !1602

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @lseek64(i32 %2, i64 0, i32 1) #3, !dbg !1603
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !589, metadata !953), !dbg !1604
  %4 = load i32, i32* %fd, align 4, !dbg !1605, !tbaa !956
  tail call void @llvm.dbg.value(metadata %struct.stat* %st, i64 0, metadata !552, metadata !953), !dbg !1607
  %5 = bitcast %struct.stat* %st to %struct.stat64*, !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !643, metadata !953) #3, !dbg !1609
  tail call void @llvm.dbg.value(metadata %struct.stat64* %5, i64 0, metadata !644, metadata !953) #3, !dbg !1609
  %call.i = call i32 @__fxstat64(i32 1, i32 %4, %struct.stat64* nonnull %5) #3, !dbg !1611
  %cmp5 = icmp eq i32 %call.i, 0, !dbg !1612
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 8, !dbg !1613
  %6 = load i64, i64* %st_size, align 8, !dbg !1613, !tbaa !1614
  call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !590, metadata !953), !dbg !1615
  %end.0 = select i1 %cmp5, i64 %6, i64 -1, !dbg !1616
  %cmp8 = icmp sgt i64 %end.0, 0, !dbg !1617
  br i1 %cmp8, label %land.lhs.true, label %if.end.17, !dbg !1619

land.lhs.true:                                    ; preds = %if.end
  %cmp9 = icmp sge i64 %end.0, %call2, !dbg !1620
  %cmp11 = icmp sgt i64 %call2, -1, !dbg !1621
  %or.cond = and i1 %cmp11, %cmp9, !dbg !1622
  br i1 %or.cond, label %land.lhs.true.12, label %if.end.17, !dbg !1622

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %sub = sub i64 %end.0, %call2, !dbg !1623
  %cmp13 = icmp eq i64 %sub, 9223372036854775807, !dbg !1624
  %add = add i64 %sub, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !594, metadata !953), !dbg !1627
  %.add = select i1 %cmp13, i64 8192, i64 %add, !dbg !1628
  br label %if.end.17, !dbg !1628

if.end.17:                                        ; preds = %land.lhs.true.12, %if.end, %land.lhs.true
  %bufsize.0 = phi i64 [ 8192, %land.lhs.true ], [ 8192, %if.end ], [ %.add, %land.lhs.true.12 ]
  %call18 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %bufsize.0) #3, !dbg !1629
  call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !591, metadata !953), !dbg !1630
  store %struct._object* %call18, %struct._object** %result, align 8, !dbg !1631, !tbaa !1033
  %cmp19 = icmp eq %struct._object* %call18, null, !dbg !1632
  br i1 %cmp19, label %cleanup, label %while.body.preheader, !dbg !1634

while.body.preheader:                             ; preds = %if.end.17
  %7 = bitcast %struct._object** %result to %struct.PyBytesObject**, !dbg !1635
  %8 = bitcast %struct._object** %result to %struct.PyVarObject**, !dbg !1636
  br label %while.body.outer, !dbg !1638

while.body.outer:                                 ; preds = %while.body.preheader, %if.end.102
  %bufsize.1.ph = phi i64 [ %bufsize.0, %while.body.preheader ], [ %bufsize.2.lcssa166, %if.end.102 ]
  %bytes_read.0.ph = phi i64 [ 0, %while.body.preheader ], [ %add103, %if.end.102 ]
  %cmp.i = icmp ugt i64 %bytes_read.0.ph, 65536, !dbg !1639
  %shr.i = lshr i64 %bytes_read.0.ph, 3, !dbg !1642
  %add.i = add i64 %bytes_read.0.ph, 256, !dbg !1643
  %addend.0.i = select i1 %cmp.i, i64 %shr.i, i64 %add.i, !dbg !1644
  %cmp1.i = icmp ult i64 %addend.0.i, 8192, !dbg !1645
  %.addend.0.i = select i1 %cmp1.i, i64 8192, i64 %addend.0.i, !dbg !1647
  %add4.i = add i64 %.addend.0.i, %bytes_read.0.ph, !dbg !1648
  %9 = icmp slt i64 %add4.i, 1, !dbg !1649
  br i1 %9, label %while.body.us.preheader, label %while.body.preheader260, !dbg !1649

while.body.preheader260:                          ; preds = %while.body.outer
  br label %while.body, !dbg !1638

while.body.us.preheader:                          ; preds = %while.body.outer
  %cmp22.us = icmp sgt i64 %bufsize.1.ph, %bytes_read.0.ph, !dbg !1638
  %sub43.us = sub i64 %bufsize.1.ph, %bytes_read.0.ph, !dbg !1650
  br label %while.body.us, !dbg !1638

while.body.us:                                    ; preds = %while.body.us.preheader, %if.then.53.us
  br i1 %cmp22.us, label %if.end.40.us, label %if.then.27, !dbg !1651

if.end.40.us:                                     ; preds = %while.body.us
  %call41.us = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1652
  call void @llvm.dbg.value(metadata %struct._ts* %call41.us, i64 0, metadata !602, metadata !953), !dbg !1652
  %call42.us = tail call i32* @__errno_location() #6, !dbg !1653
  store i32 0, i32* %call42.us, align 4, !dbg !1654, !tbaa !1140
  call void @llvm.dbg.value(metadata i64 %sub43.us, i64 0, metadata !593, metadata !953), !dbg !1655
  %10 = load i32, i32* %fd, align 4, !dbg !1656, !tbaa !956
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %7, align 8, !dbg !1635, !tbaa !1033
  %add.ptr.us = getelementptr %struct.PyBytesObject, %struct.PyBytesObject* %11, i64 0, i32 2, i64 %bytes_read.0.ph, !dbg !1657
  %call45.us = call i64 @read(i32 %10, i8* %add.ptr.us, i64 %sub43.us) #3, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %call45.us, i64 0, metadata !593, metadata !953), !dbg !1655
  call void @PyEval_RestoreThread(%struct._ts* %call41.us) #3, !dbg !1659
  %cmp46.us = icmp eq i64 %call45.us, 0, !dbg !1660
  br i1 %cmp46.us, label %while.end.loopexit, label %if.end.48.us, !dbg !1662

if.end.48.us:                                     ; preds = %if.end.40.us
  %cmp49.us = icmp slt i64 %call45.us, 0, !dbg !1663
  br i1 %cmp49.us, label %if.then.50.us, label %if.end.102.loopexit, !dbg !1664

if.then.50.us:                                    ; preds = %if.end.48.us
  %12 = load i32, i32* %call42.us, align 4, !dbg !1665, !tbaa !1140
  %cmp52.us = icmp eq i32 %12, 4, !dbg !1666
  br i1 %cmp52.us, label %if.then.53.us, label %if.end.69.loopexit, !dbg !1667

if.then.53.us:                                    ; preds = %if.then.50.us
  %call54.us = call i32 @PyErr_CheckSignals() #3, !dbg !1668
  %tobool.us = icmp eq i32 %call54.us, 0, !dbg !1668
  br i1 %tobool.us, label %while.body.us, label %do.body.56.loopexit, !dbg !1669

while.body:                                       ; preds = %while.body.preheader260, %if.then.53
  %bufsize.1 = phi i64 [ %bufsize.2, %if.then.53 ], [ %bufsize.1.ph, %while.body.preheader260 ]
  %cmp22 = icmp slt i64 %bytes_read.0.ph, %bufsize.1, !dbg !1638
  br i1 %cmp22, label %if.end.40, label %if.end.32, !dbg !1651

if.then.27:                                       ; preds = %while.body.us
  tail call void @llvm.dbg.value(metadata %struct.fileio* null, i64 0, metadata !649, metadata !953), !dbg !1670
  tail call void @llvm.dbg.value(metadata i64 %shr.i, i64 0, metadata !651, metadata !953), !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !651, metadata !953), !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !651, metadata !953), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %add4.i, i64 0, metadata !594, metadata !953), !dbg !1627
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1672, !tbaa !1033
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i64 0, i64 0)) #3, !dbg !1673
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !1674, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !595, metadata !953), !dbg !1674
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1676
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1676, !tbaa !1003
  %dec = add i64 %15, -1, !dbg !1676
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1676, !tbaa !1003
  %cmp28 = icmp eq i64 %dec, 0, !dbg !1676
  br i1 %cmp28, label %if.else.30, label %cleanup, !dbg !1678

if.else.30:                                       ; preds = %if.then.27
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1679
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1679, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1679
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1679, !tbaa !1008
  call void %17(%struct._object* %14) #3, !dbg !1679
  br label %cleanup

if.end.32:                                        ; preds = %while.body
  tail call void @llvm.dbg.value(metadata %struct.fileio* null, i64 0, metadata !649, metadata !953), !dbg !1670
  tail call void @llvm.dbg.value(metadata i64 %shr.i, i64 0, metadata !651, metadata !953), !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !651, metadata !953), !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !651, metadata !953), !dbg !1671
  call void @llvm.dbg.value(metadata i64 %add4.i, i64 0, metadata !594, metadata !953), !dbg !1627
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %18 = load %struct.PyVarObject*, %struct.PyVarObject** %8, align 8, !dbg !1636, !tbaa !1033
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i64 0, i32 1, !dbg !1636
  %19 = load i64, i64* %ob_size, align 8, !dbg !1636, !tbaa !1681
  %cmp33 = icmp slt i64 %19, %add4.i, !dbg !1682
  br i1 %cmp33, label %if.then.34, label %if.end.40, !dbg !1683

if.then.34:                                       ; preds = %if.end.32
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %call35 = call i32 @_PyBytes_Resize(%struct._object** nonnull %result, i64 %add4.i) #3, !dbg !1684
  %cmp36 = icmp slt i32 %call35, 0, !dbg !1687
  br i1 %cmp36, label %cleanup.loopexit, label %if.end.40, !dbg !1688

if.end.40:                                        ; preds = %while.body, %if.end.32, %if.then.34
  %bufsize.2 = phi i64 [ %add4.i, %if.then.34 ], [ %add4.i, %if.end.32 ], [ %bufsize.1, %while.body ]
  %call41 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1652
  call void @llvm.dbg.value(metadata %struct._ts* %call41, i64 0, metadata !602, metadata !953), !dbg !1652
  %call42 = tail call i32* @__errno_location() #6, !dbg !1653
  store i32 0, i32* %call42, align 4, !dbg !1654, !tbaa !1140
  %sub43 = sub i64 %bufsize.2, %bytes_read.0.ph, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %sub43, i64 0, metadata !593, metadata !953), !dbg !1655
  %20 = load i32, i32* %fd, align 4, !dbg !1656, !tbaa !956
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %21 = load %struct.PyBytesObject*, %struct.PyBytesObject** %7, align 8, !dbg !1635, !tbaa !1033
  %add.ptr = getelementptr %struct.PyBytesObject, %struct.PyBytesObject* %21, i64 0, i32 2, i64 %bytes_read.0.ph, !dbg !1657
  %call45 = call i64 @read(i32 %20, i8* %add.ptr, i64 %sub43) #3, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %call45, i64 0, metadata !593, metadata !953), !dbg !1655
  call void @PyEval_RestoreThread(%struct._ts* %call41) #3, !dbg !1659
  %cmp46 = icmp eq i64 %call45, 0, !dbg !1660
  br i1 %cmp46, label %while.end.loopexit261, label %if.end.48, !dbg !1662

if.end.48:                                        ; preds = %if.end.40
  %cmp49 = icmp slt i64 %call45, 0, !dbg !1663
  br i1 %cmp49, label %if.then.50, label %if.end.102.loopexit262, !dbg !1664

if.then.50:                                       ; preds = %if.end.48
  %22 = load i32, i32* %call42, align 4, !dbg !1665, !tbaa !1140
  %cmp52 = icmp eq i32 %22, 4, !dbg !1666
  br i1 %cmp52, label %if.then.53, label %if.end.69.loopexit263, !dbg !1667

if.then.53:                                       ; preds = %if.then.50
  %call54 = call i32 @PyErr_CheckSignals() #3, !dbg !1668
  %tobool = icmp eq i32 %call54, 0, !dbg !1668
  br i1 %tobool, label %while.body, label %do.body.56.loopexit264, !dbg !1669

do.body.56.loopexit:                              ; preds = %if.then.53.us
  br label %do.body.56, !dbg !1630

do.body.56.loopexit264:                           ; preds = %if.then.53
  br label %do.body.56, !dbg !1630

do.body.56:                                       ; preds = %do.body.56.loopexit264, %do.body.56.loopexit
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !1689, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !604, metadata !953), !dbg !1689
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1691
  %24 = load i64, i64* %ob_refcnt58, align 8, !dbg !1691, !tbaa !1003
  %dec59 = add i64 %24, -1, !dbg !1691
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1691, !tbaa !1003
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !1691
  br i1 %cmp60, label %if.else.62, label %cleanup, !dbg !1693

if.else.62:                                       ; preds = %do.body.56
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1694
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1694, !tbaa !1007
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1694
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1694, !tbaa !1008
  call void %26(%struct._object* %23) #3, !dbg !1694
  br label %cleanup

if.end.69.loopexit:                               ; preds = %if.then.50.us
  %bytes_read.0.ph.lcssa305 = phi i64 [ %bytes_read.0.ph, %if.then.50.us ]
  %.lcssa298 = phi i32 [ %12, %if.then.50.us ]
  br label %if.end.69, !dbg !1696

if.end.69.loopexit263:                            ; preds = %if.then.50
  %bytes_read.0.ph.lcssa301 = phi i64 [ %bytes_read.0.ph, %if.then.50 ]
  %.lcssa293 = phi i32 [ %22, %if.then.50 ]
  br label %if.end.69, !dbg !1696

if.end.69:                                        ; preds = %if.end.69.loopexit263, %if.end.69.loopexit
  %bytes_read.0.ph308 = phi i64 [ %bytes_read.0.ph.lcssa305, %if.end.69.loopexit ], [ %bytes_read.0.ph.lcssa301, %if.end.69.loopexit263 ]
  %.lcssa = phi i32 [ %.lcssa298, %if.end.69.loopexit ], [ %.lcssa293, %if.end.69.loopexit263 ]
  %cmp70 = icmp sgt i64 %bytes_read.0.ph308, 0, !dbg !1696
  br i1 %cmp70, label %while.end, label %if.end.72, !dbg !1698

if.end.72:                                        ; preds = %if.end.69
  %cmp74 = icmp eq i32 %.lcssa, 11, !dbg !1699
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %27 = load %struct._object*, %struct._object** %result, align 8, !dbg !1700, !tbaa !1033
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1702
  %28 = load i64, i64* %ob_refcnt78, align 8, !dbg !1702, !tbaa !1003
  %dec79 = add i64 %28, -1, !dbg !1702
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !1702, !tbaa !1003
  %cmp80 = icmp eq i64 %dec79, 0, !dbg !1702
  br i1 %cmp74, label %do.body.76, label %do.body.89, !dbg !1704

do.body.76:                                       ; preds = %if.end.72
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !612, metadata !953), !dbg !1700
  br i1 %cmp80, label %if.else.82, label %if.end.85, !dbg !1705

if.else.82:                                       ; preds = %do.body.76
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1706
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !1706, !tbaa !1007
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1706
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !1706, !tbaa !1008
  call void %30(%struct._object* %27) #3, !dbg !1706
  br label %if.end.85

if.end.85:                                        ; preds = %do.body.76, %if.else.82
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1708, !tbaa !1003
  %inc = add i64 %31, 1, !dbg !1708
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1708, !tbaa !1003
  br label %cleanup, !dbg !1708

do.body.89:                                       ; preds = %if.end.72
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !616, metadata !953), !dbg !1709
  br i1 %cmp80, label %if.else.95, label %if.end.98, !dbg !1711

if.else.95:                                       ; preds = %do.body.89
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1712
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !1712, !tbaa !1007
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1712
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !1712, !tbaa !1008
  call void %33(%struct._object* %27) #3, !dbg !1712
  br label %if.end.98

if.end.98:                                        ; preds = %do.body.89, %if.else.95
  %34 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1715, !tbaa !1033
  %call101 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %34) #3, !dbg !1716
  br label %cleanup, !dbg !1717

if.end.102.loopexit:                              ; preds = %if.end.48.us
  %call45.us.lcssa295 = phi i64 [ %call45.us, %if.end.48.us ]
  br label %if.end.102, !dbg !1718

if.end.102.loopexit262:                           ; preds = %if.end.48
  %call45.lcssa290 = phi i64 [ %call45, %if.end.48 ]
  %bufsize.2.lcssa287 = phi i64 [ %bufsize.2, %if.end.48 ]
  br label %if.end.102, !dbg !1718

if.end.102:                                       ; preds = %if.end.102.loopexit262, %if.end.102.loopexit
  %call45.lcssa169 = phi i64 [ %call45.us.lcssa295, %if.end.102.loopexit ], [ %call45.lcssa290, %if.end.102.loopexit262 ]
  %bufsize.2.lcssa166 = phi i64 [ %bufsize.1.ph, %if.end.102.loopexit ], [ %bufsize.2.lcssa287, %if.end.102.loopexit262 ]
  %add103 = add i64 %call45.lcssa169, %bytes_read.0.ph, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %add103, i64 0, metadata !592, metadata !953), !dbg !1594
  br label %while.body.outer, !dbg !1719

while.end.loopexit:                               ; preds = %if.end.40.us
  %bytes_read.0.ph.lcssa304 = phi i64 [ %bytes_read.0.ph, %if.end.40.us ]
  br label %while.end, !dbg !1630

while.end.loopexit261:                            ; preds = %if.end.40
  %bytes_read.0.ph.lcssa300 = phi i64 [ %bytes_read.0.ph, %if.end.40 ]
  br label %while.end, !dbg !1630

while.end:                                        ; preds = %while.end.loopexit261, %while.end.loopexit, %if.end.69
  %bytes_read.0.ph307 = phi i64 [ %bytes_read.0.ph.lcssa300, %while.end.loopexit261 ], [ %bytes_read.0.ph.lcssa304, %while.end.loopexit ], [ %bytes_read.0.ph308, %if.end.69 ]
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %35 = load %struct.PyVarObject*, %struct.PyVarObject** %8, align 8, !dbg !1720, !tbaa !1033
  %ob_size105 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %35, i64 0, i32 1, !dbg !1720
  %36 = load i64, i64* %ob_size105, align 8, !dbg !1720, !tbaa !1681
  %cmp106 = icmp sgt i64 %36, %bytes_read.0.ph307, !dbg !1722
  %37 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %35, i64 0, i32 0, !dbg !1723
  br i1 %cmp106, label %if.then.107, label %cleanup, !dbg !1723

if.then.107:                                      ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct._object** %result, i64 0, metadata !591, metadata !953), !dbg !1630
  %call108 = call i32 @_PyBytes_Resize(%struct._object** nonnull %result, i64 %bytes_read.0.ph307) #3, !dbg !1724
  %cmp109 = icmp slt i32 %call108, 0, !dbg !1727
  %.pre = load %struct._object*, %struct._object** %result, align 8, !dbg !1728, !tbaa !1033
  %..pre = select i1 %cmp109, %struct._object* null, %struct._object* %.pre, !dbg !1729
  br label %cleanup, !dbg !1729

cleanup.loopexit:                                 ; preds = %if.then.34
  br label %cleanup, !dbg !1730

cleanup:                                          ; preds = %cleanup.loopexit, %if.then.107, %while.end, %if.else.62, %do.body.56, %if.else.30, %if.then.27, %if.end.17, %if.end.98, %if.end.85, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.end.85 ], [ null, %if.end.98 ], [ null, %if.end.17 ], [ null, %if.then.27 ], [ null, %if.else.30 ], [ null, %do.body.56 ], [ null, %if.else.62 ], [ %37, %while.end ], [ %..pre, %if.then.107 ], [ null, %cleanup.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1730
  call void @llvm.lifetime.end(i64 144, i8* %0) #3, !dbg !1730
  ret %struct._object* %retval.0, !dbg !1730
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readinto(%struct.fileio* nocapture readonly %self, %struct._object* %args) #1 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !654, metadata !953), !dbg !1731
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !655, metadata !953), !dbg !1732
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1733
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1733
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1734
  %1 = load i32, i32* %fd, align 4, !dbg !1734, !tbaa !956
  %cmp = icmp slt i32 %1, 0, !dbg !1736
  br i1 %cmp, label %if.then, label %if.end, !dbg !1737

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1738, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1740
  br label %cleanup, !dbg !1741

if.end:                                           ; preds = %entry
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !1742
  %bf.load = load i8, i8* %readable, align 4, !dbg !1742
  %bf.clear = and i8 %bf.load, 2, !dbg !1742
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1744
  br i1 %tobool, label %if.then.1, label %if.end.3, !dbg !1745

if.then.1:                                        ; preds = %if.end
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #3, !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !541, metadata !953) #3, !dbg !1748
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1749
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !1750

if.then.i:                                        ; preds = %if.then.1
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1751
  %3 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1751, !tbaa !1521
  %call1.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #3, !dbg !1752
  br label %cleanup, !dbg !1752

if.end.3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !656, metadata !953), !dbg !1753
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf) #3, !dbg !1754
  %tobool5 = icmp eq i32 %call4, 0, !dbg !1754
  br i1 %tobool5, label %cleanup, label %if.end.7, !dbg !1756

if.end.7:                                         ; preds = %if.end.3
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1757
  %4 = load i64, i64* %len8, align 8, !dbg !1757, !tbaa !1758
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !658, metadata !953), !dbg !1760
  %call9 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1761
  call void @llvm.dbg.value(metadata %struct._ts* %call9, i64 0, metadata !660, metadata !953), !dbg !1761
  %call10 = tail call i32* @__errno_location() #6, !dbg !1762
  store i32 0, i32* %call10, align 4, !dbg !1763, !tbaa !1140
  %5 = load i32, i32* %fd, align 4, !dbg !1764, !tbaa !956
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1765
  %6 = load i8*, i8** %buf, align 8, !dbg !1765, !tbaa !1766
  %call12 = call i64 @read(i32 %5, i8* %6, i64 %4) #3, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %call12, i64 0, metadata !657, metadata !953), !dbg !1768
  call void @PyEval_RestoreThread(%struct._ts* %call9) #3, !dbg !1769
  %7 = load i32, i32* %call10, align 4, !dbg !1770, !tbaa !1140
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !659, metadata !953), !dbg !1771
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !656, metadata !953), !dbg !1753
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #3, !dbg !1772
  %cmp14 = icmp slt i64 %call12, 0, !dbg !1773
  br i1 %cmp14, label %if.then.15, label %if.end.21, !dbg !1775

if.then.15:                                       ; preds = %if.end.7
  %cmp16 = icmp eq i32 %7, 11, !dbg !1776
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1779

if.then.17:                                       ; preds = %if.then.15
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1780, !tbaa !1003
  %inc = add i64 %8, 1, !dbg !1780
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1780, !tbaa !1003
  br label %cleanup, !dbg !1780

if.end.18:                                        ; preds = %if.then.15
  store i32 %7, i32* %call10, align 4, !dbg !1781, !tbaa !1140
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1782, !tbaa !1033
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9) #3, !dbg !1783
  br label %cleanup, !dbg !1784

if.end.21:                                        ; preds = %if.end.7
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %call12) #3, !dbg !1785
  br label %cleanup, !dbg !1786

cleanup:                                          ; preds = %if.then.i, %if.then.1, %if.end.3, %if.end.21, %if.end.18, %if.then.17, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.then.17 ], [ null, %if.end.18 ], [ %call22, %if.end.21 ], [ null, %if.end.3 ], [ null, %if.then.1 ], [ null, %if.then.i ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3, !dbg !1787
  ret %struct._object* %retval.0, !dbg !1787
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_write(%struct.fileio* nocapture readonly %self, %struct._object* %args) #1 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !666, metadata !953), !dbg !1788
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !667, metadata !953), !dbg !1789
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1790
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1790
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1791
  %1 = load i32, i32* %fd, align 4, !dbg !1791, !tbaa !956
  %cmp = icmp slt i32 %1, 0, !dbg !1793
  br i1 %cmp, label %if.then, label %if.end, !dbg !1794

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1795, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1797
  br label %cleanup, !dbg !1798

if.end:                                           ; preds = %entry
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !1799
  %bf.load = load i8, i8* %writable, align 4, !dbg !1799
  %bf.clear = and i8 %bf.load, 4, !dbg !1799
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1801
  br i1 %tobool, label %if.then.1, label %if.end.3, !dbg !1802

if.then.1:                                        ; preds = %if.end
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #3, !dbg !1803
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !541, metadata !953) #3, !dbg !1805
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1806
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !1807

if.then.i:                                        ; preds = %if.then.1
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1808
  %3 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1808, !tbaa !1521
  %call1.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #3, !dbg !1809
  br label %cleanup, !dbg !1809

if.end.3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !668, metadata !953), !dbg !1810
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf) #3, !dbg !1811
  %tobool5 = icmp eq i32 %call4, 0, !dbg !1811
  br i1 %tobool5, label %cleanup, label %if.end.7, !dbg !1813

if.end.7:                                         ; preds = %if.end.3
  %call8 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1814
  call void @llvm.dbg.value(metadata %struct._ts* %call8, i64 0, metadata !672, metadata !953), !dbg !1814
  %call9 = tail call i32* @__errno_location() #6, !dbg !1815
  store i32 0, i32* %call9, align 4, !dbg !1816, !tbaa !1140
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1817
  %4 = load i64, i64* %len10, align 8, !dbg !1817, !tbaa !1758
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !670, metadata !953), !dbg !1818
  %5 = load i32, i32* %fd, align 4, !dbg !1819, !tbaa !956
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1820
  %6 = load i8*, i8** %buf, align 8, !dbg !1820, !tbaa !1766
  %call12 = call i64 @write(i32 %5, i8* %6, i64 %4) #3, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %call12, i64 0, metadata !669, metadata !953), !dbg !1822
  call void @PyEval_RestoreThread(%struct._ts* %call8) #3, !dbg !1823
  %7 = load i32, i32* %call9, align 4, !dbg !1824, !tbaa !1140
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !671, metadata !953), !dbg !1825
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !668, metadata !953), !dbg !1810
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #3, !dbg !1826
  %cmp14 = icmp slt i64 %call12, 0, !dbg !1827
  br i1 %cmp14, label %if.then.15, label %if.end.21, !dbg !1829

if.then.15:                                       ; preds = %if.end.7
  %cmp16 = icmp eq i32 %7, 11, !dbg !1830
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1833

if.then.17:                                       ; preds = %if.then.15
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1834, !tbaa !1003
  %inc = add i64 %8, 1, !dbg !1834
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1834, !tbaa !1003
  br label %cleanup, !dbg !1834

if.end.18:                                        ; preds = %if.then.15
  store i32 %7, i32* %call9, align 4, !dbg !1835, !tbaa !1140
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1836, !tbaa !1033
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9) #3, !dbg !1837
  br label %cleanup, !dbg !1838

if.end.21:                                        ; preds = %if.end.7
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %call12) #3, !dbg !1839
  br label %cleanup, !dbg !1840

cleanup:                                          ; preds = %if.then.i, %if.then.1, %if.end.3, %if.end.21, %if.end.18, %if.then.17, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.then.17 ], [ null, %if.end.18 ], [ %call22, %if.end.21 ], [ null, %if.end.3 ], [ null, %if.then.1 ], [ null, %if.then.i ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #3, !dbg !1841
  ret %struct._object* %retval.0, !dbg !1841
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seek(%struct.fileio* nocapture readonly %self, %struct._object* %args) #1 {
entry:
  %posobj = alloca %struct._object*, align 8
  %whence = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !678, metadata !953), !dbg !1842
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !679, metadata !953), !dbg !1843
  %0 = bitcast %struct._object** %posobj to i8*, !dbg !1844
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1844
  %1 = bitcast i32* %whence to i8*, !dbg !1845
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !681, metadata !953), !dbg !1846
  store i32 0, i32* %whence, align 4, !dbg !1846, !tbaa !1140
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1847
  %2 = load i32, i32* %fd, align 4, !dbg !1847, !tbaa !956
  %cmp = icmp slt i32 %2, 0, !dbg !1849
  br i1 %cmp, label %if.then, label %if.end, !dbg !1850

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1851, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1853
  br label %cleanup, !dbg !1854

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !680, metadata !953), !dbg !1855
  tail call void @llvm.dbg.value(metadata i32* %whence, i64 0, metadata !681, metadata !953), !dbg !1846
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %struct._object** nonnull %posobj, i32* nonnull %whence) #3, !dbg !1856
  %tobool = icmp eq i32 %call1, 0, !dbg !1856
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1858

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %fd, align 4, !dbg !1859, !tbaa !956
  call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !680, metadata !953), !dbg !1855
  %5 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !1860, !tbaa !1033
  call void @llvm.dbg.value(metadata i32* %whence, i64 0, metadata !681, metadata !953), !dbg !1846
  %6 = load i32, i32* %whence, align 4, !dbg !1861, !tbaa !1140
  %call5 = call fastcc %struct._object* @portable_lseek(i32 %4, %struct._object* %5, i32 %6), !dbg !1862
  br label %cleanup, !dbg !1863

cleanup:                                          ; preds = %if.end, %if.end.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call5, %if.end.3 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #3, !dbg !1864
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1864
  ret %struct._object* %retval.0, !dbg !1864
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_tell(%struct.fileio* nocapture readonly %self, %struct._object* nocapture readnone %args) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !697, metadata !953), !dbg !1865
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !698, metadata !953), !dbg !1866
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1867
  %0 = load i32, i32* %fd, align 4, !dbg !1867, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !1869
  br i1 %cmp, label %if.then, label %if.end, !dbg !1870

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1871, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1873
  br label %return, !dbg !1874

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !686, metadata !953) #3, !dbg !1875
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !687, metadata !953) #3, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !688, metadata !953) #3, !dbg !1878
  %call10.i = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct._ts* %call10.i, i64 0, metadata !691, metadata !953) #3, !dbg !1879
  %call11.i = tail call i64 @lseek64(i32 %0, i64 0, i32 1) #3, !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %call11.i, i64 0, metadata !690, metadata !953) #3, !dbg !1881
  tail call void @PyEval_RestoreThread(%struct._ts* %call10.i) #3, !dbg !1882
  %cmp12.i = icmp slt i64 %call11.i, 0, !dbg !1883
  br i1 %cmp12.i, label %if.then.13.i, label %if.end.15.i, !dbg !1884

if.then.13.i:                                     ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1885, !tbaa !1033
  %call14.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %2) #3, !dbg !1886
  br label %return, !dbg !1887

if.end.15.i:                                      ; preds = %if.end
  %call16.i = tail call %struct._object* @PyLong_FromLong(i64 %call11.i) #3, !dbg !1888
  br label %return, !dbg !1889

return:                                           ; preds = %if.end.15.i, %if.then.13.i, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call14.i, %if.then.13.i ], [ %call16.i, %if.end.15.i ]
  ret %struct._object* %retval.0, !dbg !1890
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_truncate(%struct.fileio* nocapture readonly %self, %struct._object* %args) #1 {
entry:
  %posobj = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !701, metadata !953), !dbg !1891
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !702, metadata !953), !dbg !1892
  %0 = bitcast %struct._object** %posobj to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1893
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !703, metadata !953), !dbg !1894
  store %struct._object* null, %struct._object** %posobj, align 8, !dbg !1894, !tbaa !1033
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1895
  %1 = load i32, i32* %fd1, align 4, !dbg !1895, !tbaa !956
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !706, metadata !953), !dbg !1896
  %cmp = icmp slt i32 %1, 0, !dbg !1897
  br i1 %cmp, label %if.then, label %if.end, !dbg !1899

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1900, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !1902
  br label %cleanup, !dbg !1903

if.end:                                           ; preds = %entry
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !1904
  %bf.load = load i8, i8* %writable, align 4, !dbg !1904
  %bf.clear = and i8 %bf.load, 4, !dbg !1904
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1906
  br i1 %tobool, label %if.then.2, label %if.end.4, !dbg !1907

if.then.2:                                        ; preds = %if.end
  %call.i = tail call %struct._PyIO_State* @_PyIO_get_module_state() #3, !dbg !1908
  tail call void @llvm.dbg.value(metadata %struct._PyIO_State* %call.i, i64 0, metadata !541, metadata !953) #3, !dbg !1910
  %cmp.i = icmp eq %struct._PyIO_State* %call.i, null, !dbg !1911
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !1912

if.then.i:                                        ; preds = %if.then.2
  %unsupported_operation.i = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %call.i, i64 0, i32 2, !dbg !1913
  %3 = load %struct._object*, %struct._object** %unsupported_operation.i, align 8, !dbg !1913, !tbaa !1521
  %call1.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #3, !dbg !1914
  br label %cleanup, !dbg !1914

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !703, metadata !953), !dbg !1894
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct._object** nonnull %posobj) #3, !dbg !1915
  %tobool6 = icmp eq i32 %call5, 0, !dbg !1915
  br i1 %tobool6, label %cleanup, label %if.end.8, !dbg !1917

if.end.8:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !703, metadata !953), !dbg !1894
  %4 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !1918, !tbaa !1033
  %cmp9 = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !1920
  %cmp10 = icmp eq %struct._object* %4, null, !dbg !1921
  %or.cond = or i1 %cmp9, %cmp10, !dbg !1922
  br i1 %or.cond, label %if.then.11, label %if.else, !dbg !1922

if.then.11:                                       ; preds = %if.end.8
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !686, metadata !953) #3, !dbg !1923
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !687, metadata !953) #3, !dbg !1926
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !688, metadata !953) #3, !dbg !1927
  %call10.i = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1928
  call void @llvm.dbg.value(metadata %struct._ts* %call10.i, i64 0, metadata !691, metadata !953) #3, !dbg !1928
  %call11.i = call i64 @lseek64(i32 %1, i64 0, i32 1) #3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %call11.i, i64 0, metadata !690, metadata !953) #3, !dbg !1930
  call void @PyEval_RestoreThread(%struct._ts* %call10.i) #3, !dbg !1931
  %cmp12.i = icmp slt i64 %call11.i, 0, !dbg !1932
  br i1 %cmp12.i, label %if.then.13.i, label %if.end.15.i, !dbg !1933

if.then.13.i:                                     ; preds = %if.then.11
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1934, !tbaa !1033
  %call14.i = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5) #3, !dbg !1935
  br label %portable_lseek.exit, !dbg !1936

if.end.15.i:                                      ; preds = %if.then.11
  %call16.i = call %struct._object* @PyLong_FromLong(i64 %call11.i) #3, !dbg !1937
  br label %portable_lseek.exit, !dbg !1938

portable_lseek.exit:                              ; preds = %if.then.13.i, %if.end.15.i
  %retval.0.i = phi %struct._object* [ %call14.i, %if.then.13.i ], [ %call16.i, %if.end.15.i ], !dbg !1939
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !703, metadata !953), !dbg !1894
  store %struct._object* %retval.0.i, %struct._object** %posobj, align 8, !dbg !1940, !tbaa !1033
  %cmp13 = icmp eq %struct._object* %retval.0.i, null, !dbg !1941
  br i1 %cmp13, label %cleanup, label %if.end.16, !dbg !1943

if.else:                                          ; preds = %if.end.8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1944
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1944, !tbaa !1003
  %inc = add i64 %6, 1, !dbg !1944
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1944, !tbaa !1003
  br label %if.end.16

if.end.16:                                        ; preds = %portable_lseek.exit, %if.else
  %7 = phi %struct._object* [ %retval.0.i, %portable_lseek.exit ], [ %4, %if.else ], !dbg !1946
  call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !703, metadata !953), !dbg !1894
  %call17 = call i64 @PyLong_AsLong(%struct._object* %7) #3, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %call17, i64 0, metadata !704, metadata !953), !dbg !1948
  %call18 = call %struct._object* @PyErr_Occurred() #3, !dbg !1949
  %tobool19 = icmp eq %struct._object* %call18, null, !dbg !1949
  br i1 %tobool19, label %if.end.26, label %do.body, !dbg !1950

do.body:                                          ; preds = %if.end.16
  call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !703, metadata !953), !dbg !1894
  %8 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !1951, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !707, metadata !953), !dbg !1951
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1953
  %9 = load i64, i64* %ob_refcnt21, align 8, !dbg !1953, !tbaa !1003
  %dec = add i64 %9, -1, !dbg !1953
  store i64 %dec, i64* %ob_refcnt21, align 8, !dbg !1953, !tbaa !1003
  %cmp22 = icmp eq i64 %dec, 0, !dbg !1953
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1955

if.else.24:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1956
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1956, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1956
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1956, !tbaa !1008
  call void %11(%struct._object* %8) #3, !dbg !1956
  br label %cleanup

if.end.26:                                        ; preds = %if.end.16
  %call27 = call %struct._ts* @PyEval_SaveThread() #3, !dbg !1958
  call void @llvm.dbg.value(metadata %struct._ts* %call27, i64 0, metadata !711, metadata !953), !dbg !1958
  %call28 = tail call i32* @__errno_location() #6, !dbg !1959
  store i32 0, i32* %call28, align 4, !dbg !1960, !tbaa !1140
  %call29 = call i32 @ftruncate64(i32 %1, i64 %call17) #3, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %call29, i64 0, metadata !705, metadata !953), !dbg !1962
  call void @PyEval_RestoreThread(%struct._ts* %call27) #3, !dbg !1963
  %cmp30 = icmp eq i32 %call29, 0, !dbg !1964
  call void @llvm.dbg.value(metadata %struct._object** %posobj, i64 0, metadata !703, metadata !953), !dbg !1894
  %12 = load %struct._object*, %struct._object** %posobj, align 8, !dbg !1965, !tbaa !1033
  br i1 %cmp30, label %cleanup, label %do.body.32, !dbg !1966

do.body.32:                                       ; preds = %if.end.26
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !713, metadata !953), !dbg !1967
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1969
  %13 = load i64, i64* %ob_refcnt34, align 8, !dbg !1969, !tbaa !1003
  %dec35 = add i64 %13, -1, !dbg !1969
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1969, !tbaa !1003
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !1969
  br i1 %cmp36, label %if.else.38, label %if.end.41, !dbg !1971

if.else.38:                                       ; preds = %do.body.32
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1972
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1972, !tbaa !1007
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1972
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1972, !tbaa !1008
  call void %15(%struct._object* %12) #3, !dbg !1972
  br label %if.end.41

if.end.41:                                        ; preds = %do.body.32, %if.else.38
  %16 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1974, !tbaa !1033
  %call44 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16) #3, !dbg !1975
  br label %cleanup, !dbg !1976

cleanup:                                          ; preds = %if.then.i, %if.then.2, %if.end.26, %if.else.24, %do.body, %portable_lseek.exit, %if.end.4, %if.end.41, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end.41 ], [ null, %if.end.4 ], [ null, %portable_lseek.exit ], [ null, %do.body ], [ null, %if.else.24 ], [ %12, %if.end.26 ], [ null, %if.then.2 ], [ null, %if.then.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1977
  ret %struct._object* %retval.0, !dbg !1977
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_close(%struct.fileio* %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !719, metadata !953), !dbg !1978
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !1979
  %0 = bitcast i8* %closefd to i16*, !dbg !1979
  %bf.load = load i16, i16* %0, align 4, !dbg !1979
  %bf.clear = and i16 %bf.load, 64, !dbg !1981
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !1981
  br i1 %tobool, label %if.then, label %if.end, !dbg !1982

if.then:                                          ; preds = %entry
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !1983
  store i32 -1, i32* %fd, align 4, !dbg !1985, !tbaa !956
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1986, !tbaa !1003
  %inc = add i64 %1, 1, !dbg !1986
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1986, !tbaa !1003
  br label %return, !dbg !1986

if.end:                                           ; preds = %entry
  %tobool1 = icmp ult i16 %bf.load, 256, !dbg !1987
  br i1 %tobool1, label %if.end.9, label %if.then.2, !dbg !1988

if.then.2:                                        ; preds = %if.end
  %2 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, !dbg !1989
  %call = tail call %struct._object* @fileio_dealloc_warn(%struct.fileio* %self, %struct._object* %2), !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !720, metadata !953), !dbg !1991
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !723, metadata !953), !dbg !1992
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1994, !tbaa !1003
  %dec = add i64 %3, -1, !dbg !1994
  store i64 %dec, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1994, !tbaa !1003
  %cmp = icmp eq i64 %dec, 0, !dbg !1994
  br i1 %cmp, label %if.else, label %if.end.9, !dbg !1996

if.else:                                          ; preds = %if.then.2
  %4 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 1), align 8, !dbg !1997, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1997
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1997, !tbaa !1008
  tail call void %5(%struct._object* nonnull @_Py_NoneStruct) #3, !dbg !1997
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.2, %if.else, %if.end
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !728, metadata !953) #3, !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !729, metadata !953) #3, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !730, metadata !953) #3, !dbg !2002
  %fd.i = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2003
  %6 = load i32, i32* %fd.i, align 4, !dbg !2003, !tbaa !956
  %cmp.i = icmp sgt i32 %6, -1, !dbg !2004
  br i1 %cmp.i, label %if.then.i, label %if.end.15, !dbg !2005

if.then.i:                                        ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !731, metadata !953) #3, !dbg !2006
  store i32 -1, i32* %fd.i, align 4, !dbg !2007, !tbaa !956
  %call.i = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !2008
  tail call void @llvm.dbg.value(metadata %struct._ts* %call.i, i64 0, metadata !734, metadata !953) #3, !dbg !2008
  %call4.i = tail call i32 @close(i32 %6) #3, !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 %call4.i, i64 0, metadata !729, metadata !953) #3, !dbg !2001
  %cmp5.i = icmp slt i32 %call4.i, 0, !dbg !2010
  br i1 %cmp5.i, label %internal_close.exit, label %if.end.8.i, !dbg !2011

if.end.8.i:                                       ; preds = %if.then.i
  tail call void @PyEval_RestoreThread(%struct._ts* %call.i) #3, !dbg !2012
  br label %if.end.15, !dbg !2013

internal_close.exit:                              ; preds = %if.then.i
  %call7.i = tail call i32* @__errno_location() #6, !dbg !2014
  %7 = load i32, i32* %call7.i, align 4, !dbg !2014, !tbaa !1140
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !730, metadata !953) #3, !dbg !2002
  tail call void @PyEval_RestoreThread(%struct._ts* %call.i) #3, !dbg !2012
  store i32 %7, i32* %call7.i, align 4, !dbg !2015, !tbaa !1140
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2016, !tbaa !1033
  %call12.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %8) #3, !dbg !2017
  store i32 -1, i32* %call7.i, align 4, !dbg !2018, !tbaa !1140
  br label %return, !dbg !2019

if.end.15:                                        ; preds = %if.end.8.i, %if.end.9
  %call11.27 = tail call i32* @__errno_location() #6, !dbg !2020
  store i32 0, i32* %call11.27, align 4, !dbg !2018, !tbaa !1140
  %call16 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i64 0, i32 0, i32 0), %struct._Py_Identifier* nonnull @fileio_close.PyId_close, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.fileio* %self) #3, !dbg !2021
  br label %return, !dbg !2022

return:                                           ; preds = %internal_close.exit, %if.end.15, %if.then
  %retval.0 = phi %struct._object* [ %call16, %if.end.15 ], [ @_Py_NoneStruct, %if.then ], [ null, %internal_close.exit ]
  ret %struct._object* %retval.0, !dbg !2023
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seekable(%struct.fileio* nocapture %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !740, metadata !953), !dbg !2024
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2025
  %0 = load i32, i32* %fd, align 4, !dbg !2025, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !2027
  br i1 %cmp, label %if.then, label %if.end, !dbg !2028

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2029, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !2031
  br label %return, !dbg !2032

if.end:                                           ; preds = %entry
  %seekable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !2033
  %bf.load = load i8, i8* %seekable, align 4, !dbg !2033
  %bf.shl.mask = and i8 %bf.load, 32, !dbg !2034
  %cmp1 = icmp eq i8 %bf.shl.mask, 0, !dbg !2034
  br i1 %cmp1, label %if.end.17, label %if.then.2, !dbg !2035

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !686, metadata !953) #3, !dbg !2036
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !687, metadata !953) #3, !dbg !2038
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !688, metadata !953) #3, !dbg !2039
  %call10.i = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !2040
  tail call void @llvm.dbg.value(metadata %struct._ts* %call10.i, i64 0, metadata !691, metadata !953) #3, !dbg !2040
  %call11.i = tail call i64 @lseek64(i32 %0, i64 0, i32 1) #3, !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %call11.i, i64 0, metadata !690, metadata !953) #3, !dbg !2042
  tail call void @PyEval_RestoreThread(%struct._ts* %call10.i) #3, !dbg !2043
  %cmp12.i = icmp slt i64 %call11.i, 0, !dbg !2044
  br i1 %cmp12.i, label %if.then.13.i, label %if.end.15.i, !dbg !2045

if.then.13.i:                                     ; preds = %if.then.2
  %2 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2046, !tbaa !1033
  %call14.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %2) #3, !dbg !2047
  br label %portable_lseek.exit, !dbg !2048

if.end.15.i:                                      ; preds = %if.then.2
  %call16.i = tail call %struct._object* @PyLong_FromLong(i64 %call11.i) #3, !dbg !2049
  br label %portable_lseek.exit, !dbg !2050

portable_lseek.exit:                              ; preds = %if.then.13.i, %if.end.15.i
  %retval.0.i = phi %struct._object* [ %call14.i, %if.then.13.i ], [ %call16.i, %if.end.15.i ], !dbg !2051
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !741, metadata !953), !dbg !2052
  %cmp5 = icmp eq %struct._object* %retval.0.i, null, !dbg !2053
  br i1 %cmp5, label %if.then.6, label %do.body, !dbg !2054

if.then.6:                                        ; preds = %portable_lseek.exit
  tail call void @PyErr_Clear() #3, !dbg !2055
  %bf.load8 = load i8, i8* %seekable, align 4, !dbg !2057
  %bf.clear = and i8 %bf.load8, -49, !dbg !2057
  br label %if.end.16, !dbg !2058

do.body:                                          ; preds = %portable_lseek.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !744, metadata !953), !dbg !2059
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i, i64 0, i32 0, !dbg !2061
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2061, !tbaa !1003
  %dec = add i64 %3, -1, !dbg !2061
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2061, !tbaa !1003
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2061
  br i1 %cmp9, label %if.else.11, label %if.end.12, !dbg !2063

if.else.11:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i, i64 0, i32 1, !dbg !2064
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2064, !tbaa !1007
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2064
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2064, !tbaa !1008
  tail call void %5(%struct._object* %retval.0.i) #3, !dbg !2064
  br label %if.end.12

if.end.12:                                        ; preds = %do.body, %if.else.11
  %bf.load14 = load i8, i8* %seekable, align 4, !dbg !2066
  %bf.clear15 = and i8 %bf.load14, -49, !dbg !2066
  %bf.set = or i8 %bf.clear15, 16, !dbg !2066
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.12, %if.then.6
  %storemerge = phi i8 [ %bf.set, %if.end.12 ], [ %bf.clear, %if.then.6 ]
  store i8 %storemerge, i8* %seekable, align 4, !dbg !2057
  br label %if.end.17, !dbg !2067

if.end.17:                                        ; preds = %if.end, %if.end.16
  %bf.load19 = phi i8 [ %bf.load, %if.end ], [ %storemerge, %if.end.16 ], !dbg !2068
  %bf.shl20 = shl i8 %bf.load19, 2, !dbg !2068
  %bf.ashr21 = ashr i8 %bf.shl20, 6, !dbg !2068
  %conv = sext i8 %bf.ashr21 to i64, !dbg !2069
  %call23 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #3, !dbg !2070
  br label %return, !dbg !2071

return:                                           ; preds = %if.end.17, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call23, %if.end.17 ]
  ret %struct._object* %retval.0, !dbg !2072
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readable(%struct.fileio* nocapture readonly %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !750, metadata !953), !dbg !2073
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2074
  %0 = load i32, i32* %fd, align 4, !dbg !2074, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !2076
  br i1 %cmp, label %if.then, label %if.end, !dbg !2077

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2078, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !2080
  br label %return, !dbg !2081

if.end:                                           ; preds = %entry
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !2082
  %bf.load = load i8, i8* %readable, align 4, !dbg !2082
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2082
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2082
  %conv = zext i8 %bf.clear to i64, !dbg !2083
  %call1 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #3, !dbg !2084
  br label %return, !dbg !2085

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct._object* %retval.0, !dbg !2086
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_writable(%struct.fileio* nocapture readonly %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !753, metadata !953), !dbg !2087
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2088
  %0 = load i32, i32* %fd, align 4, !dbg !2088, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !2090
  br i1 %cmp, label %if.then, label %if.end, !dbg !2091

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2092, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !2094
  br label %return, !dbg !2095

if.end:                                           ; preds = %entry
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !2096
  %bf.load = load i8, i8* %writable, align 4, !dbg !2096
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2096
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2096
  %conv = zext i8 %bf.clear to i64, !dbg !2097
  %call1 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #3, !dbg !2098
  br label %return, !dbg !2099

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct._object* %retval.0, !dbg !2100
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_fileno(%struct.fileio* nocapture readonly %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !756, metadata !953), !dbg !2101
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2102
  %0 = load i32, i32* %fd, align 4, !dbg !2102, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !2104
  br i1 %cmp, label %if.then, label %if.end, !dbg !2105

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2106, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !2108
  br label %return, !dbg !2109

if.end:                                           ; preds = %entry
  %conv = sext i32 %0 to i64, !dbg !2110
  %call2 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #3, !dbg !2111
  br label %return, !dbg !2112

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call2, %if.end ]
  ret %struct._object* %retval.0, !dbg !2113
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_isatty(%struct.fileio* nocapture readonly %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !759, metadata !953), !dbg !2114
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2115
  %0 = load i32, i32* %fd, align 4, !dbg !2115, !tbaa !956
  %cmp = icmp slt i32 %0, 0, !dbg !2117
  br i1 %cmp, label %if.then, label %if.end, !dbg !2118

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2119, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)) #3, !dbg !2121
  br label %cleanup, !dbg !2122

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !2123
  tail call void @llvm.dbg.value(metadata %struct._ts* %call1, i64 0, metadata !761, metadata !953), !dbg !2123
  %2 = load i32, i32* %fd, align 4, !dbg !2124, !tbaa !956
  %call3 = tail call i32 @isatty(i32 %2) #3, !dbg !2125
  %conv = sext i32 %call3 to i64, !dbg !2125
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !760, metadata !953), !dbg !2126
  tail call void @PyEval_RestoreThread(%struct._ts* %call1) #3, !dbg !2127
  %call4 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #3, !dbg !2128
  br label %cleanup, !dbg !2129

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call4, %if.end ]
  ret %struct._object* %retval.0, !dbg !2130
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_dealloc_warn(%struct.fileio* %self, %struct._object* %source) #1 {
entry:
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !765, metadata !953), !dbg !2131
  tail call void @llvm.dbg.value(metadata %struct._object* %source, i64 0, metadata !766, metadata !953), !dbg !2132
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2133
  %0 = load i32, i32* %fd, align 4, !dbg !2133, !tbaa !956
  %cmp = icmp sgt i32 %0, -1, !dbg !2134
  br i1 %cmp, label %land.lhs.true, label %if.end.7, !dbg !2135

land.lhs.true:                                    ; preds = %entry
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !2136
  %bf.load = load i8, i8* %closefd, align 4, !dbg !2136
  %bf.clear = and i8 %bf.load, 64, !dbg !2136
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2137
  br i1 %tobool, label %if.end.7, label %if.then, !dbg !2138

if.then:                                          ; preds = %land.lhs.true
  %1 = bitcast %struct._object** %exc to i8*, !dbg !2139
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2139
  %2 = bitcast %struct._object** %val to i8*, !dbg !2139
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2139
  %3 = bitcast %struct._object** %tb to i8*, !dbg !2139
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2139
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !767, metadata !953), !dbg !2140
  tail call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !770, metadata !953), !dbg !2141
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !771, metadata !953), !dbg !2142
  call void @PyErr_Fetch(%struct._object** nonnull %exc, %struct._object** nonnull %val, %struct._object** nonnull %tb) #3, !dbg !2143
  %4 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8, !dbg !2144, !tbaa !1033
  %call = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %4, i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), %struct._object* %source) #3, !dbg !2146
  %tobool1 = icmp eq i32 %call, 0, !dbg !2146
  br i1 %tobool1, label %if.end.6, label %if.then.2, !dbg !2147

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_Warning, align 8, !dbg !2148, !tbaa !1033
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %5) #3, !dbg !2151
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2151
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !2152

if.then.5:                                        ; preds = %if.then.2
  %6 = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, !dbg !2153
  call void @PyErr_WriteUnraisable(%struct._object* %6) #3, !dbg !2154
  br label %if.end.6, !dbg !2154

if.end.6:                                         ; preds = %if.then.2, %if.then, %if.then.5
  call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !767, metadata !953), !dbg !2140
  %7 = load %struct._object*, %struct._object** %exc, align 8, !dbg !2155, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object** %val, i64 0, metadata !770, metadata !953), !dbg !2141
  %8 = load %struct._object*, %struct._object** %val, align 8, !dbg !2156, !tbaa !1033
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !771, metadata !953), !dbg !2142
  %9 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2157, !tbaa !1033
  call void @PyErr_Restore(%struct._object* %7, %struct._object* %8, %struct._object* %9) #3, !dbg !2158
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !2159
  call void @llvm.lifetime.end(i64 8, i8* %2) #3, !dbg !2159
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !2159
  br label %if.end.7, !dbg !2160

if.end.7:                                         ; preds = %land.lhs.true, %if.end.6, %entry
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2161, !tbaa !1003
  %inc = add i64 %10, 1, !dbg !2161
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2161, !tbaa !1003
  ret %struct._object* @_Py_NoneStruct, !dbg !2161
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @fileio_getstate(%struct.fileio* nocapture readonly %self) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !774, metadata !953), !dbg !2162
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2163, !tbaa !1033
  %ob_type = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 0, i32 1, !dbg !2164
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2164, !tbaa !1007
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 1, !dbg !2165
  %2 = load i8*, i8** %tp_name, align 8, !dbg !2165, !tbaa !2166
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i8* %2) #3, !dbg !2167
  ret %struct._object* null, !dbg !2168
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #2

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._ts* @PyEval_SaveThread() #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @read(i32, i8* nocapture, i64) #2

declare void @PyEval_RestoreThread(%struct._ts*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare i32 @_PyBytes_Resize(%struct._object**, i64) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._PyIO_State* @_PyIO_get_module_state() #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #5

declare i32 @PyErr_CheckSignals() #2

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #5

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare i64 @write(i32, i8* nocapture readonly, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @portable_lseek(i32 %fd, %struct._object* %posobj, i32 %whence) #1 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !686, metadata !953), !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct._object* %posobj, i64 0, metadata !687, metadata !953), !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %whence, i64 0, metadata !688, metadata !953), !dbg !2171
  %cmp = icmp eq %struct._object* %posobj, null, !dbg !2172
  br i1 %cmp, label %if.end.9, label %if.else, !dbg !2174

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %posobj, i64 0, i32 1, !dbg !2175
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2175, !tbaa !1007
  %cmp1 = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2175
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !2175

lor.lhs.false:                                    ; preds = %if.else
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #3, !dbg !2178
  %tobool = icmp eq i32 %call, 0, !dbg !2178
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !2180

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2181, !tbaa !1033
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0)) #3, !dbg !2183
  br label %cleanup, !dbg !2184

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i64 @PyLong_AsLong(%struct._object* %posobj) #3, !dbg !2185
  tail call void @llvm.dbg.value(metadata i64 %call4, i64 0, metadata !689, metadata !953), !dbg !2186
  %call5 = tail call %struct._object* @PyErr_Occurred() #3, !dbg !2187
  %tobool6 = icmp eq %struct._object* %call5, null, !dbg !2187
  br i1 %tobool6, label %if.end.9, label %cleanup, !dbg !2189

if.end.9:                                         ; preds = %entry, %if.end
  %pos.0 = phi i64 [ %call4, %if.end ], [ 0, %entry ]
  %call10 = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct._ts* %call10, i64 0, metadata !691, metadata !953), !dbg !2190
  %call11 = tail call i64 @lseek64(i32 %fd, i64 %pos.0, i32 %whence) #3, !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 %call11, i64 0, metadata !690, metadata !953), !dbg !2192
  tail call void @PyEval_RestoreThread(%struct._ts* %call10) #3, !dbg !2193
  %cmp12 = icmp slt i64 %call11, 0, !dbg !2194
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !2195

if.then.13:                                       ; preds = %if.end.9
  %2 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2196, !tbaa !1033
  %call14 = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %2) #3, !dbg !2197
  br label %cleanup, !dbg !2198

if.end.15:                                        ; preds = %if.end.9
  %call16 = tail call %struct._object* @PyLong_FromLong(i64 %call11) #3, !dbg !2199
  br label %cleanup, !dbg !2200

cleanup:                                          ; preds = %if.end, %if.end.15, %if.then.13, %if.then.3
  %retval.0 = phi %struct._object* [ %call14, %if.then.13 ], [ %call16, %if.end.15 ], [ null, %if.then.3 ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !2201
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

declare i64 @PyLong_AsLong(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyLong_FromLong(i64) #2

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #5

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare i32 @close(i32) #2

declare %struct._object* @PyBool_FromLong(i64) #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #5

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #2

declare void @PyErr_WriteUnraisable(%struct._object*) #2

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closed(%struct.fileio* nocapture readonly %self, i8* nocapture readnone %closure) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !779, metadata !953), !dbg !2202
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !780, metadata !953), !dbg !2203
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 1, !dbg !2204
  %0 = load i32, i32* %fd, align 4, !dbg !2204, !tbaa !956
  %.lobit = lshr i32 %0, 31, !dbg !2205
  %conv1.2 = zext i32 %.lobit to i64, !dbg !2206
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv1.2) #3, !dbg !2207
  ret %struct._object* %call, !dbg !2208
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closefd(%struct.fileio* nocapture readonly %self, i8* nocapture readnone %closure) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !783, metadata !953), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !784, metadata !953), !dbg !2210
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %self, i64 0, i32 2, !dbg !2211
  %bf.load = load i8, i8* %closefd, align 4, !dbg !2211
  %bf.lshr = lshr i8 %bf.load, 6, !dbg !2211
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2211
  %conv = zext i8 %bf.clear to i64, !dbg !2212
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv) #3, !dbg !2213
  ret %struct._object* %call, !dbg !2214
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.fileio* nocapture readonly %self, i8* nocapture readnone %closure) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.fileio* %self, i64 0, metadata !787, metadata !953), !dbg !2215
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !788, metadata !953), !dbg !2216
  %self.idx = getelementptr %struct.fileio, %struct.fileio* %self, i64 0, i32 2
  %self.idx.val = load i8, i8* %self.idx, align 4
  %bf.clear.i = and i8 %self.idx.val, 1, !dbg !2217
  %tobool.i = icmp eq i8 %bf.clear.i, 0, !dbg !2219
  br i1 %tobool.i, label %if.end.i, label %if.then.i, !dbg !2220

if.then.i:                                        ; preds = %entry
  %bf.clear2.i = and i8 %self.idx.val, 2, !dbg !2221
  %tobool4.i = icmp eq i8 %bf.clear2.i, 0, !dbg !2222
  %..i = select i1 %tobool4.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !2223
  br label %mode_string.exit, !dbg !2223

if.end.i:                                         ; preds = %entry
  %bf.clear8.i = and i8 %self.idx.val, 8, !dbg !2224
  %tobool10.i = icmp eq i8 %bf.clear8.i, 0, !dbg !2225
  %bf.clear15.i = and i8 %self.idx.val, 2, !dbg !2226
  %tobool17.i = icmp ne i8 %bf.clear15.i, 0, !dbg !2227
  br i1 %tobool10.i, label %if.else.20.i, label %if.then.11.i, !dbg !2228

if.then.11.i:                                     ; preds = %if.end.i
  %.39.i = select i1 %tobool17.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), !dbg !2229
  br label %mode_string.exit, !dbg !2229

if.else.20.i:                                     ; preds = %if.end.i
  br i1 %tobool17.i, label %if.then.27.i, label %mode_string.exit, !dbg !2230

if.then.27.i:                                     ; preds = %if.else.20.i
  %bf.clear30.i = and i8 %self.idx.val, 4, !dbg !2231
  %tobool32.i = icmp eq i8 %bf.clear30.i, 0, !dbg !2232
  %.40.i = select i1 %tobool32.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), !dbg !2233
  br label %mode_string.exit, !dbg !2233

mode_string.exit:                                 ; preds = %if.then.i, %if.then.11.i, %if.else.20.i, %if.then.27.i
  %retval.0.i = phi i8* [ %..i, %if.then.i ], [ %.39.i, %if.then.11.i ], [ %.40.i, %if.then.27.i ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %if.else.20.i ], !dbg !2234
  %call1 = tail call %struct._object* @PyUnicode_FromString(i8* %retval.0.i) #3, !dbg !2235
  ret %struct._object* %call1, !dbg !2236
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare i32 @_PyLong_AsInt(%struct._object*) #2

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #2

declare i32 @open64(i8* nocapture readonly, i32, ...) #2

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #2

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #2

declare i32 @_Py_set_inheritable(i32, i32, i32*) #2

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!950, !951}
!llvm.ident = !{!952}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !391, globals: !867)
!1 = !DIFile(filename: "./Modules/_io/fileio.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !42, !365, !99, !94, !379, !387, !14, !390, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "fileio", file: !1, line: 58, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 46, size: 320, align: 64, elements: !7)
!7 = !{!8, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !6, file: !1, line: 47, baseType: !9, size: 128, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !10, line: 109, baseType: !11)
!10 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !10, line: 105, size: 128, align: 64, elements: !12)
!12 = !{!13, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !11, file: !10, line: 107, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !11, file: !10, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !10, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !43, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !303, !321, !322, !323, !325, !327, !328, !330, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !354}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !10, line: 335, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !10, line: 114, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 111, size: 192, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !10, line: 112, baseType: !9, size: 128, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !27, file: !10, line: 113, baseType: !14, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !23, file: !10, line: 336, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !23, file: !10, line: 341, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !10, line: 308, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !10, line: 342, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !10, line: 314, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !42, !49, !48}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 246, size: 1728, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!53 = !{!54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !80, !82, !84, !88, !91, !93, !95, !96, !97, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 247, baseType: !48, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 252, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 253, baseType: !56, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 254, baseType: !56, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 255, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 256, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 257, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 258, baseType: !56, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 259, baseType: !56, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 261, baseType: !56, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 262, baseType: !56, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 263, baseType: !56, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 265, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 161, size: 192, align: 64, elements: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !69, file: !52, line: 162, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !69, file: !52, line: 163, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !69, file: !52, line: 167, baseType: !48, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 267, baseType: !73, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 269, baseType: !48, size: 32, align: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 273, baseType: !48, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 275, baseType: !79, size: 64, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 279, baseType: !81, size: 16, align: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 280, baseType: !83, size: 8, align: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 281, baseType: !85, size: 8, align: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 285, baseType: !89, size: 64, align: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 155, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 294, baseType: !92, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !51, file: !52, line: 303, baseType: !94, size: 64, align: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !51, file: !52, line: 304, baseType: !94, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !51, file: !52, line: 305, baseType: !94, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !51, file: !52, line: 306, baseType: !94, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 309, baseType: !48, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !10, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !10, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!42, !42, !56}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !10, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !10, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!48, !42, !56, !42}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !10, line: 345, baseType: !94, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !10, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !10, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!42, !42}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !10, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !10, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !10, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !10, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!42, !42, !42}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !10, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !10, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !10, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !10, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !10, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !10, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!42, !42, !42, !42}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !10, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !10, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !10, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !10, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !10, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !10, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!48, !42}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !10, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !10, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !10, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !10, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !10, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !10, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !10, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !10, line: 258, baseType: !94, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !10, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !10, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !10, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !10, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !10, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !10, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !10, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !10, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !10, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !10, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !10, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !10, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !10, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !10, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !10, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !10, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !10, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !10, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !10, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !10, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !42}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !10, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !10, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !10, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!42, !42, !14}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !10, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !10, line: 285, baseType: !94, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !10, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !10, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!48, !42, !14, !42}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !10, line: 287, baseType: !94, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !10, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !10, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!48, !42, !42}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !10, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !10, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !10, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !10, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !10, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !10, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !10, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !10, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!48, !42, !42, !42}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !10, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !10, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !42}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !15, line: 186, baseType: !14)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !10, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !10, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !10, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !10, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !10, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !10, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !10, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !10, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !10, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !10, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!48, !42, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !10, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !10, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !10, line: 179, baseType: !94, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !10, line: 180, baseType: !42, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !10, line: 181, baseType: !14, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !10, line: 182, baseType: !14, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !10, line: 184, baseType: !48, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !10, line: 185, baseType: !48, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !10, line: 186, baseType: !56, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !10, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !10, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !10, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !10, line: 190, baseType: !94, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !10, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !10, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !42, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !10, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !10, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !10, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !10, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!48, !42, !268, !94}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !10, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!48, !42, !94}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !10, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !10, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !10, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!42, !42, !42, !48}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !10, line: 382, baseType: !14, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !10, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !10, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !10, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !10, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !10, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !32, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !48, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !10, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !296, line: 18, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 19, baseType: !56, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !296, line: 20, baseType: !48, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !296, line: 21, baseType: !14, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 22, baseType: !48, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 23, baseType: !56, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !10, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!307 = !{!308, !309, !314, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 12, baseType: !56, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !305, file: !306, line: 13, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !306, line: 8, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!42, !42, !94}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !305, file: !306, line: 14, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !306, line: 9, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!48, !42, !42, !94}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 15, baseType: !56, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !305, file: !306, line: 16, baseType: !94, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !10, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !10, line: 393, baseType: !42, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !10, line: 394, baseType: !324, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !10, line: 325, baseType: !139)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !10, line: 395, baseType: !326, size: 64, align: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !10, line: 326, baseType: !215)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !10, line: 396, baseType: !14, size: 64, align: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !10, line: 397, baseType: !329, size: 64, align: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !10, line: 327, baseType: !215)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !10, line: 398, baseType: !331, size: 64, align: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !10, line: 329, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!42, !22, !14}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !10, line: 399, baseType: !336, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !10, line: 328, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!42, !22, !42, !42}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !10, line: 400, baseType: !341, size: 64, align: 64, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !10, line: 307, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !94}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !10, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !10, line: 402, baseType: !42, size: 64, align: 64, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !10, line: 403, baseType: !42, size: 64, align: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !10, line: 404, baseType: !42, size: 64, align: 64, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !10, line: 405, baseType: !42, size: 64, align: 64, offset: 2880)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !10, line: 406, baseType: !42, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !10, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !10, line: 410, baseType: !353, size: 32, align: 32, offset: 3072)
!353 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !10, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !6, file: !1, line: 48, baseType: !48, size: 32, align: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !6, file: !1, line: 49, baseType: !353, size: 1, align: 32, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "readable", scope: !6, file: !1, line: 50, baseType: !353, size: 1, align: 32, offset: 161)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !6, file: !1, line: 51, baseType: !353, size: 1, align: 32, offset: 162)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "appending", scope: !6, file: !1, line: 52, baseType: !353, size: 1, align: 32, offset: 163)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "seekable", scope: !6, file: !1, line: 53, baseType: !48, size: 2, align: 32, offset: 164)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "closefd", scope: !6, file: !1, line: 54, baseType: !353, size: 1, align: 32, offset: 166)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "finalizing", scope: !6, file: !1, line: 55, baseType: !34, size: 8, align: 8, offset: 168)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !6, file: !1, line: 56, baseType: !42, size: 64, align: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6, file: !1, line: 57, baseType: !42, size: 64, align: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !367, line: 253, baseType: !368)
!367 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !367, line: 246, size: 192, align: 64, elements: !369)
!369 = !{!370, !377}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !368, file: !367, line: 251, baseType: !371, size: 192, align: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !367, line: 247, size: 192, align: 64, elements: !372)
!372 = !{!373, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !371, file: !367, line: 248, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !371, file: !367, line: 249, baseType: !374, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !371, file: !367, line: 250, baseType: !14, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !368, file: !367, line: 252, baseType: !378, size: 64, align: 64)
!378 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !381, line: 41, baseType: !382)
!381 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 31, size: 320, align: 64, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !382, file: !381, line: 32, baseType: !26, size: 192, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !382, file: !381, line: 33, baseType: !223, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !382, file: !381, line: 34, baseType: !85, size: 8, align: 8, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_off_t", file: !388, line: 94, baseType: !389)
!388 = !DIFile(filename: "./Modules/_io/_iomodule.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !17, line: 92, baseType: !92)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!391 = !{!392, !395, !408, !419, !424, !435, !446, !533, !536, !549, !618, !645, !652, !664, !676, !682, !695, !699, !717, !726, !738, !748, !751, !754, !757, !763, !772, !775, !781, !785, !789, !835, !850, !857}
!392 = !DISubprogram(name: "_PyFileIO_closed", scope: !1, file: !1, line: 67, type: !149, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_PyFileIO_closed, variables: !393)
!393 = !{!394}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !392, file: !1, line: 67, type: !42)
!395 = !DISubprogram(name: "fileio_dealloc", scope: !1, file: !1, line: 474, type: !396, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.fileio*)* @fileio_dealloc, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !4}
!398 = !{!399, !400, !402, !404}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !1, line: 474, type: !4)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !401, file: !1, line: 479, type: !365)
!401 = distinct !DILexicalBlock(scope: !395, file: !1, line: 479, column: 5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !403, file: !1, line: 482, type: !42)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 482, column: 5)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !405, file: !1, line: 482, type: !42)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 482, column: 5)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 482, column: 5)
!407 = distinct !DILexicalBlock(scope: !403, file: !1, line: 482, column: 5)
!408 = !DISubprogram(name: "fileio_repr", scope: !1, file: !1, line: 1041, type: !409, isLocal: true, isDefinition: true, scopeLine: 1042, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_repr, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!42, !4}
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !408, file: !1, line: 1041, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !408, file: !1, line: 1043, type: !42)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !408, file: !1, line: 1043, type: !42)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !1, line: 1060, type: !42)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 1060, column: 9)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 1057, column: 10)
!418 = distinct !DILexicalBlock(scope: !408, file: !1, line: 1049, column: 9)
!419 = !DISubprogram(name: "mode_string", scope: !1, file: !1, line: 1016, type: !420, isLocal: true, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, variables: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!56, !4}
!422 = !{!423}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !419, file: !1, line: 1016, type: !4)
!424 = !DISubprogram(name: "fileio_traverse", scope: !1, file: !1, line: 460, type: !425, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*, i32 (%struct._object*, i8*)*, i8*)* @fileio_traverse, variables: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!48, !4, !268, !94}
!427 = !{!428, !429, !430, !431}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !424, file: !1, line: 460, type: !4)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !424, file: !1, line: 460, type: !268)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !424, file: !1, line: 460, type: !94)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !432, file: !1, line: 462, type: !48)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 462, column: 5)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 462, column: 5)
!434 = distinct !DILexicalBlock(scope: !424, file: !1, line: 462, column: 5)
!435 = !DISubprogram(name: "fileio_clear", scope: !1, file: !1, line: 467, type: !436, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.fileio*)* @fileio_clear, variables: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!48, !4}
!438 = !{!439, !440, !442}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !435, file: !1, line: 467, type: !4)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !441, file: !1, line: 469, type: !42)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 469, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !1, line: 469, type: !42)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 469, column: 5)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 469, column: 5)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 469, column: 5)
!446 = !DISubprogram(name: "fileio_read", scope: !1, file: !1, line: 718, type: !447, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_read, variables: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!42, !4, !42}
!449 = !{!450, !451, !452, !453, !454, !455, !456, !518, !521, !523, !529}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !446, file: !1, line: 718, type: !4)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !446, file: !1, line: 718, type: !42)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !446, file: !1, line: 720, type: !56)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !446, file: !1, line: 721, type: !14)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !446, file: !1, line: 722, type: !14)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !446, file: !1, line: 723, type: !42)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !457, file: !1, line: 747, type: !460)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 747, column: 9)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 746, column: 33)
!459 = distinct !DILexicalBlock(scope: !446, file: !1, line: 746, column: 9)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !462, line: 139, baseType: !463)
!462 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !462, line: 69, size: 1536, align: 64, elements: !464)
!464 = !{!465, !467, !468, !488, !491, !492, !493, !494, !495, !496, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !462, line: 72, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !462, line: 73, baseType: !466, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !463, file: !462, line: 74, baseType: !469, size: 64, align: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !462, line: 44, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !462, line: 19, size: 832, align: 64, elements: !472)
!472 = !{!473, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !462, line: 21, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !471, file: !462, line: 22, baseType: !466, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !471, file: !462, line: 24, baseType: !42, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !471, file: !462, line: 25, baseType: !42, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !471, file: !462, line: 26, baseType: !42, size: 64, align: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !471, file: !462, line: 27, baseType: !42, size: 64, align: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !471, file: !462, line: 28, baseType: !42, size: 64, align: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !471, file: !462, line: 30, baseType: !42, size: 64, align: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !471, file: !462, line: 31, baseType: !42, size: 64, align: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !471, file: !462, line: 32, baseType: !42, size: 64, align: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !471, file: !462, line: 33, baseType: !48, size: 32, align: 32, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !471, file: !462, line: 34, baseType: !48, size: 32, align: 32, offset: 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !471, file: !462, line: 37, baseType: !48, size: 32, align: 32, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !471, file: !462, line: 43, baseType: !42, size: 64, align: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !463, file: !462, line: 76, baseType: !489, size: 64, align: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !462, line: 50, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !463, file: !462, line: 77, baseType: !48, size: 32, align: 32, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !463, file: !462, line: 78, baseType: !34, size: 8, align: 8, offset: 288)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !463, file: !462, line: 80, baseType: !34, size: 8, align: 8, offset: 296)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !463, file: !462, line: 85, baseType: !48, size: 32, align: 32, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !463, file: !462, line: 86, baseType: !48, size: 32, align: 32, offset: 352)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !463, file: !462, line: 88, baseType: !497, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !462, line: 54, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!48, !42, !489, !48, !42}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !463, file: !462, line: 89, baseType: !497, size: 64, align: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !463, file: !462, line: 90, baseType: !42, size: 64, align: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !463, file: !462, line: 91, baseType: !42, size: 64, align: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !463, file: !462, line: 93, baseType: !42, size: 64, align: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !463, file: !462, line: 94, baseType: !42, size: 64, align: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !463, file: !462, line: 95, baseType: !42, size: 64, align: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !463, file: !462, line: 97, baseType: !42, size: 64, align: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !463, file: !462, line: 98, baseType: !42, size: 64, align: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !463, file: !462, line: 99, baseType: !42, size: 64, align: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !463, file: !462, line: 101, baseType: !42, size: 64, align: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !463, file: !462, line: 103, baseType: !48, size: 32, align: 32, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !463, file: !462, line: 105, baseType: !42, size: 64, align: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !463, file: !462, line: 106, baseType: !20, size: 64, align: 64, offset: 1216)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !463, file: !462, line: 108, baseType: !48, size: 32, align: 32, offset: 1280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !463, file: !462, line: 109, baseType: !42, size: 64, align: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !463, file: !462, line: 134, baseType: !342, size: 64, align: 64, offset: 1408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !463, file: !462, line: 135, baseType: !94, size: 64, align: 64, offset: 1472)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !519, file: !1, line: 759, type: !48)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 758, column: 16)
!520 = distinct !DILexicalBlock(scope: !446, file: !1, line: 758, column: 9)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !522, file: !1, line: 760, type: !42)
!522 = distinct !DILexicalBlock(scope: !519, file: !1, line: 760, column: 9)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !524, file: !1, line: 770, type: !42)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 770, column: 13)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 769, column: 45)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 769, column: 13)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 768, column: 20)
!528 = distinct !DILexicalBlock(scope: !446, file: !1, line: 768, column: 9)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !1, line: 770, type: !42)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 770, column: 13)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 770, column: 13)
!532 = distinct !DILexicalBlock(scope: !524, file: !1, line: 770, column: 13)
!533 = !DISubprogram(name: "err_closed", scope: !1, file: !1, line: 487, type: !534, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, variables: !2)
!534 = !DISubroutineType(types: !535)
!535 = !{!42}
!536 = !DISubprogram(name: "err_mode", scope: !1, file: !1, line: 494, type: !537, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: true, variables: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!42, !56}
!539 = !{!540, !541}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "action", arg: 1, scope: !536, file: !1, line: 494, type: !56)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !536, file: !1, line: 496, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyIO_State", file: !388, line: 135, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 130, size: 192, align: 64, elements: !545)
!545 = !{!546, !547, !548}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !544, file: !388, line: 131, baseType: !48, size: 32, align: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "locale_module", scope: !544, file: !388, line: 132, baseType: !42, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_operation", scope: !544, file: !388, line: 134, baseType: !42, size: 64, align: 64, offset: 128)
!549 = !DISubprogram(name: "fileio_readall", scope: !1, file: !1, line: 619, type: !409, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_readall, variables: !550)
!550 = !{!551, !552, !589, !590, !591, !592, !593, !594, !595, !602, !604, !612, !616}
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !549, file: !1, line: 619, type: !4)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !549, file: !1, line: 621, type: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !554, line: 46, size: 1152, align: 64, elements: !555)
!554 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!555 = !{!556, !558, !560, !562, !564, !566, !568, !569, !570, !571, !573, !575, !583, !584, !585}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !553, file: !554, line: 48, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !19, line: 133, baseType: !101)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !553, file: !554, line: 53, baseType: !559, size: 64, align: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !19, line: 136, baseType: !101)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !553, file: !554, line: 61, baseType: !561, size: 64, align: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !19, line: 139, baseType: !101)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !553, file: !554, line: 62, baseType: !563, size: 32, align: 32, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !19, line: 138, baseType: !353)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !553, file: !554, line: 64, baseType: !565, size: 32, align: 32, offset: 224)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !19, line: 134, baseType: !353)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !553, file: !554, line: 65, baseType: !567, size: 32, align: 32, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !19, line: 135, baseType: !353)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !553, file: !554, line: 67, baseType: !48, size: 32, align: 32, offset: 288)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !553, file: !554, line: 69, baseType: !557, size: 64, align: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !553, file: !554, line: 74, baseType: !79, size: 64, align: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !553, file: !554, line: 78, baseType: !572, size: 64, align: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !19, line: 162, baseType: !20)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !553, file: !554, line: 80, baseType: !574, size: 64, align: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !19, line: 167, baseType: !20)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !553, file: !554, line: 91, baseType: !576, size: 128, align: 64, offset: 576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !577, line: 120, size: 128, align: 64, elements: !578)
!577 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !576, file: !577, line: 122, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !19, line: 148, baseType: !20)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !576, file: !577, line: 123, baseType: !582, size: 64, align: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !19, line: 184, baseType: !20)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !553, file: !554, line: 92, baseType: !576, size: 128, align: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !553, file: !554, line: 93, baseType: !576, size: 128, align: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !553, file: !554, line: 106, baseType: !586, size: 192, align: 64, offset: 960)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 192, align: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 3)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !549, file: !1, line: 622, type: !387)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !549, file: !1, line: 622, type: !387)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !549, file: !1, line: 623, type: !42)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_read", scope: !549, file: !1, line: 624, type: !14)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !549, file: !1, line: 625, type: !14)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !549, file: !1, line: 626, type: !99)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !1, line: 664, type: !42)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 664, column: 17)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 660, column: 59)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 660, column: 17)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 658, column: 48)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 658, column: 13)
!601 = distinct !DILexicalBlock(scope: !549, file: !1, line: 657, column: 15)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !603, file: !1, line: 673, type: !460)
!603 = distinct !DILexicalBlock(scope: !601, file: !1, line: 673, column: 9)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !1, line: 689, type: !42)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 689, column: 21)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 688, column: 43)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 688, column: 21)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 687, column: 33)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 687, column: 17)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 686, column: 20)
!611 = distinct !DILexicalBlock(scope: !601, file: !1, line: 686, column: 13)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !1, line: 697, type: !42)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 697, column: 17)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 696, column: 34)
!615 = distinct !DILexicalBlock(scope: !610, file: !1, line: 696, column: 17)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !1, line: 700, type: !42)
!617 = distinct !DILexicalBlock(scope: !610, file: !1, line: 700, column: 13)
!618 = !DISubprogram(name: "fstat64", scope: !619, file: !619, line: 517, type: !620, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, variables: !642)
!619 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!620 = !DISubroutineType(types: !621)
!621 = !{!48, !48, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !554, line: 119, size: 1152, align: 64, elements: !624)
!624 = !{!625, !626, !628, !629, !630, !631, !632, !633, !634, !635, !636, !638, !639, !640, !641}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !623, file: !554, line: 121, baseType: !557, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !623, file: !554, line: 123, baseType: !627, size: 64, align: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !19, line: 137, baseType: !101)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !623, file: !554, line: 124, baseType: !561, size: 64, align: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !623, file: !554, line: 125, baseType: !563, size: 32, align: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !623, file: !554, line: 132, baseType: !565, size: 32, align: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !623, file: !554, line: 133, baseType: !567, size: 32, align: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !623, file: !554, line: 135, baseType: !48, size: 32, align: 32, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !623, file: !554, line: 136, baseType: !557, size: 64, align: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !623, file: !554, line: 137, baseType: !79, size: 64, align: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !623, file: !554, line: 143, baseType: !572, size: 64, align: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !623, file: !554, line: 144, baseType: !637, size: 64, align: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !19, line: 168, baseType: !20)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !623, file: !554, line: 152, baseType: !576, size: 128, align: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !623, file: !554, line: 153, baseType: !576, size: 128, align: 64, offset: 704)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !623, file: !554, line: 154, baseType: !576, size: 128, align: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !623, file: !554, line: 164, baseType: !586, size: 192, align: 64, offset: 960)
!642 = !{!643, !644}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !618, file: !619, line: 517, type: !48)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !618, file: !619, line: 517, type: !622)
!645 = !DISubprogram(name: "new_buffersize", scope: !1, file: !1, line: 600, type: !646, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!99, !4, !99}
!648 = !{!649, !650, !651}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !645, file: !1, line: 600, type: !4)
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currentsize", arg: 2, scope: !645, file: !1, line: 600, type: !99)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addend", scope: !645, file: !1, line: 602, type: !99)
!652 = !DISubprogram(name: "fileio_readinto", scope: !1, file: !1, line: 546, type: !447, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_readinto, variables: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660}
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !652, file: !1, line: 546, type: !4)
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !652, file: !1, line: 546, type: !42)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !652, file: !1, line: 548, type: !241)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !652, file: !1, line: 549, type: !14)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !652, file: !1, line: 549, type: !14)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !652, file: !1, line: 550, type: !48)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !661, file: !1, line: 562, type: !460)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 562, column: 9)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 560, column: 33)
!663 = distinct !DILexicalBlock(scope: !652, file: !1, line: 560, column: 9)
!664 = !DISubprogram(name: "fileio_write", scope: !1, file: !1, line: 779, type: !447, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_write, variables: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !664, file: !1, line: 779, type: !4)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !664, file: !1, line: 779, type: !42)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !664, file: !1, line: 781, type: !241)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !664, file: !1, line: 782, type: !14)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !664, file: !1, line: 782, type: !14)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !664, file: !1, line: 783, type: !48)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !673, file: !1, line: 794, type: !460)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 794, column: 9)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 793, column: 33)
!675 = distinct !DILexicalBlock(scope: !664, file: !1, line: 793, column: 9)
!676 = !DISubprogram(name: "fileio_seek", scope: !1, file: !1, line: 889, type: !447, isLocal: true, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_seek, variables: !677)
!677 = !{!678, !679, !680, !681}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !676, file: !1, line: 889, type: !4)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !676, file: !1, line: 889, type: !42)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "posobj", scope: !676, file: !1, line: 891, type: !42)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "whence", scope: !676, file: !1, line: 892, type: !48)
!682 = !DISubprogram(name: "portable_lseek", scope: !1, file: !1, line: 833, type: !683, isLocal: true, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, %struct._object*, i32)* @portable_lseek, variables: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!42, !48, !42, !48}
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !682, file: !1, line: 833, type: !48)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "posobj", arg: 2, scope: !682, file: !1, line: 833, type: !42)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "whence", arg: 3, scope: !682, file: !1, line: 833, type: !48)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !682, file: !1, line: 835, type: !387)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !682, file: !1, line: 835, type: !387)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !692, file: !1, line: 869, type: !460)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 869, column: 9)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 868, column: 27)
!694 = distinct !DILexicalBlock(scope: !682, file: !1, line: 868, column: 9)
!695 = !DISubprogram(name: "fileio_tell", scope: !1, file: !1, line: 904, type: !447, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_tell, variables: !696)
!696 = !{!697, !698}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !695, file: !1, line: 904, type: !4)
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !695, file: !1, line: 904, type: !42)
!699 = !DISubprogram(name: "fileio_truncate", scope: !1, file: !1, line: 914, type: !447, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_truncate, variables: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !711, !713}
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !699, file: !1, line: 914, type: !4)
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !699, file: !1, line: 914, type: !42)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "posobj", scope: !699, file: !1, line: 916, type: !42)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !699, file: !1, line: 918, type: !387)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !699, file: !1, line: 920, type: !48)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !699, file: !1, line: 921, type: !48)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 994, type: !42)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 994, column: 9)
!709 = distinct !DILexicalBlock(scope: !710, file: !1, line: 993, column: 26)
!710 = distinct !DILexicalBlock(scope: !699, file: !1, line: 993, column: 9)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !712, file: !1, line: 998, type: !460)
!712 = distinct !DILexicalBlock(scope: !699, file: !1, line: 998, column: 5)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !714, file: !1, line: 1006, type: !42)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1006, column: 9)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 1005, column: 19)
!716 = distinct !DILexicalBlock(scope: !699, file: !1, line: 1005, column: 9)
!717 = !DISubprogram(name: "fileio_close", scope: !1, file: !1, line: 127, type: !409, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_close, variables: !718)
!718 = !{!719, !720, !723}
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !717, file: !1, line: 127, type: !4)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !721, file: !1, line: 135, type: !42)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 134, column: 27)
!722 = distinct !DILexicalBlock(scope: !717, file: !1, line: 134, column: 9)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !724, file: !1, line: 137, type: !42)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 137, column: 13)
!725 = distinct !DILexicalBlock(scope: !721, file: !1, line: 136, column: 13)
!726 = !DISubprogram(name: "internal_close", scope: !1, file: !1, line: 99, type: !436, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, variables: !727)
!727 = !{!728, !729, !730, !731, !734}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !726, file: !1, line: 99, type: !4)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !726, file: !1, line: 101, type: !48)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !726, file: !1, line: 102, type: !48)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !732, file: !1, line: 104, type: !48)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 103, column: 24)
!733 = distinct !DILexicalBlock(scope: !726, file: !1, line: 103, column: 9)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !735, file: !1, line: 108, type: !460)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 108, column: 13)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 107, column: 31)
!737 = distinct !DILexicalBlock(scope: !732, file: !1, line: 107, column: 13)
!738 = !DISubprogram(name: "fileio_seekable", scope: !1, file: !1, line: 528, type: !409, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_seekable, variables: !739)
!739 = !{!740, !741, !744}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !738, file: !1, line: 528, type: !4)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !742, file: !1, line: 533, type: !42)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 532, column: 29)
!743 = distinct !DILexicalBlock(scope: !738, file: !1, line: 532, column: 9)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !745, file: !1, line: 538, type: !42)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 538, column: 13)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 537, column: 16)
!747 = distinct !DILexicalBlock(scope: !742, file: !1, line: 534, column: 13)
!748 = !DISubprogram(name: "fileio_readable", scope: !1, file: !1, line: 512, type: !409, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_readable, variables: !749)
!749 = !{!750}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !748, file: !1, line: 512, type: !4)
!751 = !DISubprogram(name: "fileio_writable", scope: !1, file: !1, line: 520, type: !409, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_writable, variables: !752)
!752 = !{!753}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !751, file: !1, line: 520, type: !4)
!754 = !DISubprogram(name: "fileio_fileno", scope: !1, file: !1, line: 504, type: !409, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_fileno, variables: !755)
!755 = !{!756}
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !754, file: !1, line: 504, type: !4)
!757 = !DISubprogram(name: "fileio_isatty", scope: !1, file: !1, line: 1066, type: !409, isLocal: true, isDefinition: true, scopeLine: 1067, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_isatty, variables: !758)
!758 = !{!759, !760, !761}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !757, file: !1, line: 1066, type: !4)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !757, file: !1, line: 1068, type: !20)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !762, file: !1, line: 1072, type: !460)
!762 = distinct !DILexicalBlock(scope: !757, file: !1, line: 1072, column: 5)
!763 = !DISubprogram(name: "fileio_dealloc_warn", scope: !1, file: !1, line: 76, type: !447, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, %struct._object*)* @fileio_dealloc_warn, variables: !764)
!764 = !{!765, !766, !767, !770, !771}
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !763, file: !1, line: 76, type: !4)
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 2, scope: !763, file: !1, line: 76, type: !42)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !768, file: !1, line: 79, type: !42)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 78, column: 41)
!769 = distinct !DILexicalBlock(scope: !763, file: !1, line: 78, column: 9)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !768, file: !1, line: 79, type: !42)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !768, file: !1, line: 79, type: !42)
!772 = !DISubprogram(name: "fileio_getstate", scope: !1, file: !1, line: 1079, type: !409, isLocal: true, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*)* @fileio_getstate, variables: !773)
!773 = !{!774}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !772, file: !1, line: 1079, type: !4)
!775 = !DISubprogram(name: "get_closed", scope: !1, file: !1, line: 1193, type: !776, isLocal: true, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_closed, variables: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!42, !4, !94}
!778 = !{!779, !780}
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !775, file: !1, line: 1193, type: !4)
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !775, file: !1, line: 1193, type: !94)
!781 = !DISubprogram(name: "get_closefd", scope: !1, file: !1, line: 1199, type: !776, isLocal: true, isDefinition: true, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_closefd, variables: !782)
!782 = !{!783, !784}
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !781, file: !1, line: 1199, type: !4)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !781, file: !1, line: 1199, type: !94)
!785 = !DISubprogram(name: "get_mode", scope: !1, file: !1, line: 1205, type: !776, isLocal: true, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.fileio*, i8*)* @get_mode, variables: !786)
!786 = !{!787, !788}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !785, file: !1, line: 1205, type: !4)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !785, file: !1, line: 1205, type: !94)
!789 = !DISubprogram(name: "fileio_init", scope: !1, file: !1, line: 214, type: !216, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @fileio_init, variables: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !810, !816, !818, !822, !824, !827, !829, !831}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oself", arg: 1, scope: !789, file: !1, line: 214, type: !42)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !789, file: !1, line: 214, type: !42)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !789, file: !1, line: 214, type: !42)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !789, file: !1, line: 216, type: !4)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !789, file: !1, line: 218, type: !32)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !789, file: !1, line: 219, type: !42)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stringobj", scope: !789, file: !1, line: 219, type: !42)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opener", scope: !789, file: !1, line: 219, type: !42)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !789, file: !1, line: 220, type: !56)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !789, file: !1, line: 221, type: !56)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !789, file: !1, line: 225, type: !48)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rwa", scope: !789, file: !1, line: 226, type: !48)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "plus", scope: !789, file: !1, line: 226, type: !48)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !789, file: !1, line: 227, type: !48)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !789, file: !1, line: 228, type: !48)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "closefd", scope: !789, file: !1, line: 229, type: !48)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd_is_own", scope: !789, file: !1, line: 230, type: !48)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_flag_works", scope: !789, file: !1, line: 232, type: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !811, file: !1, line: 378, type: !460)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 378, column: 13)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 377, column: 32)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 377, column: 13)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 368, column: 10)
!815 = distinct !DILexicalBlock(scope: !789, file: !1, line: 362, column: 9)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdobj", scope: !817, file: !1, line: 389, type: !42)
!817 = distinct !DILexicalBlock(scope: !813, file: !1, line: 388, column: 14)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !819, file: !1, line: 400, type: !42)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 400, column: 17)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 399, column: 39)
!821 = distinct !DILexicalBlock(scope: !817, file: !1, line: 399, column: 17)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !823, file: !1, line: 407, type: !42)
!823 = distinct !DILexicalBlock(scope: !817, file: !1, line: 407, column: 13)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !825, file: !1, line: 439, type: !42)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 435, column: 26)
!826 = distinct !DILexicalBlock(scope: !789, file: !1, line: 435, column: 9)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !828, file: !1, line: 442, type: !42)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 442, column: 9)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !830, file: !1, line: 455, type: !42)
!830 = distinct !DILexicalBlock(scope: !789, file: !1, line: 455, column: 5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !832, file: !1, line: 455, type: !42)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 455, column: 5)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 455, column: 5)
!834 = distinct !DILexicalBlock(scope: !830, file: !1, line: 455, column: 5)
!835 = !DISubprogram(name: "check_fd", scope: !1, file: !1, line: 192, type: !836, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, variables: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!48, !48}
!838 = !{!839, !840, !841, !844, !845, !847}
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !835, file: !1, line: 192, type: !48)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !835, file: !1, line: 195, type: !553)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !842, file: !1, line: 197, type: !42)
!842 = distinct !DILexicalBlock(scope: !843, file: !1, line: 196, column: 71)
!843 = distinct !DILexicalBlock(scope: !835, file: !1, line: 196, column: 9)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !842, file: !1, line: 198, type: !56)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !846, file: !1, line: 202, type: !42)
!846 = distinct !DILexicalBlock(scope: !842, file: !1, line: 202, column: 9)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !848, file: !1, line: 202, type: !42)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 202, column: 9)
!849 = distinct !DILexicalBlock(scope: !846, file: !1, line: 202, column: 9)
!850 = !DISubprogram(name: "dircheck", scope: !1, file: !1, line: 176, type: !851, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, variables: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!48, !4, !42}
!853 = !{!854, !855, !856}
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !850, file: !1, line: 176, type: !4)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nameobj", arg: 2, scope: !850, file: !1, line: 176, type: !42)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !850, file: !1, line: 179, type: !553)
!857 = !DISubprogram(name: "fileio_new", scope: !1, file: !1, line: 150, type: !858, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @fileio_new, variables: !862)
!858 = !DISubroutineType(types: !859)
!859 = !{!42, !860, !42, !42}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !10, line: 422, baseType: !23)
!862 = !{!863, !864, !865, !866}
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !857, file: !1, line: 150, type: !860)
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !857, file: !1, line: 150, type: !42)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !857, file: !1, line: 150, type: !42)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !857, file: !1, line: 152, type: !4)
!867 = !{!868, !869, !877, !881, !886, !890, !894, !898, !902, !906, !910, !911, !912, !916, !920, !924, !928, !932, !936, !941, !946}
!868 = !DIGlobalVariable(name: "PyFileIO_Type", scope: !0, file: !1, line: 1223, type: !861, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyFileIO_Type)
!869 = !DIGlobalVariable(name: "PyId_name", scope: !0, file: !1, line: 62, type: !870, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_name)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !10, line: 144, baseType: !871)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !10, line: 140, size: 192, align: 64, elements: !872)
!872 = !{!873, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !10, line: 141, baseType: !874, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !871, file: !10, line: 142, baseType: !32, size: 64, align: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !871, file: !10, line: 143, baseType: !42, size: 64, align: 64, offset: 128)
!877 = !DIGlobalVariable(name: "fileio_doc", scope: !0, file: !1, line: 1087, type: !878, isLocal: true, isDefinition: true, variable: [845 x i8]* @fileio_doc)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 6760, align: 8, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 845)
!881 = !DIGlobalVariable(name: "fileio_methods", scope: !0, file: !1, line: 1169, type: !882, isLocal: true, isDefinition: true, variable: [16 x %struct.PyMethodDef]* @fileio_methods)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 4096, align: 64, elements: !884)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !286, line: 47, baseType: !285)
!884 = !{!885}
!885 = !DISubrange(count: 16)
!886 = !DIGlobalVariable(name: "read_doc", scope: !0, file: !1, line: 1102, type: !887, isLocal: true, isDefinition: true, variable: [232 x i8]* @read_doc)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1856, align: 8, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 232)
!890 = !DIGlobalVariable(name: "readall_doc", scope: !0, file: !1, line: 1109, type: !891, isLocal: true, isDefinition: true, variable: [199 x i8]* @readall_doc)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1592, align: 8, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 199)
!894 = !DIGlobalVariable(name: "readinto_doc", scope: !0, file: !1, line: 1148, type: !895, isLocal: true, isDefinition: true, variable: [44 x i8]* @readinto_doc)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 352, align: 8, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 44)
!898 = !DIGlobalVariable(name: "write_doc", scope: !0, file: !1, line: 1115, type: !899, isLocal: true, isDefinition: true, variable: [189 x i8]* @write_doc)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1512, align: 8, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 189)
!902 = !DIGlobalVariable(name: "seek_doc", scope: !0, file: !1, line: 1126, type: !903, isLocal: true, isDefinition: true, variable: [439 x i8]* @seek_doc)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3512, align: 8, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 439)
!906 = !DIGlobalVariable(name: "tell_doc", scope: !0, file: !1, line: 1145, type: !907, isLocal: true, isDefinition: true, variable: [38 x i8]* @tell_doc)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 304, align: 8, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 38)
!910 = !DIGlobalVariable(name: "truncate_doc", scope: !0, file: !1, line: 1138, type: !891, isLocal: true, isDefinition: true, variable: [199 x i8]* @truncate_doc)
!911 = !DIGlobalVariable(name: "PyId_close", scope: !717, file: !1, line: 129, type: !870, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fileio_close.PyId_close)
!912 = !DIGlobalVariable(name: "close_doc", scope: !0, file: !1, line: 1151, type: !913, isLocal: true, isDefinition: true, variable: [172 x i8]* @close_doc)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1376, align: 8, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 172)
!916 = !DIGlobalVariable(name: "seekable_doc", scope: !0, file: !1, line: 1160, type: !917, isLocal: true, isDefinition: true, variable: [58 x i8]* @seekable_doc)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 464, align: 8, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 58)
!920 = !DIGlobalVariable(name: "readable_doc", scope: !0, file: !1, line: 1163, type: !921, isLocal: true, isDefinition: true, variable: [61 x i8]* @readable_doc)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 488, align: 8, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 61)
!924 = !DIGlobalVariable(name: "writable_doc", scope: !0, file: !1, line: 1166, type: !925, isLocal: true, isDefinition: true, variable: [62 x i8]* @writable_doc)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 496, align: 8, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 62)
!928 = !DIGlobalVariable(name: "fileno_doc", scope: !0, file: !1, line: 1121, type: !929, isLocal: true, isDefinition: true, variable: [108 x i8]* @fileno_doc)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 864, align: 8, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 108)
!932 = !DIGlobalVariable(name: "isatty_doc", scope: !0, file: !1, line: 1157, type: !933, isLocal: true, isDefinition: true, variable: [66 x i8]* @isatty_doc)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 528, align: 8, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 66)
!936 = !DIGlobalVariable(name: "fileio_members", scope: !0, file: !1, line: 1218, type: !937, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @fileio_members)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 640, align: 64, elements: !939)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !296, line: 24, baseType: !295)
!939 = !{!940}
!940 = !DISubrange(count: 2)
!941 = !DIGlobalVariable(name: "fileio_getsetlist", scope: !0, file: !1, line: 1210, type: !942, isLocal: true, isDefinition: true, variable: [4 x %struct.PyGetSetDef]* @fileio_getsetlist)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 1280, align: 64, elements: !944)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !306, line: 17, baseType: !305)
!944 = !{!945}
!945 = !DISubrange(count: 4)
!946 = !DIGlobalVariable(name: "kwlist", scope: !789, file: !1, line: 217, type: !947, isLocal: true, isDefinition: true, variable: [5 x i8*]* @fileio_init.kwlist)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 320, align: 64, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 5)
!950 = !{i32 2, !"Dwarf Version", i32 4}
!951 = !{i32 2, !"Debug Info Version", i32 3}
!952 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!953 = !DIExpression()
!954 = !DILocation(line: 67, column: 28, scope: !392)
!955 = !DILocation(line: 69, column: 30, scope: !392)
!956 = !{!957, !963, i64 16}
!957 = !{!"", !958, i64 0, !963, i64 16, !963, i64 20, !963, i64 20, !963, i64 20, !963, i64 20, !963, i64 20, !963, i64 20, !960, i64 21, !962, i64 24, !962, i64 32}
!958 = !{!"_object", !959, i64 0, !962, i64 8}
!959 = !{!"long", !960, i64 0}
!960 = !{!"omnipotent char", !961, i64 0}
!961 = !{!"Simple C/C++ TBAA"}
!962 = !{!"any pointer", !960, i64 0}
!963 = !{!"int", !960, i64 0}
!964 = !DILocation(line: 69, column: 33, scope: !392)
!965 = !DILocation(line: 69, column: 5, scope: !392)
!966 = !DILocation(line: 474, column: 24, scope: !395)
!967 = !DILocation(line: 476, column: 11, scope: !395)
!968 = !DILocation(line: 476, column: 22, scope: !395)
!969 = !{!957, !960, i64 21}
!970 = !DILocation(line: 477, column: 28, scope: !971)
!971 = distinct !DILexicalBlock(scope: !395, file: !1, line: 477, column: 9)
!972 = !DILocation(line: 477, column: 9, scope: !971)
!973 = !DILocation(line: 477, column: 47, scope: !971)
!974 = !DILocation(line: 477, column: 9, scope: !395)
!975 = !DILocation(line: 479, column: 5, scope: !976)
!976 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!977 = !DILocation(line: 479, column: 5, scope: !978)
!978 = !DILexicalBlockFile(scope: !979, file: !1, discriminator: 2)
!979 = distinct !DILexicalBlock(scope: !401, file: !1, line: 479, column: 5)
!980 = !{!981, !959, i64 16}
!981 = !{!"", !962, i64 0, !962, i64 8, !959, i64 16}
!982 = !DILocation(line: 479, column: 5, scope: !983)
!983 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 4)
!984 = !{!981, !962, i64 0}
!985 = !{!981, !962, i64 8}
!986 = !DILocation(line: 480, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !395, file: !1, line: 480, column: 9)
!988 = !{!957, !962, i64 24}
!989 = !DILocation(line: 480, column: 27, scope: !987)
!990 = !DILocation(line: 480, column: 9, scope: !395)
!991 = !DILocation(line: 481, column: 9, scope: !987)
!992 = !DILocation(line: 482, column: 5, scope: !993)
!993 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!994 = !{!957, !962, i64 32}
!995 = !DILocation(line: 482, column: 5, scope: !407)
!996 = !DILocation(line: 482, column: 5, scope: !403)
!997 = !DILocation(line: 482, column: 5, scope: !998)
!998 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 2)
!999 = !DILocation(line: 482, column: 5, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 4)
!1001 = !DILocation(line: 482, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !405, file: !1, line: 482, column: 5)
!1003 = !{!958, !959, i64 0}
!1004 = !DILocation(line: 482, column: 5, scope: !405)
!1005 = !DILocation(line: 482, column: 5, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 6)
!1007 = !{!958, !962, i64 8}
!1008 = !{!1009, !962, i64 48}
!1009 = !{!"_typeobject", !1010, i64 0, !962, i64 24, !959, i64 32, !959, i64 40, !962, i64 48, !962, i64 56, !962, i64 64, !962, i64 72, !962, i64 80, !962, i64 88, !962, i64 96, !962, i64 104, !962, i64 112, !962, i64 120, !962, i64 128, !962, i64 136, !962, i64 144, !962, i64 152, !962, i64 160, !959, i64 168, !962, i64 176, !962, i64 184, !962, i64 192, !962, i64 200, !959, i64 208, !962, i64 216, !962, i64 224, !962, i64 232, !962, i64 240, !962, i64 248, !962, i64 256, !962, i64 264, !962, i64 272, !962, i64 280, !959, i64 288, !962, i64 296, !962, i64 304, !962, i64 312, !962, i64 320, !962, i64 328, !962, i64 336, !962, i64 344, !962, i64 352, !962, i64 360, !962, i64 368, !962, i64 376, !963, i64 384, !962, i64 392}
!1010 = !{!"", !958, i64 0, !959, i64 16}
!1011 = !DILocation(line: 483, column: 5, scope: !395)
!1012 = !DILocation(line: 483, column: 20, scope: !395)
!1013 = !{!1009, !962, i64 320}
!1014 = !DILocation(line: 483, column: 28, scope: !395)
!1015 = !DILocation(line: 484, column: 1, scope: !395)
!1016 = !DILocation(line: 484, column: 1, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!1018 = !DILocation(line: 1041, column: 21, scope: !408)
!1019 = !DILocation(line: 1045, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !408, file: !1, line: 1045, column: 9)
!1021 = !DILocation(line: 1045, column: 18, scope: !1020)
!1022 = !DILocation(line: 1045, column: 9, scope: !408)
!1023 = !DILocation(line: 1046, column: 16, scope: !1020)
!1024 = !DILocation(line: 1046, column: 9, scope: !1020)
!1025 = !DILocation(line: 1048, column: 35, scope: !408)
!1026 = !DILocation(line: 1048, column: 15, scope: !408)
!1027 = !DILocation(line: 1043, column: 15, scope: !408)
!1028 = !DILocation(line: 1049, column: 17, scope: !418)
!1029 = !DILocation(line: 1049, column: 9, scope: !408)
!1030 = !DILocation(line: 1050, column: 36, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 1050, column: 13)
!1032 = distinct !DILexicalBlock(scope: !418, file: !1, line: 1049, column: 26)
!1033 = !{!962, !962, i64 0}
!1034 = !DILocation(line: 1050, column: 13, scope: !1031)
!1035 = !DILocation(line: 1050, column: 13, scope: !1032)
!1036 = !DILocation(line: 1051, column: 13, scope: !1031)
!1037 = !DILocation(line: 1055, column: 42, scope: !1032)
!1038 = !DILocation(line: 1018, column: 15, scope: !1039, inlinedAt: !1040)
!1039 = distinct !DILexicalBlock(scope: !419, file: !1, line: 1018, column: 9)
!1040 = distinct !DILocation(line: 1055, column: 46, scope: !1032)
!1041 = !DILocation(line: 1018, column: 9, scope: !1039, inlinedAt: !1040)
!1042 = !DILocation(line: 1018, column: 9, scope: !419, inlinedAt: !1040)
!1043 = !DILocation(line: 1019, column: 19, scope: !1044, inlinedAt: !1040)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1019, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 1018, column: 24)
!1046 = !DILocation(line: 1019, column: 13, scope: !1044, inlinedAt: !1040)
!1047 = !DILocation(line: 1022, column: 13, scope: !1044, inlinedAt: !1040)
!1048 = !DILocation(line: 1024, column: 15, scope: !1049, inlinedAt: !1040)
!1049 = distinct !DILexicalBlock(scope: !419, file: !1, line: 1024, column: 9)
!1050 = !DILocation(line: 1024, column: 9, scope: !1049, inlinedAt: !1040)
!1051 = !DILocation(line: 1025, column: 19, scope: !1052, inlinedAt: !1040)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 1025, column: 13)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 1024, column: 26)
!1054 = !DILocation(line: 1025, column: 13, scope: !1052, inlinedAt: !1040)
!1055 = !DILocation(line: 1024, column: 9, scope: !419, inlinedAt: !1040)
!1056 = !DILocation(line: 1026, column: 13, scope: !1052, inlinedAt: !1040)
!1057 = !DILocation(line: 1030, column: 14, scope: !1049, inlinedAt: !1040)
!1058 = !DILocation(line: 1031, column: 19, scope: !1059, inlinedAt: !1040)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 1031, column: 13)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1030, column: 30)
!1061 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 1030, column: 14)
!1062 = !DILocation(line: 1031, column: 13, scope: !1059, inlinedAt: !1040)
!1063 = !DILocation(line: 1034, column: 13, scope: !1059, inlinedAt: !1040)
!1064 = !DILocation(line: 1055, column: 46, scope: !1032)
!1065 = !DILocation(line: 1054, column: 15, scope: !1032)
!1066 = !DILocation(line: 1043, column: 25, scope: !408)
!1067 = !DILocation(line: 1056, column: 5, scope: !1032)
!1068 = !DILocation(line: 1018, column: 15, scope: !1039, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 1059, column: 45, scope: !417)
!1070 = !DILocation(line: 1018, column: 9, scope: !1039, inlinedAt: !1069)
!1071 = !DILocation(line: 1018, column: 9, scope: !419, inlinedAt: !1069)
!1072 = !DILocation(line: 1019, column: 19, scope: !1044, inlinedAt: !1069)
!1073 = !DILocation(line: 1019, column: 13, scope: !1044, inlinedAt: !1069)
!1074 = !DILocation(line: 1022, column: 13, scope: !1044, inlinedAt: !1069)
!1075 = !DILocation(line: 1024, column: 15, scope: !1049, inlinedAt: !1069)
!1076 = !DILocation(line: 1024, column: 9, scope: !1049, inlinedAt: !1069)
!1077 = !DILocation(line: 1025, column: 19, scope: !1052, inlinedAt: !1069)
!1078 = !DILocation(line: 1025, column: 13, scope: !1052, inlinedAt: !1069)
!1079 = !DILocation(line: 1024, column: 9, scope: !419, inlinedAt: !1069)
!1080 = !DILocation(line: 1026, column: 13, scope: !1052, inlinedAt: !1069)
!1081 = !DILocation(line: 1030, column: 14, scope: !1049, inlinedAt: !1069)
!1082 = !DILocation(line: 1031, column: 19, scope: !1059, inlinedAt: !1069)
!1083 = !DILocation(line: 1031, column: 13, scope: !1059, inlinedAt: !1069)
!1084 = !DILocation(line: 1034, column: 13, scope: !1059, inlinedAt: !1069)
!1085 = !DILocation(line: 1059, column: 45, scope: !417)
!1086 = !DILocation(line: 1058, column: 15, scope: !417)
!1087 = !DILocation(line: 1060, column: 9, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 1)
!1089 = !DILocation(line: 1060, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !416, file: !1, line: 1060, column: 9)
!1091 = !DILocation(line: 1060, column: 9, scope: !416)
!1092 = !DILocation(line: 1060, column: 9, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1090, file: !1, discriminator: 3)
!1094 = !DILocation(line: 1063, column: 1, scope: !408)
!1095 = !DILocation(line: 460, column: 25, scope: !424)
!1096 = !DILocation(line: 460, column: 41, scope: !424)
!1097 = !DILocation(line: 460, column: 54, scope: !424)
!1098 = !DILocation(line: 462, column: 5, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!1100 = !DILocation(line: 462, column: 5, scope: !434)
!1101 = !DILocation(line: 462, column: 5, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 2)
!1103 = !DILocation(line: 462, column: 5, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !432, file: !1, line: 462, column: 5)
!1105 = !DILocation(line: 463, column: 5, scope: !424)
!1106 = !DILocation(line: 464, column: 1, scope: !424)
!1107 = !DILocation(line: 467, column: 22, scope: !435)
!1108 = !DILocation(line: 469, column: 5, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 1)
!1110 = !DILocation(line: 469, column: 5, scope: !445)
!1111 = !DILocation(line: 469, column: 5, scope: !441)
!1112 = !DILocation(line: 469, column: 5, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 2)
!1114 = !DILocation(line: 469, column: 5, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!1116 = !DILocation(line: 469, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !443, file: !1, line: 469, column: 5)
!1118 = !DILocation(line: 469, column: 5, scope: !443)
!1119 = !DILocation(line: 469, column: 5, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 6)
!1121 = !DILocation(line: 470, column: 5, scope: !435)
!1122 = !DILocation(line: 214, column: 23, scope: !789)
!1123 = !DILocation(line: 214, column: 40, scope: !789)
!1124 = !DILocation(line: 214, column: 56, scope: !789)
!1125 = !DILocation(line: 216, column: 20, scope: !789)
!1126 = !DILocation(line: 216, column: 13, scope: !789)
!1127 = !DILocation(line: 218, column: 17, scope: !789)
!1128 = !DILocation(line: 219, column: 5, scope: !789)
!1129 = !DILocation(line: 219, column: 25, scope: !789)
!1130 = !DILocation(line: 219, column: 44, scope: !789)
!1131 = !DILocation(line: 220, column: 5, scope: !789)
!1132 = !DILocation(line: 220, column: 11, scope: !789)
!1133 = !DILocation(line: 225, column: 9, scope: !789)
!1134 = !DILocation(line: 226, column: 9, scope: !789)
!1135 = !DILocation(line: 226, column: 18, scope: !789)
!1136 = !DILocation(line: 227, column: 9, scope: !789)
!1137 = !DILocation(line: 228, column: 9, scope: !789)
!1138 = !DILocation(line: 229, column: 5, scope: !789)
!1139 = !DILocation(line: 229, column: 9, scope: !789)
!1140 = !{!963, !963, i64 0}
!1141 = !DILocation(line: 230, column: 9, scope: !789)
!1142 = !DILocation(line: 232, column: 10, scope: !789)
!1143 = !DILocation(line: 238, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !789, file: !1, line: 238, column: 9)
!1145 = !DILocation(line: 103, column: 15, scope: !733, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 241, column: 17, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 241, column: 17)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 239, column: 28)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 239, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 238, column: 24)
!1151 = !DILocation(line: 238, column: 18, scope: !1144)
!1152 = !DILocation(line: 238, column: 9, scope: !789)
!1153 = !DILocation(line: 239, column: 19, scope: !1149)
!1154 = !DILocation(line: 239, column: 13, scope: !1149)
!1155 = !DILocation(line: 245, column: 22, scope: !1149)
!1156 = !DILocation(line: 239, column: 13, scope: !1150)
!1157 = !DILocation(line: 99, column: 24, scope: !726, inlinedAt: !1146)
!1158 = !DILocation(line: 101, column: 9, scope: !726, inlinedAt: !1146)
!1159 = !DILocation(line: 102, column: 9, scope: !726, inlinedAt: !1146)
!1160 = !DILocation(line: 104, column: 13, scope: !732, inlinedAt: !1146)
!1161 = !DILocation(line: 108, column: 13, scope: !735, inlinedAt: !1146)
!1162 = !DILocation(line: 109, column: 19, scope: !735, inlinedAt: !1146)
!1163 = !DILocation(line: 110, column: 21, scope: !1164, inlinedAt: !1146)
!1164 = distinct !DILexicalBlock(scope: !735, file: !1, line: 110, column: 17)
!1165 = !DILocation(line: 110, column: 17, scope: !735, inlinedAt: !1146)
!1166 = !DILocation(line: 112, column: 13, scope: !735, inlinedAt: !1146)
!1167 = !DILocation(line: 241, column: 17, scope: !1147)
!1168 = !DILocation(line: 111, column: 30, scope: !1164, inlinedAt: !1146)
!1169 = !DILocation(line: 119, column: 15, scope: !1170, inlinedAt: !1146)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 118, column: 18)
!1171 = distinct !DILexicalBlock(scope: !726, file: !1, line: 118, column: 9)
!1172 = !DILocation(line: 120, column: 28, scope: !1170, inlinedAt: !1146)
!1173 = !DILocation(line: 120, column: 9, scope: !1170, inlinedAt: !1146)
!1174 = !DILocation(line: 241, column: 17, scope: !1148)
!1175 = !DILocation(line: 219, column: 15, scope: !789)
!1176 = !DILocation(line: 248, column: 10, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !789, file: !1, line: 248, column: 9)
!1178 = !DILocation(line: 248, column: 9, scope: !789)
!1179 = !DILocation(line: 253, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !789, file: !1, line: 253, column: 9)
!1181 = !DILocation(line: 253, column: 9, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 1)
!1183 = !DILocation(line: 253, column: 9, scope: !789)
!1184 = !DILocation(line: 254, column: 25, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 253, column: 33)
!1186 = !DILocation(line: 254, column: 9, scope: !1185)
!1187 = !DILocation(line: 256, column: 9, scope: !1185)
!1188 = !DILocation(line: 259, column: 24, scope: !789)
!1189 = !DILocation(line: 259, column: 10, scope: !789)
!1190 = !DILocation(line: 260, column: 12, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !789, file: !1, line: 260, column: 9)
!1192 = !DILocation(line: 260, column: 9, scope: !789)
!1193 = !DILocation(line: 261, column: 14, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 261, column: 13)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 260, column: 17)
!1196 = !DILocation(line: 261, column: 13, scope: !1195)
!1197 = !DILocation(line: 262, column: 29, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 261, column: 32)
!1199 = !DILocation(line: 262, column: 13, scope: !1198)
!1200 = !DILocation(line: 264, column: 13, scope: !1198)
!1201 = !DILocation(line: 266, column: 9, scope: !1195)
!1202 = !DILocation(line: 284, column: 36, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 284, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 283, column: 5)
!1205 = distinct !DILexicalBlock(scope: !789, file: !1, line: 282, column: 9)
!1206 = !DILocation(line: 284, column: 14, scope: !1203)
!1207 = !DILocation(line: 284, column: 13, scope: !1204)
!1208 = !DILocation(line: 287, column: 16, scope: !1204)
!1209 = !DILocation(line: 288, column: 5, scope: !1204)
!1210 = !DILocation(line: 337, column: 50, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 292, column: 23)
!1212 = distinct !DILexicalBlock(scope: !789, file: !1, line: 291, column: 16)
!1213 = !DILocation(line: 221, column: 11, scope: !789)
!1214 = !DILocation(line: 310, column: 19, scope: !1211)
!1215 = !DILocation(line: 291, column: 5, scope: !789)
!1216 = !DILocation(line: 291, column: 12, scope: !789)
!1217 = !{!960, !960, i64 0}
!1218 = !DILocation(line: 292, column: 19, scope: !1212)
!1219 = !DILocation(line: 292, column: 17, scope: !1212)
!1220 = !DILocation(line: 292, column: 9, scope: !1212)
!1221 = !DILocation(line: 294, column: 17, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 294, column: 17)
!1223 = !DILocation(line: 294, column: 17, scope: !1211)
!1224 = !DILocation(line: 296, column: 33, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 294, column: 22)
!1226 = !DILocation(line: 296, column: 17, scope: !1225)
!1227 = !DILocation(line: 299, column: 17, scope: !1225)
!1228 = !DILocation(line: 302, column: 27, scope: !1211)
!1229 = !DILocation(line: 303, column: 28, scope: !1211)
!1230 = !DILocation(line: 304, column: 19, scope: !1211)
!1231 = !DILocation(line: 305, column: 13, scope: !1211)
!1232 = !DILocation(line: 307, column: 17, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 307, column: 17)
!1234 = !DILocation(line: 307, column: 17, scope: !1211)
!1235 = !DILocation(line: 310, column: 28, scope: !1211)
!1236 = !DILocation(line: 311, column: 13, scope: !1211)
!1237 = !DILocation(line: 313, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 313, column: 17)
!1239 = !DILocation(line: 313, column: 17, scope: !1211)
!1240 = !DILocation(line: 316, column: 28, scope: !1211)
!1241 = !DILocation(line: 317, column: 19, scope: !1211)
!1242 = !DILocation(line: 318, column: 13, scope: !1211)
!1243 = !DILocation(line: 320, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 320, column: 17)
!1245 = !DILocation(line: 320, column: 17, scope: !1211)
!1246 = !DILocation(line: 323, column: 28, scope: !1211)
!1247 = !DILocation(line: 324, column: 29, scope: !1211)
!1248 = !DILocation(line: 325, column: 19, scope: !1211)
!1249 = !DILocation(line: 326, column: 13, scope: !1211)
!1250 = !DILocation(line: 330, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 330, column: 17)
!1252 = !DILocation(line: 330, column: 17, scope: !1211)
!1253 = !DILocation(line: 332, column: 45, scope: !1211)
!1254 = !DILocation(line: 332, column: 28, scope: !1211)
!1255 = !DILocation(line: 334, column: 13, scope: !1211)
!1256 = !DILocation(line: 336, column: 26, scope: !1211)
!1257 = !DILocation(line: 336, column: 13, scope: !1211)
!1258 = !DILocation(line: 338, column: 13, scope: !1211)
!1259 = !DILocation(line: 342, column: 10, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !789, file: !1, line: 342, column: 9)
!1261 = !DILocation(line: 342, column: 9, scope: !789)
!1262 = !DILocation(line: 369, column: 23, scope: !814)
!1263 = !DILocation(line: 345, column: 24, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !789, file: !1, line: 345, column: 9)
!1265 = !DILocation(line: 347, column: 14, scope: !1264)
!1266 = !DILocation(line: 359, column: 11, scope: !789)
!1267 = !DILocation(line: 362, column: 12, scope: !815)
!1268 = !DILocation(line: 362, column: 9, scope: !789)
!1269 = !DILocation(line: 192, column: 14, scope: !835, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 363, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 363, column: 13)
!1272 = distinct !DILexicalBlock(scope: !815, file: !1, line: 362, column: 18)
!1273 = !DILocation(line: 195, column: 5, scope: !835, inlinedAt: !1270)
!1274 = !DILocation(line: 195, column: 17, scope: !835, inlinedAt: !1270)
!1275 = !DILocation(line: 196, column: 31, scope: !843, inlinedAt: !1270)
!1276 = !DILocation(line: 517, column: 1, scope: !618, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 196, column: 31, scope: !843, inlinedAt: !1270)
!1278 = !DILocation(line: 519, column: 10, scope: !618, inlinedAt: !1277)
!1279 = !DILocation(line: 196, column: 47, scope: !843, inlinedAt: !1270)
!1280 = !DILocation(line: 196, column: 51, scope: !843, inlinedAt: !1270)
!1281 = !DILocation(line: 196, column: 54, scope: !1282, inlinedAt: !1270)
!1282 = !DILexicalBlockFile(scope: !843, file: !1, discriminator: 1)
!1283 = !DILocation(line: 196, column: 60, scope: !843, inlinedAt: !1270)
!1284 = !DILocation(line: 196, column: 9, scope: !835, inlinedAt: !1270)
!1285 = !DILocation(line: 198, column: 21, scope: !842, inlinedAt: !1270)
!1286 = !DILocation(line: 198, column: 15, scope: !842, inlinedAt: !1270)
!1287 = !DILocation(line: 199, column: 37, scope: !842, inlinedAt: !1270)
!1288 = !DILocation(line: 199, column: 15, scope: !842, inlinedAt: !1270)
!1289 = !DILocation(line: 197, column: 19, scope: !842, inlinedAt: !1270)
!1290 = !DILocation(line: 201, column: 25, scope: !842, inlinedAt: !1270)
!1291 = !DILocation(line: 201, column: 9, scope: !842, inlinedAt: !1270)
!1292 = !DILocation(line: 202, column: 9, scope: !1293, inlinedAt: !1270)
!1293 = !DILexicalBlockFile(scope: !846, file: !1, discriminator: 1)
!1294 = !DILocation(line: 202, column: 9, scope: !849, inlinedAt: !1270)
!1295 = !DILocation(line: 202, column: 9, scope: !846, inlinedAt: !1270)
!1296 = !DILocation(line: 202, column: 9, scope: !1297, inlinedAt: !1270)
!1297 = !DILexicalBlockFile(scope: !848, file: !1, discriminator: 4)
!1298 = !DILocation(line: 202, column: 9, scope: !1299, inlinedAt: !1270)
!1299 = distinct !DILexicalBlock(scope: !848, file: !1, line: 202, column: 9)
!1300 = !DILocation(line: 202, column: 9, scope: !848, inlinedAt: !1270)
!1301 = !DILocation(line: 202, column: 9, scope: !1302, inlinedAt: !1270)
!1302 = !DILexicalBlockFile(scope: !1299, file: !1, discriminator: 6)
!1303 = !DILocation(line: 363, column: 13, scope: !1271)
!1304 = !DILocation(line: 207, column: 1, scope: !835, inlinedAt: !1270)
!1305 = !DILocation(line: 363, column: 13, scope: !1272)
!1306 = !DILocation(line: 365, column: 18, scope: !1272)
!1307 = !DILocation(line: 366, column: 25, scope: !1272)
!1308 = !DILocation(line: 366, column: 23, scope: !1272)
!1309 = !DILocation(line: 424, column: 24, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !789, file: !1, line: 424, column: 9)
!1311 = !DILocation(line: 179, column: 5, scope: !850, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 424, column: 9, scope: !1310)
!1313 = !DILocation(line: 180, column: 9, scope: !850, inlinedAt: !1312)
!1314 = !DILocation(line: 370, column: 14, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !814, file: !1, line: 370, column: 13)
!1316 = !DILocation(line: 370, column: 13, scope: !814)
!1317 = !DILocation(line: 371, column: 29, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 370, column: 23)
!1319 = !DILocation(line: 371, column: 13, scope: !1318)
!1320 = !DILocation(line: 373, column: 13, scope: !1318)
!1321 = !DILocation(line: 376, column: 9, scope: !814)
!1322 = !DILocation(line: 376, column: 15, scope: !814)
!1323 = !DILocation(line: 377, column: 13, scope: !813)
!1324 = !DILocation(line: 377, column: 20, scope: !813)
!1325 = !DILocation(line: 377, column: 13, scope: !814)
!1326 = !DILocation(line: 378, column: 13, scope: !811)
!1327 = !DILocation(line: 384, column: 28, scope: !811)
!1328 = !DILocation(line: 384, column: 26, scope: !811)
!1329 = !DILocation(line: 386, column: 13, scope: !811)
!1330 = !DILocation(line: 414, column: 19, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !814, file: !1, line: 414, column: 13)
!1332 = !DILocation(line: 387, column: 9, scope: !812)
!1333 = !DILocation(line: 396, column: 57, scope: !817)
!1334 = !DILocation(line: 396, column: 21, scope: !817)
!1335 = !DILocation(line: 389, column: 23, scope: !817)
!1336 = !DILocation(line: 397, column: 23, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !817, file: !1, line: 397, column: 17)
!1338 = !DILocation(line: 397, column: 17, scope: !817)
!1339 = !DILocation(line: 399, column: 18, scope: !821)
!1340 = !DILocation(line: 400, column: 17, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 3)
!1342 = distinct !DILexicalBlock(scope: !819, file: !1, line: 400, column: 17)
!1343 = !{!1009, !959, i64 168}
!1344 = !DILocation(line: 399, column: 17, scope: !817)
!1345 = !DILocation(line: 400, column: 17, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !819, file: !1, discriminator: 1)
!1347 = !DILocation(line: 400, column: 17, scope: !1342)
!1348 = !DILocation(line: 400, column: 17, scope: !819)
!1349 = !DILocation(line: 401, column: 33, scope: !820)
!1350 = !DILocation(line: 401, column: 17, scope: !820)
!1351 = !DILocation(line: 403, column: 17, scope: !820)
!1352 = !DILocation(line: 406, column: 24, scope: !817)
!1353 = !DILocation(line: 406, column: 22, scope: !817)
!1354 = !DILocation(line: 407, column: 13, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 1)
!1356 = !DILocation(line: 407, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !823, file: !1, line: 407, column: 13)
!1358 = !DILocation(line: 407, column: 13, scope: !823)
!1359 = !DILocation(line: 407, column: 13, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1357, file: !1, discriminator: 3)
!1361 = !DILocation(line: 408, column: 23, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !817, file: !1, line: 408, column: 17)
!1363 = !DILocation(line: 408, column: 26, scope: !1362)
!1364 = !DILocation(line: 414, column: 22, scope: !1331)
!1365 = !DILocation(line: 414, column: 13, scope: !814)
!1366 = !DILocation(line: 415, column: 50, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 414, column: 27)
!1368 = !DILocation(line: 415, column: 65, scope: !1367)
!1369 = !DILocation(line: 415, column: 13, scope: !1367)
!1370 = !DILocation(line: 416, column: 13, scope: !1367)
!1371 = !DILocation(line: 420, column: 13, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !814, file: !1, line: 420, column: 13)
!1373 = !DILocation(line: 420, column: 65, scope: !1372)
!1374 = !DILocation(line: 420, column: 13, scope: !814)
!1375 = !DILocation(line: 180, column: 18, scope: !1376, inlinedAt: !1312)
!1376 = distinct !DILexicalBlock(scope: !850, file: !1, line: 180, column: 9)
!1377 = !DILocation(line: 179, column: 17, scope: !850, inlinedAt: !1312)
!1378 = !DILocation(line: 182, column: 9, scope: !1379, inlinedAt: !1312)
!1379 = distinct !DILexicalBlock(scope: !850, file: !1, line: 182, column: 9)
!1380 = !DILocation(line: 517, column: 1, scope: !618, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 182, column: 9, scope: !1379, inlinedAt: !1312)
!1382 = !DILocation(line: 519, column: 10, scope: !618, inlinedAt: !1381)
!1383 = !DILocation(line: 182, column: 31, scope: !1379, inlinedAt: !1312)
!1384 = !DILocation(line: 182, column: 36, scope: !1379, inlinedAt: !1312)
!1385 = !DILocation(line: 182, column: 39, scope: !1386, inlinedAt: !1312)
!1386 = !DILexicalBlockFile(scope: !1379, file: !1, discriminator: 1)
!1387 = !{!1388, !963, i64 24}
!1388 = !{!"stat", !959, i64 0, !959, i64 8, !959, i64 16, !963, i64 24, !963, i64 28, !963, i64 32, !963, i64 36, !959, i64 40, !959, i64 48, !959, i64 56, !959, i64 64, !1389, i64 72, !1389, i64 88, !1389, i64 104, !960, i64 120}
!1389 = !{!"timespec", !959, i64 0, !959, i64 8}
!1390 = !DILocation(line: 182, column: 9, scope: !850, inlinedAt: !1312)
!1391 = !DILocation(line: 183, column: 9, scope: !1392, inlinedAt: !1312)
!1392 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 182, column: 61)
!1393 = !DILocation(line: 183, column: 15, scope: !1392, inlinedAt: !1312)
!1394 = !DILocation(line: 184, column: 46, scope: !1392, inlinedAt: !1312)
!1395 = !DILocation(line: 184, column: 9, scope: !1392, inlinedAt: !1312)
!1396 = !DILocation(line: 189, column: 1, scope: !850, inlinedAt: !1312)
!1397 = !DILocation(line: 424, column: 9, scope: !789)
!1398 = !DILocation(line: 432, column: 59, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !789, file: !1, line: 432, column: 9)
!1400 = !DILocation(line: 432, column: 9, scope: !1399)
!1401 = !DILocation(line: 432, column: 68, scope: !1399)
!1402 = !DILocation(line: 432, column: 9, scope: !789)
!1403 = !DILocation(line: 435, column: 15, scope: !826)
!1404 = !DILocation(line: 435, column: 9, scope: !826)
!1405 = !DILocation(line: 435, column: 9, scope: !789)
!1406 = !DILocation(line: 439, column: 46, scope: !825)
!1407 = !DILocation(line: 833, column: 20, scope: !682, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 439, column: 25, scope: !825)
!1409 = !DILocation(line: 833, column: 34, scope: !682, inlinedAt: !1408)
!1410 = !DILocation(line: 833, column: 46, scope: !682, inlinedAt: !1408)
!1411 = !DILocation(line: 869, column: 9, scope: !692, inlinedAt: !1408)
!1412 = !DILocation(line: 873, column: 15, scope: !692, inlinedAt: !1408)
!1413 = !DILocation(line: 835, column: 19, scope: !682, inlinedAt: !1408)
!1414 = !DILocation(line: 875, column: 9, scope: !692, inlinedAt: !1408)
!1415 = !DILocation(line: 878, column: 13, scope: !1416, inlinedAt: !1408)
!1416 = distinct !DILexicalBlock(scope: !682, file: !1, line: 878, column: 9)
!1417 = !DILocation(line: 878, column: 9, scope: !682, inlinedAt: !1408)
!1418 = !DILocation(line: 879, column: 35, scope: !1416, inlinedAt: !1408)
!1419 = !DILocation(line: 879, column: 16, scope: !1416, inlinedAt: !1408)
!1420 = !DILocation(line: 879, column: 9, scope: !1416, inlinedAt: !1408)
!1421 = !DILocation(line: 884, column: 12, scope: !682, inlinedAt: !1408)
!1422 = !DILocation(line: 884, column: 5, scope: !682, inlinedAt: !1408)
!1423 = !DILocation(line: 439, column: 25, scope: !825)
!1424 = !DILocation(line: 439, column: 19, scope: !825)
!1425 = !DILocation(line: 440, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !825, file: !1, line: 440, column: 13)
!1427 = !DILocation(line: 440, column: 13, scope: !825)
!1428 = !DILocation(line: 442, column: 9, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !828, file: !1, discriminator: 1)
!1430 = !DILocation(line: 442, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !828, file: !1, line: 442, column: 9)
!1432 = !DILocation(line: 442, column: 9, scope: !828)
!1433 = !DILocation(line: 442, column: 9, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1431, file: !1, discriminator: 3)
!1435 = !DILocation(line: 449, column: 10, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !789, file: !1, line: 449, column: 9)
!1437 = !DILocation(line: 449, column: 9, scope: !789)
!1438 = !DILocation(line: 450, column: 18, scope: !1436)
!1439 = !DILocation(line: 451, column: 9, scope: !789)
!1440 = !DILocation(line: 103, column: 15, scope: !733, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 452, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !789, file: !1, line: 451, column: 9)
!1443 = !DILocation(line: 451, column: 18, scope: !1442)
!1444 = !DILocation(line: 99, column: 24, scope: !726, inlinedAt: !1441)
!1445 = !DILocation(line: 101, column: 9, scope: !726, inlinedAt: !1441)
!1446 = !DILocation(line: 102, column: 9, scope: !726, inlinedAt: !1441)
!1447 = !DILocation(line: 104, column: 13, scope: !732, inlinedAt: !1441)
!1448 = !DILocation(line: 105, column: 18, scope: !732, inlinedAt: !1441)
!1449 = !DILocation(line: 108, column: 13, scope: !735, inlinedAt: !1441)
!1450 = !DILocation(line: 109, column: 19, scope: !735, inlinedAt: !1441)
!1451 = !DILocation(line: 110, column: 21, scope: !1164, inlinedAt: !1441)
!1452 = !DILocation(line: 110, column: 17, scope: !735, inlinedAt: !1441)
!1453 = !DILocation(line: 112, column: 13, scope: !735, inlinedAt: !1441)
!1454 = !DILocation(line: 452, column: 9, scope: !1442)
!1455 = !DILocation(line: 111, column: 30, scope: !1164, inlinedAt: !1441)
!1456 = !DILocation(line: 119, column: 15, scope: !1170, inlinedAt: !1441)
!1457 = !DILocation(line: 120, column: 28, scope: !1170, inlinedAt: !1441)
!1458 = !DILocation(line: 120, column: 9, scope: !1170, inlinedAt: !1441)
!1459 = !DILocation(line: 121, column: 9, scope: !1170, inlinedAt: !1441)
!1460 = !DILocation(line: 455, column: 5, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 1)
!1462 = !DILocation(line: 455, column: 5, scope: !834)
!1463 = !DILocation(line: 455, column: 5, scope: !830)
!1464 = !DILocation(line: 455, column: 5, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !833, file: !1, discriminator: 2)
!1466 = !DILocation(line: 455, column: 5, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !832, file: !1, discriminator: 4)
!1468 = !DILocation(line: 455, column: 5, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !832, file: !1, line: 455, column: 5)
!1470 = !DILocation(line: 455, column: 5, scope: !832)
!1471 = !DILocation(line: 455, column: 5, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 6)
!1473 = !DILocation(line: 457, column: 1, scope: !789)
!1474 = !DILocation(line: 150, column: 26, scope: !857)
!1475 = !DILocation(line: 150, column: 42, scope: !857)
!1476 = !DILocation(line: 150, column: 58, scope: !857)
!1477 = !DILocation(line: 156, column: 29, scope: !857)
!1478 = !{!1009, !962, i64 304}
!1479 = !DILocation(line: 156, column: 23, scope: !857)
!1480 = !DILocation(line: 152, column: 13, scope: !857)
!1481 = !DILocation(line: 157, column: 14, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !857, file: !1, line: 157, column: 9)
!1483 = !DILocation(line: 157, column: 9, scope: !857)
!1484 = !DILocation(line: 156, column: 12, scope: !857)
!1485 = !DILocation(line: 158, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 157, column: 23)
!1487 = !DILocation(line: 158, column: 18, scope: !1486)
!1488 = !DILocation(line: 159, column: 15, scope: !1486)
!1489 = !DILocation(line: 159, column: 23, scope: !1486)
!1490 = !DILocation(line: 163, column: 24, scope: !1486)
!1491 = !DILocation(line: 164, column: 23, scope: !1486)
!1492 = !DILocation(line: 165, column: 15, scope: !1486)
!1493 = !DILocation(line: 165, column: 27, scope: !1486)
!1494 = !DILocation(line: 166, column: 5, scope: !1486)
!1495 = !DILocation(line: 168, column: 5, scope: !857)
!1496 = !DILocation(line: 718, column: 21, scope: !446)
!1497 = !DILocation(line: 718, column: 37, scope: !446)
!1498 = !DILocation(line: 722, column: 5, scope: !446)
!1499 = !DILocation(line: 722, column: 16, scope: !446)
!1500 = !{!959, !959, i64 0}
!1501 = !DILocation(line: 723, column: 5, scope: !446)
!1502 = !DILocation(line: 725, column: 15, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !446, file: !1, line: 725, column: 9)
!1504 = !DILocation(line: 725, column: 18, scope: !1503)
!1505 = !DILocation(line: 725, column: 9, scope: !446)
!1506 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 726, column: 16, scope: !1503)
!1508 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1507)
!1509 = !DILocation(line: 726, column: 9, scope: !1503)
!1510 = !DILocation(line: 727, column: 16, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !446, file: !1, line: 727, column: 9)
!1512 = !DILocation(line: 727, column: 10, scope: !1511)
!1513 = !DILocation(line: 727, column: 9, scope: !446)
!1514 = !DILocation(line: 496, column: 26, scope: !536, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 728, column: 16, scope: !1511)
!1516 = !DILocation(line: 496, column: 18, scope: !536, inlinedAt: !1515)
!1517 = !DILocation(line: 497, column: 15, scope: !1518, inlinedAt: !1515)
!1518 = distinct !DILexicalBlock(scope: !536, file: !1, line: 497, column: 9)
!1519 = !DILocation(line: 497, column: 9, scope: !536, inlinedAt: !1515)
!1520 = !DILocation(line: 498, column: 29, scope: !1518, inlinedAt: !1515)
!1521 = !{!1522, !962, i64 16}
!1522 = !{!"", !963, i64 0, !962, i64 8, !962, i64 16}
!1523 = !DILocation(line: 498, column: 9, scope: !1518, inlinedAt: !1515)
!1524 = !DILocation(line: 730, column: 10, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !446, file: !1, line: 730, column: 9)
!1526 = !DILocation(line: 730, column: 9, scope: !446)
!1527 = !DILocation(line: 733, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !446, file: !1, line: 733, column: 9)
!1529 = !DILocation(line: 733, column: 14, scope: !1528)
!1530 = !DILocation(line: 733, column: 9, scope: !446)
!1531 = !DILocation(line: 734, column: 16, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 733, column: 19)
!1533 = !DILocation(line: 734, column: 9, scope: !1532)
!1534 = !DILocation(line: 741, column: 13, scope: !446)
!1535 = !DILocation(line: 723, column: 15, scope: !446)
!1536 = !DILocation(line: 741, column: 11, scope: !446)
!1537 = !DILocation(line: 742, column: 15, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !446, file: !1, line: 742, column: 9)
!1539 = !DILocation(line: 742, column: 9, scope: !446)
!1540 = !DILocation(line: 744, column: 11, scope: !446)
!1541 = !DILocation(line: 720, column: 11, scope: !446)
!1542 = !DILocation(line: 747, column: 9, scope: !457)
!1543 = !DILocation(line: 748, column: 9, scope: !457)
!1544 = !DILocation(line: 748, column: 15, scope: !457)
!1545 = !DILocation(line: 752, column: 24, scope: !457)
!1546 = !DILocation(line: 752, column: 33, scope: !457)
!1547 = !DILocation(line: 752, column: 13, scope: !457)
!1548 = !DILocation(line: 721, column: 16, scope: !446)
!1549 = !DILocation(line: 754, column: 9, scope: !457)
!1550 = !DILocation(line: 758, column: 11, scope: !520)
!1551 = !DILocation(line: 758, column: 9, scope: !446)
!1552 = !DILocation(line: 759, column: 19, scope: !519)
!1553 = !DILocation(line: 759, column: 13, scope: !519)
!1554 = !DILocation(line: 760, column: 9, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 1)
!1556 = !DILocation(line: 760, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !522, file: !1, line: 760, column: 9)
!1558 = !DILocation(line: 760, column: 9, scope: !522)
!1559 = !DILocation(line: 760, column: 9, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 3)
!1561 = !DILocation(line: 761, column: 17, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !519, file: !1, line: 761, column: 13)
!1563 = !DILocation(line: 761, column: 13, scope: !519)
!1564 = !DILocation(line: 762, column: 13, scope: !1562)
!1565 = !DILocation(line: 763, column: 15, scope: !519)
!1566 = !DILocation(line: 764, column: 28, scope: !519)
!1567 = !DILocation(line: 764, column: 9, scope: !519)
!1568 = !DILocation(line: 765, column: 9, scope: !519)
!1569 = !DILocation(line: 768, column: 14, scope: !528)
!1570 = !DILocation(line: 768, column: 11, scope: !528)
!1571 = !DILocation(line: 768, column: 9, scope: !446)
!1572 = !DILocation(line: 769, column: 13, scope: !526)
!1573 = !DILocation(line: 769, column: 40, scope: !526)
!1574 = !DILocation(line: 769, column: 13, scope: !527)
!1575 = !DILocation(line: 770, column: 13, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1577 = !DILocation(line: 770, column: 13, scope: !532)
!1578 = !DILocation(line: 770, column: 13, scope: !524)
!1579 = !DILocation(line: 770, column: 13, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 2)
!1581 = !DILocation(line: 770, column: 13, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 4)
!1583 = !DILocation(line: 770, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !530, file: !1, line: 770, column: 13)
!1585 = !DILocation(line: 770, column: 13, scope: !530)
!1586 = !DILocation(line: 770, column: 13, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 6)
!1588 = !DILocation(line: 775, column: 25, scope: !446)
!1589 = !DILocation(line: 775, column: 5, scope: !446)
!1590 = !DILocation(line: 776, column: 1, scope: !446)
!1591 = !DILocation(line: 619, column: 24, scope: !549)
!1592 = !DILocation(line: 621, column: 5, scope: !549)
!1593 = !DILocation(line: 623, column: 5, scope: !549)
!1594 = !DILocation(line: 624, column: 16, scope: !549)
!1595 = !DILocation(line: 628, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !549, file: !1, line: 628, column: 9)
!1597 = !DILocation(line: 628, column: 18, scope: !1596)
!1598 = !DILocation(line: 628, column: 9, scope: !549)
!1599 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 629, column: 16, scope: !1596)
!1601 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1600)
!1602 = !DILocation(line: 629, column: 9, scope: !1596)
!1603 = !DILocation(line: 636, column: 11, scope: !549)
!1604 = !DILocation(line: 622, column: 14, scope: !549)
!1605 = !DILocation(line: 638, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !549, file: !1, line: 638, column: 9)
!1607 = !DILocation(line: 621, column: 17, scope: !549)
!1608 = !DILocation(line: 638, column: 9, scope: !1606)
!1609 = !DILocation(line: 517, column: 1, scope: !618, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 638, column: 9, scope: !1606)
!1611 = !DILocation(line: 519, column: 10, scope: !618, inlinedAt: !1610)
!1612 = !DILocation(line: 638, column: 30, scope: !1606)
!1613 = !DILocation(line: 639, column: 18, scope: !1606)
!1614 = !{!1388, !959, i64 48}
!1615 = !DILocation(line: 622, column: 19, scope: !549)
!1616 = !DILocation(line: 638, column: 9, scope: !549)
!1617 = !DILocation(line: 643, column: 13, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !549, file: !1, line: 643, column: 9)
!1619 = !DILocation(line: 643, column: 17, scope: !1618)
!1620 = !DILocation(line: 643, column: 24, scope: !1618)
!1621 = !DILocation(line: 643, column: 38, scope: !1618)
!1622 = !DILocation(line: 643, column: 31, scope: !1618)
!1623 = !DILocation(line: 643, column: 50, scope: !1618)
!1624 = !DILocation(line: 643, column: 56, scope: !1618)
!1625 = !DILocation(line: 648, column: 38, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 643, column: 74)
!1627 = !DILocation(line: 626, column: 12, scope: !549)
!1628 = !DILocation(line: 643, column: 9, scope: !549)
!1629 = !DILocation(line: 653, column: 14, scope: !549)
!1630 = !DILocation(line: 623, column: 15, scope: !549)
!1631 = !DILocation(line: 653, column: 12, scope: !549)
!1632 = !DILocation(line: 654, column: 16, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !549, file: !1, line: 654, column: 9)
!1634 = !DILocation(line: 654, column: 9, scope: !549)
!1635 = !DILocation(line: 681, column: 28, scope: !603)
!1636 = !DILocation(line: 668, column: 17, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !599, file: !1, line: 668, column: 17)
!1638 = !DILocation(line: 658, column: 24, scope: !600)
!1639 = !DILocation(line: 608, column: 21, scope: !1640, inlinedAt: !1641)
!1640 = distinct !DILexicalBlock(scope: !645, file: !1, line: 608, column: 9)
!1641 = distinct !DILocation(line: 659, column: 23, scope: !599)
!1642 = !DILocation(line: 609, column: 30, scope: !1640, inlinedAt: !1641)
!1643 = !DILocation(line: 611, column: 22, scope: !1640, inlinedAt: !1641)
!1644 = !DILocation(line: 608, column: 9, scope: !645, inlinedAt: !1641)
!1645 = !DILocation(line: 612, column: 16, scope: !1646, inlinedAt: !1641)
!1646 = distinct !DILexicalBlock(scope: !645, file: !1, line: 612, column: 9)
!1647 = !DILocation(line: 612, column: 9, scope: !645, inlinedAt: !1641)
!1648 = !DILocation(line: 615, column: 19, scope: !645, inlinedAt: !1641)
!1649 = !DILocation(line: 660, column: 42, scope: !598)
!1650 = !DILocation(line: 675, column: 21, scope: !603)
!1651 = !DILocation(line: 658, column: 13, scope: !601)
!1652 = !DILocation(line: 673, column: 9, scope: !603)
!1653 = !DILocation(line: 674, column: 9, scope: !603)
!1654 = !DILocation(line: 674, column: 15, scope: !603)
!1655 = !DILocation(line: 625, column: 16, scope: !549)
!1656 = !DILocation(line: 681, column: 24, scope: !603)
!1657 = !DILocation(line: 681, column: 54, scope: !603)
!1658 = !DILocation(line: 681, column: 13, scope: !603)
!1659 = !DILocation(line: 683, column: 9, scope: !603)
!1660 = !DILocation(line: 684, column: 15, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !601, file: !1, line: 684, column: 13)
!1662 = !DILocation(line: 684, column: 13, scope: !601)
!1663 = !DILocation(line: 686, column: 15, scope: !611)
!1664 = !DILocation(line: 686, column: 13, scope: !601)
!1665 = !DILocation(line: 687, column: 17, scope: !609)
!1666 = !DILocation(line: 687, column: 23, scope: !609)
!1667 = !DILocation(line: 687, column: 17, scope: !610)
!1668 = !DILocation(line: 688, column: 21, scope: !607)
!1669 = !DILocation(line: 688, column: 21, scope: !608)
!1670 = !DILocation(line: 600, column: 24, scope: !645, inlinedAt: !1641)
!1671 = !DILocation(line: 602, column: 12, scope: !645, inlinedAt: !1641)
!1672 = !DILocation(line: 661, column: 33, scope: !597)
!1673 = !DILocation(line: 661, column: 17, scope: !597)
!1674 = !DILocation(line: 664, column: 17, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!1676 = !DILocation(line: 664, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !596, file: !1, line: 664, column: 17)
!1678 = !DILocation(line: 664, column: 17, scope: !596)
!1679 = !DILocation(line: 664, column: 17, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1677, file: !1, discriminator: 3)
!1681 = !{!1010, !959, i64 16}
!1682 = !DILocation(line: 668, column: 42, scope: !1637)
!1683 = !DILocation(line: 668, column: 17, scope: !599)
!1684 = !DILocation(line: 669, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 669, column: 21)
!1686 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 668, column: 65)
!1687 = !DILocation(line: 669, column: 55, scope: !1685)
!1688 = !DILocation(line: 669, column: 21, scope: !1686)
!1689 = !DILocation(line: 689, column: 21, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 1)
!1691 = !DILocation(line: 689, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !605, file: !1, line: 689, column: 21)
!1693 = !DILocation(line: 689, column: 21, scope: !605)
!1694 = !DILocation(line: 689, column: 21, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1692, file: !1, discriminator: 3)
!1696 = !DILocation(line: 694, column: 28, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !610, file: !1, line: 694, column: 17)
!1698 = !DILocation(line: 694, column: 17, scope: !610)
!1699 = !DILocation(line: 696, column: 23, scope: !615)
!1700 = !DILocation(line: 697, column: 17, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!1702 = !DILocation(line: 697, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !613, file: !1, line: 697, column: 17)
!1704 = !DILocation(line: 696, column: 17, scope: !610)
!1705 = !DILocation(line: 697, column: 17, scope: !613)
!1706 = !DILocation(line: 697, column: 17, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1703, file: !1, discriminator: 3)
!1708 = !DILocation(line: 698, column: 17, scope: !614)
!1709 = !DILocation(line: 700, column: 13, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !617, file: !1, discriminator: 1)
!1711 = !DILocation(line: 700, column: 13, scope: !617)
!1712 = !DILocation(line: 700, column: 13, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !1, discriminator: 3)
!1714 = distinct !DILexicalBlock(scope: !617, file: !1, line: 700, column: 13)
!1715 = !DILocation(line: 701, column: 32, scope: !610)
!1716 = !DILocation(line: 701, column: 13, scope: !610)
!1717 = !DILocation(line: 702, column: 13, scope: !610)
!1718 = !DILocation(line: 704, column: 20, scope: !601)
!1719 = !DILocation(line: 657, column: 5, scope: !549)
!1720 = !DILocation(line: 708, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !549, file: !1, line: 708, column: 9)
!1722 = !DILocation(line: 708, column: 34, scope: !1721)
!1723 = !DILocation(line: 708, column: 9, scope: !549)
!1724 = !DILocation(line: 709, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 709, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 708, column: 48)
!1727 = !DILocation(line: 709, column: 50, scope: !1725)
!1728 = !DILocation(line: 712, column: 12, scope: !549)
!1729 = !DILocation(line: 709, column: 13, scope: !1726)
!1730 = !DILocation(line: 713, column: 1, scope: !549)
!1731 = !DILocation(line: 546, column: 25, scope: !652)
!1732 = !DILocation(line: 546, column: 41, scope: !652)
!1733 = !DILocation(line: 548, column: 5, scope: !652)
!1734 = !DILocation(line: 552, column: 15, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !652, file: !1, line: 552, column: 9)
!1736 = !DILocation(line: 552, column: 18, scope: !1735)
!1737 = !DILocation(line: 552, column: 9, scope: !652)
!1738 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 553, column: 16, scope: !1735)
!1740 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1739)
!1741 = !DILocation(line: 553, column: 9, scope: !1735)
!1742 = !DILocation(line: 554, column: 16, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !652, file: !1, line: 554, column: 9)
!1744 = !DILocation(line: 554, column: 10, scope: !1743)
!1745 = !DILocation(line: 554, column: 9, scope: !652)
!1746 = !DILocation(line: 496, column: 26, scope: !536, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 555, column: 16, scope: !1743)
!1748 = !DILocation(line: 496, column: 18, scope: !536, inlinedAt: !1747)
!1749 = !DILocation(line: 497, column: 15, scope: !1518, inlinedAt: !1747)
!1750 = !DILocation(line: 497, column: 9, scope: !536, inlinedAt: !1747)
!1751 = !DILocation(line: 498, column: 29, scope: !1518, inlinedAt: !1747)
!1752 = !DILocation(line: 498, column: 9, scope: !1518, inlinedAt: !1747)
!1753 = !DILocation(line: 548, column: 15, scope: !652)
!1754 = !DILocation(line: 557, column: 10, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !652, file: !1, line: 557, column: 9)
!1756 = !DILocation(line: 557, column: 9, scope: !652)
!1757 = !DILocation(line: 561, column: 20, scope: !662)
!1758 = !{!1759, !959, i64 16}
!1759 = !{!"bufferinfo", !962, i64 0, !962, i64 8, !959, i64 16, !959, i64 24, !963, i64 32, !963, i64 36, !962, i64 40, !962, i64 48, !962, i64 56, !962, i64 64, !962, i64 72}
!1760 = !DILocation(line: 549, column: 19, scope: !652)
!1761 = !DILocation(line: 562, column: 9, scope: !661)
!1762 = !DILocation(line: 563, column: 9, scope: !661)
!1763 = !DILocation(line: 563, column: 15, scope: !661)
!1764 = !DILocation(line: 569, column: 24, scope: !661)
!1765 = !DILocation(line: 569, column: 33, scope: !661)
!1766 = !{!1759, !962, i64 0}
!1767 = !DILocation(line: 569, column: 13, scope: !661)
!1768 = !DILocation(line: 549, column: 16, scope: !652)
!1769 = !DILocation(line: 571, column: 9, scope: !661)
!1770 = !DILocation(line: 574, column: 11, scope: !652)
!1771 = !DILocation(line: 550, column: 9, scope: !652)
!1772 = !DILocation(line: 575, column: 5, scope: !652)
!1773 = !DILocation(line: 576, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !652, file: !1, line: 576, column: 9)
!1775 = !DILocation(line: 576, column: 9, scope: !652)
!1776 = !DILocation(line: 577, column: 17, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 577, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !1, line: 576, column: 16)
!1779 = !DILocation(line: 577, column: 13, scope: !1778)
!1780 = !DILocation(line: 578, column: 13, scope: !1777)
!1781 = !DILocation(line: 579, column: 15, scope: !1778)
!1782 = !DILocation(line: 580, column: 28, scope: !1778)
!1783 = !DILocation(line: 580, column: 9, scope: !1778)
!1784 = !DILocation(line: 581, column: 9, scope: !1778)
!1785 = !DILocation(line: 584, column: 12, scope: !652)
!1786 = !DILocation(line: 584, column: 5, scope: !652)
!1787 = !DILocation(line: 585, column: 1, scope: !652)
!1788 = !DILocation(line: 779, column: 22, scope: !664)
!1789 = !DILocation(line: 779, column: 38, scope: !664)
!1790 = !DILocation(line: 781, column: 5, scope: !664)
!1791 = !DILocation(line: 785, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !664, file: !1, line: 785, column: 9)
!1793 = !DILocation(line: 785, column: 18, scope: !1792)
!1794 = !DILocation(line: 785, column: 9, scope: !664)
!1795 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 786, column: 16, scope: !1792)
!1797 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1796)
!1798 = !DILocation(line: 786, column: 9, scope: !1792)
!1799 = !DILocation(line: 787, column: 16, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !664, file: !1, line: 787, column: 9)
!1801 = !DILocation(line: 787, column: 10, scope: !1800)
!1802 = !DILocation(line: 787, column: 9, scope: !664)
!1803 = !DILocation(line: 496, column: 26, scope: !536, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 788, column: 16, scope: !1800)
!1805 = !DILocation(line: 496, column: 18, scope: !536, inlinedAt: !1804)
!1806 = !DILocation(line: 497, column: 15, scope: !1518, inlinedAt: !1804)
!1807 = !DILocation(line: 497, column: 9, scope: !536, inlinedAt: !1804)
!1808 = !DILocation(line: 498, column: 29, scope: !1518, inlinedAt: !1804)
!1809 = !DILocation(line: 498, column: 9, scope: !1518, inlinedAt: !1804)
!1810 = !DILocation(line: 781, column: 15, scope: !664)
!1811 = !DILocation(line: 790, column: 10, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !664, file: !1, line: 790, column: 9)
!1813 = !DILocation(line: 790, column: 9, scope: !664)
!1814 = !DILocation(line: 794, column: 9, scope: !673)
!1815 = !DILocation(line: 795, column: 9, scope: !673)
!1816 = !DILocation(line: 795, column: 15, scope: !673)
!1817 = !DILocation(line: 796, column: 20, scope: !673)
!1818 = !DILocation(line: 782, column: 19, scope: !664)
!1819 = !DILocation(line: 809, column: 25, scope: !673)
!1820 = !DILocation(line: 809, column: 34, scope: !673)
!1821 = !DILocation(line: 809, column: 13, scope: !673)
!1822 = !DILocation(line: 782, column: 16, scope: !664)
!1823 = !DILocation(line: 811, column: 9, scope: !673)
!1824 = !DILocation(line: 814, column: 11, scope: !664)
!1825 = !DILocation(line: 783, column: 9, scope: !664)
!1826 = !DILocation(line: 816, column: 5, scope: !664)
!1827 = !DILocation(line: 818, column: 11, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !664, file: !1, line: 818, column: 9)
!1829 = !DILocation(line: 818, column: 9, scope: !664)
!1830 = !DILocation(line: 819, column: 17, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 819, column: 13)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !1, line: 818, column: 16)
!1833 = !DILocation(line: 819, column: 13, scope: !1832)
!1834 = !DILocation(line: 820, column: 13, scope: !1831)
!1835 = !DILocation(line: 821, column: 15, scope: !1832)
!1836 = !DILocation(line: 822, column: 28, scope: !1832)
!1837 = !DILocation(line: 822, column: 9, scope: !1832)
!1838 = !DILocation(line: 823, column: 9, scope: !1832)
!1839 = !DILocation(line: 826, column: 12, scope: !664)
!1840 = !DILocation(line: 826, column: 5, scope: !664)
!1841 = !DILocation(line: 827, column: 1, scope: !664)
!1842 = !DILocation(line: 889, column: 21, scope: !676)
!1843 = !DILocation(line: 889, column: 37, scope: !676)
!1844 = !DILocation(line: 891, column: 5, scope: !676)
!1845 = !DILocation(line: 892, column: 5, scope: !676)
!1846 = !DILocation(line: 892, column: 9, scope: !676)
!1847 = !DILocation(line: 894, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !676, file: !1, line: 894, column: 9)
!1849 = !DILocation(line: 894, column: 18, scope: !1848)
!1850 = !DILocation(line: 894, column: 9, scope: !676)
!1851 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 895, column: 16, scope: !1848)
!1853 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1852)
!1854 = !DILocation(line: 895, column: 9, scope: !1848)
!1855 = !DILocation(line: 891, column: 15, scope: !676)
!1856 = !DILocation(line: 897, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !676, file: !1, line: 897, column: 9)
!1858 = !DILocation(line: 897, column: 9, scope: !676)
!1859 = !DILocation(line: 900, column: 33, scope: !676)
!1860 = !DILocation(line: 900, column: 37, scope: !676)
!1861 = !DILocation(line: 900, column: 45, scope: !676)
!1862 = !DILocation(line: 900, column: 12, scope: !676)
!1863 = !DILocation(line: 900, column: 5, scope: !676)
!1864 = !DILocation(line: 901, column: 1, scope: !676)
!1865 = !DILocation(line: 904, column: 21, scope: !695)
!1866 = !DILocation(line: 904, column: 37, scope: !695)
!1867 = !DILocation(line: 906, column: 15, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !695, file: !1, line: 906, column: 9)
!1869 = !DILocation(line: 906, column: 18, scope: !1868)
!1870 = !DILocation(line: 906, column: 9, scope: !695)
!1871 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 907, column: 16, scope: !1868)
!1873 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1872)
!1874 = !DILocation(line: 907, column: 9, scope: !1868)
!1875 = !DILocation(line: 833, column: 20, scope: !682, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 909, column: 12, scope: !695)
!1877 = !DILocation(line: 833, column: 34, scope: !682, inlinedAt: !1876)
!1878 = !DILocation(line: 833, column: 46, scope: !682, inlinedAt: !1876)
!1879 = !DILocation(line: 869, column: 9, scope: !692, inlinedAt: !1876)
!1880 = !DILocation(line: 873, column: 15, scope: !692, inlinedAt: !1876)
!1881 = !DILocation(line: 835, column: 19, scope: !682, inlinedAt: !1876)
!1882 = !DILocation(line: 875, column: 9, scope: !692, inlinedAt: !1876)
!1883 = !DILocation(line: 878, column: 13, scope: !1416, inlinedAt: !1876)
!1884 = !DILocation(line: 878, column: 9, scope: !682, inlinedAt: !1876)
!1885 = !DILocation(line: 879, column: 35, scope: !1416, inlinedAt: !1876)
!1886 = !DILocation(line: 879, column: 16, scope: !1416, inlinedAt: !1876)
!1887 = !DILocation(line: 879, column: 9, scope: !1416, inlinedAt: !1876)
!1888 = !DILocation(line: 884, column: 12, scope: !682, inlinedAt: !1876)
!1889 = !DILocation(line: 884, column: 5, scope: !682, inlinedAt: !1876)
!1890 = !DILocation(line: 910, column: 1, scope: !695)
!1891 = !DILocation(line: 914, column: 25, scope: !699)
!1892 = !DILocation(line: 914, column: 41, scope: !699)
!1893 = !DILocation(line: 916, column: 5, scope: !699)
!1894 = !DILocation(line: 916, column: 15, scope: !699)
!1895 = !DILocation(line: 923, column: 16, scope: !699)
!1896 = !DILocation(line: 921, column: 9, scope: !699)
!1897 = !DILocation(line: 924, column: 12, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !699, file: !1, line: 924, column: 9)
!1899 = !DILocation(line: 924, column: 9, scope: !699)
!1900 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 925, column: 16, scope: !1898)
!1902 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !1901)
!1903 = !DILocation(line: 925, column: 9, scope: !1898)
!1904 = !DILocation(line: 926, column: 16, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !699, file: !1, line: 926, column: 9)
!1906 = !DILocation(line: 926, column: 10, scope: !1905)
!1907 = !DILocation(line: 926, column: 9, scope: !699)
!1908 = !DILocation(line: 496, column: 26, scope: !536, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 927, column: 16, scope: !1905)
!1910 = !DILocation(line: 496, column: 18, scope: !536, inlinedAt: !1909)
!1911 = !DILocation(line: 497, column: 15, scope: !1518, inlinedAt: !1909)
!1912 = !DILocation(line: 497, column: 9, scope: !536, inlinedAt: !1909)
!1913 = !DILocation(line: 498, column: 29, scope: !1518, inlinedAt: !1909)
!1914 = !DILocation(line: 498, column: 9, scope: !1518, inlinedAt: !1909)
!1915 = !DILocation(line: 929, column: 10, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !699, file: !1, line: 929, column: 9)
!1917 = !DILocation(line: 929, column: 9, scope: !699)
!1918 = !DILocation(line: 932, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !699, file: !1, line: 932, column: 9)
!1920 = !DILocation(line: 932, column: 16, scope: !1919)
!1921 = !DILocation(line: 932, column: 37, scope: !1919)
!1922 = !DILocation(line: 932, column: 27, scope: !1919)
!1923 = !DILocation(line: 833, column: 20, scope: !682, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 934, column: 18, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 932, column: 46)
!1926 = !DILocation(line: 833, column: 34, scope: !682, inlinedAt: !1924)
!1927 = !DILocation(line: 833, column: 46, scope: !682, inlinedAt: !1924)
!1928 = !DILocation(line: 869, column: 9, scope: !692, inlinedAt: !1924)
!1929 = !DILocation(line: 873, column: 15, scope: !692, inlinedAt: !1924)
!1930 = !DILocation(line: 835, column: 19, scope: !682, inlinedAt: !1924)
!1931 = !DILocation(line: 875, column: 9, scope: !692, inlinedAt: !1924)
!1932 = !DILocation(line: 878, column: 13, scope: !1416, inlinedAt: !1924)
!1933 = !DILocation(line: 878, column: 9, scope: !682, inlinedAt: !1924)
!1934 = !DILocation(line: 879, column: 35, scope: !1416, inlinedAt: !1924)
!1935 = !DILocation(line: 879, column: 16, scope: !1416, inlinedAt: !1924)
!1936 = !DILocation(line: 879, column: 9, scope: !1416, inlinedAt: !1924)
!1937 = !DILocation(line: 884, column: 12, scope: !682, inlinedAt: !1924)
!1938 = !DILocation(line: 884, column: 5, scope: !682, inlinedAt: !1924)
!1939 = !DILocation(line: 934, column: 18, scope: !1925)
!1940 = !DILocation(line: 934, column: 16, scope: !1925)
!1941 = !DILocation(line: 935, column: 20, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1925, file: !1, line: 935, column: 13)
!1943 = !DILocation(line: 935, column: 13, scope: !1925)
!1944 = !DILocation(line: 939, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 938, column: 10)
!1946 = !DILocation(line: 991, column: 25, scope: !699)
!1947 = !DILocation(line: 991, column: 11, scope: !699)
!1948 = !DILocation(line: 918, column: 14, scope: !699)
!1949 = !DILocation(line: 993, column: 9, scope: !710)
!1950 = !DILocation(line: 993, column: 9, scope: !699)
!1951 = !DILocation(line: 994, column: 9, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 1)
!1953 = !DILocation(line: 994, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !708, file: !1, line: 994, column: 9)
!1955 = !DILocation(line: 994, column: 9, scope: !708)
!1956 = !DILocation(line: 994, column: 9, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1954, file: !1, discriminator: 3)
!1958 = !DILocation(line: 998, column: 5, scope: !712)
!1959 = !DILocation(line: 999, column: 5, scope: !712)
!1960 = !DILocation(line: 999, column: 11, scope: !712)
!1961 = !DILocation(line: 1000, column: 11, scope: !712)
!1962 = !DILocation(line: 920, column: 9, scope: !699)
!1963 = !DILocation(line: 1001, column: 5, scope: !712)
!1964 = !DILocation(line: 1005, column: 13, scope: !716)
!1965 = !DILocation(line: 1011, column: 12, scope: !699)
!1966 = !DILocation(line: 1005, column: 9, scope: !699)
!1967 = !DILocation(line: 1006, column: 9, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 1)
!1969 = !DILocation(line: 1006, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !714, file: !1, line: 1006, column: 9)
!1971 = !DILocation(line: 1006, column: 9, scope: !714)
!1972 = !DILocation(line: 1006, column: 9, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1970, file: !1, discriminator: 3)
!1974 = !DILocation(line: 1007, column: 28, scope: !715)
!1975 = !DILocation(line: 1007, column: 9, scope: !715)
!1976 = !DILocation(line: 1008, column: 9, scope: !715)
!1977 = !DILocation(line: 1012, column: 1, scope: !699)
!1978 = !DILocation(line: 127, column: 22, scope: !717)
!1979 = !DILocation(line: 130, column: 16, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !717, file: !1, line: 130, column: 9)
!1981 = !DILocation(line: 130, column: 10, scope: !1980)
!1982 = !DILocation(line: 130, column: 9, scope: !717)
!1983 = !DILocation(line: 131, column: 15, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 130, column: 25)
!1985 = !DILocation(line: 131, column: 18, scope: !1984)
!1986 = !DILocation(line: 132, column: 9, scope: !1984)
!1987 = !DILocation(line: 134, column: 9, scope: !722)
!1988 = !DILocation(line: 134, column: 9, scope: !717)
!1989 = !DILocation(line: 135, column: 49, scope: !721)
!1990 = !DILocation(line: 135, column: 23, scope: !721)
!1991 = !DILocation(line: 135, column: 19, scope: !721)
!1992 = !DILocation(line: 137, column: 13, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 1)
!1994 = !DILocation(line: 137, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !724, file: !1, line: 137, column: 13)
!1996 = !DILocation(line: 137, column: 13, scope: !724)
!1997 = !DILocation(line: 137, column: 13, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1995, file: !1, discriminator: 3)
!1999 = !DILocation(line: 99, column: 24, scope: !726, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 141, column: 13, scope: !717)
!2001 = !DILocation(line: 101, column: 9, scope: !726, inlinedAt: !2000)
!2002 = !DILocation(line: 102, column: 9, scope: !726, inlinedAt: !2000)
!2003 = !DILocation(line: 103, column: 15, scope: !733, inlinedAt: !2000)
!2004 = !DILocation(line: 103, column: 18, scope: !733, inlinedAt: !2000)
!2005 = !DILocation(line: 103, column: 9, scope: !726, inlinedAt: !2000)
!2006 = !DILocation(line: 104, column: 13, scope: !732, inlinedAt: !2000)
!2007 = !DILocation(line: 105, column: 18, scope: !732, inlinedAt: !2000)
!2008 = !DILocation(line: 108, column: 13, scope: !735, inlinedAt: !2000)
!2009 = !DILocation(line: 109, column: 19, scope: !735, inlinedAt: !2000)
!2010 = !DILocation(line: 110, column: 21, scope: !1164, inlinedAt: !2000)
!2011 = !DILocation(line: 110, column: 17, scope: !735, inlinedAt: !2000)
!2012 = !DILocation(line: 112, column: 13, scope: !735, inlinedAt: !2000)
!2013 = !DILocation(line: 141, column: 13, scope: !717)
!2014 = !DILocation(line: 111, column: 30, scope: !1164, inlinedAt: !2000)
!2015 = !DILocation(line: 119, column: 15, scope: !1170, inlinedAt: !2000)
!2016 = !DILocation(line: 120, column: 28, scope: !1170, inlinedAt: !2000)
!2017 = !DILocation(line: 120, column: 9, scope: !1170, inlinedAt: !2000)
!2018 = !DILocation(line: 141, column: 11, scope: !717)
!2019 = !DILocation(line: 142, column: 9, scope: !717)
!2020 = !DILocation(line: 141, column: 5, scope: !717)
!2021 = !DILocation(line: 145, column: 12, scope: !717)
!2022 = !DILocation(line: 145, column: 5, scope: !717)
!2023 = !DILocation(line: 147, column: 1, scope: !717)
!2024 = !DILocation(line: 528, column: 25, scope: !738)
!2025 = !DILocation(line: 530, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !738, file: !1, line: 530, column: 9)
!2027 = !DILocation(line: 530, column: 18, scope: !2026)
!2028 = !DILocation(line: 530, column: 9, scope: !738)
!2029 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 531, column: 16, scope: !2026)
!2031 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !2030)
!2032 = !DILocation(line: 531, column: 9, scope: !2026)
!2033 = !DILocation(line: 532, column: 15, scope: !743)
!2034 = !DILocation(line: 532, column: 24, scope: !743)
!2035 = !DILocation(line: 532, column: 9, scope: !738)
!2036 = !DILocation(line: 833, column: 20, scope: !682, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 533, column: 25, scope: !742)
!2038 = !DILocation(line: 833, column: 34, scope: !682, inlinedAt: !2037)
!2039 = !DILocation(line: 833, column: 46, scope: !682, inlinedAt: !2037)
!2040 = !DILocation(line: 869, column: 9, scope: !692, inlinedAt: !2037)
!2041 = !DILocation(line: 873, column: 15, scope: !692, inlinedAt: !2037)
!2042 = !DILocation(line: 835, column: 19, scope: !682, inlinedAt: !2037)
!2043 = !DILocation(line: 875, column: 9, scope: !692, inlinedAt: !2037)
!2044 = !DILocation(line: 878, column: 13, scope: !1416, inlinedAt: !2037)
!2045 = !DILocation(line: 878, column: 9, scope: !682, inlinedAt: !2037)
!2046 = !DILocation(line: 879, column: 35, scope: !1416, inlinedAt: !2037)
!2047 = !DILocation(line: 879, column: 16, scope: !1416, inlinedAt: !2037)
!2048 = !DILocation(line: 879, column: 9, scope: !1416, inlinedAt: !2037)
!2049 = !DILocation(line: 884, column: 12, scope: !682, inlinedAt: !2037)
!2050 = !DILocation(line: 884, column: 5, scope: !682, inlinedAt: !2037)
!2051 = !DILocation(line: 533, column: 25, scope: !742)
!2052 = !DILocation(line: 533, column: 19, scope: !742)
!2053 = !DILocation(line: 534, column: 17, scope: !747)
!2054 = !DILocation(line: 534, column: 13, scope: !742)
!2055 = !DILocation(line: 535, column: 13, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !747, file: !1, line: 534, column: 26)
!2057 = !DILocation(line: 536, column: 28, scope: !2056)
!2058 = !DILocation(line: 537, column: 9, scope: !2056)
!2059 = !DILocation(line: 538, column: 13, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 1)
!2061 = !DILocation(line: 538, column: 13, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !745, file: !1, line: 538, column: 13)
!2063 = !DILocation(line: 538, column: 13, scope: !745)
!2064 = !DILocation(line: 538, column: 13, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2062, file: !1, discriminator: 3)
!2066 = !DILocation(line: 539, column: 28, scope: !746)
!2067 = !DILocation(line: 541, column: 5, scope: !742)
!2068 = !DILocation(line: 542, column: 41, scope: !738)
!2069 = !DILocation(line: 542, column: 28, scope: !738)
!2070 = !DILocation(line: 542, column: 12, scope: !738)
!2071 = !DILocation(line: 542, column: 5, scope: !738)
!2072 = !DILocation(line: 543, column: 1, scope: !738)
!2073 = !DILocation(line: 512, column: 25, scope: !748)
!2074 = !DILocation(line: 514, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !748, file: !1, line: 514, column: 9)
!2076 = !DILocation(line: 514, column: 18, scope: !2075)
!2077 = !DILocation(line: 514, column: 9, scope: !748)
!2078 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 515, column: 16, scope: !2075)
!2080 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !2079)
!2081 = !DILocation(line: 515, column: 9, scope: !2075)
!2082 = !DILocation(line: 516, column: 41, scope: !748)
!2083 = !DILocation(line: 516, column: 28, scope: !748)
!2084 = !DILocation(line: 516, column: 12, scope: !748)
!2085 = !DILocation(line: 516, column: 5, scope: !748)
!2086 = !DILocation(line: 517, column: 1, scope: !748)
!2087 = !DILocation(line: 520, column: 25, scope: !751)
!2088 = !DILocation(line: 522, column: 15, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !751, file: !1, line: 522, column: 9)
!2090 = !DILocation(line: 522, column: 18, scope: !2089)
!2091 = !DILocation(line: 522, column: 9, scope: !751)
!2092 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 523, column: 16, scope: !2089)
!2094 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !2093)
!2095 = !DILocation(line: 523, column: 9, scope: !2089)
!2096 = !DILocation(line: 524, column: 41, scope: !751)
!2097 = !DILocation(line: 524, column: 28, scope: !751)
!2098 = !DILocation(line: 524, column: 12, scope: !751)
!2099 = !DILocation(line: 524, column: 5, scope: !751)
!2100 = !DILocation(line: 525, column: 1, scope: !751)
!2101 = !DILocation(line: 504, column: 23, scope: !754)
!2102 = !DILocation(line: 506, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !754, file: !1, line: 506, column: 9)
!2104 = !DILocation(line: 506, column: 18, scope: !2103)
!2105 = !DILocation(line: 506, column: 9, scope: !754)
!2106 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 507, column: 16, scope: !2103)
!2108 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !2107)
!2109 = !DILocation(line: 507, column: 9, scope: !2103)
!2110 = !DILocation(line: 508, column: 28, scope: !754)
!2111 = !DILocation(line: 508, column: 12, scope: !754)
!2112 = !DILocation(line: 508, column: 5, scope: !754)
!2113 = !DILocation(line: 509, column: 1, scope: !754)
!2114 = !DILocation(line: 1066, column: 23, scope: !757)
!2115 = !DILocation(line: 1070, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !757, file: !1, line: 1070, column: 9)
!2117 = !DILocation(line: 1070, column: 18, scope: !2116)
!2118 = !DILocation(line: 1070, column: 9, scope: !757)
!2119 = !DILocation(line: 489, column: 21, scope: !533, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 1071, column: 16, scope: !2116)
!2121 = !DILocation(line: 489, column: 5, scope: !533, inlinedAt: !2120)
!2122 = !DILocation(line: 1071, column: 9, scope: !2116)
!2123 = !DILocation(line: 1072, column: 5, scope: !762)
!2124 = !DILocation(line: 1073, column: 24, scope: !762)
!2125 = !DILocation(line: 1073, column: 11, scope: !762)
!2126 = !DILocation(line: 1068, column: 10, scope: !757)
!2127 = !DILocation(line: 1074, column: 5, scope: !762)
!2128 = !DILocation(line: 1075, column: 12, scope: !757)
!2129 = !DILocation(line: 1075, column: 5, scope: !757)
!2130 = !DILocation(line: 1076, column: 1, scope: !757)
!2131 = !DILocation(line: 76, column: 29, scope: !763)
!2132 = !DILocation(line: 76, column: 45, scope: !763)
!2133 = !DILocation(line: 78, column: 15, scope: !769)
!2134 = !DILocation(line: 78, column: 18, scope: !769)
!2135 = !DILocation(line: 78, column: 23, scope: !769)
!2136 = !DILocation(line: 78, column: 32, scope: !769)
!2137 = !DILocation(line: 78, column: 26, scope: !769)
!2138 = !DILocation(line: 78, column: 9, scope: !763)
!2139 = !DILocation(line: 79, column: 9, scope: !768)
!2140 = !DILocation(line: 79, column: 19, scope: !768)
!2141 = !DILocation(line: 79, column: 25, scope: !768)
!2142 = !DILocation(line: 79, column: 31, scope: !768)
!2143 = !DILocation(line: 80, column: 9, scope: !768)
!2144 = !DILocation(line: 81, column: 30, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !768, file: !1, line: 81, column: 13)
!2146 = !DILocation(line: 81, column: 13, scope: !2145)
!2147 = !DILocation(line: 81, column: 13, scope: !768)
!2148 = !DILocation(line: 84, column: 40, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 84, column: 17)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 82, column: 59)
!2151 = !DILocation(line: 84, column: 17, scope: !2149)
!2152 = !DILocation(line: 84, column: 17, scope: !2150)
!2153 = !DILocation(line: 85, column: 39, scope: !2149)
!2154 = !DILocation(line: 85, column: 17, scope: !2149)
!2155 = !DILocation(line: 87, column: 23, scope: !768)
!2156 = !DILocation(line: 87, column: 28, scope: !768)
!2157 = !DILocation(line: 87, column: 33, scope: !768)
!2158 = !DILocation(line: 87, column: 9, scope: !768)
!2159 = !DILocation(line: 88, column: 5, scope: !769)
!2160 = !DILocation(line: 88, column: 5, scope: !768)
!2161 = !DILocation(line: 89, column: 5, scope: !763)
!2162 = !DILocation(line: 1079, column: 25, scope: !772)
!2163 = !DILocation(line: 1081, column: 18, scope: !772)
!2164 = !DILocation(line: 1082, column: 50, scope: !772)
!2165 = !DILocation(line: 1082, column: 65, scope: !772)
!2166 = !{!1009, !962, i64 24}
!2167 = !DILocation(line: 1081, column: 5, scope: !772)
!2168 = !DILocation(line: 1083, column: 5, scope: !772)
!2169 = !DILocation(line: 833, column: 20, scope: !682)
!2170 = !DILocation(line: 833, column: 34, scope: !682)
!2171 = !DILocation(line: 833, column: 46, scope: !682)
!2172 = !DILocation(line: 852, column: 16, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !682, file: !1, line: 852, column: 9)
!2174 = !DILocation(line: 852, column: 9, scope: !682)
!2175 = !DILocation(line: 855, column: 12, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 855, column: 12)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 854, column: 10)
!2178 = !DILocation(line: 855, column: 12, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2176, file: !1, discriminator: 1)
!2180 = !DILocation(line: 855, column: 12, scope: !2177)
!2181 = !DILocation(line: 856, column: 29, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 855, column: 35)
!2183 = !DILocation(line: 856, column: 13, scope: !2182)
!2184 = !DILocation(line: 857, column: 13, scope: !2182)
!2185 = !DILocation(line: 862, column: 15, scope: !2177)
!2186 = !DILocation(line: 835, column: 14, scope: !682)
!2187 = !DILocation(line: 864, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 864, column: 13)
!2189 = !DILocation(line: 864, column: 13, scope: !2177)
!2190 = !DILocation(line: 869, column: 9, scope: !692)
!2191 = !DILocation(line: 873, column: 15, scope: !692)
!2192 = !DILocation(line: 835, column: 19, scope: !682)
!2193 = !DILocation(line: 875, column: 9, scope: !692)
!2194 = !DILocation(line: 878, column: 13, scope: !1416)
!2195 = !DILocation(line: 878, column: 9, scope: !682)
!2196 = !DILocation(line: 879, column: 35, scope: !1416)
!2197 = !DILocation(line: 879, column: 16, scope: !1416)
!2198 = !DILocation(line: 879, column: 9, scope: !1416)
!2199 = !DILocation(line: 884, column: 12, scope: !682)
!2200 = !DILocation(line: 884, column: 5, scope: !682)
!2201 = !DILocation(line: 886, column: 1, scope: !682)
!2202 = !DILocation(line: 1193, column: 20, scope: !775)
!2203 = !DILocation(line: 1193, column: 32, scope: !775)
!2204 = !DILocation(line: 1195, column: 41, scope: !775)
!2205 = !DILocation(line: 1195, column: 44, scope: !775)
!2206 = !DILocation(line: 1195, column: 28, scope: !775)
!2207 = !DILocation(line: 1195, column: 12, scope: !775)
!2208 = !DILocation(line: 1195, column: 5, scope: !775)
!2209 = !DILocation(line: 1199, column: 21, scope: !781)
!2210 = !DILocation(line: 1199, column: 33, scope: !781)
!2211 = !DILocation(line: 1201, column: 41, scope: !781)
!2212 = !DILocation(line: 1201, column: 28, scope: !781)
!2213 = !DILocation(line: 1201, column: 12, scope: !781)
!2214 = !DILocation(line: 1201, column: 5, scope: !781)
!2215 = !DILocation(line: 1205, column: 18, scope: !785)
!2216 = !DILocation(line: 1205, column: 30, scope: !785)
!2217 = !DILocation(line: 1018, column: 15, scope: !1039, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 1207, column: 33, scope: !785)
!2219 = !DILocation(line: 1018, column: 9, scope: !1039, inlinedAt: !2218)
!2220 = !DILocation(line: 1018, column: 9, scope: !419, inlinedAt: !2218)
!2221 = !DILocation(line: 1019, column: 19, scope: !1044, inlinedAt: !2218)
!2222 = !DILocation(line: 1019, column: 13, scope: !1044, inlinedAt: !2218)
!2223 = !DILocation(line: 1022, column: 13, scope: !1044, inlinedAt: !2218)
!2224 = !DILocation(line: 1024, column: 15, scope: !1049, inlinedAt: !2218)
!2225 = !DILocation(line: 1024, column: 9, scope: !1049, inlinedAt: !2218)
!2226 = !DILocation(line: 1025, column: 19, scope: !1052, inlinedAt: !2218)
!2227 = !DILocation(line: 1025, column: 13, scope: !1052, inlinedAt: !2218)
!2228 = !DILocation(line: 1024, column: 9, scope: !419, inlinedAt: !2218)
!2229 = !DILocation(line: 1026, column: 13, scope: !1052, inlinedAt: !2218)
!2230 = !DILocation(line: 1030, column: 14, scope: !1049, inlinedAt: !2218)
!2231 = !DILocation(line: 1031, column: 19, scope: !1059, inlinedAt: !2218)
!2232 = !DILocation(line: 1031, column: 13, scope: !1059, inlinedAt: !2218)
!2233 = !DILocation(line: 1034, column: 13, scope: !1059, inlinedAt: !2218)
!2234 = !DILocation(line: 1207, column: 33, scope: !785)
!2235 = !DILocation(line: 1207, column: 12, scope: !785)
!2236 = !DILocation(line: 1207, column: 5, scope: !785)
