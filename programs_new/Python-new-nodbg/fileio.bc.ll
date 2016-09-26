; ModuleID = './fileio.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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

; Function Attrs: nounwind uwtable
define i32 @_PyFileIO_closed(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.fileio*
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @fileio_dealloc(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 3
  store i8 1, i8* %finalizing, align 1
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %2 = bitcast %struct.fileio* %1 to %struct._object*
  %call = call i32 @_PyIOBase_finalize(%struct._object* %2)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %4 = bitcast %struct.fileio* %3 to %union._gc_head*
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
  %17 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.fileio, %struct.fileio* %17, i32 0, i32 4
  %18 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp17 = icmp ne %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  %19 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %20 = bitcast %struct.fileio* %19 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %21 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %21, i32 0, i32 5
  %22 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %22, %struct._object** %_py_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp21 = icmp ne %struct._object* %23, null
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %do.body.20
  %24 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict23 = getelementptr inbounds %struct.fileio, %struct.fileio* %24, i32 0, i32 5
  store %struct._object* null, %struct._object** %dict23, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.22
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.27

if.else:                                          ; preds = %do.body.24
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.20
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %32 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %33 = bitcast %struct.fileio* %32 to %struct._object*
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 38
  %35 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %36 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %37 = bitcast %struct.fileio* %36 to %struct._object*
  %38 = bitcast %struct._object* %37 to i8*
  call void %35(i8* %38)
  br label %return

return:                                           ; preds = %do.end.30, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_repr(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %nameobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %3 = bitcast %struct.fileio* %2 to %struct._object*
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %3, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call1, %struct._object** %nameobj, align 8
  %4 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else.10

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  call void @PyErr_Clear()
  br label %if.end.6

if.else:                                          ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.5
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd7 = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 1
  %7 = load i32, i32* %fd7, align 4
  %8 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call8 = call i8* @mode_string(%struct.fileio* %8)
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %7, i8* %call8)
  store %struct._object* %call9, %struct._object** %res, align 8
  br label %if.end.17

if.else.10:                                       ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %nameobj, align 8
  %10 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call11 = call i8* @mode_string(%struct.fileio* %10)
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), %struct._object* %9, i8* %call11)
  store %struct._object* %call12, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.10
  %11 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.end.6
  %18 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.else, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fileio_traverse(%struct.fileio* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 5
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
define internal i32 @fileio_clear(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 5
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

; Function Attrs: nounwind uwtable
define internal i32 @fileio_init(%struct._object* %oself, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %oself.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.fileio*, align 8
  %name = alloca i8*, align 8
  %nameobj = alloca %struct._object*, align 8
  %stringobj = alloca %struct._object*, align 8
  %opener = alloca %struct._object*, align 8
  %mode = alloca i8*, align 8
  %s = alloca i8*, align 8
  %ret = alloca i32, align 4
  %rwa = alloca i32, align 4
  %plus = alloca i32, align 4
  %flags = alloca i32, align 4
  %fd = alloca i32, align 4
  %closefd = alloca i32, align 4
  %fd_is_own = alloca i32, align 4
  %atomic_flag_works = alloca i32*, align 8
  %_save = alloca %struct._ts*, align 8
  %fdobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %pos = alloca %struct._object*, align 8
  %_py_decref_tmp216 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp243 = alloca %struct._object*, align 8
  store %struct._object* %oself, %struct._object** %oself.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %oself.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.fileio*
  store %struct.fileio* %1, %struct.fileio** %self, align 8
  store i8* null, i8** %name, align 8
  store %struct._object* null, %struct._object** %stringobj, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %opener, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8** %mode, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %rwa, align 4
  store i32 0, i32* %plus, align 4
  store i32 0, i32* %flags, align 4
  store i32 -1, i32* %fd, align 4
  store i32 1, i32* %closefd, align 4
  store i32 0, i32* %fd_is_own, align 4
  store i32* @_Py_open_cloexec_works, i32** %atomic_flag_works, align 8
  %2 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load %struct.fileio*, %struct.fileio** %self, align 8
  %closefd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 2
  %bf.load = load i8, i8* %closefd2, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.fileio*, %struct.fileio** %self, align 8
  %call = call i32 @internal_close(%struct.fileio* %5)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %6 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd6 = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 1
  store i32 -1, i32* %fd6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call9 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @fileio_init.kwlist, i32 0, i32 0), %struct._object** %nameobj, i8** %mode, i32* %closefd, %struct._object** %opener)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %nameobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp13 = icmp eq %struct._typeobject* %10, @PyFloat_Type
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %11 = load %struct._object*, %struct._object** %nameobj, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %call15 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyFloat_Type)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %14 = load %struct._object*, %struct._object** %nameobj, align 8
  %call19 = call i32 @_PyLong_AsInt(%struct._object* %14)
  store i32 %call19, i32* %fd, align 4
  %15 = load i32, i32* %fd, align 4
  %cmp20 = icmp slt i32 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.18
  %call22 = call %struct._object* @PyErr_Occurred()
  %tobool23 = icmp ne %struct._object* %call22, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.21
  call void @PyErr_Clear()
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %17 = load i32, i32* %fd, align 4
  %cmp27 = icmp slt i32 %17, 0
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.26
  %18 = load %struct._object*, %struct._object** %nameobj, align 8
  %19 = bitcast %struct._object** %stringobj to i8*
  %call29 = call i32 @PyUnicode_FSConverter(%struct._object* %18, i8* %19)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.28
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.28
  %20 = load %struct._object*, %struct._object** %stringobj, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %21, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %name, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.26
  %22 = load i8*, i8** %mode, align 8
  store i8* %22, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.33
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %tobool34 = icmp ne i8 %24, 0
  br i1 %tobool34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
    i32 114, label %sw.bb.43
    i32 119, label %sw.bb.50
    i32 97, label %sw.bb.59
    i32 98, label %sw.bb.71
    i32 43, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %while.body
  %27 = load i32, i32* %rwa, align 4
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb
  br label %bad_mode

bad_mode:                                         ; preds = %if.then.86, %if.then.74, %if.then.61, %if.then.52, %if.then.45, %if.then.36
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.54, i32 0, i32 0))
  br label %error

if.end.37:                                        ; preds = %sw.bb
  store i32 1, i32* %rwa, align 4
  %29 = load %struct.fileio*, %struct.fileio** %self, align 8
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %29, i32 0, i32 2
  %bf.load38 = load i8, i8* %created, align 4
  %bf.clear39 = and i8 %bf.load38, -2
  %bf.set = or i8 %bf.clear39, 1
  store i8 %bf.set, i8* %created, align 4
  %30 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %30, i32 0, i32 2
  %bf.load40 = load i8, i8* %writable, align 4
  %bf.clear41 = and i8 %bf.load40, -5
  %bf.set42 = or i8 %bf.clear41, 4
  store i8 %bf.set42, i8* %writable, align 4
  %31 = load i32, i32* %flags, align 4
  %or = or i32 %31, 192
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %32 = load i32, i32* %rwa, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.43
  br label %bad_mode

if.end.46:                                        ; preds = %sw.bb.43
  store i32 1, i32* %rwa, align 4
  %33 = load %struct.fileio*, %struct.fileio** %self, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %33, i32 0, i32 2
  %bf.load47 = load i8, i8* %readable, align 4
  %bf.clear48 = and i8 %bf.load47, -3
  %bf.set49 = or i8 %bf.clear48, 2
  store i8 %bf.set49, i8* %readable, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %while.body
  %34 = load i32, i32* %rwa, align 4
  %tobool51 = icmp ne i32 %34, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.bb.50
  br label %bad_mode

if.end.53:                                        ; preds = %sw.bb.50
  store i32 1, i32* %rwa, align 4
  %35 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable54 = getelementptr inbounds %struct.fileio, %struct.fileio* %35, i32 0, i32 2
  %bf.load55 = load i8, i8* %writable54, align 4
  %bf.clear56 = and i8 %bf.load55, -5
  %bf.set57 = or i8 %bf.clear56, 4
  store i8 %bf.set57, i8* %writable54, align 4
  %36 = load i32, i32* %flags, align 4
  %or58 = or i32 %36, 576
  store i32 %or58, i32* %flags, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %while.body
  %37 = load i32, i32* %rwa, align 4
  %tobool60 = icmp ne i32 %37, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.bb.59
  br label %bad_mode

if.end.62:                                        ; preds = %sw.bb.59
  store i32 1, i32* %rwa, align 4
  %38 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable63 = getelementptr inbounds %struct.fileio, %struct.fileio* %38, i32 0, i32 2
  %bf.load64 = load i8, i8* %writable63, align 4
  %bf.clear65 = and i8 %bf.load64, -5
  %bf.set66 = or i8 %bf.clear65, 4
  store i8 %bf.set66, i8* %writable63, align 4
  %39 = load %struct.fileio*, %struct.fileio** %self, align 8
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %39, i32 0, i32 2
  %bf.load67 = load i8, i8* %appending, align 4
  %bf.clear68 = and i8 %bf.load67, -9
  %bf.set69 = or i8 %bf.clear68, 8
  store i8 %bf.set69, i8* %appending, align 4
  %40 = load i32, i32* %flags, align 4
  %or70 = or i32 %40, 1088
  store i32 %or70, i32* %flags, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb.72:                                         ; preds = %while.body
  %41 = load i32, i32* %plus, align 4
  %tobool73 = icmp ne i32 %41, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %sw.bb.72
  br label %bad_mode

if.end.75:                                        ; preds = %sw.bb.72
  %42 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable76 = getelementptr inbounds %struct.fileio, %struct.fileio* %42, i32 0, i32 2
  %bf.load77 = load i8, i8* %writable76, align 4
  %bf.clear78 = and i8 %bf.load77, -5
  %bf.set79 = or i8 %bf.clear78, 4
  store i8 %bf.set79, i8* %writable76, align 4
  %43 = load %struct.fileio*, %struct.fileio** %self, align 8
  %readable80 = getelementptr inbounds %struct.fileio, %struct.fileio* %43, i32 0, i32 2
  %bf.load81 = load i8, i8* %readable80, align 4
  %bf.clear82 = and i8 %bf.load81, -3
  %bf.set83 = or i8 %bf.clear82, 2
  store i8 %bf.set83, i8* %readable80, align 4
  store i32 1, i32* %plus, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %44 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %45 = load i8*, i8** %mode, align 8
  %call84 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), i8* %45)
  br label %error

sw.epilog:                                        ; preds = %if.end.75, %sw.bb.71, %if.end.62, %if.end.53, %if.end.46, %if.end.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i32, i32* %rwa, align 4
  %tobool85 = icmp ne i32 %46, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %while.end
  br label %bad_mode

if.end.87:                                        ; preds = %while.end
  %47 = load %struct.fileio*, %struct.fileio** %self, align 8
  %readable88 = getelementptr inbounds %struct.fileio, %struct.fileio* %47, i32 0, i32 2
  %bf.load89 = load i8, i8* %readable88, align 4
  %bf.lshr90 = lshr i8 %bf.load89, 1
  %bf.clear91 = and i8 %bf.lshr90, 1
  %bf.cast92 = zext i8 %bf.clear91 to i32
  %tobool93 = icmp ne i32 %bf.cast92, 0
  br i1 %tobool93, label %land.lhs.true, label %if.else.102

land.lhs.true:                                    ; preds = %if.end.87
  %48 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable94 = getelementptr inbounds %struct.fileio, %struct.fileio* %48, i32 0, i32 2
  %bf.load95 = load i8, i8* %writable94, align 4
  %bf.lshr96 = lshr i8 %bf.load95, 2
  %bf.clear97 = and i8 %bf.lshr96, 1
  %bf.cast98 = zext i8 %bf.clear97 to i32
  %tobool99 = icmp ne i32 %bf.cast98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %land.lhs.true
  %49 = load i32, i32* %flags, align 4
  %or101 = or i32 %49, 2
  store i32 %or101, i32* %flags, align 4
  br label %if.end.113

if.else.102:                                      ; preds = %land.lhs.true, %if.end.87
  %50 = load %struct.fileio*, %struct.fileio** %self, align 8
  %readable103 = getelementptr inbounds %struct.fileio, %struct.fileio* %50, i32 0, i32 2
  %bf.load104 = load i8, i8* %readable103, align 4
  %bf.lshr105 = lshr i8 %bf.load104, 1
  %bf.clear106 = and i8 %bf.lshr105, 1
  %bf.cast107 = zext i8 %bf.clear106 to i32
  %tobool108 = icmp ne i32 %bf.cast107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %if.else.102
  %51 = load i32, i32* %flags, align 4
  store i32 %51, i32* %flags, align 4
  br label %if.end.112

if.else.110:                                      ; preds = %if.else.102
  %52 = load i32, i32* %flags, align 4
  %or111 = or i32 %52, 1
  store i32 %or111, i32* %flags, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.109
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.100
  %53 = load i32, i32* %flags, align 4
  %or114 = or i32 %53, 524288
  store i32 %or114, i32* %flags, align 4
  %54 = load i32, i32* %fd, align 4
  %cmp115 = icmp sge i32 %54, 0
  br i1 %cmp115, label %if.then.117, label %if.else.127

if.then.117:                                      ; preds = %if.end.113
  %55 = load i32, i32* %fd, align 4
  %call118 = call i32 @check_fd(i32 %55)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.117
  br label %error

if.end.121:                                       ; preds = %if.then.117
  %56 = load i32, i32* %fd, align 4
  %57 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd122 = getelementptr inbounds %struct.fileio, %struct.fileio* %57, i32 0, i32 1
  store i32 %56, i32* %fd122, align 4
  %58 = load i32, i32* %closefd, align 4
  %59 = load %struct.fileio*, %struct.fileio** %self, align 8
  %closefd123 = getelementptr inbounds %struct.fileio, %struct.fileio* %59, i32 0, i32 2
  %60 = trunc i32 %58 to i8
  %bf.load124 = load i8, i8* %closefd123, align 4
  %bf.value = and i8 %60, 1
  %bf.shl = shl i8 %bf.value, 6
  %bf.clear125 = and i8 %bf.load124, -65
  %bf.set126 = or i8 %bf.clear125, %bf.shl
  store i8 %bf.set126, i8* %closefd123, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end.191

if.else.127:                                      ; preds = %if.end.113
  %61 = load %struct.fileio*, %struct.fileio** %self, align 8
  %closefd128 = getelementptr inbounds %struct.fileio, %struct.fileio* %61, i32 0, i32 2
  %bf.load129 = load i8, i8* %closefd128, align 4
  %bf.clear130 = and i8 %bf.load129, -65
  %bf.set131 = or i8 %bf.clear130, 64
  store i8 %bf.set131, i8* %closefd128, align 4
  %62 = load i32, i32* %closefd, align 4
  %tobool132 = icmp ne i32 %62, 0
  br i1 %tobool132, label %if.end.134, label %if.then.133

if.then.133:                                      ; preds = %if.else.127
  %63 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0))
  br label %error

if.end.134:                                       ; preds = %if.else.127
  %call135 = call i32* @__errno_location() #4
  store i32 0, i32* %call135, align 4
  %64 = load %struct._object*, %struct._object** %opener, align 8
  %cmp136 = icmp eq %struct._object* %64, @_Py_NoneStruct
  br i1 %cmp136, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.end.134
  %call139 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call139, %struct._ts** %_save, align 8
  %65 = load i8*, i8** %name, align 8
  %66 = load i32, i32* %flags, align 4
  %call140 = call i32 (i8*, i32, ...) @open64(i8* %65, i32 %66, i32 438)
  %67 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd141 = getelementptr inbounds %struct.fileio, %struct.fileio* %67, i32 0, i32 1
  store i32 %call140, i32* %fd141, align 4
  %68 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %68)
  br label %if.end.178

if.else.142:                                      ; preds = %if.end.134
  store i32* null, i32** %atomic_flag_works, align 8
  %69 = load %struct._object*, %struct._object** %opener, align 8
  %70 = load %struct._object*, %struct._object** %nameobj, align 8
  %71 = load i32, i32* %flags, align 4
  %call143 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), %struct._object* %70, i32 %71)
  store %struct._object* %call143, %struct._object** %fdobj, align 8
  %72 = load %struct._object*, %struct._object** %fdobj, align 8
  %cmp144 = icmp eq %struct._object* %72, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.else.142
  br label %error

if.end.147:                                       ; preds = %if.else.142
  %73 = load %struct._object*, %struct._object** %fdobj, align 8
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 19
  %75 = load i64, i64* %tp_flags, align 8
  %and = and i64 %75, 16777216
  %cmp149 = icmp ne i64 %and, 0
  br i1 %cmp149, label %if.end.158, label %if.then.151

if.then.151:                                      ; preds = %if.end.147
  br label %do.body

do.body:                                          ; preds = %if.then.151
  %76 = load %struct._object*, %struct._object** %fdobj, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %78, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp152 = icmp ne i64 %dec, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body
  br label %if.end.157

if.else.155:                                      ; preds = %do.body
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %81(%struct._object* %82)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end

do.end:                                           ; preds = %if.end.157
  %83 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0))
  br label %error

if.end.158:                                       ; preds = %if.end.147
  %84 = load %struct._object*, %struct._object** %fdobj, align 8
  %call159 = call i32 @_PyLong_AsInt(%struct._object* %84)
  %85 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd160 = getelementptr inbounds %struct.fileio, %struct.fileio* %85, i32 0, i32 1
  store i32 %call159, i32* %fd160, align 4
  br label %do.body.161

do.body.161:                                      ; preds = %if.end.158
  %86 = load %struct._object*, %struct._object** %fdobj, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp162, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %88, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %do.body.161
  br label %if.end.171

if.else.168:                                      ; preds = %do.body.161
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  call void %91(%struct._object* %92)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  %93 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd173 = getelementptr inbounds %struct.fileio, %struct.fileio* %93, i32 0, i32 1
  %94 = load i32, i32* %fd173, align 4
  %cmp174 = icmp eq i32 %94, -1
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %do.end.172
  br label %error

if.end.177:                                       ; preds = %do.end.172
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.138
  store i32 1, i32* %fd_is_own, align 4
  %95 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd179 = getelementptr inbounds %struct.fileio, %struct.fileio* %95, i32 0, i32 1
  %96 = load i32, i32* %fd179, align 4
  %cmp180 = icmp slt i32 %96, 0
  br i1 %cmp180, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.end.178
  %97 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %98 = load %struct._object*, %struct._object** %nameobj, align 8
  %call183 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %97, %struct._object* %98)
  br label %error

if.end.184:                                       ; preds = %if.end.178
  %99 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd185 = getelementptr inbounds %struct.fileio, %struct.fileio* %99, i32 0, i32 1
  %100 = load i32, i32* %fd185, align 4
  %101 = load i32*, i32** %atomic_flag_works, align 8
  %call186 = call i32 @_Py_set_inheritable(i32 %100, i32 0, i32* %101)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.184
  br label %error

if.end.190:                                       ; preds = %if.end.184
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.121
  %102 = load %struct.fileio*, %struct.fileio** %self, align 8
  %103 = load %struct._object*, %struct._object** %nameobj, align 8
  %call192 = call i32 @dircheck(%struct.fileio* %102, %struct._object* %103)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.191
  br label %error

if.end.196:                                       ; preds = %if.end.191
  %104 = load %struct.fileio*, %struct.fileio** %self, align 8
  %105 = bitcast %struct.fileio* %104 to %struct._object*
  %106 = load %struct._object*, %struct._object** %nameobj, align 8
  %call197 = call i32 @_PyObject_SetAttrId(%struct._object* %105, %struct._Py_Identifier* @PyId_name, %struct._object* %106)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.196
  br label %error

if.end.201:                                       ; preds = %if.end.196
  %107 = load %struct.fileio*, %struct.fileio** %self, align 8
  %appending202 = getelementptr inbounds %struct.fileio, %struct.fileio* %107, i32 0, i32 2
  %bf.load203 = load i8, i8* %appending202, align 4
  %bf.lshr204 = lshr i8 %bf.load203, 3
  %bf.clear205 = and i8 %bf.lshr204, 1
  %bf.cast206 = zext i8 %bf.clear205 to i32
  %tobool207 = icmp ne i32 %bf.cast206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.227

if.then.208:                                      ; preds = %if.end.201
  %108 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd209 = getelementptr inbounds %struct.fileio, %struct.fileio* %108, i32 0, i32 1
  %109 = load i32, i32* %fd209, align 4
  %call210 = call %struct._object* @portable_lseek(i32 %109, %struct._object* null, i32 2)
  store %struct._object* %call210, %struct._object** %pos, align 8
  %110 = load %struct._object*, %struct._object** %pos, align 8
  %cmp211 = icmp eq %struct._object* %110, null
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.208
  br label %error

if.end.214:                                       ; preds = %if.then.208
  br label %do.body.215

do.body.215:                                      ; preds = %if.end.214
  %111 = load %struct._object*, %struct._object** %pos, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp216, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt217, align 8
  %dec218 = add i64 %113, -1
  store i64 %dec218, i64* %ob_refcnt217, align 8
  %cmp219 = icmp ne i64 %dec218, 0
  br i1 %cmp219, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %do.body.215
  br label %if.end.225

if.else.222:                                      ; preds = %do.body.215
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8
  call void %116(%struct._object* %117)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  br label %do.end.226

do.end.226:                                       ; preds = %if.end.225
  br label %if.end.227

if.end.227:                                       ; preds = %do.end.226, %if.end.201
  br label %done

error:                                            ; preds = %if.then.213, %if.then.200, %if.then.195, %if.then.189, %if.then.182, %if.then.176, %do.end, %if.then.146, %if.then.133, %if.then.120, %sw.default, %bad_mode
  store i32 -1, i32* %ret, align 4
  %118 = load i32, i32* %fd_is_own, align 4
  %tobool228 = icmp ne i32 %118, 0
  br i1 %tobool228, label %if.end.231, label %if.then.229

if.then.229:                                      ; preds = %error
  %119 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd230 = getelementptr inbounds %struct.fileio, %struct.fileio* %119, i32 0, i32 1
  store i32 -1, i32* %fd230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %error
  %120 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd232 = getelementptr inbounds %struct.fileio, %struct.fileio* %120, i32 0, i32 1
  %121 = load i32, i32* %fd232, align 4
  %cmp233 = icmp sge i32 %121, 0
  br i1 %cmp233, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.end.231
  %122 = load %struct.fileio*, %struct.fileio** %self, align 8
  %call236 = call i32 @internal_close(%struct.fileio* %122)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.end.231
  br label %done

done:                                             ; preds = %if.end.237, %if.end.227
  br label %do.body.238

do.body.238:                                      ; preds = %done
  %123 = load %struct._object*, %struct._object** %stringobj, align 8
  store %struct._object* %123, %struct._object** %_py_tmp, align 8
  %124 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp239 = icmp ne %struct._object* %124, null
  br i1 %cmp239, label %if.then.241, label %if.end.254

if.then.241:                                      ; preds = %do.body.238
  store %struct._object* null, %struct._object** %stringobj, align 8
  br label %do.body.242

do.body.242:                                      ; preds = %if.then.241
  %125 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp243, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  %ob_refcnt244 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt244, align 8
  %dec245 = add i64 %127, -1
  store i64 %dec245, i64* %ob_refcnt244, align 8
  %cmp246 = icmp ne i64 %dec245, 0
  br i1 %cmp246, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %do.body.242
  br label %if.end.252

if.else.249:                                      ; preds = %do.body.242
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  %ob_type250 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type250, align 8
  %tp_dealloc251 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc251, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  call void %130(%struct._object* %131)
  br label %if.end.252

if.end.252:                                       ; preds = %if.else.249, %if.then.248
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.252
  br label %if.end.254

if.end.254:                                       ; preds = %do.end.253, %do.body.238
  br label %do.end.255

do.end.255:                                       ; preds = %if.end.254
  %132 = load i32, i32* %ret, align 4
  store i32 %132, i32* %retval
  br label %return

return:                                           ; preds = %do.end.255, %if.then.31, %if.then.24, %if.then.17, %if.then.11, %if.then.5
  %133 = load i32, i32* %retval
  ret i32 %133
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.fileio*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.fileio*
  store %struct.fileio* %3, %struct.fileio** %self, align 8
  %4 = load %struct.fileio*, %struct.fileio** %self, align 8
  %cmp = icmp ne %struct.fileio* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.fileio*, %struct.fileio** %self, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 1
  store i32 -1, i32* %fd, align 4
  %6 = load %struct.fileio*, %struct.fileio** %self, align 8
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 2
  %bf.load = load i8, i8* %created, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %created, align 4
  %7 = load %struct.fileio*, %struct.fileio** %self, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %7, i32 0, i32 2
  %bf.load1 = load i8, i8* %readable, align 4
  %bf.clear2 = and i8 %bf.load1, -3
  store i8 %bf.clear2, i8* %readable, align 4
  %8 = load %struct.fileio*, %struct.fileio** %self, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %8, i32 0, i32 2
  %bf.load3 = load i8, i8* %writable, align 4
  %bf.clear4 = and i8 %bf.load3, -5
  store i8 %bf.clear4, i8* %writable, align 4
  %9 = load %struct.fileio*, %struct.fileio** %self, align 8
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %9, i32 0, i32 2
  %bf.load5 = load i8, i8* %appending, align 4
  %bf.clear6 = and i8 %bf.load5, -9
  store i8 %bf.clear6, i8* %appending, align 4
  %10 = load %struct.fileio*, %struct.fileio** %self, align 8
  %seekable = getelementptr inbounds %struct.fileio, %struct.fileio* %10, i32 0, i32 2
  %bf.load7 = load i8, i8* %seekable, align 4
  %bf.clear8 = and i8 %bf.load7, -49
  %bf.set = or i8 %bf.clear8, 48
  store i8 %bf.set, i8* %seekable, align 4
  %11 = load %struct.fileio*, %struct.fileio** %self, align 8
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %11, i32 0, i32 2
  %bf.load9 = load i8, i8* %closefd, align 4
  %bf.clear10 = and i8 %bf.load9, -65
  %bf.set11 = or i8 %bf.clear10, 64
  store i8 %bf.set11, i8* %closefd, align 4
  %12 = load %struct.fileio*, %struct.fileio** %self, align 8
  %weakreflist = getelementptr inbounds %struct.fileio, %struct.fileio* %12, i32 0, i32 4
  store %struct._object* null, %struct._object** %weakreflist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.fileio*, %struct.fileio** %self, align 8
  %14 = bitcast %struct.fileio* %13 to %struct._object*
  ret %struct._object* %14
}

declare void @PyObject_GC_Del(i8*) #1

declare i32 @_PyIOBase_finalize(%struct._object*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal i8* @mode_string(%struct.fileio* %self) #0 {
entry:
  %retval = alloca i8*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %created = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2
  %bf.load = load i8, i8* %created, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 2
  %bf.load1 = load i8, i8* %readable, align 4
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %appending = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load6 = load i8, i8* %appending, align 4
  %bf.lshr7 = lshr i8 %bf.load6, 3
  %bf.clear8 = and i8 %bf.lshr7, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.20

if.then.11:                                       ; preds = %if.end
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable12 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 2
  %bf.load13 = load i8, i8* %readable12, align 4
  %bf.lshr14 = lshr i8 %bf.load13, 1
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = zext i8 %bf.clear15 to i32
  %tobool17 = icmp ne i32 %bf.cast16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

if.else.19:                                       ; preds = %if.then.11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

if.else.20:                                       ; preds = %if.end
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable21 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 2
  %bf.load22 = load i8, i8* %readable21, align 4
  %bf.lshr23 = lshr i8 %bf.load22, 1
  %bf.clear24 = and i8 %bf.lshr23, 1
  %bf.cast25 = zext i8 %bf.clear24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.35

if.then.27:                                       ; preds = %if.else.20
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 2
  %bf.load28 = load i8, i8* %writable, align 4
  %bf.lshr29 = lshr i8 %bf.load28, 2
  %bf.clear30 = and i8 %bf.lshr29, 1
  %bf.cast31 = zext i8 %bf.clear30 to i32
  %tobool32 = icmp ne i32 %bf.cast31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

if.else.34:                                       ; preds = %if.then.27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

if.else.35:                                       ; preds = %if.else.20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.35, %if.else.34, %if.then.33, %if.else.19, %if.then.18, %if.else, %if.then.5
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_read(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ptr = alloca i8*, align 8
  %n = alloca i64, align 8
  %size = alloca i64, align 8
  %bytes = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %size, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %readable, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._object*, i8*)* @_PyIO_ConvertSsize_t, i64* %size)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i64, i64* %size, align 8
  %cmp8 = icmp slt i64 %4, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call10 = call %struct._object* @fileio_readall(%struct.fileio* %5)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %6 = load i64, i64* %size, align 8
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %6)
  store %struct._object* %call12, %struct._object** %bytes, align 8
  %7 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp13 = icmp eq %struct._object* %7, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** %bytes, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 8
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save, align 8
  %call17 = call i32* @__errno_location() #4
  store i32 0, i32* %call17, align 4
  %10 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd18 = getelementptr inbounds %struct.fileio, %struct.fileio* %10, i32 0, i32 1
  %11 = load i32, i32* %fd18, align 4
  %12 = load i8*, i8** %ptr, align 8
  %13 = load i64, i64* %size, align 8
  %call19 = call i64 @read(i32 %11, i8* %12, i64 %13)
  store i64 %call19, i64* %n, align 8
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  %15 = load i64, i64* %n, align 8
  %cmp20 = icmp slt i64 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.end.15
  %call22 = call i32* @__errno_location() #4
  %16 = load i32, i32* %call22, align 4
  store i32 %16, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %17 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %24 = load i32, i32* %err, align 4
  %cmp26 = icmp eq i32 %24, 11
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %do.end
  %26 = load i32, i32* %err, align 4
  %call29 = call i32* @__errno_location() #4
  store i32 %26, i32* %call29, align 4
  %27 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call30 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %27)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.15
  %28 = load i64, i64* %n, align 8
  %29 = load i64, i64* %size, align 8
  %cmp32 = icmp ne i64 %28, %29
  br i1 %cmp32, label %if.then.33, label %if.end.54

if.then.33:                                       ; preds = %if.end.31
  %30 = load i64, i64* %n, align 8
  %call34 = call i32 @_PyBytes_Resize(%struct._object** %bytes, i64 %30)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.53

if.then.36:                                       ; preds = %if.then.33
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %31 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %31, %struct._object** %_py_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp38 = icmp ne %struct._object* %32, null
  br i1 %cmp38, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %do.body.37
  store %struct._object* null, %struct._object** %bytes, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp41, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %35, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %38(%struct._object* %39)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.37
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.33
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.31
  %40 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.54, %do.end.52, %if.end.28, %if.then.27, %if.then.14, %if.then.9, %if.then.6, %if.then.1, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readall(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %st = alloca %struct.stat, align 8
  %pos = alloca i64, align 8
  %end = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %bytes_read = alloca i64, align 8
  %n = alloca i64, align 8
  %bufsize = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i64 0, i64* %bytes_read, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %call2 = call i64 @lseek64(i32 %3, i64 0, i32 1) #5
  store i64 %call2, i64* %pos, align 8
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1
  %5 = load i32, i32* %fd3, align 4
  %call4 = call i32 @fstat64(i32 %5, %struct.stat* %st) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %6 = load i64, i64* %st_size, align 8
  store i64 %6, i64* %end, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store i64 -1, i64* %end, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %7 = load i64, i64* %end, align 8
  %cmp8 = icmp sgt i64 %7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.end.7
  %8 = load i64, i64* %end, align 8
  %9 = load i64, i64* %pos, align 8
  %cmp9 = icmp sge i64 %8, %9
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.16

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %10 = load i64, i64* %pos, align 8
  %cmp11 = icmp sge i64 %10, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.16

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %11 = load i64, i64* %end, align 8
  %12 = load i64, i64* %pos, align 8
  %sub = sub i64 %11, %12
  %cmp13 = icmp slt i64 %sub, 9223372036854775807
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %land.lhs.true.12
  %13 = load i64, i64* %end, align 8
  %14 = load i64, i64* %pos, align 8
  %sub15 = sub i64 %13, %14
  %add = add i64 %sub15, 1
  store i64 %add, i64* %bufsize, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %if.end.7
  store i64 8192, i64* %bufsize, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  %15 = load i64, i64* %bufsize, align 8
  %call18 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %15)
  store %struct._object* %call18, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp19 = icmp eq %struct._object* %16, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  br label %while.body

while.body:                                       ; preds = %if.end.21, %if.end.67, %if.end.99
  %17 = load i64, i64* %bytes_read, align 8
  %18 = load i64, i64* %bufsize, align 8
  %cmp22 = icmp sge i64 %17, %18
  br i1 %cmp22, label %if.then.23, label %if.end.40

if.then.23:                                       ; preds = %while.body
  %19 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %20 = load i64, i64* %bytes_read, align 8
  %call24 = call i64 @new_buffersize(%struct.fileio* %19, i64 %20)
  store i64 %call24, i64* %bufsize, align 8
  %21 = load i64, i64* %bufsize, align 8
  %cmp25 = icmp ugt i64 %21, 9223372036854775807
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.23
  %22 = load i64, i64* %bufsize, align 8
  %cmp26 = icmp ule i64 %22, 0
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.23
  %23 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %24 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else.30:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false
  %31 = load %struct._object*, %struct._object** %result, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  %34 = load i64, i64* %bufsize, align 8
  %cmp33 = icmp slt i64 %33, %34
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.32
  %35 = load i64, i64* %bufsize, align 8
  %call35 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %while.body
  %call41 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call41, %struct._ts** %_save, align 8
  %call42 = call i32* @__errno_location() #4
  store i32 0, i32* %call42, align 4
  %36 = load i64, i64* %bufsize, align 8
  %37 = load i64, i64* %bytes_read, align 8
  %sub43 = sub i64 %36, %37
  store i64 %sub43, i64* %n, align 8
  %38 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd44 = getelementptr inbounds %struct.fileio, %struct.fileio* %38, i32 0, i32 1
  %39 = load i32, i32* %fd44, align 4
  %40 = load %struct._object*, %struct._object** %result, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %41, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %42 = load i64, i64* %bytes_read, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %42
  %43 = load i64, i64* %n, align 8
  %call45 = call i64 @read(i32 %39, i8* %add.ptr, i64 %43)
  store i64 %call45, i64* %n, align 8
  %44 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %44)
  %45 = load i64, i64* %n, align 8
  %cmp46 = icmp eq i64 %45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  br label %while.end

if.end.48:                                        ; preds = %if.end.40
  %46 = load i64, i64* %n, align 8
  %cmp49 = icmp slt i64 %46, 0
  br i1 %cmp49, label %if.then.50, label %if.end.99

if.then.50:                                       ; preds = %if.end.48
  %call51 = call i32* @__errno_location() #4
  %47 = load i32, i32* %call51, align 4
  %cmp52 = icmp eq i32 %47, 4
  br i1 %cmp52, label %if.then.53, label %if.end.68

if.then.53:                                       ; preds = %if.then.50
  %call54 = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call54, 0
  br i1 %tobool, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %if.then.53
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %48 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp57, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %50, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %53(%struct._object* %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.53
  br label %while.body

if.end.68:                                        ; preds = %if.then.50
  %55 = load i64, i64* %bytes_read, align 8
  %cmp69 = icmp sgt i64 %55, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  br label %while.end

if.end.71:                                        ; preds = %if.end.68
  %call72 = call i32* @__errno_location() #4
  %56 = load i32, i32* %call72, align 4
  %cmp73 = icmp eq i32 %56, 11
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %if.end.71
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %57 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp76, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %59, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %62(%struct._object* %63)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  %64 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %64, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.86:                                        ; preds = %if.end.71
  br label %do.body.87

do.body.87:                                       ; preds = %if.end.86
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp88, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %67, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.87
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %70(%struct._object* %71)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  %72 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call98 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %72)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.99:                                        ; preds = %if.end.48
  %73 = load i64, i64* %n, align 8
  %74 = load i64, i64* %bytes_read, align 8
  %add100 = add i64 %74, %73
  store i64 %add100, i64* %bytes_read, align 8
  %75 = load i64, i64* %n, align 8
  %76 = load i64, i64* %pos, align 8
  %add101 = add i64 %76, %75
  store i64 %add101, i64* %pos, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.70, %if.then.47
  %77 = load %struct._object*, %struct._object** %result, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyVarObject*
  %ob_size102 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %78, i32 0, i32 1
  %79 = load i64, i64* %ob_size102, align 8
  %80 = load i64, i64* %bytes_read, align 8
  %cmp103 = icmp sgt i64 %79, %80
  br i1 %cmp103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %while.end
  %81 = load i64, i64* %bytes_read, align 8
  %call105 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %81)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.104
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.108:                                       ; preds = %if.then.104
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %while.end
  %82 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %82, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.109, %if.then.107, %do.end.97, %do.end.85, %do.end.66, %if.then.37, %do.end, %if.then.20, %if.then
  %83 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readinto(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %n = alloca i64, align 8
  %len = alloca i64, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %readable, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), %struct.bufferinfo* %pbuf)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %4 = load i64, i64* %len8, align 8
  store i64 %4, i64* %len, align 8
  %call9 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call9, %struct._ts** %_save, align 8
  %call10 = call i32* @__errno_location() #4
  store i32 0, i32* %call10, align 4
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd11 = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 1
  %6 = load i32, i32* %fd11, align 4
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %len, align 8
  %call12 = call i64 @read(i32 %6, i8* %7, i64 %8)
  store i64 %call12, i64* %n, align 8
  %9 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  %call13 = call i32* @__errno_location() #4
  %10 = load i32, i32* %call13, align 4
  store i32 %10, i32* %err, align 4
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %11 = load i64, i64* %n, align 8
  %cmp14 = icmp slt i64 %11, 0
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.7
  %12 = load i32, i32* %err, align 4
  %cmp16 = icmp eq i32 %12, 11
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  %14 = load i32, i32* %err, align 4
  %call19 = call i32* @__errno_location() #4
  store i32 %14, i32* %call19, align 4
  %15 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.7
  %16 = load i64, i64* %n, align 8
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %16)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.18, %if.then.17, %if.then.6, %if.then.1, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_write(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %n = alloca i64, align 8
  %len = alloca i64, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), %struct.bufferinfo* %pbuf)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %call8 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call8, %struct._ts** %_save, align 8
  %call9 = call i32* @__errno_location() #4
  store i32 0, i32* %call9, align 4
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %4 = load i64, i64* %len10, align 8
  store i64 %4, i64* %len, align 8
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd11 = getelementptr inbounds %struct.fileio, %struct.fileio* %5, i32 0, i32 1
  %6 = load i32, i32* %fd11, align 4
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %len, align 8
  %call12 = call i64 @write(i32 %6, i8* %7, i64 %8)
  store i64 %call12, i64* %n, align 8
  %9 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  %call13 = call i32* @__errno_location() #4
  %10 = load i32, i32* %call13, align 4
  store i32 %10, i32* %err, align 4
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %11 = load i64, i64* %n, align 8
  %cmp14 = icmp slt i64 %11, 0
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.7
  %12 = load i32, i32* %err, align 4
  %cmp16 = icmp eq i32 %12, 11
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  %14 = load i32, i32* %err, align 4
  %call19 = call i32* @__errno_location() #4
  store i32 %14, i32* %call19, align 4
  %15 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.7
  %16 = load i64, i64* %n, align 8
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %16)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.18, %if.then.17, %if.then.6, %if.then.1, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seek(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %whence = alloca i32, align 4
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %whence, align 4
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._object** %posobj, i32* %whence)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd4 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 1
  %4 = load i32, i32* %fd4, align 4
  %5 = load %struct._object*, %struct._object** %posobj, align 8
  %6 = load i32, i32* %whence, align 4
  %call5 = call %struct._object* @portable_lseek(i32 %4, %struct._object* %5, i32 %6)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_tell(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %call2 = call %struct._object* @portable_lseek(i32 %3, %struct._object* null, i32 1)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_truncate(%struct.fileio* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %args.addr = alloca %struct._object*, align 8
  %posobj = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %posobj, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd1, align 4
  store i32 %1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @err_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), %struct._object** %posobj)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp9 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp10 = icmp eq %struct._object* %6, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  %7 = load i32, i32* %fd, align 4
  %call12 = call %struct._object* @portable_lseek(i32 %7, %struct._object* null, i32 1)
  store %struct._object* %call12, %struct._object** %posobj, align 8
  %8 = load %struct._object*, %struct._object** %posobj, align 8
  %cmp13 = icmp eq %struct._object* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.11
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %posobj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.15
  %11 = load %struct._object*, %struct._object** %posobj, align 8
  %call17 = call i64 @PyLong_AsLong(%struct._object* %11)
  store i64 %call17, i64* %pos, align 8
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %12 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt21, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt21, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else.24:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  %call27 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call27, %struct._ts** %_save, align 8
  %call28 = call i32* @__errno_location() #4
  store i32 0, i32* %call28, align 4
  %19 = load i32, i32* %fd, align 4
  %20 = load i64, i64* %pos, align 8
  %call29 = call i32 @ftruncate64(i32 %19, i64 %20) #5
  store i32 %call29, i32* %ret, align 4
  %21 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %21)
  %22 = load i32, i32* %ret, align 4
  %cmp30 = icmp ne i32 %22, 0
  br i1 %cmp30, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %if.end.26
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %23 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp33, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %25, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %28(%struct._object* %29)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %30 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call43 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.26
  %31 = load %struct._object*, %struct._object** %posobj, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %do.end.42, %do.end, %if.then.14, %if.then.7, %if.then.2, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_close(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2
  %bf.load = load i8, i8* %closefd, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %1, i32 0, i32 1
  store i32 -1, i32* %fd, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %finalizing = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 3
  %4 = load i8, i8* %finalizing, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %7 = bitcast %struct.fileio* %6 to %struct._object*
  %call = call %struct._object* @fileio_dealloc_warn(%struct.fileio* %5, %struct._object* %7)
  store %struct._object* %call, %struct._object** %r, align 8
  %8 = load %struct._object*, %struct._object** %r, align 8
  %tobool3 = icmp ne %struct._object* %8, null
  br i1 %tobool3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %9 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
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
  br label %if.end.8

if.else.7:                                        ; preds = %if.then.2
  call void @PyErr_Clear()
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %do.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %16 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call10 = call i32 @internal_close(%struct.fileio* %16)
  %call11 = call i32* @__errno_location() #4
  store i32 %call10, i32* %call11, align 4
  %call12 = call i32* @__errno_location() #4
  %17 = load i32, i32* %call12, align 4
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %18 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call16 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyRawIOBase_Type, i32 0, i32 0, i32 0), %struct._Py_Identifier* @fileio_close.PyId_close, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), %struct.fileio* %18)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_seekable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %pos = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %seekable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %seekable, align 4
  %bf.shl = shl i8 %bf.load, 2
  %bf.ashr = ashr i8 %bf.shl, 6
  %bf.cast = sext i8 %bf.ashr to i32
  %cmp1 = icmp slt i32 %bf.cast, 0
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %3, i32 0, i32 1
  %4 = load i32, i32* %fd3, align 4
  %call4 = call %struct._object* @portable_lseek(i32 %4, %struct._object* null, i32 1)
  store %struct._object* %call4, %struct._object** %pos, align 8
  %5 = load %struct._object*, %struct._object** %pos, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  call void @PyErr_Clear()
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %seekable7 = getelementptr inbounds %struct.fileio, %struct.fileio* %6, i32 0, i32 2
  %bf.load8 = load i8, i8* %seekable7, align 4
  %bf.clear = and i8 %bf.load8, -49
  store i8 %bf.clear, i8* %seekable7, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %pos, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else.11:                                       ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %14 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %seekable13 = getelementptr inbounds %struct.fileio, %struct.fileio* %14, i32 0, i32 2
  %bf.load14 = load i8, i8* %seekable13, align 4
  %bf.clear15 = and i8 %bf.load14, -49
  %bf.set = or i8 %bf.clear15, 16
  store i8 %bf.set, i8* %seekable13, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.then.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %15 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %seekable18 = getelementptr inbounds %struct.fileio, %struct.fileio* %15, i32 0, i32 2
  %bf.load19 = load i8, i8* %seekable18, align 4
  %bf.shl20 = shl i8 %bf.load19, 2
  %bf.ashr21 = ashr i8 %bf.shl20, 6
  %bf.cast22 = sext i8 %bf.ashr21 to i32
  %conv = sext i32 %bf.cast22 to i64
  %call23 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_readable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %readable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %readable, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %conv = zext i32 %bf.cast to i64
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_writable(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %writable = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %conv = zext i32 %bf.cast to i64
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_fileno(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %conv = sext i32 %3 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_isatty(%struct.fileio* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.fileio*, align 8
  %res = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @err_closed()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd2, align 4
  %call3 = call i32 @isatty(i32 %3) #5
  %conv = sext i32 %call3 to i64
  store i64 %conv, i64* %res, align 8
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load i64, i64* %res, align 8
  %call4 = call %struct._object* @PyBool_FromLong(i64 %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_dealloc_warn(%struct.fileio* %self, %struct._object* %source) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %source.addr = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %source, %struct._object** %source.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 2
  %bf.load = load i8, i8* %closefd, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  %3 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %4 = load %struct._object*, %struct._object** %source.addr, align 8
  %call = call i32 (%struct._object*, i64, i8*, ...) @PyErr_WarnFormat(%struct._object* %3, i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), %struct._object* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %7 = bitcast %struct.fileio* %6 to %struct._object*
  call void @PyErr_WriteUnraisable(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %exc, align 8
  %9 = load %struct._object*, %struct._object** %val, align 8
  %10 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %8, %struct._object* %9, %struct._object* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %land.lhs.true, %entry
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fileio_getstate(%struct.fileio* %self) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %2 = bitcast %struct.fileio* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_closed() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0))
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_mode(i8* %action) #0 {
entry:
  %action.addr = alloca i8*, align 8
  %state = alloca %struct._PyIO_State*, align 8
  store i8* %action, i8** %action.addr, align 8
  %call = call %struct._PyIO_State* @_PyIO_get_module_state()
  store %struct._PyIO_State* %call, %struct._PyIO_State** %state, align 8
  %0 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %cmp = icmp ne %struct._PyIO_State* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._PyIO_State*, %struct._PyIO_State** %state, align 8
  %unsupported_operation = getelementptr inbounds %struct._PyIO_State, %struct._PyIO_State* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %unsupported_operation, align 8
  %3 = load i8*, i8** %action.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct._object* null
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare i32 @_PyIO_ConvertSsize_t(%struct._object*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i64 @read(i32, i8*, i64) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._PyIO_State* @_PyIO_get_module_state() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #3

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal i64 @new_buffersize(%struct.fileio* %self, i64 %currentsize) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %currentsize.addr = alloca i64, align 8
  %addend = alloca i64, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i64 %currentsize, i64* %currentsize.addr, align 8
  %0 = load i64, i64* %currentsize.addr, align 8
  %cmp = icmp ugt i64 %0, 65536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %currentsize.addr, align 8
  %shr = lshr i64 %1, 3
  store i64 %shr, i64* %addend, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %currentsize.addr, align 8
  %add = add i64 256, %2
  store i64 %add, i64* %addend, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %addend, align 8
  %cmp1 = icmp ult i64 %3, 8192
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i64 8192, i64* %addend, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i64, i64* %addend, align 8
  %5 = load i64, i64* %currentsize.addr, align 8
  %add4 = add i64 %4, %5
  ret i64 %add4
}

declare i32 @PyErr_CheckSignals() #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @portable_lseek(i32 %fd, %struct._object* %posobj, i32 %whence) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %posobj.addr = alloca %struct._object*, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %res = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %posobj, %struct._object** %posobj.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load i32, i32* %whence.addr, align 4
  switch i32 %0, label %sw.epilog [
  ]

sw.epilog:                                        ; preds = %entry
  %1 = load %struct._object*, %struct._object** %posobj.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i64 0, i64* %pos, align 8
  br label %if.end.9

if.else:                                          ; preds = %sw.epilog
  %2 = load %struct._object*, %struct._object** %posobj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyFloat_Type
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load %struct._object*, %struct._object** %posobj.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %posobj.addr, align 8
  %call4 = call i64 @PyLong_AsLong(%struct._object* %7)
  store i64 %call4, i64* %pos, align 8
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  %call10 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call10, %struct._ts** %_save, align 8
  %8 = load i32, i32* %fd.addr, align 4
  %9 = load i64, i64* %pos, align 8
  %10 = load i32, i32* %whence.addr, align 4
  %call11 = call i64 @lseek64(i32 %8, i64 %9, i32 %10) #5
  store i64 %call11, i64* %res, align 8
  %11 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  %12 = load i64, i64* %res, align 8
  %cmp12 = icmp slt i64 %12, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %14 = load i64, i64* %res, align 8
  %call16 = call %struct._object* @PyLong_FromLong(i64 %14)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.7, %if.then.3
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @internal_close(%struct.fileio* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %err = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %fd1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i32 0, i32* %err, align 4
  store i32 0, i32* %save_errno, align 4
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd2 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd2, align 4
  store i32 %3, i32* %fd1, align 4
  %4 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.fileio, %struct.fileio* %4, i32 0, i32 1
  store i32 -1, i32* %fd3, align 4
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %5 = load i32, i32* %fd1, align 4
  %call4 = call i32 @close(i32 %5)
  store i32 %call4, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #4
  %7 = load i32, i32* %call7, align 4
  store i32 %7, i32* %save_errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %8 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %err, align 4
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* %save_errno, align 4
  %call11 = call i32* @__errno_location() #4
  store i32 %10, i32* %call11, align 4
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.10
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @close(i32) #1

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare i32 @PyErr_WarnFormat(%struct._object*, i64, i8*, ...) #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closed(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_closefd(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %closefd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 2
  %bf.load = load i8, i8* %closefd, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %conv = zext i32 %bf.cast to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_mode(%struct.fileio* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.fileio*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %call = call i8* @mode_string(%struct.fileio* %0)
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %call)
  ret %struct._object* %call1
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_fd(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %exc = alloca %struct._object*, align 8
  %msg = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat64(i32 %0, %struct.stat* %buf) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32* @__errno_location() #4
  %1 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %1, 9
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i8* @strerror(i32 9) #5
  store i8* %call3, i8** %msg, align 8
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %3 = load i8*, i8** %msg, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 9, i8* %3)
  store %struct._object* %call4, %struct._object** %exc, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %5 = load %struct._object*, %struct._object** %exc, align 8
  call void @PyErr_SetObject(%struct._object* %4, %struct._object* %5)
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %exc, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end

if.else:                                          ; preds = %do.body.7
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %do.end.11
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @open64(i8*, i32, ...) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #1

declare i32 @_Py_set_inheritable(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dircheck(%struct.fileio* %self, %struct._object* %nameobj) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.fileio*, align 8
  %nameobj.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.stat, align 8
  store %struct.fileio* %self, %struct.fileio** %self.addr, align 8
  store %struct._object* %nameobj, %struct._object** %nameobj.addr, align 8
  %0 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd = getelementptr inbounds %struct.fileio, %struct.fileio* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fileio*, %struct.fileio** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.fileio, %struct.fileio* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @fstat64(i32 %3, %struct.stat* %buf) #5
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %4 = load i32, i32* %st_mode, align 4
  %and = and i32 %4, 61440
  %cmp3 = icmp eq i32 %and, 16384
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call i32* @__errno_location() #4
  store i32 21, i32* %call5, align 4
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %6 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %5, %struct._object* %6)
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
